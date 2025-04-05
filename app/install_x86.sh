#!/bin/bash

# Define the URL for the menu script
MENU_URL="https://raw.githubusercontent.com/mooock/Batocera/refs/heads/main/usr/bin/menu"

# Define the installation path
INSTALL_PATH="/usr/bin/menu"

# Download the menu script
echo "Downloading the menu script..."
curl -Ls "$MENU_URL" -o "$INSTALL_PATH"

# Check if the download was successful
if [ $? -eq 0 ]; then
    echo "Menu script downloaded successfully."
else
    echo "Error: Failed to download the menu script."
    exit 1
fi

# Make the script executable
echo "Setting execute permissions for $INSTALL_PATH..."
chmod +x "$INSTALL_PATH"

# Verify the script is executable
if [ -x "$INSTALL_PATH" ]; then
    echo "Menu script installed and made executable at $INSTALL_PATH."
else
    echo "Error: Failed to set execute permissions for $INSTALL_PATH."
    exit 1
fi
