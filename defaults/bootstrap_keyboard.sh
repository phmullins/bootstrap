#!/usr/bin/env bash

# Keyboard: Enabled full keyboard access for all controls.
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# 09-24-2016 - Broken in macOS 10.12 Sierra
# Keyboard: Set a blazingly fast keyboard repeat rate.
# defaults write NSGlobalDomain KeyRepeat -int 0

# Keyboard: Disables the power button sleep setting.
defaults write com.apple.loginwindow PowerButtonSleepsSystem -bool no
