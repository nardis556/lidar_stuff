# lidar_stuff

# r3live installation on 20.04

## ros installation

```sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install ros-noetic-desktop-full
sudo apt-get install ros-noetic-cv-bridge ros-noetic-tf ros-noetic-message-filters ros-noetic-image-transport ros-noetic-image-transport* python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential -y
sudo apt install ```

## optional
```source /opt/ros/noetic/setup.bash```
`run startup script to automatically load`

# livox driver installation. only required for r3live installation

```git clone https://github.com/Livox-SDK/livox_ros_driver.git ws_livox/src```
```cd ws_livox```
```catkin_make```

## CGAL and pcl_viewer (optional)
```sudo apt-get install libcgal-dev pcl-tools```

## opencv installation
`clone repository. Repo modified to work with newer libs`
```git clone https://github.com/nardis556/Install-OpenCV.git```
```cd /home/$USER/Install-OpenCV/ubuntu```
```chmod +x *```
```./opencv_latest.sh```



