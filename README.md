# Batocera Management Script

This script provides an interactive terminal interface to manage various Batocera system operations. It simplifies tasks such as restarting EmulationStation, managing Kodi, checking system status, and performing maintenance functions directly from the command line.

![image](https://github.com/user-attachments/assets/e9a8f929-8319-4fd8-92f4-029d847a9fef)
![image](https://github.com/user-attachments/assets/7508663b-9700-4355-a7e3-3846d1729932)
![image](https://github.com/user-attachments/assets/fca104c7-af17-482b-a171-657cc9f07363)


## Installation
To install this script, use the following command:

```bash
curl -L https://raw.githubusercontent.com/mooock/Batocera/refs/heads/main/app/install.sh | bash
```
This will download and execute the installation script, setting up everything needed to run the Batocera management script on your system. be sure to save overlay, for the menu to survive a reboot.

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
- Tail looging for view launch outout and errors
- deploy of Wine Redistributions of Visual C++

The script is designed to simplify system maintenance and ensure users can perform these operations efficiently without needing to remember complex commands or navigate through multiple interfaces.

## Location of the Menu
```bash
/usr/bin/menu
```
