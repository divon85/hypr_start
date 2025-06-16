#!/bin/bash

# ---- Version ---- #
version=$(cat install/version)

# ---- Header ---- #
source install/includes/header.sh

# ---- Check Distro ---- #
source install/includes/checkdistro.sh

# ---- Load Distro'S Library ---- #
source install/$installer/library.sh

# ---- Install base packages ---- #
source install/$installer/base_packages.sh

# ---- Confirm Start ---- #
source install/includes/confirm.sh

# ---- Preparation ---- #
source install/includes/preparation.sh

# ---- Install Hyprland packages ---- #
source install/$installer/hyprland_packages.sh

# ---- Configure keyboard ---- #
source install/includes/keyboard.sh

# ---- Configure monitor ---- #
source install/includes/monitor.sh

# ---- Copy dotfiles folder ---- #
source install/includes/copy.sh

# ---- Reboot ----
source install/includes/reboot.sh
