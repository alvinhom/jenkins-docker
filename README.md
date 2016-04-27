# jenkins-docker
Dockerfile and run script for Jenkins which has the ability to spin up sibling containers.

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
