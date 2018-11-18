# Prep Work
# Connect to WiFi
wifi-menu
# PARTITION DISKS - NOT AUTOMATIC
(
echo g
echo n
echo 1
echo
echo +1M
echo t
echo 1
echo 4
echo n
echo 2
echo 
echo 
echo w
) | sudo fdisk /dev/sda
# SET DISKS UP - NOT AUTOMATIC
mkfs.ext4 /dev/sda1

# MOUNT DISKS - NOT AUTOMATIC
mount/dev/sda1 /mnt

pacstrap /mnt vim base base-devel dialog wpa2_supplicant
genfstab -U /mnt >> /mnt/etc/fstab
cp chroot.sh /mnt
arch-chroot /mnt;

# Run chroot.sh for system config.
