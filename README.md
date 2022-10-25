# SLAM_ELYSIUM.
## Entregables de la Etapa 04 del Concurso Iberoamericano de Robótica Espacial 2022.
- Equipo: Elysium.
- Institución: TECNM Campus Uruapan.
## _SLAM (Simultaneous Localization And Mapping)_
La inspección trabaja por medio de la exploración basada en fronteras, que podemos visualizar por medio del tópico /explore→/frontiers→MarkerArray de esta manera el robot irá explorando cada una de ellas de acuerdo a su prioridad, se visualizará en pantalla dos tipos de fronteras: 
* Rojas : Son las fronteras descartadas para la exploración, estas debido a las dimensiones del robot son físicamente imposibles de alcanzar, o son fronteras tan pequeñas que el algoritmo determina que no son de gran prioridad.
* Azules: Son las fronteras a explorar y hacia donde el robot se dirigirá, hasta que cada una de las fronteras de este tipo sean exploradas.

De este modo el script y la determinación de que el ambiente está completamente explorado no está en función del tiempo, el algoritmo detiene la búsqueda cuando ya no hay fronteras por explorar. 

--> Ejecutables en catkin_ws/src/exercises/scripts

## Instrucciones de ejecución.
Próximamente… 
## Errores comunes.
Próximamente... 

:)
