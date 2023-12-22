#!/usr/bin/osascript

# Raycast metadata
# @raycast.schemaVersion 1
# @raycast.title Toggle macOS Appearance
# @raycast.mode silent

# Raycast icon (optional)
# @raycast.icon 🎨

on run
    tell application "System Events"
        tell appearance preferences
            set dark mode to not dark mode
        end tell
    end tell
end run
