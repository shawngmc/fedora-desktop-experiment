#!/bin/bash

# Install Third Party Repositories
dnf -y install fedora-workstation-repositories

# Enable the Google Chrome repo
dnf -y config-manager --set-enabled google-chrome

# Install Chrome
dnf -y install google-chrome-stable

