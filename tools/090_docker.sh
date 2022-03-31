#!/bin/bash

# Remove any preinstalled versions
sudo dnf -y remove docker \
    docker-client \
    docker-client-latest \
    docker-common \
    docker-latest \
    docker-latest-logrotate \
    docker-logrotate \
    docker-selinux \
    docker-engine-selinux \
    docker-engine

# Add Docker Repo
sudo dnf -y config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

# Install docker
sudo dnf -y install docker-ce docker-ce-cli containerd.io

# Start Docker
sudo systemctl start docker

# Start docker on boot
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# Set up docker group
sudo groupadd -f docker
sudo usermod -aG docker $USER
newgrp docker

# Install docker-compose as user
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose
