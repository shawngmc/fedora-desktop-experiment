#!/bin/bash

# Install Python
sudo dnf -y install python3-pip

# Install Powerline globally
sudo pip3 install powerline-status

# Install powerline fonts
sudo dnf -y install powerline-fonts

# Apply Powerline to root
sudo tee -a "/root/.bashrc" > /dev/null <<'EOF'
powerline-daemon -q
. $(python3 -c "import powerline; import os.path; print(os.path.dirname(powerline.__file__))")/bindings/bash/powerline.sh
EOF

# Apply Powerline to user
tee -a "$HOME/.bashrc" > /dev/null <<'EOF'
powerline-daemon -q
. $(python3 -c "import powerline; import os.path; print(os.path.dirname(powerline.__file__))")/bindings/bash/powerline.sh
EOF