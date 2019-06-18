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
	420212497  # Byword (2.7)
	422304217  # Day One Classic (1.10.6)
	455970963  # Disk Doctor (3.6)
	686428787  # Duplicate Detective
	490152466  # iBooks Author (2.5)
	524141863  # Jump Desktop
	1142151959 # JustFocus (1.3.3)
	409183694  # Keynote (7.0.5)
	557168941  # Tweetbot (2.4.4)
	624884154  # Lingo (2.0.5)
	890031187  # Marked 2 (2.5.6)
	409203825  # Numbers (4.0.5)
	409201541  # Pages (6.0.5)
	924891282  # Pixave (2.1.4)
	407963104  # Pixelmator (3.5.1)
	883878097  # Server (5.2)
	443126292  # TrashMe (2.1.14)
	497799835  # Xcode (8.1)
)

mas install --force "${apps[@]}"
mas upgrade

mas 'Byword', id: 420212497
mas 'Disk Aid', id: 1007358832
mas 'Keynote', id: 409183694
mas 'Tweetbot', id: 1384080005
mas 'Numbers', id: 409203825
mas 'Pages', id: 409201541
mas 'Pixave', id: 924891282
mas 'Pixelmator', id: 407963104
mas 'PMenu', id: 1241716354
mas 'Reeder', id: 880001334
mas 'TrashMe', id: 443126292
mas 'iA Writer', id: 775737590
mas 'Spect', id: 1409975750
mas 'BitPerfect', id: 455545700
was 'Jump Desktop', id: 524141863
#mas 'GarageBand', id: 682658836
mas 'Marked 2', id: 890031187
mas 'Tweetbot', id: 557168941
mas 'Sugarmate Glance', id: 1207352056
mas 'iMovie', id: 408981434
mas 'Day One', id: 1055511498
#mas 'Xcode', id: 497799835
mas 'MetaMovie', id: 511114225
mas 'SnippetsLab', id: 1006087419