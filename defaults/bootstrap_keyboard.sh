#!/usr/bin/env bash

clear
echo "************************************************************************"
echo "Bootstrap: Keyboard"
echo "************************************************************************"

echo " - Keyboard: Enabled full keyboard access for all controls."
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# 09-24-2016 - Broken in macOS 10.12 Sierra
# echo " - Keyboard: Set a blazingly fast keyboard repeat rate."
# defaults write NSGlobalDomain KeyRepeat -int 0

echo " - Keyboard: Disables the power button sleep setting."
defaults write com.apple.loginwindow PowerButtonSleepsSystem -bool no 

echo "************************************************************************"
