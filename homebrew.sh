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
  brew upgrade --all
  brew cleanup
fi

# Install Homebrew formulae
echo "Bootstrap: Installing Homebrew formulae"
brew doctor
for formulae in "bash" "caddy" "cmake" "colordiff" "coreutils" "git" "go" "hugo" "libyaml" "macdown" "micro" "nmap" "pandoc" "rmlint" "shellcheck" "sqlite" "ssh-copy-id" "tailor" "testdisk" "terraform" "tree" "wget" "speedtest_cli"; do
  brew install "${formulae}"
done
