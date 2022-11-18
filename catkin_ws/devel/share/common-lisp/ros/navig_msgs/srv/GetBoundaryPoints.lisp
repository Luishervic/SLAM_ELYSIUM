; Auto-generated. Do not edit!


(cl:in-package navig_msgs-srv)


;//! \htmlinclude GetBoundaryPoints-request.msg.html

(cl:defclass <GetBoundaryPoints-request> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid)))
)

(cl:defclass GetBoundaryPoints-request (<GetBoundaryPoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBoundaryPoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBoundaryPoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navig_msgs-srv:<GetBoundaryPoints-request> is deprecated: use navig_msgs-srv:GetBoundaryPoints-request instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <GetBoundaryPoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navig_msgs-srv:map-val is deprecated.  Use navig_msgs-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBoundaryPoints-request>) ostream)
  "Serializes a message object of type '<GetBoundaryPoints-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBoundaryPoints-request>) istream)
  "Deserializes a message object of type '<GetBoundaryPoints-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBoundaryPoints-request>)))
  "Returns string type for a service object of type '<GetBoundaryPoints-request>"
  "navig_msgs/GetBoundaryPointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBoundaryPoints-request)))
  "Returns string type for a service object of type 'GetBoundaryPoints-request"
  "navig_msgs/GetBoundaryPointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBoundaryPoints-request>)))
  "Returns md5sum for a message object of type '<GetBoundaryPoints-request>"
  "02a9aa7e9edaf214676773e60b196734")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBoundaryPoints-request)))
  "Returns md5sum for a message object of type 'GetBoundaryPoints-request"
  "02a9aa7e9edaf214676773e60b196734")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBoundaryPoints-request>)))
  "Returns full string definition for message of type '<GetBoundaryPoints-request>"
  (cl:format cl:nil "nav_msgs/OccupancyGrid map~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBoundaryPoints-request)))
  "Returns full string definition for message of type 'GetBoundaryPoints-request"
  (cl:format cl:nil "nav_msgs/OccupancyGrid map~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBoundaryPoints-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBoundaryPoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBoundaryPoints-request
    (cl:cons ':map (map msg))
))
;//! \htmlinclude GetBoundaryPoints-response.msg.html

(cl:defclass <GetBoundaryPoints-response> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass GetBoundaryPoints-response (<GetBoundaryPoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBoundaryPoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBoundaryPoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navig_msgs-srv:<GetBoundaryPoints-response> is deprecated: use navig_msgs-srv:GetBoundaryPoints-response instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <GetBoundaryPoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navig_msgs-srv:points-val is deprecated.  Use navig_msgs-srv:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBoundaryPoints-response>) ostream)
  "Serializes a message object of type '<GetBoundaryPoints-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBoundaryPoints-response>) istream)
  "Deserializes a message object of type '<GetBoundaryPoints-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBoundaryPoints-response>)))
  "Returns string type for a service object of type '<GetBoundaryPoints-response>"
  "navig_msgs/GetBoundaryPointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBoundaryPoints-response)))
  "Returns string type for a service object of type 'GetBoundaryPoints-response"
  "navig_msgs/GetBoundaryPointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBoundaryPoints-response>)))
  "Returns md5sum for a message object of type '<GetBoundaryPoints-response>"
  "02a9aa7e9edaf214676773e60b196734")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBoundaryPoints-response)))
  "Returns md5sum for a message object of type 'GetBoundaryPoints-response"
  "02a9aa7e9edaf214676773e60b196734")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBoundaryPoints-response>)))
  "Returns full string definition for message of type '<GetBoundaryPoints-response>"
  (cl:format cl:nil "geometry_msgs/Point[] points~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBoundaryPoints-response)))
  "Returns full string definition for message of type 'GetBoundaryPoints-response"
  (cl:format cl:nil "geometry_msgs/Point[] points~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBoundaryPoints-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBoundaryPoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBoundaryPoints-response
    (cl:cons ':points (points msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetBoundaryPoints)))
  'GetBoundaryPoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetBoundaryPoints)))
  'GetBoundaryPoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBoundaryPoints)))
  "Returns string type for a service object of type '<GetBoundaryPoints>"
  "navig_msgs/GetBoundaryPoints")