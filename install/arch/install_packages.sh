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
    "noto-fonts-extra"
    "xdg-desktop-portal-hyprland"
    "xdg-desktop-portal-gtk"
    "xdg-user-dirs"
    "libnotify"
    "dunst"
    "qt5-wayland"
    "qt6-wayland"
    "waybar"

    # System
    "rofi-wayland"
    "alacritty"
    "nautilus"
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
    "brightnessctl"
    "networkmanager"
    "evince"
    "celluloid"
    "brightnessctl"
    "zip"
    "zsh-completion"
    "zsh"
)

installer_yay=(
    "wlogout"
    "visual-studio-code-bin"
    "microsoft-edge-dev-bin"
)

# PLEASE NOTE: Add more packages at the end of the following command
_installPackages "${installer_packages[@]}";
_installPackagesYay "${installer_yay[@]}";
