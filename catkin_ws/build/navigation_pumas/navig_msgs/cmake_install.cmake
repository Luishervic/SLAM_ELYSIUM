# Install script for directory: /home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/navig_msgs/msg" TYPE FILE FILES
    "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/Edges.msg"
    "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/msg/GeometryGraph.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/navig_msgs/srv" TYPE FILE FILES
    "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetInflatedMap.srv"
    "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetBoundaryPoints.srv"
    "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/srv/GetGoalPoint.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/navig_msgs/cmake" TYPE FILE FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/navigation_pumas/navig_msgs/catkin_generated/installspace/navig_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/devel/include/navig_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/devel/share/roseus/ros/navig_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/devel/share/common-lisp/ros/navig_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/devel/share/gennodejs/ros/navig_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/cire2022/SLAM_ELYSIUM/catkin_ws/devel/lib/python3/dist-packages/navig_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/devel/lib/python3/dist-packages/navig_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/navigation_pumas/navig_msgs/catkin_generated/installspace/navig_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/navig_msgs/cmake" TYPE FILE FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/navigation_pumas/navig_msgs/catkin_generated/installspace/navig_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/navig_msgs/cmake" TYPE FILE FILES
    "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/navigation_pumas/navig_msgs/catkin_generated/installspace/navig_msgsConfig.cmake"
    "/home/cire2022/SLAM_ELYSIUM/catkin_ws/build/navigation_pumas/navig_msgs/catkin_generated/installspace/navig_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/navig_msgs" TYPE FILE FILES "/home/cire2022/SLAM_ELYSIUM/catkin_ws/src/navigation_pumas/navig_msgs/package.xml")
endif()

