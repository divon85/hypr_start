# Remove existing symlinks
for df in "${backup_files[@]}"
do
    if [ -L "${df}" ]; then
        rm ${df}
        echo ":: Symlink $df removed"
    fi
done

# Copy configuration to dotfiles folder
if [ -f ~/dotfiles-excludes.txt ] ;then
    echo ":: Exclude file for rsync found"
    rsync -avhp -I --exclude-from=~/dotfiles-excludes.txt ~/.dotfiles/$version/ ~/
else
    rsync -avhp -I ~/.dotfiles/$version/ ~/
fi
echo ":: Dotfiles installed in ~/.config/"
