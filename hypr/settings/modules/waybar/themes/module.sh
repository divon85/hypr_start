#!/bin/bash
_getHeader "$name" "$author"
setsid $HOME/.config/waybar/themeswitcher.sh 1>/dev/null 2>&1 &
_goBack