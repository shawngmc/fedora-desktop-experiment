#!/bin/bash

# Add repo
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# Install vscode
sudo dnf -y check-update
sudo dnf -y install code

# Set VS Code font (for powerline) and theme
cat << EOF > ~/.config/Code/User/settings.json
{
    "workbench.colorTheme": "Default Dark+",
    "git.autofetch": true,
    "git.confirmSync": false,
    "editor.fontFamily": "'Droid Sans Mono for Powerline', 'Droid Sans Mono', 'monospace', monospace"
}
EOF
