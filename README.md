# jenkins-docker
Dockerfile and run script for Jenkins which has the ability to spin up sibling containers.  By sharing the host volumes managing docker, you share control of docker to the Jenkins container.  This allows you to run docker commands from your Jenkins job which would spin up containers in the same docker where Jenkins is running.

## Prerequisites
This requires docker to be running on your host.  This was tested with 1.11.

## How to use
* git clone https://github.com/bfarrell/jenkins-docker
* docker build -t myjenkins .
* ./runJenkins
* docker exec -it jenkins bash
  * sudo groupadd docker
  * sudo usermod -a -G docker jenkins
  * sudo chown root:docker /var/run/docker.sock
