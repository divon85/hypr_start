echo "Do you want to reinstall all already installed packages and install the required new packages? (recommended and more robust)"
echo "or do you want to install the new required packages only? (could be faster installation)"
if gum confirm "How do you want to proceed?" --affirmative "Reinstall all packages" --negative "Install new packages only" ;then
    force_install=1
elif [ $? -eq 130 ]; then
    echo "Installation canceled."
    exit 130
else
    force_install=0
fi