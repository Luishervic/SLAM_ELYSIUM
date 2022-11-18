
(cl:in-package :asdf)

(defsystem "navig_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "GetBoundaryPoints" :depends-on ("_package_GetBoundaryPoints"))
    (:file "_package_GetBoundaryPoints" :depends-on ("_package"))
    (:file "GetGoalPoint" :depends-on ("_package_GetGoalPoint"))
    (:file "_package_GetGoalPoint" :depends-on ("_package"))
    (:file "GetInflatedMap" :depends-on ("_package_GetInflatedMap"))
    (:file "_package_GetInflatedMap" :depends-on ("_package"))
  ))