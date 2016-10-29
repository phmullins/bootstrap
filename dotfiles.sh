#!/usr/bin/env bash

# BASH script used to bootstrap a macOS machine.
# Author: Patrick Mullins (pmullins11@mac.com)
# Last update: October 29th, 2016

# Grab personal dot file from GitHub
wget https://raw.githubusercontent.com/phmullins/dotfiles/master/macOS/.wgetrc
wget https://raw.githubusercontent.com/phmullins/dotfiles/master/macOS/.gitconfig
wget https://raw.githubusercontent.com/phmullins/dotfiles/master/macOS/.gitignore
wget https://raw.githubusercontent.com/phmullins/dotfiles/master/macOS/.vimrc
wget https://raw.githubusercontent.com/phmullins/dotfiles/master/macOS/.bash_profile

# Source the .bash_profile to enable changes
source .bash_profile
