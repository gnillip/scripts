#!/bin/bash

clear
echo "================="
echo "# Linux-Hack.sh #"
echo "================="

lsblk
read -p "the disk+partition (mostly nvme0n1 p3 or smth): " dev
sudo mount /dev/$dev /mnt
cp /mnt/etc/passwd /root/passwd.save
cp /mnt/etc/shadow /root/shadow.save
chroot /mnt
passwd
exit