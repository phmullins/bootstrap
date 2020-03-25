#!/usr/bin/env bash

# Time Machine: Prevent Time Machine from prompting to use new hard drives as backup volume.
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Time Machine: Disable local Time Machine snapshots.
sudo tmutil disablelocal
