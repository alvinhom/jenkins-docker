FROM jenkins:latest
USER root
RUN apt-get update
RUN apt-get -y install sudo
RUN adduser jenkins sudo
RUN touch /etc/sudoers.d/91-jenkins
RUN echo "jenkins ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/91-jenkins
USER jenkins
