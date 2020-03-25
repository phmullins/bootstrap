#!/usr/bin/env bash

# Mail: Copy email addresses as "foo@example.com" instead of "Foo Bar <foo@example.com>" in Mail.app.
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Mail: Add the keyboard shortcut ⌘ + Enter to send an email in Mail.app.
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" -string "@\\U21a9"

# Mail: Disable inline attachments (just show the icons).
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true
