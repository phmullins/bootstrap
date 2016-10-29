#!/usr/bin/env bash

# BASH script used to bootstrap a macOS machine.
# Author: Patrick Mullins (pmullins11@mac.com)
# Last update: October 29th, 2016

# Clear the Terminal screen
clear

# Define variables
BOOTSTRAP_ROOT=$(pwd)
declare version='0.1.0'

# Display version banner
echo "=================================="
echo "macOS Bootstrap v'$version        "
echo "=================================="

# Install personal dot files
sh "$BOOTSTRAP_ROOT/dotfiles.sh"
# Modify macOS Defaults
sh "$BOOTSTRAP_ROOT/macos.sh"
# Install Homebrew Applications
sh "$BOOTSTRAP_ROOT/homebrew.sh"
# Install Homebrew Cask Applications
sh "$BOOTSTRAP_ROOT/brewcask.sh"
# Install Mac App Stor Applications
sh "$BOOTSTRAP_ROOT/mas.sh"

# Install private dotfiles
#if [[ "$USER" == "pmullins" ]]; then
#    git clone https://github.com/phmullins/dotfiles.git
#    (cd /.dotfiles && ./install)
#fi

# All done
echo "All Done! Note that some of these changes require a logout/restart to take effect."
