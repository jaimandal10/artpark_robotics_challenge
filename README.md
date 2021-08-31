# Artpark Robotics Challenge

## 1. Docker and World Bringup (The following will build docker and launch the world in gazebo)

```
git clone https://github.com/jaimandal10/artpark_robotics_challenge.git
cd artpark_robotics_challenge
. run.sh
```

## 2. Load trash, dustbins & markings (move them around)

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

## 3. Launch the robot

* Spawn robot
```
rosrun apbot_description robot.launch
```

## 4. Start the run

* Start run
```
rosrun apbot_nav apbot_sequence.py
```

## 5. Trash pickup and drop

## 6. Cleaning markings
![Alt Text](https://github.com/jaimandal10/artpark_robotics_challenge/blob/main/media/marking_cleaning.gif)

## 7. Counter & Sink spray and wipe

## 8. Object detection
