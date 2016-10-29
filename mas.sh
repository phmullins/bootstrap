#!/usr/bin/env bash

# BASH script used to bootstrap a macOS machine.
# Author: Patrick Mullins (pmullins11@mac.com)
# Last update: October 29th, 2016

# Check to see is MAS is installed. If not, install it.
if [[ ! -f $(which mas) ]];
then
	echo "• Installing MAS."
	brew cask install mas
fi

# Install Mac Appstore Applications
echo "• Installing apps from Mac App Store"

# Sign in if not signed in
if [[ $(mas account) == "Not signed in" ]]; then
	mas signin com.pmullins11@mac.com
fi

# List if apps to be installed. Use MAS to determine app numbers.
declare -a apps=(
        524141863  # Jump Desktop (6.0.3)
        497799835  # Xcode (8.1)
        455970963  # Disk Doctor (3.6)
        557168941  # Tweetbot (2.4.4)
        409201541  # Pages (6.0.5)
        407963104  # Pixelmator (3.5.1)
        420212497  # Byword (2.7)
        1142151959 # JustFocus (1.3.3)
        443126292  # TrashMe (2.1.14)
        924891282  # Pixave (2.1.4)
)

mas install --force "${apps[@]}"
mas upgrade
