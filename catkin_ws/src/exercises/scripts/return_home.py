#!/usr/bin/env python3
import os
import rospy 
from geometry_msgs.msg import PoseStamped 
from actionlib_msgs.msg import GoalID

def exploracion(msg):
    if msg._md5sum == '302881f31927c1df708a2dbab0e80ee8':
        movebase_origen()
        os.system("cd /home/cire2022/ELYSIUM_NAV/catkin_ws/src/map_result; rosrun map_server map_saver -f result_exploration")
    return 0


####--------->FUNCION DE RETORNO PARA NUESTRO ORIGEN EN EL MAPA<---------####
def movebase_origen(): 
   # Creamos una nueva meta con el constructor PoseStamped.
    goal = PoseStamped()
    goal.header.frame_id = "map"
    goal.header.stamp = rospy.Time.now()
   # Asignamos las coordenadas con referencia a "map". No hace falta agregar todos los parametros. Solo a manera demostrativa... 
    goal.pose.position.x = 0
    goal.pose.position.y = 0
   # Orientacion
    goal.pose.orientation.w = 1.0 
    # Resultado de la ejecucion de la accion.
    goal_publisher.publish(goal)

    return 0    

def main():
    global goal_publisher, exploration_data
    print("Etapa 04 Mapeo y Localización Elysium...")
    rospy.init_node("Mapping_Elysium")
    exploration_data = rospy.Subscriber("/move_base/cancel", GoalID, exploracion)
    goal_publisher = rospy.Publisher("move_base_simple/goal", PoseStamped, queue_size=10)
    rospy.spin()
    
if __name__ == '__main__':
    try:
        main()      
    except rospy.ROSInterruptException:
        pass