#!/bin/bash
version=$(cat .version/name)
source .install/includes/colors.sh
source .install/includes/library.sh
clear

# Set installation mode
mode="live"
if [ ! -z $1 ]; then
    mode="dev"
    echo "IMPORTANT: DEV MODE ACTIVATED. "
    echo "Existing dotfiles folder will not be modified."
    echo "Symbolic links will not be created."
fi
echo -e "${BLUE}"
cat <<"EOF"
Hyprland Installation
EOF
echo -e "${NONE}"

echo "Version: $version"
echo "by Igor Novid"
echo ""
if [ -d ~/.dotfiles ] ;then
    echo "The L4F dotfiles installation is available."
    echo "This script will guide you through the update process."
else
    echo "This script will guide you through the installation process of the L4F dotfiles."
fi
echo ""
source .install/required.sh
source .install/confirmation.sh
source .install/yay.sh
source .install/backup.sh
source .install/preparation.sh
source .install/installer.sh
source .install/remove.sh
source .install/general.sh
source .install/packages/general-packages.sh
source .install/install-packages.sh
source .install/packages/hyprland-packages.sh
source .install/install-packages.sh
source .install/wallpaper.sh