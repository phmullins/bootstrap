#!/usr/bin/env bash

clear
echo "************************************************************************"
echo "Bootstrap: Debug Menus"
echo "************************************************************************"

echo " - Pixelmator: Disable Intel HD 3000 graphics fix."
defaults write com.pixelmatorteam.pixelmator PXCEnableOpenCLCPUBlit -bool no

echo "************************************************************************"