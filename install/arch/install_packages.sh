# ----------------------------------------------------- 
# Install packages 
# ----------------------------------------------------- 

installer_packages=(
    # Hyprland
    "hyprland"
    "hyprpaper"
    "hyprlock"
    "hypridle"
    "noto-fonts-cjk"
    "noto-fonts-emoji"
    "noto-fonts"
    "xdg-desktop-portal-hyprland" 
    "libnotify" 
    "dunst"
    "qt5-wayland" 
    "qt6-wayland"
    "waybar"
    # System
    "rofi-wayland"
    "alacritty"
    "thunar"
    "qutebrowser"
    "ttf-font-awesome"
    "fastfetch"
    "ttf-fira-sans" 
    "ttf-fira-code" 
    "ttf-firacode-nerd"
    "fuse2"
    "gtk4"
    "libadwaita"
    "jq"
    "python-gobject"
)

installer_yay=(
    "wlogout" 
)

# PLEASE NOTE: Add more packages at the end of the following command
_installPackages "${installer_packages[@]}";
_installPackagesYay "${installer_yay[@]}";
