#!/usr/bin/env bash

# Graphics: Disabled opening and closing window animations.
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Graphics: Disabled the animations for opening Quick Look windows.
defaults write -g QLPanelAnimationDuration -float 0

# Graphics: Increased window resize speed for Cocoa applications.
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Graphics: Disabled window resize animation.
defaults write -g NSWindowResizeTime -float 0.003

# Graphics: Disabled Finder window animations and Get Info animations.
defaults write com.apple.finder DisableAllAnimations -bool true

# Graphics: Disabled send and reply animations in Mail.app.
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true

# Graphics: Change screen shot format from .PNG to .JPG.
defaults write com.apple.screencapture type jpg
