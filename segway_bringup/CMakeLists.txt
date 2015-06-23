cmake_minimum_required(VERSION 2.8.3)
project(segway_bringup)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS roslaunch)

## Declare a catkin package
catkin_package()
catkin_add_env_hooks(50.segway_config
  SHELLS sh DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/env-hooks)

roslaunch_add_file_check(launch)

## Install ## 
install(PROGRAMS scripts/install_segway_core scripts/uninstall_segway_core scripts/timed_roslaunch 
   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)


