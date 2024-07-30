backup_files=(
    ".config/alacritty"
    ".config/dunst"
    ".config/hypr"
    ".config/dotfiles"
    ".config/rofi"
    ".config/waybar"
    ".config/wlogout"
    ".bashrc"
)

echo -e "${GREEN}"
figlet "Backup"
echo -e "${NONE}"
echo "The script can create a backup of you existing configurations in .config and your .bashrc"
if gum confirm "Do you want to create a backup now" ;then

    # Create .dotfiles folder
    if [ ! -d ~/.dotfiles ] ;then
        mkdir ~/.dotfiles
    fi

    # Get current timestamp
    datets=$(date '+%Y%m%d%H%M%S')

    # Create backup folder
    if [ ! -d ~/.dotfiles/archive ] ;then
        mkdir ~/.dotfiles/archive
    fi

    # Create backup folder
    if [ ! -d ~/.dotfiles/backup ] ;then
        mkdir ~/.dotfiles/backup
    else
        mkdir ~/.dotfiles/archive/$datets
        cp -r ~/.dotfiles/backup/. ~/.dotfiles/archive/$datets/
    fi

    for df in "${backup_files[@]}"
    do
        if [ -d ~/$df ] ;then
            echo ":: Backup of $df"
            mkdir -p ~/.dotfiles/backup/$df
            cp -r ~/$df ~/.dotfiles/backup/$df
        fi
        if [ -f ~/$df ] && [ ! -L "${df}" ] ;then
            echo ":: Backup of $df"
            cp ~/$df ~/.dotfiles/backup/$df
        fi
    done
elif [ $? -eq 130 ]; then
    echo ":: Installation canceled"
    exit 130
else
    echo ":: Backup skipped"
fi