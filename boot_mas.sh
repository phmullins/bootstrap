#!/usr/bin/env bash

# BASH script used to bootstrap a macOS machine.
# Author: Patrick Mullins (pmullins11@mac.com)
# Last update: October 29th, 2016

# Check to see is MAS is installed. If not, install it.
if [[ ! -f $(which mas) ]];
then
	echo "Bootstrap: Installing MAS."
	brew install mas
fi

# Install Mac Appstore Applications
echo "Bootstrap: Installing apps from Mac App Store"

# Sign in if not signed in
if [[ $(mas account) == "Not signed in" ]]; then
	mas signin com.pmullins11@mac.com
fi

# List of apps to be installed. Use MAS to determine app numbers.
declare -a apps=(
	455545700  # BitPerfect
	420212497  # Byword (2.7)
	1055511498 # Day One
	455970963  # Disk Doctor (3.6)
	686428787  # Duplicate Detective
	490152466  # iBooks Author (2.5)
	408981434  # iMovie
	775737590  # iA Writer
	524141863  # Jump Desktop
	1142151959 # JustFocus (1.3.3)
	409183694  # Keynote (7.0.5)
	624884154  # Lingo (2.0.5)
	890031187  # Marked 2 (2.5.6)
	511114225  # MetaMovie
	409203825  # Numbers (4.0.5)
	409201541  # Pages (6.0.5)
	924891282  # Pixave (2.1.4)
	407963104  # Pixelmator (3.5.1)
	1241716354 # PMenu
	880001334  # Reeder
	883878097  # Server (5.2)
	1006087419 # SnippetsLab
	1409975750 # Spect
	1207352056 # Sugarmate Glance
	443126292  # TrashMe (2.1.14)
	557168941  # Tweetbot (2.4.4)
	497799835  # Xcode (8.1)
)

mas install --force "${apps[@]}"
mas upgrade


