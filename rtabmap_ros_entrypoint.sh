#!/bin/bash
set -e

# Source the ROS 2 setup file
if [ -f /root/ros2_ws/install/setup.bash ]; then
    source /root/ros2_ws/install/setup.bash
fi

# Source the workspace setup file (if it exists)
if [ -f /root/rtabmap_ros/install/setup.bash ]; then
    source /root/rtabmap_ros/install/setup.bash
fi

if [ -f /root/delivery_robot_ws/install/setup.bash ]; then
    source /root/delivery_robot_ws/install/setup.bash
fi

if [ -f /root/ff_ws/install/setup.bash ]; then
    source /root/ff_ws/install/setup.bash
fi

if [ -f /root/rmf_ws/install/setup.bash ]; then
    source /root/rmf_ws/install/setup.bash
fi

# Execute the command passed to the container
exec "$@"
