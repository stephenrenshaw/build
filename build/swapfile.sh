#!/bin/bash

#swapfile - git pull build
if=/dev/zero of=/var/swapfile bs=1M count=2048 && mkswap /var/swapfile && chmod 0600 /var/swapfile
echo "/var/swapfile           swap            swap            defaults                0 0" >> /etc/fstab
echo "vm.swappiness = 1" >> /etc/sysctl.conf
sysctl -p
swapon -a
