# Synchronize packages
sudo pacman -Sy
echo ""

# Check for required packages
echo ":: Checking for the required packages"
_installPackagesPacman "rsync" "gum" "figlet";
echo ""

# Double check rsync
if ! command -v rsync &> /dev/null; then
    echo ":: Force rsync installation"
    sudo pacman -S rsync --noconfirm
else
    echo ":: rsync double checked"
fi
echo ""