# Check for ttf-ms-fonts
if [[ $(_isInstalledPacman "ttf-ms-fonts") == 0 ]]; then
    echo "The script has detected ttf-ms-fonts. This can cause conflicts with icons in Waybar."
    if gum confirm "Do you want to uninstall ttf-ms-fonts?" ;then
        sudo pacman --noconfirm -R ttf-ms-fonts
    fi
fi

# Check for running NetworkManager.service
if [[ $(systemctl list-units --all -t service --full --no-legend "NetworkManager.service" | sed 's/^\s*//g' | cut -f1 -d' ') == "NetworkManager.service" ]];then
    echo ":: NetworkManager.service already running."
else
    sudo systemctl enable NetworkManager.service
    sudo systemctl start NetworkManager.service
    echo ":: NetworkManager.service activated successfully."    
fi

# Check for running bluetooth.service
if [[ $(systemctl list-units --all -t service --full --no-legend "bluetooth.service" | sed 's/^\s*//g' | cut -f1 -d' ') == "bluetooth.service" ]];then
    echo ":: bluetooth.service already running."
else
    sudo systemctl enable bluetooth.service
    sudo systemctl start bluetooth.service
    echo ":: bluetooth.service activated successfully."    
fi

mv .bashrc ~/
echo ":: .bashrc files moved to the home directory"

mv gtk_files/* ~/
echo ":: gtk files moved to the home directory"

rm -rf gtk_files
echo ":: remove the unneeded gtk_files"

rsync -a -I . ~/.config/
echo ":: copy the files"

if [ ! -d ~/Pictures ]; then
    mkdir ~/Pictures
fi

if [ ! -d ~/Pictures/wallpaper ];
    mkdir ~/Pictures/wallpaper
    rsync -a -I wallpaper ~/Pictures/
    echo ":: copy the wallpaper"
fi

# ------------------------------------------------------
# Copy default wallpaper files to .cache
# ------------------------------------------------------

# Cache file for holding the current wallpaper
cache_file="$HOME/.cache/current_wallpaper"
rasi_file="$HOME/.cache/current_wallpaper.rasi"

# Create cache file if not exists
if [ ! -f $cache_file ] ;then
    touch $cache_file
    echo "$HOME/Pictures/wallpaper/default.jpg" > "$cache_file"
fi

# Create rasi file if not exists
if [ ! -f $rasi_file ] ;then
    touch $rasi_file
    echo "* { current-image: url(\"$HOME/Pictures/wallpaper/default.jpg\", height); }" > "$rasi_file"
fi

rm -rf ~/.config/.install
rm ~/.config/install.sh
echo ":: remove the unneeded installer files and folder from ~/.config"

# Create default folder structure
xdg-user-dirs-update
echo 

echo ":: Cleanup done."
