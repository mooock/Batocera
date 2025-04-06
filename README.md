# Batocera Management Script

This script provides an interactive terminal interface to manage various Batocera system operations. It simplifies tasks such as restarting EmulationStation, managing Kodi, checking system status, and performing maintenance functions directly from the command line.

## Installation
To install this script, use the following command:

```bash
curl -L https://raw.githubusercontent.com/mooock/Batocera/refs/heads/main/app/install.sh | bash
```
This will download and execute the installation script, setting up everything needed to run the Batocera management script on your system.

## Usage
Just type "Menu" from SSH

## Functionality
The script offers a variety of operations for controlling and managing the Batocera system. It allows users to easily:

- Restart or stop key services such as EmulationStation and Kodi.
- Reboot or shut down the system with simple confirmations.
- Kill any running emulators to free up system resources.
- Check the status of EmulationStation or any active emulators to ensure everything is running smoothly.
- Manage system configurations like write access to the /boot partition or backing up overlay files.
- Restore default settings for RetroArch in case of issues.
- Perform system updates, either stable or experimental.
- Generate support packages for troubleshooting or sharing system information.

The script is designed to simplify system maintenance and ensure users can perform these operations efficiently without needing to remember complex commands or navigate through multiple interfaces.
