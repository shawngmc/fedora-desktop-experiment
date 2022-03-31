#!/bin/bash

# Download Postman
sudo curl -o /tmp/postman.tar.gz https://dl.pstmn.io/download/latest/linux64

# Extract Postman
sudo tar -xzvf /tmp/postman.tar.gz -C /opt

# Install Postman
sudo ln -s /opt/Postman/Postman /usr/local/bin/postman

# Cleanup
sudo rm -rf /tmp/postman.tar.gz
