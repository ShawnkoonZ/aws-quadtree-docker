# Docker file designed for file-generator usage
# Please visit https://github.com/ShawnkoonZ

FROM ubuntu:latest
LABEL maintainer.name="Shawnkoonz-Maid" \
      maintainer.email="shawnkoongithub@gmail.com" \
      org.name="ShawnkoonZ" \
      org.web="https://github.com/ShawnkoonZ" \
      version="1.0" \
      description="This image clones file-generator && deploys quad tree files upinto S3."

## Basic package updates.
RUN apt update && \
    apt upgrade -y

# Install Java into the container
RUN apt install default-jre -y && \
    apt install default-jdk -y

# Navigate into the home dir
RUN mkdir -p /home/docker/app
WORKDIR /home/docker/app

# Install Git & Clone Java file-generator project from github.
RUN apt install git -y && \
    git clone https://github.com/ShawnkoonZ/aws-quadtree-java.git
WORKDIR ./aws-quadtree-java

# Install JAVA AWS SDK
RUN apt install wget -y && \
    apt install unzip -y && \
    wget https://sdk-for-java.amazonwebservices.com/latest/aws-java-sdk.zip && \
    unzip -q aws-java-sdk.zip && \
    mkdir lib && \
    mkdir lib/sdk && \
    mv aws-java-sdk*/* ./lib/sdk && \
    rm -rf aws-java-sdk* && \
    ls && \
    pwd

# Execute Java program.
RUN javac *.java && \
    java QuadTreeTester
