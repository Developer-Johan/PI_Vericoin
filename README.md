# Welcome on running vericoin node on a Raspberry PI 4 (min 2 GB)

Steps to go:
 1. Buy:
 . Raspberry PI 4 with 2GB or 4GB with a micro SD card with 16GB or more
 . Buy other required stuff (power supply, micro hdmi to hdmi converter, hdmi cable, monitor, usb keyboard)

 2. Download raspbian lite 																							https://downloads.raspberrypi.org/raspbian_lite_latest
 3. Put raspbian lite on the SD card with Image32Writer																https://sourceforge.net/projects/win32diskimager/
 4. Boot your PI for the first time
 5. You may want to change the password and/or user
 6. Enable SSH
    sudo systemctl enable ssh
    sudo systemctl start ssh
 7. Check ip --> sudo ifconfig
 8. Connect to your PI with putty
 9. Run commando: 'curl -fsSL https://raw.githubusercontent.com/Developer-Johan/pi_vericoin/master/initialscript.sh -o initialscript.sh && sh initialscript.sh'
10. Wait until finished
