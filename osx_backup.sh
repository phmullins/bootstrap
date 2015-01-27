#!/usr/bin/env bash

# Backup Shells file
rsync -a /etc/shells /Volumes/Other/Backup/etc
# Backup Git configuration
rsync -a ~/.gitconfig /Volumes/Other/Backup/Users/pmullins/
# Backup Ansible 
rsync -a ~/.ansible /Volumes/Other/Backup/Users/pmullins/
# Backup Bash profile settings
rsync -a ~/.bash_profile /Volumes/Other/Backup/Users/pmullins/
# Backup GNUPG keys and settings
rsync -a ~/.gnupg /Volumes/Other/Backup/Users/pmullins/
# Backup Chef settings
rsync -a ~/.chef /Volumes/Other/Backup/Users/pmullins/
# Backup SSH keys and configuration
rsync -a ~/.ssh /Volumes/Other/Backup/Users/pmullins/
# Backup Vim folder
rsync -a ~/.vim /Volumes/Other/Backup/Users/pmullins/
# Backup Vim settings
rsync -a ~/.vimrc /Volumes/Other/Backup/Users/pmullins/
# Backup Xcode Fonts and Color Themes
rsync -a ~/Library/Developer/Xcode/UserData/FontAndColorThemes /Volumes/Other/Backup/Users/pmullins/Library/Developer/Xcode/UserData/FontAndColorThemes/
