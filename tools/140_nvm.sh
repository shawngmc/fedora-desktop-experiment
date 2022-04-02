#!/bin/bash

# Install NVM
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash  

# Activate env
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install latest LTS of node
nvm install --lts