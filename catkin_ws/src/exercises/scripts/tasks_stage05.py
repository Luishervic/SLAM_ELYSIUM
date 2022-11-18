#!/usr/bin/env python3
import os
import sys
import time
import rospy
import smach
import numpy as np
import tf2_ros as tf2
# Importamos todas las funciones del archivo utils. 
from utils import * 

def whole_body_ik(trans, rot):
    #Inverse Kinematics, construimos nuestra meta.
    pose_goal = geometry_msgs.msg.Pose()
    pose_goal.orientation.w = rot[3]
    pose_goal.orientation.x = rot[0]
    pose_goal.orientation.y = rot[1]
    pose_goal.orientation.z = rot[2]

    pose_goal.position.x = trans[0]
    pose_goal.position.y = trans[1]
    pose_goal.position.z = trans[2]

    whole_body.set_start_state_to_current_state()
    whole_body.set_pose_target(pose_goal)
    whole_body.go(wait=True)
    return 0

##### ----------> DEFINICIÓN DEL ESTADO INICIAL <---------#####
class S0(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1'])
        self.counter = 0
        
    def execute(self,userdata):
    	# Acciones correspondientes al estado.
        print('Movimiento del brazo...') 
        move_arm_neutral()
        gripper_m.open()
        whole_body_ik(trans = [1, 0, 1], rot = [0.7071, 4.330e-17, 0.7071, -4.330e-17])
        move_arm_neutral()
        whole_body_ik(trans = [1, 0, 0.3], rot = [0.7071, 4.330e-17, 0.7071, -4.330e-17])
        move_arm_neutral()
        return 'outcome1'


class S1(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1'])
        self.counter = 0
       
    def execute(self,userdata):
    	# Acciones a ejecutar en el estado.
        # Movimiento de 1.7m al frente
        print('Traslación 1.7 m...')
        move_base_goal(1.7,0,0)
        return 'outcome1'


class S2(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1'])
        self.counter = 0
        
    def execute(self,userdata):
    	# Acciones correspondientes al estado.
        print('Movimiento cuello...')
        move_base_goal(0,0,0)
        move_head_pan(90)
        move_head_pan(-90)
        move_head_neutral()
        return 'outcome1'


class S3(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1'])
        self.counter = 0
        
    def execute(self,userdata):
        # Acciones correspondientes del estado.
        print('Finalizando...')
        move_base_goal(0,0,0)
        return 'outcome1'


# Node Initialization.
def main():
    global gripper_m
    rospy.init_node("Etapa05_smach")
    gripper_m = GRIPPER()

# Punto de entrada.
if __name__ == '__main__':
    print('Iniciando maquina de estados...')
    main()
    # Configuración Moveit.
    whole_body = moveit_commander.MoveGroupCommander('whole_body_light')
    moveit_commander.roscpp_initialize(sys.argv)
    whole_body.allow_replanning(True)
    whole_body.set_num_planning_attempts(10)
    whole_body.set_planning_time(10)
    whole_body.set_goal_tolerance(0.1)
    whole_body.set_workspace([-3.0, -3.0, 3.0, 3.0])
    

    sm = smach.StateMachine(outcomes = ['END'])
    sm.userdata.sm_counter = 0
    sm.userdata.clear = False
    
    with sm:
        #Transición de los estados programados.
        smach.StateMachine.add("s_0",   S0(),  transitions = {'outcome1':'s_1'})
        smach.StateMachine.add("s_1",   S1(),  transitions = {'outcome1':'s_2'})
        smach.StateMachine.add("s_2",   S2(),  transitions = {'outcome1':'s_3'})
        smach.StateMachine.add("s_3",   S3(),  transitions = {'outcome1':'END'})

outcome = sm.execute() 