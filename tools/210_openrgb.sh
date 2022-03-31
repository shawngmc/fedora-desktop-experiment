#!/bin/bash

# Download OpenRGB
sudo curl -o /tmp/openrgb.rpm https://openrgb.org/releases/release_0.7/openrgb_0.7_x86_64_6128731.rpm

# Install OpenRGB
sudo dnf -y localinstall /tmp/openrgb.rpm

# Cleanup
sudo rm -rf /tmp/openrgb.rpm