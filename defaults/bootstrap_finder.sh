#!/usr/bin/env bash

# Finder: Show all filename extensions.
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: Enable the expand save panel by default.
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Finder: Show status bar.
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: Show path bar.
defaults write com.apple.finder ShowPathbar -bool true

# Finder: Display full POSIX path as Finder window title.
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Finder: Disable Photos from auto launching.
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Finder: Allow text selection in Quick Look.
defaults write com.apple.finder QLEnableTextSelection -bool true

# Finder: Do not create .DS_Store files on network volumes.
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Finder: Set sidebar icon size to small.
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Finder: Disable the warning before emptying the Trash.
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Finder: Disable the warning before emptying the Trash.
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Finder: Disable the warning when changing a file extension.
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder: Enable spring loading for directories.
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

# Finder: Tweak the spring loading delay for directories.
defaults write NSGlobalDomain com.apple.springing.delay -float .5

# Finder: Use list view in all Finder windows by default.
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Finder: Show icons for hard drives, servers, and removable media on the desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder: Disable disk image verification.
# defaults write com.apple.frameworks.diskimages skip-verify -bool true
# defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
# defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Finder: Show the ~/Library folder.
chflags nohidden ~/Library
