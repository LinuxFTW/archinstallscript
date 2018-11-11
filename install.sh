# Prep Work
# Connect to WiFi
wifi-menu
# PARTITION DISKS - NOT AUTOMATIC
# SET DISKS UP - NOT AUTOMATIC
# MOUNT DISKS - NOT AUTOMATIC

pacstrap /mnt base dialog wpa2_supplicant
genfstab -U /mnt >> /mnt/etc/fstab
cp chroot.sh /mnt
arch-chroot /mnt;

# Run chroot.sh for system config.
