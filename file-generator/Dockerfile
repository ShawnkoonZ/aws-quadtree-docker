# Docker file designed for file-generator usage
# Please visit https://github.com/ShawnkoonZ

FROM ubuntu:latest
MAINTAINER Shawnkoonz Maid <shawnkoongithub@gmail.com>

## Basic package updates.
RUN apt-get update
RUN apt-get upgrade -y

# Install Java into the container
RUN apt install default-jre -y
RUN apt install default-jdk -y

# Install git
RUN apt install git -y

# Navigate into the home dir
RUN mkdir -p /home/docker/app
WORKDIR /home/docker/app

# Clone Java file-generator project from github.
RUN git clone https://github.com/ShawnkoonZ/aws-quadtree-java.git
RUN cd ./aws-quadtree-java

# Execute Java program.
RUN javac *.java
