Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 745B8E004D6
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2011 16:15:57 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Sep 2011 16:15:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,383,1312182000"; d="scan'208";a="51492700"
Received: from unknown (HELO localhost) ([10.255.14.200])
	by fmsmga001.fm.intel.com with ESMTP; 14 Sep 2011 16:15:56 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Wed, 14 Sep 2011 18:15:40 -0500
Message-Id: <5425e0e2933c6bb2df8f8a756b407d57e9f445bf.1316041909.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <c081ed51d8ba76c293bcd2afdad8cbfef556cf49.1316041909.git.tom.zanussi@intel.com>
References: <c081ed51d8ba76c293bcd2afdad8cbfef556cf49.1316041909.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1316041909.git.tom.zanussi@intel.com>
References: <cover.1316041909.git.tom.zanussi@intel.com>
Subject: [PATCH 4/4] meta-intel/common: remove initramfs-live-install .bbappend
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Sep 2011 04:05:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This has been moved into oe-core, so remove it and init-install.sh
from meta-intel.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../initramfs-live-install/init-install.sh         |  188 --------------------
 .../initramfs-live-install_1.0.bbappend            |    2 -
 2 files changed, 0 insertions(+), 190 deletions(-)
 delete mode 100644 common/recipes-core/initrdscripts/initramfs-live-install/init-install.sh
 delete mode 100644 common/recipes-core/initrdscripts/initramfs-live-install_1.0.bbappend

diff --git a/common/recipes-core/initrdscripts/initramfs-live-install/init-install.sh b/common/recipes-core/initrdscripts/initramfs-live-install/init-install.sh
deleted file mode 100644
index 7d80190..0000000
--- a/common/recipes-core/initrdscripts/initramfs-live-install/init-install.sh
+++ /dev/null
@@ -1,188 +0,0 @@
-#!/bin/sh -e
-#
-# Copyright (C) 2008 Intel
-#
-# install.sh [device_name] [rootfs_name] [video_mode] [vga_mode]
-#
-
-# We need 20 Mb for the boot partition
-boot_size=20
-
-# 5% for the swap
-swap_ratio=5
-
-found="no"
-
-echo "Searching for a hard drive..."
-for device in 'hda' 'hdb' 'sda' 'sdb'
-  do
-  if [ -e /sys/block/${device}/removable ]; then
-      if [ "$(cat /sys/block/${device}/removable)" = "0" ]; then
-	  found="yes"
-
-	  while true; do
-	      echo "Found drive at /dev/${device}. Do you want to install poky there ? [y/n]"
-	      read answer
-	      if [ "$answer" = "y" ] ; then
-		  break
-	      fi
-	  
-	      if [ "$answer" = "n" ] ; then
-		  found=no
-		  break
-	      fi
-
-	      echo "Please answer by y or n"
-	  done
-      fi
-  fi
-
-  if [ "$found" = "yes" ]; then
-      break;
-  fi
-
-done
-
-if [ "$found" = "no" ]; then
-      exit 1      
-fi
-
-echo "Installing image on /dev/${device}"
-
-#
-# The udev automounter can cause pain here, kill it
-#
-rm -f /etc/udev/scripts/mount*
-
-#
-# Unmount anything the automounter had mounted
-#
-umount /dev/${device} 2> /dev/null || /bin/true
-umount /dev/${device}1 2> /dev/null || /bin/true
-umount /dev/${device}2 2> /dev/null || /bin/true
-umount /dev/${device}3 2> /dev/null || /bin/true
-umount /dev/${device}4 2> /dev/null || /bin/true
-umount /dev/${device}5 2> /dev/null || /bin/true
-umount /dev/${device}6 2> /dev/null || /bin/true
-
-if [ ! -b /dev/sda ] ; then
-    mknod /dev/sda b 8 0
-fi
-
-if [ ! -b /dev/sdb ] ; then
-    mknod /dev/sdb b 8 16
-fi
-
-if [ ! -b /dev/loop0 ] ; then
-    mknod /dev/loop0 b 7 0
-fi
-
-mkdir -p /tmp
-cat /proc/mounts > /etc/mtab
-
-disk_size=$(parted /dev/${device} unit mb print | grep Disk | cut -d" " -f 3 | sed -e "s/MB//")
-
-swap_size=$((disk_size*5/100))
-rootfs_size=$((disk_size-boot_size-swap_size))
-
-rootfs_start=$((boot_size + 1))
-rootfs_end=$((rootfs_start+rootfs_size))
-swap_start=$((rootfs_end+1))
-
-bootfs=/dev/${device}1
-rootfs=/dev/${device}2
-swap=/dev/${device}3
-
-echo "*****************"
-echo "Boot partition size:   $boot_size MB (/dev/${device}1)"
-echo "Rootfs partition size: $rootfs_size MB (/dev/${device}2)"
-echo "Swap partition size:   $swap_size MB (/dev/${device}3)"
-echo "*****************"
-echo "Deleting partition table on /dev/${device} ..."
-dd if=/dev/zero of=/dev/${device} bs=512 count=2
-
-echo "Creating new partition table on /dev/${device} ..."
-parted /dev/${device} mklabel msdos
-
-echo "Creating boot partition on /dev/${device}1"
-parted /dev/${device} mkpart primary 0 $boot_size
-
-echo "Creating rootfs partition on /dev/${device}2"
-parted /dev/${device} mkpart primary $rootfs_start $rootfs_end 
-
-echo "Creating swap partition on /dev/${device}3"
-parted /dev/${device} mkpart primary $swap_start $disk_size
-
-parted /dev/${device} print
-
-echo "Formatting /dev/${device}1 to ext2..."
-mkfs.ext3 $bootfs
-
-echo "Formatting /dev/${device}2 to ext3..."
-mkfs.ext3 $rootfs
-
-echo "Formatting swap partition...(/dev/${device}3)"
-mkswap $swap
-
-mkdir /ssd
-mkdir /rootmnt
-mkdir /bootmnt
-
-mount $rootfs /ssd
-mount -o rw,loop,noatime,nodiratime /media/$1/$2 /rootmnt
-
-echo "Copying rootfs files..."
-cp -a /rootmnt/* /ssd
-
-if [ -d /ssd/etc/ ] ; then
-    echo "$swap                swap             swap       defaults              0  0" >> /ssd/etc/fstab
-
-    # We dont want udev to mount our root device while we're booting...
-    if [ -d /ssd/etc/udev/ ] ; then
-	echo "/dev/${device}" >> /ssd/etc/udev/mount.blacklist
-    fi
-fi
-
-if [ -f /ssd/etc/grub.d/40_custom ] ; then
-    sed -i "s@__ROOTFS__@$rootfs@g" /ssd/etc/grub.d/40_custom
-    sed -i "s/__VIDEO_MODE__/$3/g" /ssd/etc/grub.d/40_custom
-    sed -i "s/__VGA_MODE__/$4/g" /ssd/etc/grub.d/40_custom
-    mount $bootfs /bootmnt
-    cp /ssd/etc/grub.d/40_custom /bootmnt/40_custom
-    umount /bootmnt
-    force="--force"
-fi
-
-umount /ssd
-umount /rootmnt
-
-echo "Preparing boot partition..."
-mount $bootfs /ssd
-grub-install $force --root-directory=/ssd /dev/${device}
-
-echo "(hd0) /dev/${device}" > /ssd/boot/grub/device.map
-
-if [ -f /ssd/40_custom ] ; then
-    mv /ssd/40_custom /ssd/boot/grub/grub.cfg
-    sed -i "/#/d" /ssd/boot/grub/grub.cfg
-    sed -i "/exec tail/d" /ssd/boot/grub/grub.cfg
-    chmod 0444 /ssd/boot/grub/grub.cfg
-else
-    echo "default 0" > /ssd/boot/grub/menu.lst
-    echo "timeout 30" >> /ssd/boot/grub/menu.lst
-    echo "title Poky-Netbook" >> /ssd/boot/grub/menu.lst
-    echo "root (hd0,1)" >> /ssd/boot/grub/menu.lst
-    echo "kernel /boot/vmlinuz root=$rootfs rw $3 $4 quiet" >> /ssd/boot/grub/menu.lst
-fi
-
-cp /media/$1/vmlinuz /ssd/boot/
-
-umount /ssd
-sync
-
-echo "Remove your installation media, and press ENTER"
-
-read enter
-
-echo "Rebooting..."
-reboot -f
diff --git a/common/recipes-core/initrdscripts/initramfs-live-install_1.0.bbappend b/common/recipes-core/initrdscripts/initramfs-live-install_1.0.bbappend
deleted file mode 100644
index d3420e0..0000000
--- a/common/recipes-core/initrdscripts/initramfs-live-install_1.0.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-- 
1.7.0.4


