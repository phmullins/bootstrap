#!/usr/bin/env bash

# BASH script used to bootstrap a macOS machine.
# Author: Patrick Mullins (pmullins11@mac.com)
# Last update: October 29th, 2016

# Clear the Terminal screen
clear

# Define variables
DOTFILES_ROOT=$(pwd)
declare version='0.0.2'

# Display version banner
echo "=================================="
echo "macOS Bootstrap v'$version        "
echo "=================================="

# Install Homebrew Applications
sh "$DOTFILES_ROOT/homebrew.sh"
# Install Homebrew Cask Applications
sh "$DOTFILES_ROOT/brewcask.sh"
# Install Mac App Stor Applications
sh "$DOTFILES_ROOT/mas.sh"
# Modify macOS Defaults
#sh "$DOTFILES_ROOT/macos.sh"

# Install private dotfiles
if [[ "$USER" == "pmullins" ]]; then
    git clone https://github.com/pmullins/dotfiles.git
    (cd /.dotfiles && ./install)
fi

# All done
echo "=================================="
echo "All Done. Have a nice day!            "
echo "=================================="
