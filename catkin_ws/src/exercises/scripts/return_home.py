#!/usr/bin/env python3
import os
import rospy 
from geometry_msgs.msg import PoseStamped 
from actionlib_msgs.msg import GoalID

def exploracion(msg):
    #GoalID único que el algoritmo de exploración publicará, cuando finalice.
    if msg._md5sum == '302881f31927c1df708a2dbab0e80ee8':
        # Nos movemos al origen
        move_base_origen()
        # Ejecutamos dos comandos en la terminal, definimos de almacenamiento y guardamos el mapa.
        os.system("cd /home/cire2022/ELYSIUM_NAV/catkin_ws/src/map_result; rosrun map_server map_saver -f result_exploration")
    return 0


####--------->FUNCIÓN DE RETORNO PARA NUESTRO ORIGEN EN EL MAPA<---------####
def move_base_origen(): 
   # Creamos una nueva meta con el constructor PoseStamped.
    goal = PoseStamped()
    goal.header.frame_id = "map"
    goal.header.stamp = rospy.Time.now()
   # Asignamos las coordenadas con referencia a "map". No hace falta agregar todos los parámetros.
    goal.pose.position.y = 0
   # Orientación
    goal.pose.orientation.w = 1.0 
    # Finalmente publicamos la meta.
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