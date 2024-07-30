if [ ! -d ~/.dotfiles ] ;then
    mkdir ~/.dotfiles
fi
if [ -d ~/.dotfiles/$version ] ;then
    rm -rf ~/.dotfiles/$version
fi
cp -r dotfiles ~/.dotfiles/$version
echo ":: The dotfiles Hyprland configuration prepared in ~/.dotfiles/$version"