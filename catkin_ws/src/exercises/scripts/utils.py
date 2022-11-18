#!/usr/bin/env python3
import actionlib
import math
import numpy as np
import rospy
import ros_numpy
import tf
import tf2_ros as tf2
import time
import moveit_commander
import tmc_control_msgs.msg
import trajectory_msgs.msg
import geometry_msgs

from geometry_msgs.msg import PoseStamped, Quaternion, TransformStamped, Twist
from IPython.display import Image
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from sensor_msgs.msg import LaserScan, PointCloud2

# Publicador de la velocidad de la base
base_vel_pub = rospy.Publisher('/hsrb/command_velocity', Twist, queue_size=1)


def move_base_vel(vx, vy, vw):
    u"""Función del control de velocidad

    Argumentos:
        vx (float): velocity command [m/s] in straight line direction (forward is positive, backward is negative)
        vy (float): velocity command in lateral direction [m/s] (positive for left, negative for right)
        vw (float): velocity command in rotation direction [deg/s] (positive for left rotation, negative for right rotation)
    """

    
    twist = Twist()
    twist.linear.x = vx
    twist.linear.y = vy
    twist.angular.z = vw / 180.0 * math.pi 
    base_vel_pub.publish(twist)  # Publicamos


def quaternion_from_euler(roll, pitch, yaw):
    u"""Transforma grados a quaternion

    Argumentos：
        roll (float): grados [deg]
        pitch (float): grados [deg]
        yaw (float): grados [deg]

    Valor de retorno:
        Quaternion resultante de las transformaciones.

    """

    q = tf.transformations.quaternion_from_euler(roll / 180.0 * math.pi,
                                                 pitch / 180.0 * math.pi,
                                                 yaw / 180.0 * math.pi, 'rxyz')
    return Quaternion(q[0], q[1], q[2], q[3])


# Cliente navegación. 
navclient = actionlib.SimpleActionClient('/move_base/move', MoveBaseAction)


def move_base_goal(x, y, theta):
    u"""Función movimiento a punto meta

    Valores:
        x (float): valor x objetivo [m].
        y (float): valor y del objetivo [m].
        theta (float): ángulo de rotación del objetivo [deg].

    Retorno:
        Finalizo con éxito True, caso contrario False

    """
    navclient.wait_for_server()
    goal = MoveBaseGoal()

    # Frame de referencia "map"
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.header.stamp = rospy.Time.now()
    # Asignamos x,y de la meta.
    goal.target_pose.pose.position.x = x
    goal.target_pose.pose.position.y = y

    # Euler a quaternion.
    goal.target_pose.pose.orientation = quaternion_from_euler(0, 0, theta)

    # Enviamos la meta
    navclient.send_goal(goal)
    navclient.wait_for_result()
    state = navclient.get_state()
    return True if state == 3 else False



# moveit grupo arm
arm = moveit_commander.MoveGroupCommander('arm')


def move_arm_neutral():
    u""" Acciona el brazo a su posición neutral

    Retorno:
        True: Ejecución finalizada exitosamente, de otro modo retorna False 

    """

    arm.set_named_target('neutral')
    return arm.go()

  
def move_arm_init():
    u"""Mueve el brazo a su posición inicial

    Retorno:
        True: Ejecución finalizada exitosamente, de otro modo retorna False 

    """

    arm.set_named_target('go')
    return arm.go()

# moveit grupo head
head = moveit_commander.MoveGroupCommander("head")


def move_head_tilt(v):
    u"""Mueve la cabeza verticalmente a la posición especificada [deg]"""
    v = math.radians(v)
    head.set_joint_value_target("head_tilt_joint", v)
    return head.go()

def move_head_neutral():
    """Mueve la cabeza del robot a su posición neutral"""
    head.set_named_target('neutral')
    return head.go()

def move_head_pan(v):
    
    u"""Mueve la cabeza horizontalmente a la posición especificada [deg]
    """
    v = math.radians(v)
    head.set_joint_value_target("head_pan_joint", v)
    return head.go()
  
class RGBD():
    u"""Clase para funcionalidades de imagen"""

    def __init__(self):
        self._br = tf.TransformBroadcaster()
        # ポイントクラウドのサブスクライバのコールバックに_cloud_cbメソッドを登録
        self._cloud_sub = rospy.Subscriber(
            "/hsrb/head_rgbd_sensor/depth_registered/rectified_points",
            PointCloud2, self._cloud_cb)
        self._points_data = None
        self._image_data = None
        self._h_image = None
        self._region = None
        self._h_min = 0
        self._h_max = 0
        self._xyz = [0, 0, 0]
        self._frame_name = None

    def _cloud_cb(self, msg):
        # Obtenemos la nube de puntos
        self._points_data = ros_numpy.numpify(msg)

        # Obtenemos imagen
        self._image_data = \
            self._points_data['rgb'].view((np.uint8, 4))[..., [2, 1, 0]]

        # Creación imagen hue
        hsv_image = cv2.cvtColor(self._image_data, cv2.COLOR_RGB2HSV_FULL)
        self._h_image = hsv_image[..., 0]

        # Extracción de la region con los valores asignados.
        self._region = \
            (self._h_image > self._h_min) & (self._h_image < self._h_max)

        # Finalizamos si no hay area.
        if not np.any(self._region):
            return

        # Calculo x,y,z
        (y_idx, x_idx) = np.where(self._region)
        x = np.average(self._points_data['x'][y_idx, x_idx])
        y = np.average(self._points_data['y'][y_idx, x_idx])
        z = np.average(self._points_data['z'][y_idx, x_idx])
        self._xyz = [x, y, z]

        if self._frame_name is None:
            return

        # Enviamos tf
        self._br.sendTransform(
            (x, y, z), tf.transformations.quaternion_from_euler(0, 0, 0),
            rospy.Time(msg.header.stamp.secs, msg.header.stamp.nsecs),
            self._frame_name,
            msg.header.frame_id)

    def get_image(self):
        u"""Recuperación de imagen"""
        return self._image_data

    def get_points(self):
        u"""Recuperación nube de puntos"""
        return self._points_data

    def get_h_image(self):
        u"""Imagen hsv"""
        return self._h_image

    def get_region(self):
        u"""Obtención imagen de zona"""
        return self._region

    def get_xyz(self):
        u"""Extracción coordenadas"""
        return self._xyz

    def set_h(self, h_min, h_max):
        u"""Ajuste para la extracción de colores"""
        self._h_min = h_min
        self._h_max = h_max

    def set_coordinate_name(self, name):
        u"""Establecer nombre coordenadas"""
        self._frame_name = name


""" class TF_MANAGER():
    def __init__(self):
        self._tfbuff = tf2.Buffer()
        self._lis = tf2.TransformListener(self._tfbuff)
        self._tf_static_broad = tf2.StaticTransformBroadcaster()
        self._broad = tf2.TransformBroadcaster()

    def _fillMsg(self, pos = [0,0,0], rot = [0,0,0,1] ,point_name ='', ref="map"):
        TS = TransformStamped()
        TS.header.stamp = rospy.Time.now()
        TS.header.frame_id = ref
        TS.child_frame_id = point_name
        TS.transform.translation.x = pos[0]
        TS.transform.translation.y = pos[1]
        TS.transform.translation.z = pos[2]
        TS.transform.rotation.x = rot[0]
        TS.transform.rotation.y = rot[1]
        TS.transform.rotation.z = rot[2]
        TS.transform.rotation.w = rot[3]
        return TS

    def pub_tf(self, pos = [0,0,0], rot = [0,0,0,1] ,point_name ='', ref="map"):
        dinamic_ts = self._fillMsg(pos, rot, point_name, ref)
        self._broad.sendTransform(dinamic_ts)

    def pub_static_tf(pos = [0,0,0], rot = [0,0,0,1] ,point_name ='', ref="map"):
        static_ts = ._fillMsg(pos, rot, point_name, ref)
        self._tf_static_broad.sendTransform(static_ts)
    
    def getTF(self, target_frame='', ref_frame='map'):
        try:
            tf = self._tfbuff.lookup_transform(ref_frame, target_frame, rospy.Time(0))
            return self.tf2_obj_2_arr(tf)
        except:
            return [False,False]

    def tf2_obj_2_arr(self, transf):
        pos = []
        pos.append(transf.transform.translation.x)
        pos.append(transf.transform.translation.y)
        pos.append(transf.transform.translation.z)
    
        rot = []
        rot.append(transf.transform.rotation.x)
        rot.append(transf.transform.rotation.y)
        rot.append(transf.transform.rotation.z)
        rot.append(transf.transform.rotation.w)
        return [pos, rot]

 """
class GRIPPER():
    def __init__(self):
        self._grip_cmd_pub = rospy.Publisher('/hsrb/gripper_controller/command',
                               trajectory_msgs.msg.JointTrajectory, queue_size=100)
        self._grip_cmd_force = rospy.Publisher('/hsrb/gripper_controller/grasp/goal',
        			tmc_control_msgs.msg.GripperApplyEffortActionGoal, queue_size=100)
        			
        self._joint_name = "hand_motor_joint"
        self._position = 0.5
        self._velocity = 0.5
        self._effort = 0.0
        self._duration = 1

    def _manipulate_gripper(self):
        traj = trajectory_msgs.msg.JointTrajectory()
        traj.joint_names = [self._joint_name]
        p = trajectory_msgs.msg.JointTrajectoryPoint()
        p.positions = [self._position]
        p.velocities = [self._velocity]
        p.accelerations = []
        p.effort = [self._effort]
        p.time_from_start = rospy.Duration(self._duration)
        traj.points = [p]
        self._grip_cmd_pub.publish(traj)
        
    def _apply_force(self):
        app_force = tmc_control_msgs.msg.GripperApplyEffortActionGoal()
        app_force.goal.effort = -0.5
        self._grip_cmd_force.publish(app_force)
        
    def change_velocity(self, newVel):
        self._velocity = newVel
    
    def open(self):
        self._position = 1.23
        self._effort = 0
        self._manipulate_gripper()

    def steady(self):
        self._position = -0.82
        self._effort = -0.3
        self._manipulate_gripper()
        
    def close(self):
        self._position = -0.82
        self._effort = -0.3
        self._manipulate_gripper()
        self._apply_force()
        rospy.sleep(0.8)