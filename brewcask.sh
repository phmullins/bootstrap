#!/usr/bin/env bash

# BASH script used to bootstrap a macOS machine.
# Author: Patrick Mullins (pmullins11@mac.com)
# Last update: October 29th, 2016

brew doctor

# Install Homebrew Cask First

echo "Bootstrap: Installing Homebrew Cask"
brew install caskroom/cask/brew-cask

# Install applications using Homebrew Cask
echo "Bootstrap: Installing Apps via Cask"
for app in "1password" "alfred" "atom" "bbedit" "carbon-copy-cloner" "coderunner" "cog" "dash" "devonthink-pro-office" "easyfind" "etrecheck" "flux" "google-chrome" "gpgtools" "jump-desktop" "kindle" "imageoptim" "iterm2" "liteicon" "marked" "metadatics" "monolingual" "omnifocus" "qlmarkdown" "qlstephen" "steam" "telegram" "the-unarchiver" "tower" "transmit" "vagrant" "vmware-fusion" "xld"; do
	brew cask install "${app}"
done

## cleanup
brew cask cleanup
