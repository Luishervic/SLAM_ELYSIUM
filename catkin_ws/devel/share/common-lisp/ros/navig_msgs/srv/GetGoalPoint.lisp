; Auto-generated. Do not edit!


(cl:in-package navig_msgs-srv)


;//! \htmlinclude GetGoalPoint-request.msg.html

(cl:defclass <GetGoalPoint-request> (roslisp-msg-protocol:ros-message)
  ((pos_x_robot
    :reader pos_x_robot
    :initarg :pos_x_robot
    :type cl:float
    :initform 0.0)
   (pos_y_robot
    :reader pos_y_robot
    :initarg :pos_y_robot
    :type cl:float
    :initform 0.0)
   (pos_a_robot
    :reader pos_a_robot
    :initarg :pos_a_robot
    :type cl:float
    :initform 0.0)
   (points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (last_objective
    :reader last_objective
    :initarg :last_objective
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (method
    :reader method
    :initarg :method
    :type cl:string
    :initform ""))
)

(cl:defclass GetGoalPoint-request (<GetGoalPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGoalPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGoalPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navig_msgs-srv:<GetGoalPoint-request> is deprecated: use navig_msgs-srv:GetGoalPoint-request instead.")))

(cl:ensure-generic-function 'pos_x_robot-val :lambda-list '(m))
(cl:defmethod pos_x_robot-val ((m <GetGoalPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navig_msgs-srv:pos_x_robot-val is deprecated.  Use navig_msgs-srv:pos_x_robot instead.")
  (pos_x_robot m))

(cl:ensure-generic-function 'pos_y_robot-val :lambda-list '(m))
(cl:defmethod pos_y_robot-val ((m <GetGoalPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navig_msgs-srv:pos_y_robot-val is deprecated.  Use navig_msgs-srv:pos_y_robot instead.")
  (pos_y_robot m))

(cl:ensure-generic-function 'pos_a_robot-val :lambda-list '(m))
(cl:defmethod pos_a_robot-val ((m <GetGoalPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navig_msgs-srv:pos_a_robot-val is deprecated.  Use navig_msgs-srv:pos_a_robot instead.")
  (pos_a_robot m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <GetGoalPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navig_msgs-srv:points-val is deprecated.  Use navig_msgs-srv:points instead.")
  (points m))

(cl:ensure-generic-function 'last_objective-val :lambda-list '(m))
(cl:defmethod last_objective-val ((m <GetGoalPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navig_msgs-srv:last_objective-val is deprecated.  Use navig_msgs-srv:last_objective instead.")
  (last_objective m))

(cl:ensure-generic-function 'method-val :lambda-list '(m))
(cl:defmethod method-val ((m <GetGoalPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navig_msgs-srv:method-val is deprecated.  Use navig_msgs-srv:method instead.")
  (method m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGoalPoint-request>) ostream)
  "Serializes a message object of type '<GetGoalPoint-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_x_robot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_y_robot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_a_robot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_objective) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'method))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'method))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGoalPoint-request>) istream)
  "Deserializes a message object of type '<GetGoalPoint-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_x_robot) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_y_robot) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_a_robot) (roslisp-utils:decode-single-float-bits bits)))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_objective) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'method) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'method) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGoalPoint-request>)))
  "Returns string type for a service object of type '<GetGoalPoint-request>"
  "navig_msgs/GetGoalPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGoalPoint-request)))
  "Returns string type for a service object of type 'GetGoalPoint-request"
  "navig_msgs/GetGoalPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGoalPoint-request>)))
  "Returns md5sum for a message object of type '<GetGoalPoint-request>"
  "3113fe99463fffd3cbc7bac1e2ddceeb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGoalPoint-request)))
  "Returns md5sum for a message object of type 'GetGoalPoint-request"
  "3113fe99463fffd3cbc7bac1e2ddceeb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGoalPoint-request>)))
  "Returns full string definition for message of type '<GetGoalPoint-request>"
  (cl:format cl:nil "float32 pos_x_robot~%float32 pos_y_robot~%float32 pos_a_robot~%geometry_msgs/Point[] points~%geometry_msgs/Point last_objective~%string method~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGoalPoint-request)))
  "Returns full string definition for message of type 'GetGoalPoint-request"
  (cl:format cl:nil "float32 pos_x_robot~%float32 pos_y_robot~%float32 pos_a_robot~%geometry_msgs/Point[] points~%geometry_msgs/Point last_objective~%string method~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGoalPoint-request>))
  (cl:+ 0
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_objective))
     4 (cl:length (cl:slot-value msg 'method))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGoalPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGoalPoint-request
    (cl:cons ':pos_x_robot (pos_x_robot msg))
    (cl:cons ':pos_y_robot (pos_y_robot msg))
    (cl:cons ':pos_a_robot (pos_a_robot msg))
    (cl:cons ':points (points msg))
    (cl:cons ':last_objective (last_objective msg))
    (cl:cons ':method (method msg))
))
;//! \htmlinclude GetGoalPoint-response.msg.html

(cl:defclass <GetGoalPoint-response> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass GetGoalPoint-response (<GetGoalPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGoalPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGoalPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navig_msgs-srv:<GetGoalPoint-response> is deprecated: use navig_msgs-srv:GetGoalPoint-response instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <GetGoalPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navig_msgs-srv:goal-val is deprecated.  Use navig_msgs-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGoalPoint-response>) ostream)
  "Serializes a message object of type '<GetGoalPoint-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGoalPoint-response>) istream)
  "Deserializes a message object of type '<GetGoalPoint-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGoalPoint-response>)))
  "Returns string type for a service object of type '<GetGoalPoint-response>"
  "navig_msgs/GetGoalPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGoalPoint-response)))
  "Returns string type for a service object of type 'GetGoalPoint-response"
  "navig_msgs/GetGoalPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGoalPoint-response>)))
  "Returns md5sum for a message object of type '<GetGoalPoint-response>"
  "3113fe99463fffd3cbc7bac1e2ddceeb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGoalPoint-response)))
  "Returns md5sum for a message object of type 'GetGoalPoint-response"
  "3113fe99463fffd3cbc7bac1e2ddceeb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGoalPoint-response>)))
  "Returns full string definition for message of type '<GetGoalPoint-response>"
  (cl:format cl:nil "~%geometry_msgs/Point goal~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGoalPoint-response)))
  "Returns full string definition for message of type 'GetGoalPoint-response"
  (cl:format cl:nil "~%geometry_msgs/Point goal~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGoalPoint-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGoalPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGoalPoint-response
    (cl:cons ':goal (goal msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGoalPoint)))
  'GetGoalPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGoalPoint)))
  'GetGoalPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGoalPoint)))
  "Returns string type for a service object of type '<GetGoalPoint>"
  "navig_msgs/GetGoalPoint")