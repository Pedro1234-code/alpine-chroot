#/bin/bash
echo Removing Alpine chroot environment

sudo umount /alpine-fs/proc

sudo umount /alpine-fs/dev

sudo umount /alpine-fs/sys

sudo rm -rf /alpine-fs

sudo rm -rf /launch.sh

sudo rm -rf /startalpine.sh

sudo rm -rf /usr/bin/startalpine

sudo rm -rf /startalpine
