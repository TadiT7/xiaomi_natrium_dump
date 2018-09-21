#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:28247374:b4490bb3732ab2363592113a222ce8948a2e0a02; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:24634698:fdcbd2b56da0491767908f63baca8d40ff990706 EMMC:/dev/block/bootdevice/by-name/recovery b4490bb3732ab2363592113a222ce8948a2e0a02 28247374 fdcbd2b56da0491767908f63baca8d40ff990706:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
