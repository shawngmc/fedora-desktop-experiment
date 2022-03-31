#!/bin/bash

# Install kernel headers (due to a fedora bug)
dnf install kernel-devel

# Install OpenRazer
dnf config-manager --add-repo https://download.opensuse.org/repositories/hardware:razer/Fedora_35/hardware:razer.repo
dnf install openrazer-meta

# Install Polychromatic
dnf config-manager --add-repo https://download.opensuse.org/repositories/hardware:razer/Fedora_35/hardware:razer.repo
dnf install polychromatic
