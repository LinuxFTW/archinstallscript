# Set timezone [Automatically uses Pacific Time]
ln -sf /usr/share/zoneinfo/America/Los_Angeles
hwclock --systohc

# Generates locale
locale-gen

#Set Root Password
passwd
adduser -m jonah

# Install any extra packages needed
pacman -S grub i3 firefox termite git python3 pip3 xorg-xinit xorg-server

# Copy Config Files
mkdir /home/jonah/.config/termite; cp termite/config /home/jonah/.config/termite
mkdir /home/jonah/.config/i3; cp i3/config /home/jonah/.config/i3
cp .xinitrc /home/jonah/
