#!/usr/bin/env bash

clear
echo "************************************************************************"
echo "Bootstrap: Dock"
echo "************************************************************************"

echo " - Dock: Set the icon size of Dock items to 36 pixels."
defaults write com.apple.dock tilesize -int 36

echo " - Dock: Minimize windows into their application’s icon."
defaults write com.apple.dock minimize-to-application -bool true

echo " - Dock: Don’t animate opening applications from the Dock."
defaults write com.apple.dock launchanim -bool false

echo " - Dock: Enable spring loading for all Dock items."
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

echo " - Automatically hide and show the Dock."
defaults write com.apple.dock autohide -bool true

echo " - Dock: Show indicator lights for open applications in the Dock."
# defaults write com.apple.dock show-process-indicators -bool true

# echo " - Remove the auto-hiding Dock delay."
#defaults write com.apple.dock autohide-delay -float 0

# echo " - Remove the animation when hiding/showing the Dock."
#defaults write com.apple.dock autohide-time-modifier -float 0

echo "************************************************************************"
