#!/bin/bash

set -eufo pipefail

defaults write com.apple.spaces spans-displays -bool true && killall SystemUIServer

osascript -e 'tell application "System Events" to tell every desktop to set picture to "~/Pictures/gabriel-lamza-yJr1rbbrAGw-unsplash.jpg" as POSIX file'
