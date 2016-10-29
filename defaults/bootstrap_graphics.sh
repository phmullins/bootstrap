#!/usr/bin/env bash

clear
echo "************************************************************************"
echo "Bootstrap: Graphics UI/UX"
echo "************************************************************************"

echo " - Graphics: Disabled opening and closing window animations."
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

echo " - Graphics: Disabled the animations for opening Quick Look windows."
defaults write -g QLPanelAnimationDuration -float 0

echo " - Graphics: Increased window resize speed for Cocoa applications."
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

echo " - Graphics: Disabled window resize animation."
defaults write -g NSWindowResizeTime -float 0.003

echo " - Graphics: Disabled Finder window animations and Get Info animations."
defaults write com.apple.finder DisableAllAnimations -bool true

echo " - Graphics: Disabled send and reply animations in Mail.app."
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true

echo "************************************************************************"
