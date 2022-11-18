#!/usr/bin/env python3
import rospy
import smach
import numpy as np
# Importamos todas las funciones de nuestro archivo utils. 
from utils import * 


##### ----------> DEFINICIÓN DEL ESTADO INICIAL <---------#####
class S0(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1'])
        self.counter = 0
        
    def execute(self,userdata):
    	# Acciones correspondientes al estado.
        print('Tarea 1...')
        # Movimiento de 1.7m al frente
        move_base_goal(0,1.7,0)
        return 'outcome1'


class S1(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1', 'outcome2'])
        self.counter = 0
        
    def execute(self,userdata):
    	# Acciones a ejecutar en el estado.
        print('Tarea 2....')
        move_head_neutral()
        move_arm_neutral()
        whole_body_ik(pos= [2,0,1.2], point_name = "meta_superior")
        whole_body_ik(pos= [2,0,0.1], point_name = "meta_inferior")
        move_arm_neutral()
        return 'outcome1'


class S2(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1'])
        self.counter = 0
        
    def execute(self,userdata):
    	# Acciones correspondientes al estado.
        print('Tarea 3...')
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
        move_base_goal(0,0,90)
        return 'outcome1'


# Node Initialization.
def main():
    global rgbd, tf_man, listener, tf_dynamic, tf_static, head, whole_body, arm
    print("Inicializando maquina de Estado...")
    rospy.init_node("Etapa05_smach")

    # Configuración maquina de estados
    sm = smach.StateMachine(outcomes = ['END'])
    sm.userdata.sm_counter = 0
    sm.userdata.clear = False

    with sm:
        #Transición de los estados programados.
        smach.StateMachine.add("s_0",   S0(),  transitions = {'outcome1':'s_1'})
        smach.StateMachine.add("s_1",   S1(),  transitions = {'outcome1':'s_2','outcome2':'s_1'})
        smach.StateMachine.add("s_2",   S2(),  transitions = {'outcome1':'s_3'})
        smach.StateMachine.add("s_3",   S3(),  transitions = {'outcome1':'END'})
    
    outcome = sm.execute()
    
    rospy.spin()
    

# Punto de entrada.
if __name__ == '__main__':
    try:
        main()      
        # Configuración Moveit.
        moveit_commander.roscpp_initialize(sys.argv)
        whole_body.allow_replanning(True)
        whole_body.set_num_planning_attempts(5)
        whole_body.set_workspace([-3.0, -3.0, 3.0, 3.0])
    except rospy.ROSInterruptException:
        pass
    