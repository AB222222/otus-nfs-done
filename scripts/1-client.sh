#!/bin/bash

set -eux

echo "Mount NFSv3 UDP"
#sudo mount.nfs -vv 192.168.10.10:/export/shared /mnt -o nfsvers=3,proto=udp,soft
#mount | grep nfs
#sudo umount /mnt

echo "Test mount NFSv4"
#sudo mount 192.168.10.10:/export/shared /mnt
#mount | grep nfs
#sudo umount /mnt

sudo yum install -y nfs-utils

sudo mount.nfs -vv 192.168.10.10:/export/shared /mnt -o nfsvers=3,proto=udp,soft

{
  sudo systemctl enable firewalld
  sudo systemctl start firewalld
}

