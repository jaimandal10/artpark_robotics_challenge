# Artpark Robotics Challenge

## 1. Docker Instructions

## 2. Setup & Run Simulation
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

## 3. Trash pickup and drop

## 4. Cleaning markings

## 5. Counter & Sink spray and wipe

## 6. Object detection
