# alpine-chroot
Easy create Alpine Linux chroot environments with this script.

Requirements:

CPU Architecture: x86, x86_x64, armhf and aarch64.

User configuration: sudo access

Space on disk: 1 gb

Supported distros: Ubuntu/Debian, Fedora, Alpine

Only remove Alpine with the removal script, because if you remove with the /dev, /proc and /sys folders mounted, it will delete that folders and you will need to reinstall your OS.
