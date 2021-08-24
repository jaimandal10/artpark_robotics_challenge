# Artpark Robotics Challenge

## 1. Docker and World Bringup (The following will build docker and launch the world in gazebo)

```
git clone https://github.com/jaimandal10/artpark_robotics_challenge.git
cd artpark_robotics_challenge
. run.sh
```

## 2. Robot and othet elements Bringup
* Open a new terminal and run
```
docker exec -it  artpark_workspace_sim_container bash
```
* Launch the robot
```
roslaunch apbot_description robot.launch
```

* Open a new terminal and run
```
docker exec -it  artpark_workspace_sim_container bash
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

### Move around and place objects appropriately

* Spawn robot
```
rosrun apbot_description robot.launch
```

* Start run
```
rosrun apbot_nav apbot_sequence.py
```

## 3. Trash pickup and drop

## 4. Cleaning markings

## 5. Counter & Sink spray and wipe

## 6. Object detection
