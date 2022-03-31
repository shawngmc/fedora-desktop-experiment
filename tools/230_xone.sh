#!/bin/bash

# Install cabextract prereq
dnf -y install cabextract

# clone and install repo
cd /opt
git clone https://github.com/medusalix/xone
cd xone
./install.sh --release

# Get wireless dongle FW
xone-get-firmware.sh --skip-disclaimer