; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude SmoothPath-request.msg.html

(cl:defclass <SmoothPath-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass SmoothPath-request (<SmoothPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SmoothPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SmoothPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<SmoothPath-request> is deprecated: use custom_msgs-srv:SmoothPath-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <SmoothPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:path-val is deprecated.  Use custom_msgs-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SmoothPath-request>) ostream)
  "Serializes a message object of type '<SmoothPath-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SmoothPath-request>) istream)
  "Deserializes a message object of type '<SmoothPath-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SmoothPath-request>)))
  "Returns string type for a service object of type '<SmoothPath-request>"
  "custom_msgs/SmoothPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SmoothPath-request)))
  "Returns string type for a service object of type 'SmoothPath-request"
  "custom_msgs/SmoothPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SmoothPath-request>)))
  "Returns md5sum for a message object of type '<SmoothPath-request>"
  "1289371252c92dded0a65b38c8275c64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SmoothPath-request)))
  "Returns md5sum for a message object of type 'SmoothPath-request"
  "1289371252c92dded0a65b38c8275c64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SmoothPath-request>)))
  "Returns full string definition for message of type '<SmoothPath-request>"
  (cl:format cl:nil "nav_msgs/Path path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SmoothPath-request)))
  "Returns full string definition for message of type 'SmoothPath-request"
  (cl:format cl:nil "nav_msgs/Path path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SmoothPath-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SmoothPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SmoothPath-request
    (cl:cons ':path (path msg))
))
;//! \htmlinclude SmoothPath-response.msg.html

(cl:defclass <SmoothPath-response> (roslisp-msg-protocol:ros-message)
  ((smooth_path
    :reader smooth_path
    :initarg :smooth_path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass SmoothPath-response (<SmoothPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SmoothPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SmoothPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<SmoothPath-response> is deprecated: use custom_msgs-srv:SmoothPath-response instead.")))

(cl:ensure-generic-function 'smooth_path-val :lambda-list '(m))
(cl:defmethod smooth_path-val ((m <SmoothPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:smooth_path-val is deprecated.  Use custom_msgs-srv:smooth_path instead.")
  (smooth_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SmoothPath-response>) ostream)
  "Serializes a message object of type '<SmoothPath-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'smooth_path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SmoothPath-response>) istream)
  "Deserializes a message object of type '<SmoothPath-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'smooth_path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SmoothPath-response>)))
  "Returns string type for a service object of type '<SmoothPath-response>"
  "custom_msgs/SmoothPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SmoothPath-response)))
  "Returns string type for a service object of type 'SmoothPath-response"
  "custom_msgs/SmoothPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SmoothPath-response>)))
  "Returns md5sum for a message object of type '<SmoothPath-response>"
  "1289371252c92dded0a65b38c8275c64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SmoothPath-response)))
  "Returns md5sum for a message object of type 'SmoothPath-response"
  "1289371252c92dded0a65b38c8275c64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SmoothPath-response>)))
  "Returns full string definition for message of type '<SmoothPath-response>"
  (cl:format cl:nil "nav_msgs/Path smooth_path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SmoothPath-response)))
  "Returns full string definition for message of type 'SmoothPath-response"
  (cl:format cl:nil "nav_msgs/Path smooth_path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SmoothPath-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'smooth_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SmoothPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SmoothPath-response
    (cl:cons ':smooth_path (smooth_path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SmoothPath)))
  'SmoothPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SmoothPath)))
  'SmoothPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SmoothPath)))
  "Returns string type for a service object of type '<SmoothPath>"
  "custom_msgs/SmoothPath")