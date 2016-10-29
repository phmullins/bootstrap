#!/usr/bin/env bash

echo " - Pixelmator: Disable Intel HD 3000 graphics fix."
defaults write com.pixelmatorteam.pixelmator PXCEnableOpenCLCPUBlit -bool no
