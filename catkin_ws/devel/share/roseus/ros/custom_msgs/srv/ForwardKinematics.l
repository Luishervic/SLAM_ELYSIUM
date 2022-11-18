;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::ForwardKinematics)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'ForwardKinematics (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::FORWARDKINEMATICS")
  (make-package "CUSTOM_MSGS::FORWARDKINEMATICS"))
(unless (find-package "CUSTOM_MSGS::FORWARDKINEMATICSREQUEST")
  (make-package "CUSTOM_MSGS::FORWARDKINEMATICSREQUEST"))
(unless (find-package "CUSTOM_MSGS::FORWARDKINEMATICSRESPONSE")
  (make-package "CUSTOM_MSGS::FORWARDKINEMATICSRESPONSE"))

(in-package "ROS")





(defclass custom_msgs::ForwardKinematicsRequest
  :super ros::object
  :slots (_q1 _q2 _q3 _q4 _q5 _q6 _q7 ))

(defmethod custom_msgs::ForwardKinematicsRequest
  (:init
   (&key
    ((:q1 __q1) 0.0)
    ((:q2 __q2) 0.0)
    ((:q3 __q3) 0.0)
    ((:q4 __q4) 0.0)
    ((:q5 __q5) 0.0)
    ((:q6 __q6) 0.0)
    ((:q7 __q7) 0.0)
    )
   (send-super :init)
   (setq _q1 (float __q1))
   (setq _q2 (float __q2))
   (setq _q3 (float __q3))
   (setq _q4 (float __q4))
   (setq _q5 (float __q5))
   (setq _q6 (float __q6))
   (setq _q7 (float __q7))
   self)
  (:q1
   (&optional __q1)
   (if __q1 (setq _q1 __q1)) _q1)
  (:q2
   (&optional __q2)
   (if __q2 (setq _q2 __q2)) _q2)
  (:q3
   (&optional __q3)
   (if __q3 (setq _q3 __q3)) _q3)
  (:q4
   (&optional __q4)
   (if __q4 (setq _q4 __q4)) _q4)
  (:q5
   (&optional __q5)
   (if __q5 (setq _q5 __q5)) _q5)
  (:q6
   (&optional __q6)
   (if __q6 (setq _q6 __q6)) _q6)
  (:q7
   (&optional __q7)
   (if __q7 (setq _q7 __q7)) _q7)
  (:serialization-length
   ()
   (+
    ;; float64 _q1
    8
    ;; float64 _q2
    8
    ;; float64 _q3
    8
    ;; float64 _q4
    8
    ;; float64 _q5
    8
    ;; float64 _q6
    8
    ;; float64 _q7
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _q1
       (sys::poke _q1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _q2
       (sys::poke _q2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _q3
       (sys::poke _q3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _q4
       (sys::poke _q4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _q5
       (sys::poke _q5 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _q6
       (sys::poke _q6 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _q7
       (sys::poke _q7 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _q1
     (setq _q1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _q2
     (setq _q2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _q3
     (setq _q3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _q4
     (setq _q4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _q5
     (setq _q5 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _q6
     (setq _q6 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _q7
     (setq _q7 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass custom_msgs::ForwardKinematicsResponse
  :super ros::object
  :slots (_x _y _z _roll _pitch _yaw ))

(defmethod custom_msgs::ForwardKinematicsResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass custom_msgs::ForwardKinematics
  :super ros::object
  :slots ())

(setf (get custom_msgs::ForwardKinematics :md5sum-) "a401f28a715e8b3da782b8e7a5889085")
(setf (get custom_msgs::ForwardKinematics :datatype-) "custom_msgs/ForwardKinematics")
(setf (get custom_msgs::ForwardKinematics :request) custom_msgs::ForwardKinematicsRequest)
(setf (get custom_msgs::ForwardKinematics :response) custom_msgs::ForwardKinematicsResponse)

(defmethod custom_msgs::ForwardKinematicsRequest
  (:response () (instance custom_msgs::ForwardKinematicsResponse :init)))

(setf (get custom_msgs::ForwardKinematicsRequest :md5sum-) "a401f28a715e8b3da782b8e7a5889085")
(setf (get custom_msgs::ForwardKinematicsRequest :datatype-) "custom_msgs/ForwardKinematicsRequest")
(setf (get custom_msgs::ForwardKinematicsRequest :definition-)
      "float64 q1
float64 q2
float64 q3
float64 q4
float64 q5
float64 q6
float64 q7
---
float64 x
float64 y
float64 z
float64 roll
float64 pitch
float64 yaw


")

(setf (get custom_msgs::ForwardKinematicsResponse :md5sum-) "a401f28a715e8b3da782b8e7a5889085")
(setf (get custom_msgs::ForwardKinematicsResponse :datatype-) "custom_msgs/ForwardKinematicsResponse")
(setf (get custom_msgs::ForwardKinematicsResponse :definition-)
      "float64 q1
float64 q2
float64 q3
float64 q4
float64 q5
float64 q6
float64 q7
---
float64 x
float64 y
float64 z
float64 roll
float64 pitch
float64 yaw


")



(provide :custom_msgs/ForwardKinematics "a401f28a715e8b3da782b8e7a5889085")


