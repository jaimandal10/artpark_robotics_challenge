# Artpark Robotics Challenge

## Docker Instructions

## Setup & Run Simulation
* Launch the world in a new terminal
```
roslaunch apbot_description main.launch
```

* Spawn trash
```
rosrun apbot_description trash_spwaner.py
```

* Spawn dustbins
```
rosrun apbot_description dustbin_spawner.py
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

## Trash pickup and drop

## Cleaning markings

## Counter & Sink spray and wipe

## Object detection
