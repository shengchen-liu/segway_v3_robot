# This configures the environment variables for a segway rmp
# running the Stanley Innovation Embedded Firmware. This is necessary to run after
# setup.bash to ensure the drivers and nodes are all correctly launched. 
#

# If there is an onboard PC powered by the system this will run the watchdog
# to make sure it gets gracefully shutdown before the system power cuts out.
export SEGWAY_POWERS_PC_ONBOARD=true

# Set this to whatever physical port you are using to communicate externally 
# (eg. eth0, eth1, wlan0,...etc)
export ROBOT_NETWORK=eth0
export ROS_IP=$(ip -4 address show $ROBOT_NETWORK | grep 'inet' | sed 's/.*inet \([0-9\.]\+\).*/\1/')
export ROS_MASTER_URI=http://$ROS_IP:11311/

#Default Segway RMP_V3 network 
export SEGWAY_IP_ADDRESS=10.66.171.5
export SEGWAY_IP_PORT_NUM=8080

# Base platform types are RMP_210,RMP_220,RMP_440SE,RMP_440LE,RMP_OMNI
export SEGWAY_BASE_PLATFORM=RMP_210
#Determines if move base should run in balance mode, if false runs in tractor
export SEGWAY_RUNS_IN_BALANCE_MODE=false
# Determines if Segway platform is equipped with a BSA almost all are expect the RMP210
export SEGWAY_HAS_BSA=false

# The reference frame for all the accessories and sensors
export SEGWAY_PARENT_LINK=base_chassis_link

# Platform name for specific URDF models and configurations
export SEGWAY_PLATFORM_NAME=RMP_210
export SEGWAY_HAS_REAR_CASTER=true
export SEGWAY_HAS_FRONT_CASTER=false

# Joystick configurations for onboard joystick
export SEGWAY_HAS_ONBOARD_JOY=false
export SEGWAY_JOY_DEV=/dev/input/js0
export SEGWAY_JOY_MAPPING=xbox360
export SEGWAY_JOY_DEADZONE=0.1

#Determines if the platform should use 2D or 3D odometry
export SEGWAY_USE_2D_ODOMETRY=true
# Determines if we should use robot_localization EKF or the onboard odometry;
# set to true for onboard odometry
export SEGWAY_USE_PLATFORM_ODOMETRY=true
# Sets whether the costmaps use 3D voxel grid layer (need a 3D sensor enabled)
export SEGWAY_USE_VOXEL_GRID=false

# External IMU configuration; the 3DM_GX3 can only be enabled by SI
# it is tied into the embedded system. The UM7 uses the standard ROS
# driver
export SEGWAY_HAS_MICROSTRAIN_3DM_GX3_35=false
export SEGWAY_HAS_CH_UM7=false
export EXT_IMU_XYZ="0 0 0.30635"
export EXT_IMU_RPY="0 0 0"

# GPS configuration; need ublox package if using NEO7 otherwise
# if a microstrain INS is onboard just enable SEGWAY_USE_GPS
export SEGWAY_USE_GPS=false
export SEGWAY_HAS_NEO7=false
export SEGWAY_USE_GPS_FOR_LOCAL_ODOM=false
export SEGWAY_USE_GPS_FOR_GLOBAL_LOCALIZATION=false
export GPS_XYZ="-0.1189 0 0.34665"
export GPS_RPY="-0.1189 0 0.34665"

# 2D scanner configuration for launch files; should change hokuyo
# to sick if using a SICK LMS1XX
export SEGWAY_HAS_2D_LASER=false
export SEGWAY_2D_LASER_NS=hokuyo
export SEGWAY_2D_LASER_TOPIC=/hokuyo/scan
export SEGWAY_2D_LASER_FRAME=segway/base_laser_link

export SEGWAY_HAS_HOKUYO=false
export SEGWAY_HOKUYO_IP=10.66.171.6
export SEGWAY_HOKUYO_PORT=10940
export HOKUYO_XYZ="0.35 0 0.1"
export HOKUYO_RPY="0 0 0"

export SEGWAY_HAS_SICK=false
export SEGWAY_SICK_IP=10.66.171.8
export SICK_LMS1XX_XYZ="0 0 1.0"
export SICK_LMS1XX_RPY="3.1415 0 0"

# Segway has KINECT
export SEGWAY_HAS_KINECT=false
export RGBD_SENSOR_XYZ="0 0 1.0"
export RGBD_SENSOR_RPY="0 0 0"

# Segway has VLP16
export SEGWAY_HAS_VLP16=false
export SEGWAY_VLP16_IP=192.168.1.201
export SEGWAY_VLP16_PORT=2368
export VLP16_XYZ="0 0 0.39991"
export VLP16_RPY="0 0 0"

# Machine vision
export SEGWAY_HAS_FLEA3=false
export SEGWAY_FLEA3_SN=''
export SEGWAY_FLEA3_IS_CALIBRATED=false
export FLEA3_XYZ="0 0 0.32739"
export FLEA3_RPY="-1.5708 0 -1.5708"

# SI has many sensors that can be integrated and included by SI please contact
# rmp@stanleyinnovation.com for details

#export SEGWAY_HAS_MULTISENSE_SL false
#export SEGWAY_MULTISENSE_SL_IP false
#export SEGWAY_MULTISENSE_SL_PORT false
