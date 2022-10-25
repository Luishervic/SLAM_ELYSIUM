# Install script for directory: /home/cire2022/SLAM_ELYSIUM/catkin_ws/src/hsrb_moveit-v0.6.0-community/hsrb_moveit_config

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/cire2022/SLAM_ELYSIUM/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/catkin_generated/installspace/hsrb_moveit_config.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hsrb_moveit_config/cmake" TYPE FILE FILES
    "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/catkin_generated/installspace/hsrb_moveit_configConfig.cmake"
    "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/catkin_generated/installspace/hsrb_moveit_configConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hsrb_moveit_config" TYPE FILE FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hsrb_moveit_config" TYPE DIRECTORY FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hsrb_moveit_config" TYPE DIRECTORY FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hsrb_moveit_config" TYPE PROGRAM FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/catkin_generated/installspace/moveit_attached_object_demo.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hsrb_moveit_config" TYPE PROGRAM FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/catkin_generated/installspace/moveit_cartesian_demo.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hsrb_moveit_config" TYPE PROGRAM FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/catkin_generated/installspace/moveit_constraints_demo.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hsrb_moveit_config" TYPE PROGRAM FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/catkin_generated/installspace/moveit_fk_demo.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hsrb_moveit_config" TYPE PROGRAM FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/catkin_generated/installspace/moveit_gripper_demo.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hsrb_moveit_config" TYPE PROGRAM FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/catkin_generated/installspace/moveit_ik_demo.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hsrb_moveit_config" TYPE PROGRAM FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/catkin_generated/installspace/moveit_obstacles_demo.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hsrb_moveit_config" TYPE PROGRAM FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/catkin_generated/installspace/moveit_obstacles_demo_takeshi.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hsrb_moveit_config" TYPE PROGRAM FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/catkin_generated/installspace/moveit_pick_and_place_demo.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hsrb_moveit_config" TYPE PROGRAM FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/hsrb_moveit-v0.6.0-community/hsrb_moveit_config/catkin_generated/installspace/moveit_speed_demo.py")
endif()

