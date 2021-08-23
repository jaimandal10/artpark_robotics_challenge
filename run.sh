#!/usr/bin/env bash
sudo xhost +local:root
cd artpark_docker
sudo chmod +x artpark_sim_entrypoint.sh run_artpark_sim.bash
sudo docker build . -t artpark --no-cache=true
sudo docker rm -f artpark_workspace_sim_container
sudo ./run_artpark_sim.bash

