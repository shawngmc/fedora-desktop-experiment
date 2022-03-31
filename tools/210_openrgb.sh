#!/bin/bash

# Download OpenRGB
curl -o /tmp/openrgb.rpm https://openrgb.org/releases/release_0.7/openrgb_0.7_x86_64_6128731.rpm

# Install OpenRGB
dnf localinstall /tmp/openrgb.rpm

# Cleanup
rm -rf /tmp/openrgb.rpm