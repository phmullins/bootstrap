#!/usr/bin/env bash

echo " - Spaces: Don’t automatically rearrange Spaces based on most recent use."
defaults write com.apple.dock mru-spaces -bool false

echo " - Spaces: Don’t show Dashboard as a Space."
defaults write com.apple.dock dashboard-in-overlay -bool true

echo " - Spaces: Speed up Mission Control animations."
defaults write com.apple.dock expose-animation-duration -float 0.1

echo " - Spaces: Group windows by application in Mission Control."
defaults write com.apple.dock expose-group-by-app -bool true
