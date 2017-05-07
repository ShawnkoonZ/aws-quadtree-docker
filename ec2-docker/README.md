# How

1. `sudo yum update -y`

2. `sudo yum install git -y`

3. `git clone https://github.com/ShawnkoonZ/aws-quadtree-docker.git`

4. `cd aws-quadtree-docker/ec2-docker && chmod +x *.sh`

5. `./ec2_docker_install.sh`

6. `cd /home/ec2-user/aws-quadtree-docker/ec2-docker`

7. `./ec2_docker-compose_install.sh`

8. **Restart** ssh connection.

9. `cd aws-quadtree-docker/file-generator/ && docker-compose build`