#!/usr/bin/env bash
sudo xhost +local:root
cd artpark_docker
sudo docker build . -t artpark
sudo ./run_artpark_sim.bash

