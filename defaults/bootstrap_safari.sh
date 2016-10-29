#!/usr/bin/env bash

echo " - Safari: Disable DNS prefetching."
defaults write com.apple.safari WebKitDNSPrefetchingEnabled -boolean false

echo " - Safari: Do not send search queries to Apple."
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

echo " - Safari: Hide Safari’s sidebar in Top Sites."
defaults write com.apple.Safari ShowSidebarInTopSites -bool false

echo " - Safari: Disable Safari’s thumbnail cache for History and Top Sites."
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

echo " - Safari: Press Tab to highlight each item on a web page."
defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool true

echo " - Safari: Show the full URL in the address bar."
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

echo " - Safari: Prevent Safari from opening ‘safe’ files automatically after downloading."
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

echo " - Safari: Enable the Develop menu and the Web Inspector in Safari."
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
