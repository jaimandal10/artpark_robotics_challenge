#!/bin/bash
set -e

source /opt/ros/noetic/setup.bash
source /artpark_workspace/install/setup.bash
source /artpark_workspace/devel/setup.bash

exec "$@"
