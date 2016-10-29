#!/usr/bin/env bash

echo " - Debug: Enable the debug menu in Safari."
defaults write com.apple.Safari IncludeInternalDebugMenu 1

# echo " - Debug: Enable the debug menu in the App Store."
# defaults write com.apple.appstore ShowDebugMenu -bool true

# echo " - Debug: Enable the debug menu in Address Book."
# defaults write com.apple.addressbook ABShowDebugMenu -bool true

# echo " - Debug: Enable the debug menu in iCal (pre-10.8)."
# defaults write com.apple.iCal IncludeDebugMenu -bool true

# echo " - Debug: Enable the debug menu in Disk Utility."
# defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
# defaults write com.apple.DiskUtility advanced-image-options -bool true
