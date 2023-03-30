#!/bin/bash

# Pegasus Frontend Installer Script

# Set up variables
PEGASUS_DIR="/.config/pegasus-frontend"
THEMES_DIR="/.configs/all/pegasus-frontend/themes"
CONFIG_DIR="/opt/retropie/configs/all/pegasus-fe"

# Check which device is being used
echo "choose the os"
echo "1. arch"
echo "2. Ubuntu"
echo "3. Other"

read choice 

case $choice in

1)
# Update system
sudo pacman -Syu

# Install required packages
sudo pacman -S --noconfirm freetype2 curl openal sfml libavcodec libavformat libavutil libswscale libavresample harfbuzz fontconfig

# instll retro arch
sudo pacman -S retroarch

# Download and extract Pegasus frontend
yay -S pegasus-frontend-git

# Create themes directory
sudo mkdir -p $THEMES_DIR

# Download and extract custom theme
wget /home/Downloads/pegasus-Ti/themes -P /tmp
sudo unzip /tmp/master.zip -d $THEMES_DIR

# Copy configuration file
sudo cp $CONFIG_DIR/pegasus-config.toml $CONFIG_DIR/pegasus-config.toml.bak
sudo cp /path/to/custom/config.toml $CONFIG_DIR/pegasus-config.toml

# Clean up
sudo rm /tmp/pegasus-frontend_1.11.1-1_armhf.deb
sudo rm /tmp/master.zip

echo "Pegasus frontend installation completed successfully."
 
     ;;

2)
    # Ubuntu installation
    echo "Installing Pegasus and RetroArch for Ubuntu..."
    
    # Update packages
    sudo apt-get update
    
    # Install dependencies
    sudo apt-get install -y git build-essential cmake libsdl2-dev libboost-filesystem-dev libboost-system-dev libsqlite3-dev libavcodec-dev libavformat-dev libswscale-dev libavutil-dev libavfilter-dev libfontconfig1-dev libfreetype6-dev libfribidi-dev libharfbuzz-dev libjpeg-dev libpng-dev libsdl2-ttf-dev libsdl2-image-dev libsdl2-mixer-dev
    
    # Clone Pegasus repository
    git clone --recursive https://github.com/mmatyas/pegasus-frontend.git
    
    # Build and install Pegasus
    cd pegasus-frontend
    mkdir build && cd build
    cmake ..
    make -j4
    sudo make install
    
    # Install RetroArch
    sudo apt-get install -y retroarch
    
    # Create themes directory and copy all themes
    mkdir ~/.config/pegasus-frontend/themes
    cp -r themes/* ~/.config/pegasus-frontend/themes/
    ;;

3)
    # Other device installation
    echo "This device is not currently supported."
    ;;
    
  *)
    echo "Invalid choice."
    ;;
esac
