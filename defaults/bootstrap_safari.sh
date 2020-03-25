#!/usr/bin/env bash

# Safari: Disable DNS prefetching.
defaults write com.apple.safari WebKitDNSPrefetchingEnabled -boolean false

# Safari: Do not send search queries to Apple.
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Safari: Hide Safari’s sidebar in Top Sites.
defaults write com.apple.Safari ShowSidebarInTopSites -bool false

# Safari: Disable Safari’s thumbnail cache for History and Top Sites.
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# Safari: Press Tab to highlight each item on a web page.
defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool true

# Safari: Show the full URL in the address bar.
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Safari: Prevent Safari from opening ‘safe’ files automatically after downloading.
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Safari: Enable the Develop menu and the Web Inspector in Safari.
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
