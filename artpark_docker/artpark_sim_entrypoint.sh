#!/bin/bash
set -e

source /opt/ros/noetic/setup.bash
source /artpark_workspace/install/setup.bash
source /artpark_workspace/devel/setup.bash
chmod +x artpark_workspace/src/GigaRoboticsArtpark/apbot_nav/scripts/*
chmod +x artpark_workspace/src/GigaRoboticsArtpark/apbot_description/scripts/*

exec "$@"
