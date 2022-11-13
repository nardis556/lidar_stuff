# lidar_stuff 4 r3live

# r3live installation on 20.04

## ros installation

```
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install ros-noetic-desktop-full ros-noetic-cv-bridge ros-noetic-nmea-msgs ros-noetic-tf ros-noetic-message-filters ros-noetic-image-transport ros-noetic-image-transport* python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential -y
```

## create workspace
```
mkdir /home/$USER/catkin_ws
```

#### optional
```
source /opt/ros/noetic/setup.bash
```
`or run startup script to automatically load`

## livox driver installation. only required for r3live installation

```
git clone https://github.com/Livox-SDK/livox_ros_driver.git ws_livox/src
cd ws_livox
catkin_make
```

## CGAL and pcl_viewer (optional)
```
sudo apt-get install libcgal-dev pcl-tools
```

## opencv
##### install deps
```
sudo add-apt-repository 'deb http://security.ubuntu.com/ubuntu xenial-security main'
sudo apt update
sudo apt install libjasper1 libjasper-dev libpcap0.8-dev
sudo apt install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
```
##### opencv installation
`clone repository. Repo modified to work with newer libs`
```
cd && git clone https://github.com/nardis556/Install-OpenCV.git
cd /home/$USER/Install-OpenCV/ubuntu
chmod +x *
./opencv_latest.sh
```
##### verify opencv installation with
```
pkg-config --modversion opencv
```
## build ROS packages
#### build r3live
```
cd && mkdir catkin_ws
cd /home/$USER/catkin_ws/src
git clone https://github.com/hku-mars/r3live.git
cd ../
catkin_make
```
#### build usb-cam
```
cd /home/$USER/catkin_ws/src/
git clone https://github.com/ros-drivers/usb_cam.git
cd ../
catkin_make
```
#### build velodyne-driver with IMU
```
cd /home/$USER/catkin_ws/src/
git clone https://github.com/ros-drivers/velodyne.git
cd velodyne
git clone https://github.com/nardis556/velodyne_gps_imu
cd /home/$USER/catkin_ws
catkin_make
```
#### add to bash
```
cd && git clone https://github.com/nardis556/lidar_stuff/blob/main/startup.sh
cd lidar_stuff && chmod a+x startup.sh
bash startup.sh
```

## examples
`See https://github.com/hku-mars/r3live for examples`

#### initialize ros with 
```
roscore
```

#### start velodyne pointcloud
```
roslaunch velodyne_pointcloud 32e_points.launch
```

#### start camera
```
roslaunch usb_cam usb_cam-test.launch
```

#### start IMU
```
rosrun velodyne_gps_imu gpsimu_driver
```

#### record all topics
```
rosbag record -a
```
