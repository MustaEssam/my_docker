#!/bin/bash
set -e

# Source the ROS 2 setup file
source /opt/ros/humble/setup.bash

# Source the workspace setup file (if it exists)
if [ -f /home/ros/ros2_ws/install/setup.bash ]; then
    source /home/ros/ros2_ws/install/setup.bash
fi

if [ -f /home/ros/dev_ws/install/setup.bash ]; then
    source /home/ros/dev_ws/install/setup.bash
fi

if [ -f /home/ros/test_ws/install/setup.bash ]; then
    source /home/ros/test_ws/install/setup.bash
fi

# Execute the command passed to the container
exec "$@"