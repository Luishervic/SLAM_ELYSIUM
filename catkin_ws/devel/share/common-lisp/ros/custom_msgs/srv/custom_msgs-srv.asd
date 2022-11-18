
(cl:in-package :asdf)

(defsystem "custom_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "FindObject" :depends-on ("_package_FindObject"))
    (:file "_package_FindObject" :depends-on ("_package"))
    (:file "ForwardKinematics" :depends-on ("_package_ForwardKinematics"))
    (:file "_package_ForwardKinematics" :depends-on ("_package"))
    (:file "InverseKinematics" :depends-on ("_package_InverseKinematics"))
    (:file "_package_InverseKinematics" :depends-on ("_package"))
    (:file "SmoothPath" :depends-on ("_package_SmoothPath"))
    (:file "_package_SmoothPath" :depends-on ("_package"))
  ))