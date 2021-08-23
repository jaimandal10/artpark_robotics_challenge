#!/usr/bin/env bash
sudo xhost +local:root
cd artpark_docker
sudo docker build . -t artpark
docker rm -f artpark_workspace_sim_container
sudo ./run_artpark_sim.bash

