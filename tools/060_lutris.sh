#!/bin/bash

# Install Lutris and Wine Packages
sudo dnf -y install \
    wine \
    vulkan-loader \
    vulkan-loader.i686 \
    lutris

# TODO: Get a version of GE Wine and install it
# https://github.com/GloriousEggroll/wine-ge-custom
# https://github.com/GloriousEggroll/wine-ge-custom/releases/download/GE-Proton7-8/wine-lutris-GE-Proton7-8-x86_64.tar.xz
# Extract to /home/$USER/.local/share/lutris/runners/wine/
