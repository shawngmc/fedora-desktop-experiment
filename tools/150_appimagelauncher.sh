#!/bin/bash

# Download AppImageLauncher
sudo curl -Ljo /tmp/appimagelauncher.rpm https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher-2.2.0-travis995.0f91801.x86_64.rpm

# Install AppImageLauncher
sudo dnf -y localinstall /tmp/appimagelauncher.rpm

# AppImageLauncher
sudo rm -rf /tmp/appimagelauncher.rpm