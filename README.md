# Artpark Robotics Challenge

## 1. The Robot
The robot has a footprint of 45x45 cm. The robot has 4 mecanum wheels, which enable holonomic motion. The robot has an RPLidar A1 sensor laser sensor which is present in the base of the robot. The lidar is mainly used for autonomous navigation. On the base, the robot has a 6 DoF robotic arm which is used to pick and place trash, spray and wipe. The gripper of the arm has an Intel D435 camera mounted on it. This is used for pose estimation of various items in the washroom and for 3D obstacle avoidance.

![Alt Text](https://github.com/jaimandal10/artpark_robotics_challenge/blob/main/media/apbot.png)

## 2. Trash picking
The camera on the arm is used to detect the trash as soon as it enters the washroom. Then, the robot moves to the detected trash items. Once it gets to a trash item, it detects it again to increase precision and accuracy. It then gets posoition of the trash item (the camera is a depth camera).

![Alt Text](https://github.com/jaimandal10/artpark_robotics_challenge/blob/main/media/trash_picking.gif)


## 3. Cleaning markings
The robot is equipped with a mop below its base, which can be lifted and lowered, and is used to clean the markings on the floor.

![Alt Text](https://github.com/jaimandal10/artpark_robotics_challenge/blob/main/media/marking_cleaning.gif)


## 4. Counter Spray
The gripper of the robot is equipped with a nozzle, which is used to spray sanitization liquid on the counter.

![Alt Text](https://github.com/jaimandal10/artpark_robotics_challenge/blob/main/media/spray.gif)


## 5. Counter Wipe
The arm grips the sponge cleaner and wipes the sanitization liquid on the counter.

![Alt Text](https://github.com/jaimandal10/artpark_robotics_challenge/blob/main/media/wipe.gif)


## 6. Object detection

For the perception capabilities required for some of the above tasks, custom datasets trained on the ![YOLOv4](https://arxiv.org/abs/2004.10934) Object Detection architecture, which is a state of the art object detection model, was used along with an infernence pipeline designed using OpenCV. The datasets used for training were created from images taken by us and a few images from the simulation environment. The images were annotated and converted to the training format (which was YOLO Darknet in this case) using an online tool called ![Roboflow](https://docs.roboflow.com/). They provide an interface to upload images and create datasets suited to a particular training format. The two datasets used in a our projects are the trash-marking dataset and the dustbin dataset.

![](https://github.com/jaimandal10/artpark_robotics_challenge/blob/main/media/trash.png)

![](https://github.com/jaimandal10/artpark_robotics_challenge/blob/main/media/detection.jpeg)

## 7. Docker and World Bringup (The following will build docker and launch the world in gazebo)

```
git clone https://github.com/jaimandal10/artpark_robotics_challenge.git
cd artpark_robotics_challenge
. run.sh
```

## 8. Load trash, dustbins & markings (move them around)

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

## 9. Launch the robot

* Spawn robot
```
rosrun apbot_description robot.launch
```

## 10. Start the run

* Start run
```
rosrun apbot_nav apbot_sequence.py
```
