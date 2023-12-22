#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toggle Low Power Mode
# @raycast.mode silent

# @raycast.icon 🔋

on run
    set output to do shell script "pmset -g | grep 'lowpowermode' | awk '{print $2}'"
    if output = "0" then
        do shell script "pmset -a lowpowermode 1" with administrator privileges
        do shell script "echo Low Power Mode turned on."
    else
        do shell script "pmset -a lowpowermode 0" with administrator privileges
        do shell script "echo Low Power Mode turned off."
    end if
end run
