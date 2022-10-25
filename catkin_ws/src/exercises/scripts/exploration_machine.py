#!/usr/bin/env python3
# Importacion de las librerias necesarias.
import os
import rospy
import smach
import smach_ros
from geometry_msgs.msg import PoseStamped
from move_base_msgs.msg import MoveBaseActionResult



####----------> FUNCION PARA EL RETORNO <----------#####
def exploration(msg):
    global end_exploration
    if msg.status.status == 3: 
        return True
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
    print(rospy.Time.now())
    #rospy.sleep(0.5)
    return 0  


##### ---------->DEFINICION DEL ESTADO INICIAL <---------#####
class S0(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1', 'outcome2'])
        self.counter = 0
        
    def execute(self,userdata):
    	# Acciones correspondientes al estado.
        print('Estado de exploracion...')
        if exploration == True: return 'outcome1'
        else: return 'outcome2'


class S1(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1'])
        self.counter = 0
        
    def execute(self,userdata):
    	# Acciones a ejecutar en el estado.
        print('Estado de Retorno...')
        os.system("gnome-terminal -x rosnode kill /explore")
        rospy.sleep(1)
        move_base_init()
        return 'outcome1'

class S2(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1'])
        self.counter = 0
        
    def execute(self,userdata):
    	# Acciones correspondientes al estado.
        print('Finalizando...')
        print('Guardando mapa, por favor espere...')
        os.system("rosrun map_server map_saver -f result_exploration")
        return 'outcome1'


# Inicializacion del nodo
def main():
    global exploration_data, goal_publisher, end_exploration
    print("Inicializando maquina de Estado...")
    rospy.init_node("Explore_Smach")
    exploration_data = rospy.Subscriber("/move_base/result", MoveBaseActionResult, exploration)
    goal_publisher = rospy.Publisher("move_base_simple/goal", PoseStamped, queue_size=10)
        
    sm = smach.StateMachine(outcomes = ['END'])
    sm.userdata.sm_counter = 0
    sm.userdata.clear = False


    with sm:
        #Transicion de los estados programados.
        smach.StateMachine.add("s_0",   S0(),  transitions = {'outcome1':'s_1','outcome2':'s_0'})
        smach.StateMachine.add("s_1",   S1(),  transitions = {'outcome1':'s_2'})
        smach.StateMachine.add("s_2",   S2(),  transitions = {'outcome1':'END'})
    outcome = sm.execute()
    rospy.sleep(1)
    sis = smach_ros.IntrospectionServer('Explore_Smach', sm, '/SM_ROOT')
    sis.start()
    rospy.spin()
    sis.stop()
# Punto de entrada.

if __name__ == '__main__':
    try:
        main()      
    except rospy.ROSInterruptException:
        pass
    
























