#!/usr/bin/env bash

clear
echo "************************************************************************"
echo "Bootstrap: TextEdit"
echo "************************************************************************"

echo " - TextEdit: Use plain text mode for new TextEdit documents."
defaults write com.apple.TextEdit RichText -int 0

echo " - TextEdit: Open and save files as UTF-8 in TextEdit."
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

echo " - TextEdit: Disable smart quotes."
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

echo " - TextEdit: Disable smart dashes."
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

echo " - TextEdit: Hide Ruler."
defaults write com.apple.TextEdit ShowRuler 0

echo "************************************************************************"
