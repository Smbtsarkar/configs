#!/bin/bash 
#--------------------------
# Fetch and install starship
# --------------------------

# Check if file already exists
if [[ -e "/usr/local/bin/starship" ]]; then
    eval "$(conda "shell.$(basename "${SHELL}")" hook)"
    eval "$(starship init zsh)"
else
    sudo mkdir /usr/local/bin
    curl -sS https://starship.rs/install.sh | sh
fi


