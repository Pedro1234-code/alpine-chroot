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

arch_url=$uname -m

sudo wget https://github.com/termux/proot-distro/releases/download/v1.2-alpine-rootfs/alpine-minirootfs-3.13.1-$arch_url.tar.gz

sudo tar -xzf alpine-minirootfs-3.13.1-$arch_url.tar.gz

sudo rm -rf alpine-minirootfs-3.13.1-$arch_url.tar.gz

cd /

sudo wget https://raw.githubusercontent.com/Pedro1234-code/alpine-chroot/main/launch.sh

sudo cp /launch.sh /startalpine

sudo cp /startalpine /usr/bin

sudo chmod +x /usr/bin/startalpine

sudo rm -rf /launch.sh

sudo rm -rf /startalpine

echo Finished. Start Alpine with the startalpine command.
