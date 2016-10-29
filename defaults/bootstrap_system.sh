#!/usr/bin/env bash

clear
echo "************************************************************************"
echo "Bootstrap: System"
echo "************************************************************************"

echo " - System: iOS Power Chime on MacOS."
defaults write com.apple.PowerChime ChimeOnAllHardware -bool true

echo " - System: Disable Last Login Banner."
touch ~/.hushlogin

echo "************************************************************************"
