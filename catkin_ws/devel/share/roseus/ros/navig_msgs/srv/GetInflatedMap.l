;; Auto-generated. Do not edit!


(when (boundp 'navig_msgs::GetInflatedMap)
  (if (not (find-package "NAVIG_MSGS"))
    (make-package "NAVIG_MSGS"))
  (shadow 'GetInflatedMap (find-package "NAVIG_MSGS")))
(unless (find-package "NAVIG_MSGS::GETINFLATEDMAP")
  (make-package "NAVIG_MSGS::GETINFLATEDMAP"))
(unless (find-package "NAVIG_MSGS::GETINFLATEDMAPREQUEST")
  (make-package "NAVIG_MSGS::GETINFLATEDMAPREQUEST"))
(unless (find-package "NAVIG_MSGS::GETINFLATEDMAPRESPONSE")
  (make-package "NAVIG_MSGS::GETINFLATEDMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass navig_msgs::GetInflatedMapRequest
  :super ros::object
  :slots (_inflated_cells _map ))

(defmethod navig_msgs::GetInflatedMapRequest
  (:init
   (&key
    ((:inflated_cells __inflated_cells) 0.0)
    ((:map __map) (instance nav_msgs::OccupancyGrid :init))
    )
   (send-super :init)
   (setq _inflated_cells (float __inflated_cells))
   (setq _map __map)
   self)
  (:inflated_cells
   (&optional __inflated_cells)
   (if __inflated_cells (setq _inflated_cells __inflated_cells)) _inflated_cells)
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:serialization-length
   ()
   (+
    ;; float32 _inflated_cells
    4
    ;; nav_msgs/OccupancyGrid _map
    (send _map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _inflated_cells
       (sys::poke _inflated_cells (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; nav_msgs/OccupancyGrid _map
       (send _map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _inflated_cells
     (setq _inflated_cells (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; nav_msgs/OccupancyGrid _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;;
   self)
  )

(defclass navig_msgs::GetInflatedMapResponse
  :super ros::object
  :slots (_inflated_map ))

(defmethod navig_msgs::GetInflatedMapResponse
  (:init
   (&key
    ((:inflated_map __inflated_map) (instance nav_msgs::OccupancyGrid :init))
    )
   (send-super :init)
   (setq _inflated_map __inflated_map)
   self)
  (:inflated_map
   (&rest __inflated_map)
   (if (keywordp (car __inflated_map))
       (send* _inflated_map __inflated_map)
     (progn
       (if __inflated_map (setq _inflated_map (car __inflated_map)))
       _inflated_map)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/OccupancyGrid _inflated_map
    (send _inflated_map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/OccupancyGrid _inflated_map
       (send _inflated_map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/OccupancyGrid _inflated_map
     (send _inflated_map :deserialize buf ptr-) (incf ptr- (send _inflated_map :serialization-length))
   ;;
   self)
  )

(defclass navig_msgs::GetInflatedMap
  :super ros::object
  :slots ())

(setf (get navig_msgs::GetInflatedMap :md5sum-) "1076cd1faad58325fe5420c98658ec61")
(setf (get navig_msgs::GetInflatedMap :datatype-) "navig_msgs/GetInflatedMap")
(setf (get navig_msgs::GetInflatedMap :request) navig_msgs::GetInflatedMapRequest)
(setf (get navig_msgs::GetInflatedMap :response) navig_msgs::GetInflatedMapResponse)

(defmethod navig_msgs::GetInflatedMapRequest
  (:response () (instance navig_msgs::GetInflatedMapResponse :init)))

(setf (get navig_msgs::GetInflatedMapRequest :md5sum-) "1076cd1faad58325fe5420c98658ec61")
(setf (get navig_msgs::GetInflatedMapRequest :datatype-) "navig_msgs/GetInflatedMapRequest")
(setf (get navig_msgs::GetInflatedMapRequest :definition-)
      "float32 inflated_cells
nav_msgs/OccupancyGrid map

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

nav_msgs/OccupancyGrid inflated_map



================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get navig_msgs::GetInflatedMapResponse :md5sum-) "1076cd1faad58325fe5420c98658ec61")
(setf (get navig_msgs::GetInflatedMapResponse :datatype-) "navig_msgs/GetInflatedMapResponse")
(setf (get navig_msgs::GetInflatedMapResponse :definition-)
      "float32 inflated_cells
nav_msgs/OccupancyGrid map

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

nav_msgs/OccupancyGrid inflated_map



================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :navig_msgs/GetInflatedMap "1076cd1faad58325fe5420c98658ec61")


