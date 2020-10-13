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
	634148309  # Logic Pro X (10.5.1)
	424389933  # Final Cut Pro (10.4.10)
	1037126344 # Apple Configurator 2 (2.13.1)
	455545700  # BitPerfect (3.1.2)
	420212497  # Byword (2.7)
	1287239339 # ColorSlurp (2.1.1)
	1055511498 # Day One (4.2.0)
	1007358832 # Disk Aid (1.92)
	1435957248 # Drafts (15.0)
	490152466  # iBooks Author (2.6.1)
	408981434  # iMovie (10.1.13)
	775737590  # iA Writer (5.2.8)
	524141863  # Jump Desktop (8.3.11)
	409183694  # Keynote (7.0.5)
	890031187  # Marked 2 (2.5.6)
	1450757574 # Mastonaut (1.2.2)
	511114225  # MetaMovie (2.4.3)
	409203825  # Numbers (4.0.5)
	409201541  # Pages (6.0.5)
	924891282  # Pixave (2.1.4)
	407963104  # Pixelmator (3.5.1)
	1289583905 # Pixelmator Pro (1.4.1)	
	1496833156 # Playgrounds (3.3.1)
	1241716354 # PMenu (2.2)
	568494494  # Pocket (1.8.5)
	1449412482 # Reeder (4.1.6)
	883878097  # Server (5.9)
	1006087419 # SnippetsLab (1.9.2)
	1409975750 # Spect (1.4.5)
	1207352056 # Sugarmate Glance (2.0.8)
	443126292  # TrashMe (2.1.14)
	1384080005 # Tweetbot (3.3.2)
	497799835  # Xcode (11.1)
	
)

mas install --force "${apps[@]}"
mas upgrade


