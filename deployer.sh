#!/bin/bash

sudo apt update

# install nginx
echo "Started Installing nginx"
sudo apt install nginx -y
echo "Finished installing nginx"
sudo chown ubuntu:ubuntu /var/www/html/index.nginx-debian.html
echo "<h1>Hello world from $(hostname -f)</h1>" > /var/www/html/index.nginx-debian.html
# # install docker
# echo "Started Installing Docker"
# sudo apt-get install \
#     ca-certificates \
#     curl \
#     gnupg \
#     lsb-release -y

# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# sudo apt-get update

# sudo apt-get install docker-ce docker-ce-cli containerd.io -y
# echo "Finished Installing Docker"