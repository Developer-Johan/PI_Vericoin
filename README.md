# PI_Vericoin

Steps to go:
 1. Buy Raspberry PI 4 with 2GB or 4GB with a micro SD card with 16GB or more
 2. Buy other required stuff (power supply, micro hdmi to hdmi converter, hdmi cable, monitor, usb keyboard)
 3. Download raspbian lite 																							https://downloads.raspberrypi.org/raspbian_lite_latest
 4. Put raspbian lite on the SD card with Image32Writer																https://sourceforge.net/projects/win32diskimager/
 5. Insert SD card into the Raspberry PI and startup
 6. Enable SSH
    sudo systemctl enable ssh
    sudo systemctl start ssh
 7. Check ip --> sudo ifconfig
 8. Connect to your PI with putty
 9. Run commando of '01-InitialPiScript.sh'
10. Wait until finishedcd 