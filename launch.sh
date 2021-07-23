#/bin/bash

sudo mount -t proc /proc /alpine-fs/proc

sudo mount -o bind /sys /alpine-fs/sys

sudo mount -o bind /dev /alpine-fs/dev

sudo chroot /alpine-fs
