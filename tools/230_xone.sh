#!/bin/bash

# Install cabextract prereq
sudo dnf -y install cabextract

# clone and install repo
cd /opt
sudo git clone https://github.com/medusalix/xone
cd xone
sudo ./install.sh --release

# Get wireless dongle FW
sudo xone-get-firmware.sh --skip-disclaimer