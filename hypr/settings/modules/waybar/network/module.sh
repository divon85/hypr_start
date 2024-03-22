#!/bin/bash
_getHeader "$name" "$author"

echo "Hide or show the network module in mine waybar themes."

# Define File
targetFile1="$HOME/.config/waybar/themes/mine/config"
targetFile2="$HOME/.config/waybar/themes/mine-blur/config"
targetFile3="$HOME/.config/waybar/themes/mine-blur-bottom/config"
targetFile4="$HOME/.config/waybar/themes/mine-bottom/config"
targetFile5="$HOME/.config/waybar/themes/mine-minimal/config"
settingsFile="$HOME/.config/.settings/waybar_network"

# Define Markers
startMarker="START NETWORK TOOGLE"
endMarker="END NETWORK TOOGLE"

# Select Value
customvalue=$(gum choose "SHOW" "HIDE")

if [ ! -z $customvalue ]; then
    if [ "$customvalue" == "SHOW" ] ;then
        customtext="        \"network\","
    else
        customtext="        \/\/\"network\","
    fi
    
    _replaceInFile $startMarker $endMarker $customtext $targetFile1
    _replaceInFile $startMarker $endMarker $customtext $targetFile2
    _replaceInFile $startMarker $endMarker $customtext $targetFile3
    _replaceInFile $startMarker $endMarker $customtext $targetFile4
    _replaceInFile $startMarker $endMarker $customtext $targetFile5
    _writeSettings $settingsFile $customtext
    
    # Reload Waybar
    setsid $HOME/.config/waybar/launch.sh 1>/dev/null 2>&1 &
    _goBack
else 
    echo "ERROR: Define a value."
    sleep 2
    _goBack    
fi
