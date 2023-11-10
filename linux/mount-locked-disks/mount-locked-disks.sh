#!/bin/bash
echo "Пароль для расшифровки дисков: "
read -s password

# Dev drive
dislocker -V /dev/nvme0n1p6 -u$password /media/bitlocker/Dev
mount -o rw,uid=vany /media/bitlocker/Dev/dislocker-file /media/mount/Dev

# High drive
dislocker -V /dev/nvme1n1p1 -u$password /media/bitlocker/High
mount -o rw,uid=vany /media/bitlocker/High/dislocker-file /media/mount/High

# Medium drive
dislocker -V /dev/sda2 -u$password /media/bitlocker/Medium
mount -o rw,uid=vany /media/bitlocker/Medium/dislocker-file /media/mount/Medium

# Low drive
dislocker -V /dev/sdb2 -u$password /media/bitlocker/Low
mount -o rw,uid=vany /media/bitlocker/Low/dislocker-file /media/mount/Low

echo "Диски Dev, High, Medium, Low смонтированы"




