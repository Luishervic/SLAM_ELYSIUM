# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "navig_msgs: 2 messages, 3 services")

set(MSG_I_FLAGS "-Inavig_msgs:/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(navig_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg" NAME_WE)
add_custom_target(_navig_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navig_msgs" "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg" ""
)

get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/GeometryGraph.msg" NAME_WE)
add_custom_target(_navig_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navig_msgs" "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/GeometryGraph.msg" "std_msgs/Header:navig_msgs/Edges:geometry_msgs/Point"
)

get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetInflatedMap.srv" NAME_WE)
add_custom_target(_navig_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navig_msgs" "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetInflatedMap.srv" "std_msgs/Header:geometry_msgs/Quaternion:nav_msgs/MapMetaData:nav_msgs/OccupancyGrid:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetBoundaryPoints.srv" NAME_WE)
add_custom_target(_navig_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navig_msgs" "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetBoundaryPoints.srv" "std_msgs/Header:geometry_msgs/Quaternion:nav_msgs/MapMetaData:nav_msgs/OccupancyGrid:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetGoalPoint.srv" NAME_WE)
add_custom_target(_navig_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navig_msgs" "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetGoalPoint.srv" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_msgs
)
_generate_msg_cpp(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/GeometryGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_msgs
)

### Generating Services
_generate_srv_cpp(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetInflatedMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_msgs
)
_generate_srv_cpp(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetBoundaryPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_msgs
)
_generate_srv_cpp(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetGoalPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_msgs
)

### Generating Module File
_generate_module_cpp(navig_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(navig_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(navig_msgs_generate_messages navig_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg" NAME_WE)
add_dependencies(navig_msgs_generate_messages_cpp _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/GeometryGraph.msg" NAME_WE)
add_dependencies(navig_msgs_generate_messages_cpp _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetInflatedMap.srv" NAME_WE)
add_dependencies(navig_msgs_generate_messages_cpp _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetBoundaryPoints.srv" NAME_WE)
add_dependencies(navig_msgs_generate_messages_cpp _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetGoalPoint.srv" NAME_WE)
add_dependencies(navig_msgs_generate_messages_cpp _navig_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navig_msgs_gencpp)
add_dependencies(navig_msgs_gencpp navig_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navig_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_msgs
)
_generate_msg_eus(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/GeometryGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_msgs
)

### Generating Services
_generate_srv_eus(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetInflatedMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_msgs
)
_generate_srv_eus(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetBoundaryPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_msgs
)
_generate_srv_eus(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetGoalPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_msgs
)

### Generating Module File
_generate_module_eus(navig_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(navig_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(navig_msgs_generate_messages navig_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg" NAME_WE)
add_dependencies(navig_msgs_generate_messages_eus _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/GeometryGraph.msg" NAME_WE)
add_dependencies(navig_msgs_generate_messages_eus _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetInflatedMap.srv" NAME_WE)
add_dependencies(navig_msgs_generate_messages_eus _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetBoundaryPoints.srv" NAME_WE)
add_dependencies(navig_msgs_generate_messages_eus _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetGoalPoint.srv" NAME_WE)
add_dependencies(navig_msgs_generate_messages_eus _navig_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navig_msgs_geneus)
add_dependencies(navig_msgs_geneus navig_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navig_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_msgs
)
_generate_msg_lisp(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/GeometryGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_msgs
)

### Generating Services
_generate_srv_lisp(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetInflatedMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_msgs
)
_generate_srv_lisp(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetBoundaryPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_msgs
)
_generate_srv_lisp(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetGoalPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_msgs
)

### Generating Module File
_generate_module_lisp(navig_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(navig_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(navig_msgs_generate_messages navig_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg" NAME_WE)
add_dependencies(navig_msgs_generate_messages_lisp _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/GeometryGraph.msg" NAME_WE)
add_dependencies(navig_msgs_generate_messages_lisp _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetInflatedMap.srv" NAME_WE)
add_dependencies(navig_msgs_generate_messages_lisp _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetBoundaryPoints.srv" NAME_WE)
add_dependencies(navig_msgs_generate_messages_lisp _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetGoalPoint.srv" NAME_WE)
add_dependencies(navig_msgs_generate_messages_lisp _navig_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navig_msgs_genlisp)
add_dependencies(navig_msgs_genlisp navig_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navig_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_msgs
)
_generate_msg_nodejs(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/GeometryGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_msgs
)

### Generating Services
_generate_srv_nodejs(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetInflatedMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_msgs
)
_generate_srv_nodejs(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetBoundaryPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_msgs
)
_generate_srv_nodejs(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetGoalPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_msgs
)

### Generating Module File
_generate_module_nodejs(navig_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(navig_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(navig_msgs_generate_messages navig_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg" NAME_WE)
add_dependencies(navig_msgs_generate_messages_nodejs _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/GeometryGraph.msg" NAME_WE)
add_dependencies(navig_msgs_generate_messages_nodejs _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetInflatedMap.srv" NAME_WE)
add_dependencies(navig_msgs_generate_messages_nodejs _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetBoundaryPoints.srv" NAME_WE)
add_dependencies(navig_msgs_generate_messages_nodejs _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetGoalPoint.srv" NAME_WE)
add_dependencies(navig_msgs_generate_messages_nodejs _navig_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navig_msgs_gennodejs)
add_dependencies(navig_msgs_gennodejs navig_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navig_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_msgs
)
_generate_msg_py(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/GeometryGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_msgs
)

### Generating Services
_generate_srv_py(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetInflatedMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_msgs
)
_generate_srv_py(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetBoundaryPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_msgs
)
_generate_srv_py(navig_msgs
  "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetGoalPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_msgs
)

### Generating Module File
_generate_module_py(navig_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(navig_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(navig_msgs_generate_messages navig_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg" NAME_WE)
add_dependencies(navig_msgs_generate_messages_py _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/GeometryGraph.msg" NAME_WE)
add_dependencies(navig_msgs_generate_messages_py _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetInflatedMap.srv" NAME_WE)
add_dependencies(navig_msgs_generate_messages_py _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetBoundaryPoints.srv" NAME_WE)
add_dependencies(navig_msgs_generate_messages_py _navig_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetGoalPoint.srv" NAME_WE)
add_dependencies(navig_msgs_generate_messages_py _navig_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navig_msgs_genpy)
add_dependencies(navig_msgs_genpy navig_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navig_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(navig_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(navig_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(navig_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(navig_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(navig_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(navig_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(navig_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(navig_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(navig_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(navig_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(navig_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(navig_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(navig_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(navig_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(navig_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
