;; Auto-generated. Do not edit!


(when (boundp 'navig_msgs::GetBoundaryPoints)
  (if (not (find-package "NAVIG_MSGS"))
    (make-package "NAVIG_MSGS"))
  (shadow 'GetBoundaryPoints (find-package "NAVIG_MSGS")))
(unless (find-package "NAVIG_MSGS::GETBOUNDARYPOINTS")
  (make-package "NAVIG_MSGS::GETBOUNDARYPOINTS"))
(unless (find-package "NAVIG_MSGS::GETBOUNDARYPOINTSREQUEST")
  (make-package "NAVIG_MSGS::GETBOUNDARYPOINTSREQUEST"))
(unless (find-package "NAVIG_MSGS::GETBOUNDARYPOINTSRESPONSE")
  (make-package "NAVIG_MSGS::GETBOUNDARYPOINTSRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass navig_msgs::GetBoundaryPointsRequest
  :super ros::object
  :slots (_map ))

(defmethod navig_msgs::GetBoundaryPointsRequest
  (:init
   (&key
    ((:map __map) (instance nav_msgs::OccupancyGrid :init))
    )
   (send-super :init)
   (setq _map __map)
   self)
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
    ;; nav_msgs/OccupancyGrid _map
    (send _map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/OccupancyGrid _map
       (send _map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/OccupancyGrid _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;;
   self)
  )

(defclass navig_msgs::GetBoundaryPointsResponse
  :super ros::object
  :slots (_points ))

(defmethod navig_msgs::GetBoundaryPointsResponse
  (:init
   (&key
    ((:points __points) ())
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass navig_msgs::GetBoundaryPoints
  :super ros::object
  :slots ())

(setf (get navig_msgs::GetBoundaryPoints :md5sum-) "02a9aa7e9edaf214676773e60b196734")
(setf (get navig_msgs::GetBoundaryPoints :datatype-) "navig_msgs/GetBoundaryPoints")
(setf (get navig_msgs::GetBoundaryPoints :request) navig_msgs::GetBoundaryPointsRequest)
(setf (get navig_msgs::GetBoundaryPoints :response) navig_msgs::GetBoundaryPointsResponse)

(defmethod navig_msgs::GetBoundaryPointsRequest
  (:response () (instance navig_msgs::GetBoundaryPointsResponse :init)))

(setf (get navig_msgs::GetBoundaryPointsRequest :md5sum-) "02a9aa7e9edaf214676773e60b196734")
(setf (get navig_msgs::GetBoundaryPointsRequest :datatype-) "navig_msgs/GetBoundaryPointsRequest")
(setf (get navig_msgs::GetBoundaryPointsRequest :definition-)
      "nav_msgs/OccupancyGrid map

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
geometry_msgs/Point[] points




================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get navig_msgs::GetBoundaryPointsResponse :md5sum-) "02a9aa7e9edaf214676773e60b196734")
(setf (get navig_msgs::GetBoundaryPointsResponse :datatype-) "navig_msgs/GetBoundaryPointsResponse")
(setf (get navig_msgs::GetBoundaryPointsResponse :definition-)
      "nav_msgs/OccupancyGrid map

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
geometry_msgs/Point[] points




================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :navig_msgs/GetBoundaryPoints "02a9aa7e9edaf214676773e60b196734")


