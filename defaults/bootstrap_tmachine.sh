#!/usr/bin/env bash

clear
echo "************************************************************************"
echo "Bootstrap: Time Machine"
echo "************************************************************************"

echo " - Time Machine: Prevent Time Machine from prompting to use new hard drives as backup volume."
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

echo " - Time Machine: Disable local Time Machine snapshots."
sudo tmutil disablelocal

echo "************************************************************************"
