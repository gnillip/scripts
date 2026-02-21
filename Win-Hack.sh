#!/bin/bash

clear

echo "==============="
echo "# Win-Hack.sh #"
echo "==============="

lsblk
read -p "the disk+partition (mostly nvme0n1 p3 or smth): " dev
sudo mount /dev/$dev /mnt
cd /mnt/Windows/System32/config
sudo chntpw -i SAM