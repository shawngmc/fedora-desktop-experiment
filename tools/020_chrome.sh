#!/bin/bash

# Install Third Party Repositories
sudo dnf -y install fedora-workstation-repositories

# Enable the Google Chrome repo
sudo dnf -y config-manager --set-enabled google-chrome

# Install Chrome
sudo dnf -y install google-chrome-stable

