; Auto-generated. Do not edit!


(cl:in-package navig_msgs-srv)


;//! \htmlinclude GetInflatedMap-request.msg.html

(cl:defclass <GetInflatedMap-request> (roslisp-msg-protocol:ros-message)
  ((inflated_cells
    :reader inflated_cells
    :initarg :inflated_cells
    :type cl:float
    :initform 0.0)
   (map
    :reader map
    :initarg :map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid)))
)

(cl:defclass GetInflatedMap-request (<GetInflatedMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInflatedMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInflatedMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navig_msgs-srv:<GetInflatedMap-request> is deprecated: use navig_msgs-srv:GetInflatedMap-request instead.")))

(cl:ensure-generic-function 'inflated_cells-val :lambda-list '(m))
(cl:defmethod inflated_cells-val ((m <GetInflatedMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navig_msgs-srv:inflated_cells-val is deprecated.  Use navig_msgs-srv:inflated_cells instead.")
  (inflated_cells m))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <GetInflatedMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navig_msgs-srv:map-val is deprecated.  Use navig_msgs-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInflatedMap-request>) ostream)
  "Serializes a message object of type '<GetInflatedMap-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inflated_cells))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInflatedMap-request>) istream)
  "Deserializes a message object of type '<GetInflatedMap-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inflated_cells) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInflatedMap-request>)))
  "Returns string type for a service object of type '<GetInflatedMap-request>"
  "navig_msgs/GetInflatedMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInflatedMap-request)))
  "Returns string type for a service object of type 'GetInflatedMap-request"
  "navig_msgs/GetInflatedMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInflatedMap-request>)))
  "Returns md5sum for a message object of type '<GetInflatedMap-request>"
  "1076cd1faad58325fe5420c98658ec61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInflatedMap-request)))
  "Returns md5sum for a message object of type 'GetInflatedMap-request"
  "1076cd1faad58325fe5420c98658ec61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInflatedMap-request>)))
  "Returns full string definition for message of type '<GetInflatedMap-request>"
  (cl:format cl:nil "float32 inflated_cells~%nav_msgs/OccupancyGrid map~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInflatedMap-request)))
  "Returns full string definition for message of type 'GetInflatedMap-request"
  (cl:format cl:nil "float32 inflated_cells~%nav_msgs/OccupancyGrid map~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInflatedMap-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInflatedMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInflatedMap-request
    (cl:cons ':inflated_cells (inflated_cells msg))
    (cl:cons ':map (map msg))
))
;//! \htmlinclude GetInflatedMap-response.msg.html

(cl:defclass <GetInflatedMap-response> (roslisp-msg-protocol:ros-message)
  ((inflated_map
    :reader inflated_map
    :initarg :inflated_map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid)))
)

(cl:defclass GetInflatedMap-response (<GetInflatedMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInflatedMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInflatedMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navig_msgs-srv:<GetInflatedMap-response> is deprecated: use navig_msgs-srv:GetInflatedMap-response instead.")))

(cl:ensure-generic-function 'inflated_map-val :lambda-list '(m))
(cl:defmethod inflated_map-val ((m <GetInflatedMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navig_msgs-srv:inflated_map-val is deprecated.  Use navig_msgs-srv:inflated_map instead.")
  (inflated_map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInflatedMap-response>) ostream)
  "Serializes a message object of type '<GetInflatedMap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'inflated_map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInflatedMap-response>) istream)
  "Deserializes a message object of type '<GetInflatedMap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'inflated_map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInflatedMap-response>)))
  "Returns string type for a service object of type '<GetInflatedMap-response>"
  "navig_msgs/GetInflatedMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInflatedMap-response)))
  "Returns string type for a service object of type 'GetInflatedMap-response"
  "navig_msgs/GetInflatedMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInflatedMap-response>)))
  "Returns md5sum for a message object of type '<GetInflatedMap-response>"
  "1076cd1faad58325fe5420c98658ec61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInflatedMap-response)))
  "Returns md5sum for a message object of type 'GetInflatedMap-response"
  "1076cd1faad58325fe5420c98658ec61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInflatedMap-response>)))
  "Returns full string definition for message of type '<GetInflatedMap-response>"
  (cl:format cl:nil "~%nav_msgs/OccupancyGrid inflated_map~%~%~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInflatedMap-response)))
  "Returns full string definition for message of type 'GetInflatedMap-response"
  (cl:format cl:nil "~%nav_msgs/OccupancyGrid inflated_map~%~%~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInflatedMap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'inflated_map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInflatedMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInflatedMap-response
    (cl:cons ':inflated_map (inflated_map msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetInflatedMap)))
  'GetInflatedMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetInflatedMap)))
  'GetInflatedMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInflatedMap)))
  "Returns string type for a service object of type '<GetInflatedMap>"
  "navig_msgs/GetInflatedMap")