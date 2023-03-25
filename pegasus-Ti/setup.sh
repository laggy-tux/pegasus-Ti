#!/bin/bash

# Pegasus Frontend Installer Script

# Set up variables
PEGASUS_DIR="/opt/retropie/emulators/pegasus-fe"
THEMES_DIR="/opt/retropie/configs/all/pegasus-fe/themes"
CONFIG_DIR="/opt/retropie/configs/all/pegasus-fe"

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
wget https://github.com/user/repo/archive/master.zip -P /tmp
sudo unzip /tmp/master.zip -d $THEMES_DIR

# Copy configuration file
sudo cp $CONFIG_DIR/pegasus-config.toml $CONFIG_DIR/pegasus-config.toml.bak
sudo cp /path/to/custom/config.toml $CONFIG_DIR/pegasus-config.toml

# Clean up
sudo rm /tmp/pegasus-frontend_1.11.1-1_armhf.deb
sudo rm /tmp/master.zip

echo "Pegasus frontend installation completed successfully."
