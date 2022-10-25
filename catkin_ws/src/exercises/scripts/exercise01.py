#!/usr/bin/env python3
# Importacion de las librerias necesarias.
import os
import rospy
import smach
from geometry_msgs.msg import PoseStamped
from move_base_msgs.msg import MoveBaseActionResult



####----------> FUNCION PARA EL RETORNO <----------#####
def exploration(msg):
    global end_exploration
    if exploration_data.status.status == 3: 
        end_exploration = True
    else:
        return False

def move_base_init():

    goal = PoseStamped()
    goal.header.frame_id = "map"
    goal.header.stamp = rospy.Time.now()
   # Asignamos las coordenadas con referencia a "map". No hace falta agregar todos los parametros. Solo a manera demostrativa... 
    goal.pose.position.x = 0
    goal.pose.position.y = 0
    goal.pose.position.z = 0
   
   # Orientacion
    #goal.target_pose.pose.orientation = quaternion_from_euler(0, 0, 90)
    goal.pose.orientation.x = 0.0
    goal.pose.orientation.y = 0.0
    goal.pose.orientation.z = 0.0
    goal.pose.orientation.w = 1.0 
    goal_publisher.publish(goal)
    #rospy.sleep(0.5)
    return 0  


##### ---------->DEFINICION DEL ESTADO INICIAL <---------#####
class S0(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1'])
        self.counter = 0
        
    def execute(self,userdata):
    	# Acciones correspondientes al estado.
        print('Inicializando exploracion...')
        #os.system("gnome-terminal -x roslaunch explore_lite explore.launch")
        return 'outcome1'



class S1(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1', 'outcome2'])
        self.counter = 0
        
    def execute(self,userdata):
    	# Acciones a ejecutar en el estado.
        print('Estado de Exploracion...!!!')
        # Exploracion finalizo...? De ser así nos vamos al siguiente estado.
        if exploration == True: 
            print('Funcionando')
            return 'outcome1'
        else: return 'outcome2'


class S2(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1'])
        self.counter = 0
        
    def execute(self,userdata):
    	# Acciones correspondientes al estado.
        print('Estado de Retorno...')
        os.system("gnome-terminal -x rosnode kill /explore")
        os.system("gnome-terminal -x rosnode kill /move_base")
        #rospy.sleep(10)
        move_base_init()
        return 'outcome1'


class S3(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1'])
        self.counter = 0
        
    def execute(self,userdata):
        # Acciones correspondientes del estado.
        print('Finalizando...')
        os.system("gnome-terminal -x rosrun map_server map_saver -f result_exploration")
        return 'outcome1'


# Inicializacion del nodo
def init(node_name):
    global exploration_data, goal_publisher
    rospy.init_node(node_name)
    exploration_data = rospy.Subscriber("/move_base/result", MoveBaseActionResult, exploration)
    goal_publisher = rospy.Publisher("move_base_simple/goal", PoseStamped, queue_size=10)
    'rospy.spin()'


# Punto de entrada.
if __name__== '__main__':
    print("Inicializando maquina de Estado...")
    init("Explorer_Smach")
    sm = smach.StateMachine(outcomes = ['END'])
    sm.userdata.sm_counter = 0
    sm.userdata.clear = False


    with sm:
        #Transicion de los estados programados.
        smach.StateMachine.add("s_0",   S0(),  transitions = {'outcome1':'s_1'})
        smach.StateMachine.add("s_1",   S1(),  transitions = {'outcome1':'s_2','outcome2':'s_1'})
        smach.StateMachine.add("s_2",   S2(),  transitions = {'outcome1':'s_3'})
        smach.StateMachine.add("s_3",   S3(),  transitions = {'outcome1':'END'})
outcome = sm.execute()