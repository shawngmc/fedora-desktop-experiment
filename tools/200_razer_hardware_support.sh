#!/bin/bash

# Install kernel headers (due to a fedora bug)
sudo dnf -y install kernel-devel

# Add Repo
sudo dnf -y config-manager --add-repo https://download.opensuse.org/repositories/hardware:razer/Fedora_35/hardware:razer.repo

# Install OpenRazer
sudo dnf -y install openrazer-meta

# Install Polychromatic
sudo dnf -y install polychromatic
