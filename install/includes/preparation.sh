if [ ! -d ~/.dotfiles ] ;then
    mkdir ~/.dotfiles
fi
if [ -d ~/.dotfiles/$version ] ;then
    rm -rf ~/.dotfiles/$version
fi
cp -r dotfiles ~/.dotfiles/$version
echo ":: The configuration prepared in ~/.dotfiles/$version"