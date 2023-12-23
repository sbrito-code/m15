#!/bin/bash

#Docker install
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

#Use docker without sudo
sudo groupadd docker
sudo usermod -aG docker vagrant
newgrp docker

#Hadolin install
sudo wget -O hadolint https://github.com/hadolint/hadolint/releases/download/v2.12.0/hadolint-Linux-x86_64
sudo mv hadolint /usr/local/bin/hadolint
sudo chmod +x /usr/local/bin/hadolint

# Install Java
sudo apt-get install fontconfig openjdk-11-jre -y