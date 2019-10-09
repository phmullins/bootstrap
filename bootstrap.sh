#!/usr/bin/env bash

# BASH script used to bootstrap a macOS machine.
# Author: Patrick Mullins (pmullins11@mac.com)
# Last update: October 9th, 2019

# Clear the Terminal screen
clear

# Define variables
BOOTSTRAP_ROOT=$(pwd)
declare version='0.2.9'

# Display version banner
echo "=================================="
echo "macOS Bootstrap v'$version        "
echo "=================================="

# Install Command-line Developer Tools
if [[ $(/usr/bin/gcc 2>&1) =~ "Bootstrap: No developer tools were found!" ]] || [[ ! -x /usr/bin/gcc ]]; then
    echo "Bootstrap: Installing Command-line Developer Tools"
    xcode-select --install
fi

# Install Homebrew Applications
sh "$BOOTSTRAP_ROOT/boot_homebrew.sh"

# Modify macOS Defaults
sh "$BOOTSTRAP_ROOT/boot_macos.sh"

# Install personal dot files
sh "$BOOTSTRAP_ROOT/boot_dotfiles.sh"

# All done
echo "Bootstrap: All Done! Note that some of these changes require a logout/restart to take effect."
