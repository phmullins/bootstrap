#!/usr/bin/env bash

echo " - Debug: Enable the debug menu in Safari."
defaults write com.apple.Safari IncludeInternalDebugMenu 1

echo " - Debug: Enable the debug menu in Reminders."
defaults write com.apple.reminders RemindersDebugMenu -boolean true

echo " - Debug: Enable the debug menu in the App Store."
defaults write com.apple.appstore ShowDebugMenu -bool true

echo " - Debug: Enable the debug menu in Contacts."
defaults write com.apple.Safari IncludeInternalDebugMenu 1

echo " - Debug: Enable the debug menu in Calendar."
defaults write com.apple.Calendar ABShowDebugMenu -bool true

# echo " - Debug: Enable the debug menu in Disk Utility."
# defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
# defaults write com.apple.DiskUtility advanced-image-options -bool true
