#!/usr/bin/env bash

# Dock: Set the icon size of Dock items to 36 pixels.
defaults write com.apple.dock tilesize -int 36

# Dock: Minimize windows into their application’s icon.
defaults write com.apple.dock minimize-to-application -bool true

# Dock: Don’t animate opening applications from the Dock.
defaults write com.apple.dock launchanim -bool false

# Dock: Enable spring loading for all Dock items.
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Automatically hide and show the Dock.
defaults write com.apple.dock autohide -bool true

# Dock: Show indicator lights for open applications in the Dock.
# defaults write com.apple.dock show-process-indicators -bool true

# Remove the auto-hiding Dock delay.
#defaults write com.apple.dock autohide-delay -float 0

# Remove the animation when hiding/showing the Dock.
#defaults write com.apple.dock autohide-time-modifier -float 0
