#!/bin/bash

# Install kernel headers (due to a fedora bug)
dnf -y install kernel-devel

# Add Repo
dnf -y config-manager --add-repo https://download.opensuse.org/repositories/hardware:razer/Fedora_35/hardware:razer.repo

# Install OpenRazer
dnf -y install openrazer-meta

# Install Polychromatic
dnf -y install polychromatic
