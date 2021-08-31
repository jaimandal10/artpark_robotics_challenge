# Artpark Robotics Challenge

## 1. Trash picking
![Alt Text](https://github.com/jaimandal10/artpark_robotics_challenge/blob/main/media/trash_picking.gif)


## 2. Cleaning markings
![Alt Text](https://github.com/jaimandal10/artpark_robotics_challenge/blob/main/media/marking_cleaning.gif)

## 3. Counter & Sink spray and wipe
![Alt Text](https://github.com/jaimandal10/artpark_robotics_challenge/blob/main/media/spray.gif)

## 4. Object detection


## 5. Docker and World Bringup (The following will build docker and launch the world in gazebo)

```
git clone https://github.com/jaimandal10/artpark_robotics_challenge.git
cd artpark_robotics_challenge
. run.sh
```

## 6. Load trash, dustbins & markings (move them around)

* Open a new terminal and run
```
docker exec -it  artpark_workspace_sim_container bash
```

* Make scripts executable
```
chmod +x artpark_workspace/src/GigaRoboticsArtpark/apbot_nav/scripts/*
chmod +x artpark_workspace/src/GigaRoboticsArtpark/apbot_description/scripts/*
```

* Spawn trash
```
rosrun apbot_description trash_spwaner.py
```

* Open a new terminal and run
```
docker exec -it  artpark_workspace_sim_container bash
```

* Spawn dustbins
```
rosrun apbot_description dustbin_spawner.py
```

* Open a new terminal and run
```
docker exec -it  artpark_workspace_sim_container bash
```

* Spawn markings
```
rosrun apbot_description marking_spawner.py
```

## 7. Launch the robot

* Spawn robot
```
rosrun apbot_description robot.launch
```

## 8. Start the run

* Start run
```
rosrun apbot_nav apbot_sequence.py
```
