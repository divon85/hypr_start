#!/bin/bash
clear
installFolder=$(dirname "$(pwd)")

# Source files
source .library/version.sh
source .library/library.sh

# Define global variables
modules_path="modules"
current=""
back=""
clickArr=""
confDir="conf"

# Start Application
_getModules $(pwd)/$modules_path
