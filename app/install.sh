#!/bin/bash

# Define URL for the install script
INSTALL_URL="https://raw.githubusercontent.com/mooock/Batocera/refs/heads/main/app/install_x86.sh"

# Check the filesystem type of /userdata
fstype=$(stat -f -c %T /userdata)

# List of known filesystems that are incompatible or problematic with symlinks
incompatible_types=("vfat" "msdos" "exfat" "cifs" "ntfs")

# Check if the filesystem is in the incompatible list
for type in "${incompatible_types[@]}"; do
    if [[ "$fstype" == "$type" ]]; then
        echo "Error: The file system type '$fstype' on /userdata does not reliably support symlinks. Incompatible."
        exit 1
    fi
done

# If compatible
echo "File system '$fstype' supports symlinks. Continuing..."

# Detect system architecture
ARCH=$(uname -m)

if [[ "$ARCH" == "x86_64" ]]; then
    echo "Detected AMD64 (x64) architecture. Executing the install script..."
    curl -Ls "$INSTALL_URL" | bash
elif [[ "$ARCH" == "i386" || "$ARCH" == "i686" ]]; then
    echo "Detected x86 architecture. Executing the install script..."
    curl -Ls "$INSTALL_URL" | bash
else
    echo "Unsupported architecture: $ARCH"
    exit 1
fi
