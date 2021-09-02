#/bin/bash

clear

echo Creating Alpine chroot environment

cd /

sudo mkdir alpine-fs

cd alpine-fs

sudo apt update

sudo apt install wget git -y

sudo dnf install wget git

sudo apk add git wget

archurl=$(uname -m)

sudo wget http://dl-cdn.alpinelinux.org/alpine/v3.7/releases/$archurl/alpine-minirootfs-3.7.0-$archurl.tar.gz

sudo tar -xzf alpine-minirootfs-3.7.0-$archurl.tar.gz

sudo rm -rf alpine-minirootfs-3.7.0-$archurl.tar.gz

cd /

sudo wget https://raw.githubusercontent.com/Pedro1234-code/alpine-chroot/main/launch.sh

sudo cp /launch.sh /startalpine

sudo cp /startalpine /usr/bin

sudo chmod +x /usr/bin/startalpine

sudo rm -rf /launch.sh

sudo rm -rf /startalpine

echo Writing resolv.conf

sudo cp /etc/resolv.conf /alpine-fs/etc

echo Creating mount points

sudo mkdir /alpine-fs/dev

sudo mkdir /alpine-fs/proc

sudo mkdir /alpine-fs/sys

sudo chroot /alpine-fs/ apk add sudo systemd udisks2 nano bash vim 

echo Finished. Start Alpine with the startalpine command.
