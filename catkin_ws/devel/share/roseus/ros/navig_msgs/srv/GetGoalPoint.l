;; Auto-generated. Do not edit!


(when (boundp 'navig_msgs::GetGoalPoint)
  (if (not (find-package "NAVIG_MSGS"))
    (make-package "NAVIG_MSGS"))
  (shadow 'GetGoalPoint (find-package "NAVIG_MSGS")))
(unless (find-package "NAVIG_MSGS::GETGOALPOINT")
  (make-package "NAVIG_MSGS::GETGOALPOINT"))
(unless (find-package "NAVIG_MSGS::GETGOALPOINTREQUEST")
  (make-package "NAVIG_MSGS::GETGOALPOINTREQUEST"))
(unless (find-package "NAVIG_MSGS::GETGOALPOINTRESPONSE")
  (make-package "NAVIG_MSGS::GETGOALPOINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass navig_msgs::GetGoalPointRequest
  :super ros::object
  :slots (_pos_x_robot _pos_y_robot _pos_a_robot _points _last_objective _method ))

(defmethod navig_msgs::GetGoalPointRequest
  (:init
   (&key
    ((:pos_x_robot __pos_x_robot) 0.0)
    ((:pos_y_robot __pos_y_robot) 0.0)
    ((:pos_a_robot __pos_a_robot) 0.0)
    ((:points __points) ())
    ((:last_objective __last_objective) (instance geometry_msgs::Point :init))
    ((:method __method) "")
    )
   (send-super :init)
   (setq _pos_x_robot (float __pos_x_robot))
   (setq _pos_y_robot (float __pos_y_robot))
   (setq _pos_a_robot (float __pos_a_robot))
   (setq _points __points)
   (setq _last_objective __last_objective)
   (setq _method (string __method))
   self)
  (:pos_x_robot
   (&optional __pos_x_robot)
   (if __pos_x_robot (setq _pos_x_robot __pos_x_robot)) _pos_x_robot)
  (:pos_y_robot
   (&optional __pos_y_robot)
   (if __pos_y_robot (setq _pos_y_robot __pos_y_robot)) _pos_y_robot)
  (:pos_a_robot
   (&optional __pos_a_robot)
   (if __pos_a_robot (setq _pos_a_robot __pos_a_robot)) _pos_a_robot)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:last_objective
   (&rest __last_objective)
   (if (keywordp (car __last_objective))
       (send* _last_objective __last_objective)
     (progn
       (if __last_objective (setq _last_objective (car __last_objective)))
       _last_objective)))
  (:method
   (&optional __method)
   (if __method (setq _method __method)) _method)
  (:serialization-length
   ()
   (+
    ;; float32 _pos_x_robot
    4
    ;; float32 _pos_y_robot
    4
    ;; float32 _pos_a_robot
    4
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; geometry_msgs/Point _last_objective
    (send _last_objective :serialization-length)
    ;; string _method
    4 (length _method)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pos_x_robot
       (sys::poke _pos_x_robot (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pos_y_robot
       (sys::poke _pos_y_robot (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pos_a_robot
       (sys::poke _pos_a_robot (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point _last_objective
       (send _last_objective :serialize s)
     ;; string _method
       (write-long (length _method) s) (princ _method s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pos_x_robot
     (setq _pos_x_robot (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos_y_robot
     (setq _pos_y_robot (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos_a_robot
     (setq _pos_a_robot (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point _last_objective
     (send _last_objective :deserialize buf ptr-) (incf ptr- (send _last_objective :serialization-length))
   ;; string _method
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _method (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass navig_msgs::GetGoalPointResponse
  :super ros::object
  :slots (_goal ))

(defmethod navig_msgs::GetGoalPointResponse
  (:init
   (&key
    ((:goal __goal) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _goal __goal)
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass navig_msgs::GetGoalPoint
  :super ros::object
  :slots ())

(setf (get navig_msgs::GetGoalPoint :md5sum-) "3113fe99463fffd3cbc7bac1e2ddceeb")
(setf (get navig_msgs::GetGoalPoint :datatype-) "navig_msgs/GetGoalPoint")
(setf (get navig_msgs::GetGoalPoint :request) navig_msgs::GetGoalPointRequest)
(setf (get navig_msgs::GetGoalPoint :response) navig_msgs::GetGoalPointResponse)

(defmethod navig_msgs::GetGoalPointRequest
  (:response () (instance navig_msgs::GetGoalPointResponse :init)))

(setf (get navig_msgs::GetGoalPointRequest :md5sum-) "3113fe99463fffd3cbc7bac1e2ddceeb")
(setf (get navig_msgs::GetGoalPointRequest :datatype-) "navig_msgs/GetGoalPointRequest")
(setf (get navig_msgs::GetGoalPointRequest :definition-)
      "float32 pos_x_robot
float32 pos_y_robot
float32 pos_a_robot
geometry_msgs/Point[] points
geometry_msgs/Point last_objective
string method

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

geometry_msgs/Point goal


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get navig_msgs::GetGoalPointResponse :md5sum-) "3113fe99463fffd3cbc7bac1e2ddceeb")
(setf (get navig_msgs::GetGoalPointResponse :datatype-) "navig_msgs/GetGoalPointResponse")
(setf (get navig_msgs::GetGoalPointResponse :definition-)
      "float32 pos_x_robot
float32 pos_y_robot
float32 pos_a_robot
geometry_msgs/Point[] points
geometry_msgs/Point last_objective
string method

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

geometry_msgs/Point goal


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :navig_msgs/GetGoalPoint "3113fe99463fffd3cbc7bac1e2ddceeb")


