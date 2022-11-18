;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::SmoothPath)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'SmoothPath (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::SMOOTHPATH")
  (make-package "CUSTOM_MSGS::SMOOTHPATH"))
(unless (find-package "CUSTOM_MSGS::SMOOTHPATHREQUEST")
  (make-package "CUSTOM_MSGS::SMOOTHPATHREQUEST"))
(unless (find-package "CUSTOM_MSGS::SMOOTHPATHRESPONSE")
  (make-package "CUSTOM_MSGS::SMOOTHPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass custom_msgs::SmoothPathRequest
  :super ros::object
  :slots (_path ))

(defmethod custom_msgs::SmoothPathRequest
  (:init
   (&key
    ((:path __path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _path __path)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;;
   self)
  )

(defclass custom_msgs::SmoothPathResponse
  :super ros::object
  :slots (_smooth_path ))

(defmethod custom_msgs::SmoothPathResponse
  (:init
   (&key
    ((:smooth_path __smooth_path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _smooth_path __smooth_path)
   self)
  (:smooth_path
   (&rest __smooth_path)
   (if (keywordp (car __smooth_path))
       (send* _smooth_path __smooth_path)
     (progn
       (if __smooth_path (setq _smooth_path (car __smooth_path)))
       _smooth_path)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _smooth_path
    (send _smooth_path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _smooth_path
       (send _smooth_path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _smooth_path
     (send _smooth_path :deserialize buf ptr-) (incf ptr- (send _smooth_path :serialization-length))
   ;;
   self)
  )

(defclass custom_msgs::SmoothPath
  :super ros::object
  :slots ())

(setf (get custom_msgs::SmoothPath :md5sum-) "1289371252c92dded0a65b38c8275c64")
(setf (get custom_msgs::SmoothPath :datatype-) "custom_msgs/SmoothPath")
(setf (get custom_msgs::SmoothPath :request) custom_msgs::SmoothPathRequest)
(setf (get custom_msgs::SmoothPath :response) custom_msgs::SmoothPathResponse)

(defmethod custom_msgs::SmoothPathRequest
  (:response () (instance custom_msgs::SmoothPathResponse :init)))

(setf (get custom_msgs::SmoothPathRequest :md5sum-) "1289371252c92dded0a65b38c8275c64")
(setf (get custom_msgs::SmoothPathRequest :datatype-) "custom_msgs/SmoothPathRequest")
(setf (get custom_msgs::SmoothPathRequest :definition-)
      "nav_msgs/Path path

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
nav_msgs/Path smooth_path

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

(setf (get custom_msgs::SmoothPathResponse :md5sum-) "1289371252c92dded0a65b38c8275c64")
(setf (get custom_msgs::SmoothPathResponse :datatype-) "custom_msgs/SmoothPathResponse")
(setf (get custom_msgs::SmoothPathResponse :definition-)
      "nav_msgs/Path path

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
nav_msgs/Path smooth_path

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :custom_msgs/SmoothPath "1289371252c92dded0a65b38c8275c64")


