# Artpark Robotics Challenge

## 1. Trash picking
![Alt Text](https://github.com/jaimandal10/artpark_robotics_challenge/blob/main/media/trash_picking.gif)


## 2. Cleaning markings
![Alt Text](https://github.com/jaimandal10/artpark_robotics_challenge/blob/main/media/marking_cleaning.gif)

## 3. Counter Spray
![Alt Text](https://github.com/jaimandal10/artpark_robotics_challenge/blob/main/media/spray.gif)

## 4. Counter Wipe
![Alt Text](https://github.com/jaimandal10/artpark_robotics_challenge/blob/main/media/wipe.gif)


## 5. Object detection


## 6. Docker and World Bringup (The following will build docker and launch the world in gazebo)

```
git clone https://github.com/jaimandal10/artpark_robotics_challenge.git
cd artpark_robotics_challenge
. run.sh
```

## 7. Load trash, dustbins & markings (move them around)

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

## 8. Launch the robot

* Spawn robot
```
rosrun apbot_description robot.launch
```

## 9. Start the run

* Start run
```
rosrun apbot_nav apbot_sequence.py
```
