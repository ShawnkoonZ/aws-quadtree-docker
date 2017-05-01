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

# Install git
RUN apt install git -y

# Navigate into the home dir
RUN mkdir -p /home/docker/app
WORKDIR /home/docker/app

# Clone Java file-generator project from github.
RUN git clone https://github.com/ShawnkoonZ/aws-quadtree-java.git
WORKDIR ./aws-quadtree-java

# Execute Java program.
RUN javac *.java && \
		java QuadTreeTester
