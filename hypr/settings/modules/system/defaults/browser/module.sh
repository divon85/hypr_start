#!/bin/bash
_getHeader "$name" "$author"

echo "Define your preferred browser (Default: Google Chrome)."
echo
echo "Executable (if installed) are:"
echo "chromium for Chromium"
echo "google-chrome-stable for Google Chrome"
echo "brave for Brave"
echo "firefox for Firefox"
echo

# Define File
targetFile="$HOME/.config/.settings/browser.sh"

# Current Value
echo "Current Value: $(cat $targetFile)"

# Select Value
customvalue=$(gum input --placeholder "Command to start")
if [ ! -z $customvalue ] ;then
    # Write into file
    echo "$customvalue" > $targetFile
else 
    echo "Please define a command"
    sleep 1
fi
_goBack
