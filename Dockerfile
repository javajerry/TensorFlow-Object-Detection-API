FROM ubuntu:16.04

#Sumit
LABEL maintainer="jerryjav@gmail.com"

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list' && \
  apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116 && \
  apt-get update && \
  apt-get install -y \
    python-pip \
    ros-kinetic-ros-base
RUN apt-get install sudo
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

# For CPU
RUN pip install tensorflow
RUN sudo apt-get -y install protobuf-compiler python-pil python-lxml
RUN sudo pip install IPython==5.0 
RUN sudo pip install jupyter
RUN sudo pip install matplotlib
RUN sudo pip install lxml
RUN sudo pip install jupyter
RUN sudo pip install matplotlib
