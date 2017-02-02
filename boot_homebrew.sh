#!/usr/bin/env bash

# BASH script used to bootstrap a macOS machine.
# Author: Patrick Mullins (pmullins11@mac.com)
# Last update: October 29th, 2016

# Install or update Homebrew
if [[ ! -f $(which brew) ]];
then
  echo "Bootstrap: Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Bootstrap: Updating Homebrew"
  brew update
  brew upgrade
  brew cleanup
  echo "Bootstrap: Installing homebre/bundle"
  brew tap homebrew/bundle
fi

# Install Homebrew formulae
echo "Bootstrap: Installing Homebrew Applications"
brew bundle
