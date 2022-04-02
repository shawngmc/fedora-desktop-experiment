#!/bin/bash

# Make sure jq is installed
sudo dnf -y install jq

NIC_DATA=$(ip -j link show)
NIC_LIST=$(echo $NIC_DATA | jq -r ". | map(.ifname) | .[]")
NIC_ARRAY=($NIC_LIST)

# Enable Gnome Vino VNC
gsettings set org.gnome.desktop.remote-desktop.vnc auth-method 'password'
gsettings set org.gnome.desktop.remote-desktop.vnc view-only false
for NIC in "${NIC_ARRAY[@]}"
do
    if  [[ $NIC == en* ]] ;
    then
        NIC_CONN_NAME=$(nmcli -g GENERAL.CONNECTION device show $NIC)
        NIC_UUID=$(nmcli -g connection.uuid connection show "$NIC_CONN_NAME")
        gsettings set org.gnome.settings-daemon.plugins.sharing.service:/org/gnome/settings-daemon/plugins/sharing/gnome-remote-desktop/ enabled-connections "['$NIC_UUID']"
    fi
done

# Start the Remote-Desktop-Service
systemctl start --user gnome-remote-desktop
