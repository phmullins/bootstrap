#!/usr/bin/env bash

# BASH script used to bootstrap a macOS machine.
# Author: Patrick Mullins (pmullins11@mac.com)
# Last update: October 29th, 2016

# Ask for the administrator password up front
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx_setup` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Clear the screen
clear

# Included Modules
defaults/bootstrap_apps.sh
defaults/bootstrap_appstore.sh
defaults/bootstrap_dbug.sh
defaults/bootstrap_dock.sh
# defaults/bootstrap_finder.sh
# defaults/bootstrap_graphics.sh
# defaults/bootstrap_keyboard.sh
# defaults/bootstrap_mail.sh
# defaults/bootstrap_mouse.sh
# defaults/bootstrap_safari.sh
# defaults/bootstrap_spaces.sh
# defaults/bootstrap_system.sh
# defaults/bootstrap_textedit.sh
# defaults/bootstrap_tmachine.sh
# defaults/bootstrap_trackpad.sh

# Restart applications and services
for app in "Address Book" "Calendar" "Contacts" "Dock" "Finder" "Mail" \
        "Messages" "Safari" "SystemUIServer" "Terminal" "SystemUIServer" \
        "iCal"; do
        killall "${app}" > /dev/null 2>&1
done
