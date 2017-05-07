#!/bin/bash

sudo yum update -y

sudo yum install -y docker

sudo yum service docker start

sudo usermod -a -G docker ec2-user

sudo -i

curl -L https://github.com/docker/compose/releases/download/1.12.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

exit

exit