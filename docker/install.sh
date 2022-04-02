#!/bin/bash

sudo apt-get update && \
sudo apt-get install -y curl software-properties-common && \
sudo apt-get install -y docker.io && \
docker -v || exit 1 && \
sudo curl -L https://github.com/docker/compose/releases/download/1.25.5/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose &&\
sudo chmod +x /usr/local/bin/docker-compose &&\
docker-compose -v || exit 2 && \
sudo adduser media && \
sudo adduser media docker && \
sudo mkdir -p /home/media/data/torrents /home/media/data/movies /home/media/data/music /home/media/data/tv /home/media/docker && \
sudo chown media:media -R /home/media && \
sudo -u media git config --global user.name "John Doe" && \
sudo -u media git config --global user.email johndoe@example.com

