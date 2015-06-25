# segway_v3_robot
Onboard PC ROS packages for the Segway RMP V3 provided by Stanley Innovation. This document roughly outlines the various steps required to setup an RMP V3 platform that has not been provided by Stanley Innovation.

# We provide fully integrated systems
**We provide standard navigation packages and fully integrated solutions with all robot setup, networking, timing, sensor integration, sensor calibration, tailored navigation tuning, and extended functionality. This tutorial is for seasoned ROS integrators that can complete that work themselves with our base RMP V3 platforms. Please contact Stanley Innovation for pricing and information http://stanleyinnovation.com/contact-us/**

## Installation
Until we have released our packages in the ROS distro please follow these instructions for installing from source. The following instructions are valid for Ubuntu 14.04LTS and ROS Indigo

### Install Ubuntu 14.04 LTS
Follow instructions provided here:
http://releases.ubuntu.com/14.04/

### Install ROS Indigo
From a linux machine connected to the internet run the following commands

  1. **Setup your ROS sources.list**
  Setup your computer to accept software from packages.ros.org. ROS Indigo ONLY supports Saucy (13.10) and Trusty (14.04) for debian packages.
  ```
  sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
  ``` 

  2. **Set up your ROS keys**
  ```
  wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -
  ``` 

  3. **ROS Installation**
  First, make sure your Debian package index is up-to-date:
  ```
  sudo apt-get update
  sudo apt-get install ros-indigo-desktop-full
  ``` 

  4. **Initialize rosdep**
  ```
  sudo rosdep init
  rosdep update
  ``` 

  5. **Environment setup**
  * Edit the local bash environment to add a few useful aliases
  ```
  sudo gedit ~/.bashrc
  ``` 
  * Add the following lines to the end of the file each provides a few shortcuts:
  ```
  source /opt/ros/indigo/setup.bash
  alias sws='source ./devel/setup.bash'
  alias clean_backups='find ./ -name '*~' | xargs rm'
  alias clean_pyc='find ./ -name '*.pyc' | xargs rm'
  alias clean_rosbuild='rm -rf build devel install'
  ``` 

  6. **Getting rosinstall**
  rosinstall is a frequently used command-line tool in ROS that is distributed separately. It enables you to easily download many source trees for ROS packages with one command.
  ```
  sudo apt-get install python-rosinstall
  ```

### Install required packages
From a linux machine connected to the internet run the following commands

1. **Install useful linux utilities**
  These tools are useful for monitoring system processes, setting up networking, and setting up NTPD for the remote computer. They are not neccessary but recommended.
  ```
  sudo apt-get install iperf chrony htop bridge-utils
  ```
2. **Install required ROS third party packages for segway_v3_robot**
  ```
  sudo apt-get install ros-indigo-navigation ros-indigo-gmapping ros-indigo-robot-localization ros-indigo-yocs-cmd-vel-mux ros-indigo-joy ros-indigo-urg-node ros-indigo-lms1xx ros-indigo-pointgrey-camera-driver ros-indigo-cmake-modules daemontools openssh-server
  ```
3. **Setup Network**
  You need to set the network up for our platforms and the various ethernet enabled sensors. This is an outline but **we also provide fully integrated packages**.
