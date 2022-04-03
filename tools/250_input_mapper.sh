#!/bin/bash

# Install Input-mapper Deps
sudo dnf -y install python3-pip
sudo pip install evdev -U  # If newest version not in distros repo
sudo pip uninstall key-mapper  # In case the old package is still installed

# Install Input Mapper
sudo pip install --no-binary :all: git+https://github.com/sezanzeb/input-remapper.git

# Set up service
sudo systemctl enable input-remapper
sudo systemctl restart input-remapper