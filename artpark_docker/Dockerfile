FROM osrf/ros:noetic-desktop-full

ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

RUN apt-get update && apt-get install -y apt-utils build-essential psmisc vim-gtk

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update && apt-get install -q -y python3-catkin-tools

RUN apt-get update && apt-get install -q -y ros-noetic-hector-gazebo-plugins

# Install git lfs. Necessary in order to properly clone bobble_description
RUN echo 'deb http://http.debian.net/debian wheezy-backports main' > /etc/apt/sources.list.d/wheezy-backports-main.list
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
RUN apt-get install -q -y git-lfs
RUN git lfs install

ENV BOBBLE_WS=/artpark_workspace
RUN sudo apt-get install ros-noetic-gazebo-ros -y

RUN sudo apt-get install ros-noetic-roslint -y
RUN sudo apt-get install ros-noetic-geographic-* -y
RUN sudo apt-get install ros-noetic-vision-msgs -y
RUN apt-get install ros-noetic-joint-state-publisher -y
RUN apt-get install python3-rosdep -y
RUN sudo apt-get install ros-noetic-teb-local-planner  -y
RUN apt-get install ros-noetic-object-recognition-msgs -y
RUN apt-get install ros-noetic-gmapping -y
RUN apt-get install ros-noetic-teleop-twist-keyboard -y
RUN apt-get install ros-noetic-navigation -y 
RUN apt-get install ros-noetic-tf2-sensor-msgs -y
RUN apt-get install ros-noetic-amcl -y 
RUN apt-get install ros-noetic-map-server -y
RUN apt-get install ros-noetic-move-base -y
RUN apt install ros-noetic-moveit -y
RUN apt install ros-noetic-moveit-ros-planning -y 
RUN apt-get install ros-noetic-ros-control ros-noetic-ros-controllers -y
RUN apt-get install ros-noetic-move-base-* -y
RUN apt-get install ros-noetic-tf -y
RUN apt-get install libgeographic-dev -y
RUN apt-get install geographiclib-tools -y
RUN apt-get install python3-tk -y
RUN source /opt/ros/noetic/setup.bash && \
    mkdir -p $BOBBLE_WS/src && \
    cd $BOBBLE_WS/src && \
    catkin_init_workspace && \
    git clone https://github.com/NickNair/GigaRoboticsArtpark.git && \ 
    cd $BOBBLE_WS && \
    catkin_make && \
    catkin_make install
RUN cd $BOBBLE_WS/src/GigaRoboticsArtpark/apbot_perception/ && \
       git clone https://bnmmnb@bitbucket.org/bnmmnb/weights.git
       
# Required python packages for analysis
# Required python packages for analysis
RUN \
  apt-get install -y python3-pip && \
  pip3 install open3d==0.12.0 && \
  pip3 install py_trees && \
  pip3 install opencv-python && \
  pip3 install shapely
   

EXPOSE 11345

COPY ./artpark_sim_entrypoint.sh /

ENTRYPOINT ["/artpark_sim_entrypoint.sh"]

CMD ["bash"]
