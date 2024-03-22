# Install wallpapers
# ------------------------------------------------------
echo -e "${BLUE}"
figlet "Wallpapers"
echo -e "${NONE}"
if [ ! -d ~/Pictures ]; then
    echo "Create Pictures folder for wallpapers"
    mkdir ~/Pictures
fi
if [ ! -d ~/Pictures/wallpaper ]; then
    mkdir ~/Pictures/wallpaper
    cp ../wallpapers/* ~/Pictures/wallpaper
    echo "Wallpapers installed successfully."
else
    echo ":: ~/wallpaper folder already exists."
fi
echo ""

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