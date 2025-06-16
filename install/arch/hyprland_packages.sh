# ----------------------------------------------------- 
# Install packages 
# ----------------------------------------------------- 

installer_packages=(
    # Hyprland
    "hyprland"
    "hyprpaper"
    "hyprlock"
    "waybar"
    "rofi-wayland"
    "alacritty"
    "wlogout"
    "xdg-desktop-portal-hyprland"
    "xdg-user-dirs"
    "dunst"
    "libadwaita"
    "qt5-wayland"
    "qt6-wayland"

    # Fonts
    "ttf-font-awesome"
    "noto-fonts-cjk"
    "noto-fonts-emoji"
    "noto-fonts"
    "otf-ipaexfont"
    "ttf-fira-sans" 
    "ttf-fira-code" 
    "ttf-firacode-nerd"

    # Misc
    "qutebrowser"
    "thunar"
    "celluloid"
    "neovim"
    "fastfetch"
)

echo ":: Installing on $distro"

# Packages
_installPackages "${installer_packages[@]}"