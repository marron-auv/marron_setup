#!/bin/bash

set -e
source /opt/ros/$ROS_DISTRO/setup.bash

source /marron_ws/install/local_setup.bash

echo "$@"
exec "$@"
