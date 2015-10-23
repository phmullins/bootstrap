#!/bin/bash

# clear terminal screen
clear

# define variables
declare version='0.0.1'

# start bootstrap
echo '-------------------'
echo 'OS X Bootstrap' $version
echo '-------------------'

## Install Xcode Command-line Tools
## xcode-select --install

# Grab latest version of .bash_profile from Git
curl -O https://raw.githubusercontent.com/phmullins/dotfiles/master/OSX/.bash_profile && source .bash_profile

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Tap Brew Cask
brew install caskroom/cask/brew-cask

# Install Ansible
brew install ansible

