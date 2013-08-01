Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E790E014E4
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 07:04:39 -0700 (PDT)
Received: from [147.229.64.182] (p182.fei.wifi.vutbr.cz [147.229.64.182])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 7C5369570
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 15:04:37 +0100 (BST)
Message-ID: <51FA6B80.8030207@r-finger.com>
Date: Thu, 01 Aug 2013 15:06:56 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.11) Gecko/20121122 Icedove/10.0.11
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <DFD53149-25C0-410A-A5E3-FD95F38E907B@keylevel.com>
	<51FA1764.4060408@r-finger.com>
In-Reply-To: <51FA1764.4060408@r-finger.com>
Subject: Re: Network booting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 01 Aug 2013 14:04:40 -0000
X-Groupsio-MsgNum: 15305
Content-Type: multipart/mixed; boundary="------------020304050403060509030506"

--------------020304050403060509030506
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Chris,

On 01/08/13 09:08, Tomas Frydrych wrote:
> On 31/07/13 21:30, Chris Tapp wrote:
> It's relatively easy to add support for tftp to the yocto live image
> scripts; this allows you to either boot from the network, or install
> from the network. I have have some raw patches kicking around, that add
> support for both tftp and scp, I have been meaning to clean it up and
> post an rfc to the list, I'll try to get that done this week.

I am attaching the patches I have, it's a bit raw, and needs more work
before submitting for consideration in oe-core, but I think out of the
box tftp support would be useful to have somewhere.

The patches include changes to the live/install scripts from the oe-core
initramfs recipes and an image recipe for an initrd image with the
necessary tools (I initially started to write separate recipes for the
scripts, but realized quickly that the differences from the standard
live image bits are so small that's hardly justified in comparison to
the increased maintenance burden.)

The main changes to the scripts are:

 * use syslinux instead of grub, makes life lot simpler, 'naf said,
 * rework the install script so that unassisted install is possible,
 * support tfpt for kernel/rootfs loading, and scp for rootfs loading,

The test-ssh-key recipe provides a dummy (i.e., compromised) ssh key
that can be used for rudimentary testing of using scp for kernel
loading; scp is potentially useful for remote system updates from
outside of LAN boundaries, but a real set up would need bit of thought
on how to manage the real keys, etc.

The net-image also generates a sample config file for PXELinux in the
deploy/images directory (net-image.pxelinux.cfg), which documents fairly
well how to set it up. I hope this is of some use, at least to foster
more discussion. :)

Tomas

-- 
http://sleepfive.com

--------------020304050403060509030506
Content-Type: text/x-patch;
 name="0001-test-ssh-key-dummy-ssh-key-for-testing-of-scp-functi.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-test-ssh-key-dummy-ssh-key-for-testing-of-scp-functi.pa";
 filename*1="tch"

From 53e082c2b3eed2b1dafc604452d0414b6cdd9478 Mon Sep 17 00:00:00 2001
From: Tomas Frydrych <tomas@sleepfive.com>
Date: Thu, 1 Aug 2013 10:24:19 +0100
Subject: [PATCH 1/4] test-ssh-key: dummy ssh key for testing of scp
 functionality

---
 meta/recipes-support/test-ssh-key/test-ssh-key.bb |   73 +++++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 meta/recipes-support/test-ssh-key/test-ssh-key.bb

diff --git a/meta/recipes-support/test-ssh-key/test-ssh-key.bb b/meta/recipes-support/test-ssh-key/test-ssh-key.bb
new file mode 100644
index 0000000..1e8fc86
--- /dev/null
+++ b/meta/recipes-support/test-ssh-key/test-ssh-key.bb
@@ -0,0 +1,73 @@
+DESCRIPTION = "Private ssh key for root user (for testing purposes only!)"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
+
+# NB: THIS PACKAGE MUST NOT BE USED ON PRODUCTION IMAGES
+#
+# This package is intended for testing purposes only; it suffers from a number
+# of flaws:
+#
+#    1. The private key is not private and hence already compromized
+#
+#    2. The ssh config file is set up to avoid integrity checks on server keys
+#       -- real set up would need to include a suitably pre-populated
+#       known_hosts file.
+
+inherit allarch
+
+# SSHKEY and SSHKEY_PUB are variables, but are declared as functions so we
+# can use line breaks (a real package would source this from a file)
+
+SSHKEY () {
+-----BEGIN RSA PRIVATE KEY-----
+MIIEowIBAAKCAQEAquOX/60//MR1gHpOjjTBkp4kl9Ry7ig3WY/r9h8nq3ody9zu
+tJmMIpTJKbDy0ZlSeFtE2ZwBrDBceuECH8jvHQC8EH3gj49eSwVOwbQu4A7ZdN0V
+l0Vm2vgG0Xvs3o2HzONm6NWYCrj2UfCeIeYrDFBuFpvCZSYxvw/qz9G8oSmi2brJ
+/Oqqz1BeAqgWraDwprdkQ7GHSNfkPdSZW+b1F/Gr2TTDU4N6IGGSgrMUxZZsf1kC
+D10qv73WyU3WODW5oycxw0kS7AisQis9A9n2XispYDfJuN3Fp6WcWI5GgILjqSWG
+g/rtvWU8EpK/nNJGei+cHXcFa8odzCVOqNO8lwIDAQABAoIBAQCiHgoL33Mtu77x
+JJazp+7fxjFW7JAfyX1A9R1YP5QlxFLSHQVDxctA3z+70od5OmgXkBZQDwUzMin5
+1M5sEvZs4E6JorFP4CYHK8DcWLCDlPLNQBQEjy2Vm+j0AQnk1AW55R2y0zdLLM9Z
+Stjpte6u3vqhbiDMTqCw7kvH3eSCSm2yV8e7ydFpRZxMjMcSNovjqq+hqSLKcLGL
+F4WoYotA5vomGT4D1YWWzD03QgElVnGT+VrOt0PtC5QHWvlsmkuZWeJukNOFLip7
++DH6/9fbTskO43O7p3tC1Lq1TkqUrXTJfUrVr5qjw6Nl07lO/gC/qFULA0FjUf8F
+Ayt7Ax35AoGBANR0+1FEvBBt5R16sdsbUdqLHMAq2efE0UdHSvyrIboj1frI+Xgn
+iN4p3rrJdWeKBJL4YH4XeOT/XYAmmfvffhEeiF1zB1Wy5/63TABXDf/uvh3GyO8P
+iL1ev0rswU56yqcQrX/j7SfOUtZwVyYnqblfemG/6v45uxdLyegDM8gNAoGBAM3p
+qQbJ8FDvgL9WoiRFN75bpV2wkx8ukHGfZt6I1nFvXreAwAa6zD5zxHjdn2R+sQUV
+wlqvgDjFjdp6xDiXMrsV47RSjJiByo15d+6jdXhZ8jrXXOYrZ4qDXE/wSnSei9bl
+iE82paKTNEeT7pz5psNf/DlRcb10ykX8Urgag+ozAoGAV5LYvQj+FC+YT2xxv4Ul
+WlYZRcTkCTsBoMXsTPYlctquqy8IVdTF//12R7we3szvUb172L3IIWx5mAdRVZcs
+GdZiE1ME5PhX1JCtjT5VEPfR+egkjxXyIUzawQGSNM08l1yyh5LmAJB1aNrpsVqM
+BVMr2PsI3D3jtpiQ40feokkCgYAuzV1N3bhxrP5mfxp7hAAXlF0R3oCSJdNPABwx
+mIilX9r3epwq62phB48wqa8A+IrjzP5P/nP2c3C6qAzRkAxH2cHXyquKPnX7khBg
+fWbF5Cvak/jZmCQAp7rjsIo7142RWrqQxqr/ONY5Lradl2EAJ2D85jYkCdev8Joc
+nmo9YQKBgG3EjvO1yJ0JxuImSNGq4W/2e8cXPMW/XTenQztPALU5mAAvxSCp7pi2
+zNmv60E3QHbdB4arglV73oCdGVpgFAamQbzvmVe9UptYs/iFVGIfktqlFqI7DelM
+4NmUlKy0OYMGvQ348Sg6trWQnaiw+F2I/Xtuw2cHRgv3N7346j2Q
+-----END RSA PRIVATE KEY-----
+}
+
+SSHKEY_PUB () {
+ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCq45f/rT/8xHWAek6ONMGSniSX1HLuKDdZj+v2Hyereh3L3O60mYwilMkpsPLRmVJ4W0TZnAGsMFx64QIfyO8dALwQfeCPj15LBU7BtC7gDtl03RWXRWba+AbRe+zejYfM42bo1ZgKuPZR8J4h5isMUG4Wm8JlJjG/D+rP0byhKaLZusn86qrPUF4CqBatoPCmt2RDsYdI1+Q91Jlb5vUX8avZNMNTg3ogYZKCsxTFlmx/WQIPXSq/vdbJTdY4NbmjJzHDSRLsCKxCKz0D2fZeKylgN8m43cWnpZxYjkaAguOpJYaD+u29ZTwSkr+c0kZ6L5wddwVryh3MJU6o07yX neftest@i7-990x
+}
+
+do_install () {
+    install -m 0700 -d ${D}/home/root/.ssh
+
+    echo "${SSHKEY}" > ${D}/home/root/.ssh/id_rsa
+    chmod 0700 ${D}/home/root/.ssh/id_rsa
+
+    echo "${SSHKEY_PUB}" > ${D}/home/root/.ssh/id_rsa.pub
+    chmod 0700 ${D}/home/root/.ssh/id_rsa.pub
+
+    echo "IdentityFile ~/.ssh/id_rsa" > ${D}/home/root/.ssh/config
+    echo "PreferredAuthentications publickey" >> ${D}/home/root/.ssh/config
+    echo "VisualHostKey no" >> ${D}/home/root/.ssh/config
+    echo "PreferredAuthentications publickey" >> ${D}/home/root/.ssh/config
+    echo "UserKnownHostsFile=/dev/null" >> ${D}/home/root/.ssh/config
+    echo "StrictHostKeyChecking=no" >> ${D}/home/root/.ssh/config
+    chmod 0700 ${D}/home/root/.ssh/config
+}
+
+FILES_${PN} = "/home/*"
-- 
1.7.10.4


--------------020304050403060509030506
Content-Type: text/x-patch;
 name="0002-initramfs-live-install-improve-install-script-for-un.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0002-initramfs-live-install-improve-install-script-for-un.pa";
 filename*1="tch"

From bc0caeac7cfae173e98fa69c5217a9738b9284cb Mon Sep 17 00:00:00 2001
From: Tomas Frydrych <tomas@sleepfive.com>
Date: Thu, 1 Aug 2013 10:34:06 +0100
Subject: [PATCH 2/4] initramfs-live-install: improve install script for
 unassisted tftp installs

This commit also modifies the script to use syslinux instead of grub
---
 .../initrdscripts/files/init-install.sh            |  194 ++++++++++++--------
 .../initrdscripts/initramfs-live-install_1.0.bb    |    4 +-
 2 files changed, 119 insertions(+), 79 deletions(-)

diff --git a/meta/recipes-core/initrdscripts/files/init-install.sh b/meta/recipes-core/initrdscripts/files/init-install.sh
index d2a0db3..8054173 100644
--- a/meta/recipes-core/initrdscripts/files/init-install.sh
+++ b/meta/recipes-core/initrdscripts/files/init-install.sh
@@ -1,6 +1,7 @@
 #!/bin/sh -e
 #
 # Copyright (C) 2008-2011 Intel
+# Copyright (C) 2013 sleep(5) ltd
 #
 # install.sh [device_name] [rootfs_name] [video_mode] [vga_mode]
 #
@@ -13,43 +14,80 @@ boot_size=20
 # 5% for the swap
 swap_ratio=5
 
-found="no"
-
-echo "Searching for a hard drive..."
-for device in 'hda' 'hdb' 'sda' 'sdb' 'mmcblk0' 'mmcblk1'
-  do
-  if [ -e /sys/block/${device}/removable ]; then
-      if [ "$(cat /sys/block/${device}/removable)" = "0" ]; then
-	  found="yes"
-
-	  while true; do
+# parse current cmdline, strip out things we do not want, then append
+# the rest
+read_args() {
+    [ -z "$CMDLINE" ] && CMDLINE=`cat /proc/cmdline`
+    for arg in $CMDLINE; do
+        optarg=`expr "x$arg" : 'x[^=]*=\(.*\)' || :`
+        case $arg in
+            root=*) ;;
+            rootfstype=*) ;;
+            LABEL=*) ;;
+	    initrd=*) ;;
+	    ramdisk_size=*) ;;
+	    ip=*) ;;
+	    tftp_*) ;;
+	    ro) ;;
+	    BOOT_IMAGE=*) ;;
+	    unassisted)
+	        unassisted=yes ;;
+	    install_dev=*)
+	        install_dev=$optarg
+		unassisted=yes ;;
+	    *) append="$append $arg" ;;
+        esac
+    done
+}
+
+append=
+unassisted=
+install_dev=
+read_args
+
+if [ "x$install_dev" = "x" ] ; then
+    found="no"
+
+    echo "Searching for a hard drive..."
+    for device in 'hda' 'hdb' 'sda' 'sdb' 'mmcblk0' 'mmcblk1'
+    do
+	if [ -e /sys/block/${device}/removable ]; then
+	    if [ "$(cat /sys/block/${device}/removable)" = "0" ]; then
+		found="yes"
+
+		if [ "x$unassisted" != "xyes" ] ; then
+		    while true; do
 	      # Try sleeping here to avoid getting kernel messages
               # obscuring/confusing user
-	      sleep 5
-	      echo "Found drive at /dev/${device}. Do you want to install this image there ? [y/n]"
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
+			sleep 5
+			echo "Found drive at /dev/${device}. Do you want to install this image there ? [y/n]"
+			read answer
+			if [ "$answer" = "y" ] ; then
+			    break
+			fi
+
+			if [ "$answer" = "n" ] ; then
+			    found=no
+			    break
+			fi
+
+			echo "Please answer by y or n"
+		    done
+		fi
+	    fi
+	fi
+
+	if [ "$found" = "yes" ]; then
+	    break;
+	fi
+
+    done
+
+    if [ "$found" = "no" ]; then
+	exit 1
+    fi
+else
+    device=$install_dev
 fi
 
 echo "Installing image on /dev/${device}"
@@ -80,6 +118,28 @@ fi
 mkdir -p /tmp
 cat /proc/mounts > /etc/mtab
 
+mkdir /rootmnt
+mount -o rw,loop,noatime,nodiratime /media/$1/$2 /rootmnt
+
+# check we have kernel in the image /boot directory before we do anything
+# else
+KERNEL_NAME=
+for k in `ls /rootmnt/boot/`; do
+    case $k in
+	bzImage|vmlinuz|zImage)
+	    KERNEL_NAME=$k ;;
+	bzImage*|vmlinuz*|zImage*)
+	    KERNEL_NAME=$k ;;
+    esac
+done
+
+if [ "x$KERNEL_NAME" != "x" ] ; then
+    echo "Using kernel $KERNEL_NAME"
+else
+    echo "Failed to locate kernel"
+    exit 1
+fi
+
 disk_size=$(parted /dev/${device} unit mb print | grep Disk | cut -d" " -f 3 | sed -e "s/MB//")
 
 swap_size=$((disk_size*swap_ratio/100))
@@ -115,6 +175,7 @@ parted /dev/${device} mklabel msdos
 
 echo "Creating boot partition on $bootfs"
 parted /dev/${device} mkpart primary 0% $boot_size
+parted /dev/${device} "set"  1 boot on
 
 echo "Creating rootfs partition on $rootfs"
 parted /dev/${device} mkpart primary $rootfs_start $rootfs_end
@@ -124,8 +185,8 @@ parted /dev/${device} mkpart primary $swap_start 100%
 
 parted /dev/${device} print
 
-echo "Formatting $bootfs to ext3..."
-mkfs.ext3 $bootfs
+echo "Formatting $bootfs to FAT16..."
+mkfs.msdos -F 16 $bootfs
 
 echo "Formatting $rootfs to ext3..."
 mkfs.ext3 $rootfs
@@ -134,11 +195,10 @@ echo "Formatting swap partition...($swap)"
 mkswap $swap
 
 mkdir /ssd
-mkdir /rootmnt
 mkdir /bootmnt
 
 mount $rootfs /ssd
-mount -o rw,loop,noatime,nodiratime /media/$1/$2 /rootmnt
+mount $bootfs /bootmnt
 
 echo "Copying rootfs files..."
 cp -a /rootmnt/* /ssd
@@ -152,49 +212,29 @@ if [ -d /ssd/etc/ ] ; then
     fi
 fi
 
-if [ -f /etc/grub.d/40_custom ] ; then
-    echo "Preparing custom grub2 menu..."
-    GRUBCFG="/bootmnt/boot/grub/grub.cfg"
-    mount $bootfs /bootmnt
-    mkdir -p $(dirname $GRUBCFG)
-    cp /etc/grub.d/40_custom $GRUBCFG
-    sed -i "s@__ROOTFS__@$rootfs $rootwait@g" $GRUBCFG
-    sed -i "s/__VIDEO_MODE__/$3/g" $GRUBCFG
-    sed -i "s/__VGA_MODE__/$4/g" $GRUBCFG
-    sed -i "s/__CONSOLE__/$5/g" $GRUBCFG
-    sed -i "/#/d" $GRUBCFG
-    sed -i "/exec tail/d" $GRUBCFG
-    chmod 0444 $GRUBCFG
-    umount /bootmnt
-fi
-
 umount /ssd
-umount /rootmnt
 
 echo "Preparing boot partition..."
-mount $bootfs /ssd
-grub-install --root-directory=/ssd /dev/${device}
-
-echo "(hd0) /dev/${device}" > /ssd/boot/grub/device.map
-
-# If grub.cfg doesn't exist, assume GRUB 0.97 and create a menu.lst
-if [ ! -f /ssd/boot/grub/grub.cfg ] ; then
-    echo "Preparing custom grub menu..."
-    echo "default 0" > /ssd/boot/grub/menu.lst
-    echo "timeout 30" >> /ssd/boot/grub/menu.lst
-    echo "title Live Boot/Install-Image" >> /ssd/boot/grub/menu.lst
-    echo "root  (hd0,0)" >> /ssd/boot/grub/menu.lst
-    echo "kernel /boot/vmlinuz root=$rootfs rw $3 $4 quiet" >> /ssd/boot/grub/menu.lst
-fi
-
-cp /media/$1/vmlinuz /ssd/boot/
-
-umount /ssd
+syslinux -i ${bootfs}
+dd bs=440 count=1 if=/usr/lib/syslinux/mbr.bin of=/dev/${device}
+
+echo "Preparing syslinux menu..."
+echo "ALLOWOPTIONS 1" > /bootmnt/syslinux.cfg
+echo "DEFAULT default" >> /bootmnt/syslinux.cfg
+echo "TIMEOUT 10" >> /bootmnt/syslinux.cfg
+echo "PROMPT 1" >> /bootmnt/syslinux.cfg
+echo "LABEL default" >> /bootmnt/syslinux.cfg
+echo "KERNEL /vmlinuz" >> /bootmnt/syslinux.cfg
+echo "APPEND root=$rootfs rw $3 $4 $append" >> /bootmnt/syslinux.cfg
+
+cp /rootmnt/boot/$KERNEL_NAME /bootmnt/vmlinuz
+umount /bootmnt
 sync
 
-echo "Remove your installation media, and press ENTER"
-
-read enter
+if [ "x$1" != "xtftp" ] ; then
+    echo "Remove your installation media, and press ENTER"
+    read enter
+fi
 
 echo "Rebooting..."
 reboot -f
diff --git a/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb b/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb
index 3a8836d..6ba3bcf 100644
--- a/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb
+++ b/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb
@@ -5,13 +5,13 @@ SRC_URI = "file://init-install.sh"
 
 PR = "r9"
 
-RDEPENDS_${PN} = "grub parted e2fsprogs-mke2fs"
+RDEPENDS_${PN} = "syslinux syslinux-mbr parted e2fsprogs-mke2fs"
 
 do_install() {
         install -m 0755 ${WORKDIR}/init-install.sh ${D}/install.sh
 }
 
-# While this package maybe an allarch due to it being a 
+# While this package maybe an allarch due to it being a
 # simple script, reality is that it is Host specific based
 # on the COMPATIBLE_HOST below, which needs to take precedence
 #inherit allarch
-- 
1.7.10.4


--------------020304050403060509030506
Content-Type: text/x-patch;
 name="0003-initramfs-live-boot-improve-script-to-support-tftp-b.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0003-initramfs-live-boot-improve-script-to-support-tftp-b.pa";
 filename*1="tch"

From bdd17fc507135d6c35c674cf1feb8e2e8ad92b98 Mon Sep 17 00:00:00 2001
From: Tomas Frydrych <tomas@sleepfive.com>
Date: Thu, 1 Aug 2013 10:35:34 +0100
Subject: [PATCH 3/4] initramfs-live-boot: improve script to support tftp
 booting

---
 meta/recipes-core/initrdscripts/files/init-live.sh |  240 ++++++++++++--------
 1 file changed, 147 insertions(+), 93 deletions(-)

diff --git a/meta/recipes-core/initrdscripts/files/init-live.sh b/meta/recipes-core/initrdscripts/files/init-live.sh
index 890c562..45a5ebf 100644
--- a/meta/recipes-core/initrdscripts/files/init-live.sh
+++ b/meta/recipes-core/initrdscripts/files/init-live.sh
@@ -7,6 +7,8 @@ ROOT_IMAGE="rootfs.img"
 MOUNT="/bin/mount"
 UMOUNT="/bin/umount"
 ISOLINUX=""
+UNIONFS="no"
+SCP=`which scp`
 
 # Copied from initramfs-framework. The core of this script probably should be
 # turned into initramfs-framework modules to reduce duplication.
@@ -45,7 +47,7 @@ early_setup() {
 read_args() {
     [ -z "$CMDLINE" ] && CMDLINE=`cat /proc/cmdline`
     for arg in $CMDLINE; do
-        optarg=`expr "x$arg" : 'x[^=]*=\(.*\)'`
+        optarg=`expr "x$arg" : 'x[^=]*=\(.*\)' || :`
         case $arg in
             root=*)
                 ROOT_DEVICE=$optarg ;;
@@ -68,26 +70,39 @@ read_args() {
                         shelltimeout=30
                 else
                         shelltimeout=$optarg
-                fi 
+                fi ;;
+            BOOT_IMAGE=*)
+                bootimg=$optarg ;;
+            tftp_server=*)
+                tftp_server=$optarg ;;
+            tftp_rootimg=*)
+                tftp_rootimg=$optarg
+		ROOT_IMAGE=`basename $tftp_rootimg`;;
+            tftp_bootimg=*)
+                tftp_bootimg=$optarg ;;
+            tftp_protocol=*)
+                tftp_protocol=$optarg ;;
         esac
     done
+
+    if [ "x$tftp_bootimg" = "x" ] ; then
+	tftp_bootimg=$bootimg
+    fi
 }
 
 boot_live_root() {
-    # Watches the udev event queue, and exits if all current events are handled
-    udevadm settle --timeout=3 --quiet
-    killall "${_UDEV_DAEMON##*/}" 2>/dev/null
+    killall udevd 2>/dev/null
 
     # Move the mount points of some filesystems over to
     # the corresponding directories under the real root filesystem.
-    for dir in `awk '/\/dev.* \/media/{print $2}' /proc/mounts`; do
-        mkdir -p  ${ROOT_MOUNT}/$dir
-        mount -n --move $dir ${ROOT_MOUNT}/$dir
-    done
     mount -n --move /proc ${ROOT_MOUNT}/proc
     mount -n --move /sys ${ROOT_MOUNT}/sys
     mount -n --move /dev ${ROOT_MOUNT}/dev
 
+    if [ "x$tftp_rootimg" = "x" ] ; then
+        # Move /media/$i over to the real root filesystem
+	mount -n --move /media/$i ${ROOT_MOUNT}/media/realroot
+    fi
     cd $ROOT_MOUNT
     exec switch_root -c /dev/console $ROOT_MOUNT /sbin/init
 }
@@ -98,112 +113,151 @@ fatal() {
     exec sh
 }
 
-early_setup
+# server, what, whereto
+fetch_tftp ()
+{
+    if [ "x$tftp_protocol" = "xssh" ] ; then
+	if ! $SCP $1:$2 $3 ; then
+	    fatal "Failed to scp $2 from $1"
+	fi
+    else
+	if ! tftp -g -r $2 -l $3 $1 ; then
+	    fatal "Failed to tftp $2 from $1"
+	fi
+    fi
+}
+install_tftp() {
+    mkdir -p /media/tftp
 
-[ -z "$CONSOLE" ] && CONSOLE="/dev/console"
+    echo "Downloading root image to install"
+    fetch_tftp $tftp_server $tftp_rootimg /media/tftp/$ROOT_IMAGE
 
-read_args
+    ./$label.sh tftp $ROOT_IMAGE $video_mode $vga_mode $console_params
+}
+
+boot_tftp() {
+    mkdir $ROOT_MOUNT
+    mknod /dev/loop0 b 7 0 2>/dev/null
+
+    echo "Downloading root image"
+    fetch_tftp $tftp_server $tftp_rootimg $ROOT_IMAGE
+
+    if [ "$UNIONFS" = "yes" ]; then
+	mkdir /rootfs-tmp
 
-echo "Waiting for removable media..."
-C=0
-while true
-do
-  for i in `ls /media 2>/dev/null`; do
-      if [ -f /media/$i/$ROOT_IMAGE ] ; then
+	if ! $MOUNT -o rw,loop,noatime,nodiratime /$ROOT_IMAGE /rootfs-tmp ; then
+	    fatal "Could not mount rootfs image"
+	else
+	    mkdir /cow
+	    mount -t tmpfs -o rw,noatime,mode=755 tmpfs /cow
+	    mount -t unionfs -o dirs=/cow:/rootfs-tmp=ro unionfs $ROOT_MOUNT
+	    boot_live_root
+	fi
+    else
+	if ! $MOUNT -o rw,loop,noatime,nodiratime /$ROOT_IMAGE $ROOT_MOUNT ; then
+	    fatal "Could not mount rootfs image"
+	else
+	    boot_live_root
+	fi
+    fi
+}
+
+wait_for_removables() {
+    echo "Waiting for removable media..."
+    C=0
+    while true
+    do
+	for i in `ls /media 2>/dev/null`; do
+	    if [ -f /media/$i/$ROOT_IMAGE ] ; then
 		found="yes"
 		break
-	  elif [ -f /media/$i/isolinux/$ROOT_IMAGE ]; then
+	    elif [ -f /media/$i/isolinux/$ROOT_IMAGE ]; then
 		found="yes"
 		ISOLINUX="isolinux"
-		break	
-      fi
-  done
-  if [ "$found" = "yes" ]; then
-      break;
-  fi
+		break
+	    fi
+	done
+	if [ "$found" = "yes" ]; then
+	    break;
+	fi
   # don't wait for more than $shelltimeout seconds, if it's set
-  if [ -n "$shelltimeout" ]; then
-      echo -n " " $(( $shelltimeout - $C ))
-      if [ $C -ge $shelltimeout ]; then
-           echo "..."
-	   echo "Mounted filesystems"
-           mount | grep media
-           echo "Available block devices"
-           ls /dev/sd*
-           fatal "Cannot find rootfs.img file in /media/* , dropping to a shell "
-      fi
-      C=$(( C + 1 ))
-  fi
-  sleep 1
-done
-
-# Try to make a union mount of the root image.
-# If no unification filesystem is available, mount the image read-only.
-mount_and_boot() {
+	if [ -n "$shelltimeout" ]; then
+	    echo -n " " $(( $shelltimeout - $C ))
+	    if [ $C -ge $shelltimeout ]; then
+		echo "..."
+		echo "Mounted filesystems"
+		mount | grep media
+		echo "Available block devices"
+		ls /dev/sd*
+		fatal "Cannot find rootfs.img file in /media/* , dropping to a shell "
+	    fi
+	    C=$(( C + 1 ))
+	fi
+	sleep 1
+    done
+}
+
+boot_normal() {
+    wait_for_removables
+
     mkdir $ROOT_MOUNT
     mknod /dev/loop0 b 7 0 2>/dev/null
 
-    # determine which unification filesystem to use
-    union_fs_type=""
-    if grep -q -w "overlayfs" /proc/filesystems; then
-	union_fs_type="overlayfs"
-    elif grep -q -w "aufs" /proc/filesystems; then
-	union_fs_type="aufs"
+    if [ "$UNIONFS" = "yes" ]; then
+	mkdir /rootfs-tmp
+
+	if ! $MOUNT -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE /rootfs-tmp ; then
+	    fatal "Could not mount rootfs image"
+	else
+	    mkdir /cow
+	    mount -t tmpfs -o rw,noatime,mode=755 tmpfs /cow
+	    mount -t unionfs -o dirs=/cow:/rootfs-tmp=ro unionfs $ROOT_MOUNT
+	    boot_live_root
+	fi
     else
-	union_fs_type=""
+	if ! $MOUNT -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE $ROOT_MOUNT ; then
+	    fatal "Could not mount rootfs image"
+	else
+	    boot_live_root
+	fi
     fi
+}
 
-    # make a union mount if possible
-    case $union_fs_type in
-	"overlayfs")
-	    mkdir -p /rootfs.ro /rootfs.rw
-	    if ! mount -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE /rootfs.ro; then
-		rm -rf /rootfs.ro /rootfs.rw
-		fatal "Could not mount rootfs image"
-	    else
-		mount -t tmpfs -o rw,noatime,mode=755 tmpfs /rootfs.rw
-		mount -t overlayfs -o "lowerdir=/rootfs.ro,upperdir=/rootfs.rw" overlayfs $ROOT_MOUNT
-		mkdir -p $ROOT_MOUNT/rootfs.ro $ROOT_MOUNT/rootfs.rw
-		mount --move /rootfs.ro $ROOT_MOUNT/rootfs.ro
-		mount --move /rootfs.rw $ROOT_MOUNT/rootfs.rw
-	    fi
-	    ;;
-	"aufs")
-	    mkdir -p /rootfs.ro /rootfs.rw
-	    if ! mount -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE /rootfs.ro; then
-		rm -rf /rootfs.ro /rootfs.rw
-		fatal "Could not mount rootfs image"
-	    else
-		mount -t tmpfs -o rw,noatime,mode=755 tmpfs /rootfs.rw
-		mount -t aufs -o "dirs=/rootfs.rw=rw:/rootfs.ro=ro" aufs $ROOT_MOUNT
-		mkdir -p $ROOT_MOUNT/rootfs.ro $ROOT_MOUNT/rootfs.rw
-		mount --move /rootfs.ro $ROOT_MOUNT/rootfs.ro
-		mount --move /rootfs.rw $ROOT_MOUNT/rootfs.rw
-	    fi
-	    ;;
-	"")
-	    if ! mount -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE $ROOT_MOUNT ; then
-		fatal "Could not mount rootfs image"
-	    fi
-	    ;;
-    esac
-
-    # boot the image
-    boot_live_root
+install_normal() {
+    if [ -f /media/$i/$ISOLINUX/$ROOT_IMAGE ] ; then
+	./$label.sh $i/$ISOLINUX $ROOT_IMAGE $video_mode $vga_mode $console_params
+    else
+	fatal "Could not find $label script"
+    fi
 }
 
+early_setup
+
+[ -z "$CONSOLE" ] && CONSOLE="/dev/console"
+
+tftp_protocol=tftp
+read_args
+
+if [ "x$tftp_protocol" = "xssh" -a "x$SCP" = "x" ] ; then
+    fatal "ssh protocol is not supported"
+fi
+
 case $label in
-    boot)
-	mount_and_boot
-	;;
     install|install-efi)
-	if [ -f /media/$i/$ISOLINUX/$ROOT_IMAGE ] ; then
-	    ./$label.sh $i/$ISOLINUX $ROOT_IMAGE $video_mode $vga_mode $console_params
+	if [ "x$tftp_rootimg" = "x" ] ; then
+	    install_normal
 	else
-	    fatal "Could not find $label script"
+	    install_tftp
 	fi
 
 	# If we're getting here, we failed...
 	fatal "Installation image failed"
 	;;
+    *)
+	if [ "x$tftp_rootimg" = "x" ] ; then
+	    boot_normal
+	else
+	    boot_tftp
+	fi
+	;;
 esac
-- 
1.7.10.4


--------------020304050403060509030506
Content-Type: text/x-patch;
 name="0004-net-image-initrd-image-for-tfpt-booting.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
 filename="0004-net-image-initrd-image-for-tfpt-booting.patch"

From eb212f41a4b2aa0baaf90baf01f9a5365153a57c Mon Sep 17 00:00:00 2001
From: Tomas Frydrych <tomas@sleepfive.com>
Date: Thu, 1 Aug 2013 13:57:35 +0100
Subject: [PATCH 4/4] net-image: initrd image for tfpt booting

---
 meta/recipes-core/images/net-image.bb |  121 +++++++++++++++++++++++++++++++++
 1 file changed, 121 insertions(+)
 create mode 100644 meta/recipes-core/images/net-image.bb

diff --git a/meta/recipes-core/images/net-image.bb b/meta/recipes-core/images/net-image.bb
new file mode 100644
index 0000000..3e78321
--- /dev/null
+++ b/meta/recipes-core/images/net-image.bb
@@ -0,0 +1,121 @@
+# Simple initramfs image. Mostly used for live images.
+DESCRIPTION = "Small image capable of booting a device. The kernel includes \
+the Minimal RAM-based Initial Root Filesystem (initramfs), which finds the \
+first “init” program more efficiently."
+
+INITRAMFS_SSHKEY ?= "test-ssh-key"
+
+IMAGE_INSTALL = "				\
+		 initramfs-live-boot		\
+		 initramfs-live-install		\
+		 initramfs-live-install-efi	\
+		 busybox			\
+		 udev				\
+		 base-passwd			\
+		 init-ifupdown			\
+		 openssh-ssh			\
+		 openssh-scp			\
+		 ${INITRAMFS_SSHKEY}		\
+		"
+
+# Do not pollute the initrd image with rootfs features
+IMAGE_FEATURES = ""
+
+export IMAGE_BASENAME = "net-image"
+IMAGE_LINGUAS = ""
+
+LICENSE = "MIT"
+
+IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"
+inherit core-image
+
+IMAGE_ROOTFS_SIZE = "8192"
+
+BAD_RECOMMENDATIONS += "busybox-syslog"
+
+python __anonymous() {
+    if d.getVar('INITRAMFS_SSHKEY', True) == 'test-ssh-key':
+        bb.warn('Package test-ssh-key is being used; the ssh key contained in this package should be considered compromized and should not be used in production.')
+}
+
+CM="#"
+
+create_pxe_config () {
+  cfg="${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.pxelinux.cfg"
+
+  cat >> $cfg << EOF
+${CM}
+${CM} Sample PXELinux configuration
+${CM}
+${CM} General notes
+${CM} <tftpboot>: in the examples below this is the directory on your remote
+${CM} server where the file(s) reside.
+${CM}
+${CM} Kernel images: Yocto generates the kernel images with a .bin suffix, but
+${CM} please note that PXELinux will interpret this as a CD boot sector rather
+${CM} than Linux kernel, so either rename these, or use the 'linux' keyword
+${CM} instead of 'kernel'.
+${CM}
+${CM} Parameters:
+${CM}   tftp_protocol: tftp or ssh; tftp is the default, using ssh
+${CM}   requires for the initrd image to contain appropriate ssh key. Also note
+${CM}   that the ssh protocol is only used to load the disk image, the kernel
+${CM}   and initrd can only be loaded from a tftp server.
+${CM}
+${CM}   tftp_server: the address of the remote server; when using ssh
+${CM}   this should be in the 'user@address' form.
+${CM}
+${CM}   tftp_rootimg: the disk image to fetch from the server.
+${CM}
+${CM}   ramdisk_size: the ramdisk has to be big enough to hold both the initrd
+${CM}   filesystem and the rootimg file.
+${CM}
+${CM}   LABEL: this is used by Yocto to decide if the system should boot or
+${CM}   switch over into install mode; for the latter the label has to be either
+${CM}   'install' or 'install-efi' (however, install-efi mode is currently not
+${CM}   supported by net images).
+${CM}
+
+
+${CM}
+${CM} Sample configurations
+${CM}
+
+${CM} Boot system, loading disk image from a tftp server
+LABEL boot
+        linux <tftpboot>/vmlinuz-${MACHINE}
+	append initrd=<tftpboot>/${INITRD_IMAGE}-${MACHINE}.cpio.gz root=/dev/ram0 ramdisk_size=65536 ip=dhcp tftp_server=<yourserveraddress> tftp_rootimg=<tftpboot>/${IMAGE_BASENAME}.ext3 quiet LABEL=boot
+
+${CM} Boot system, loading disk image using ssh protocol
+LABEL boot-ssh
+        linux <tftpboot>/vmlinuz-${MACHINE}
+	append initrd=<tftpboot>/${INITRD_IMAGE}-${MACHINE}.cpio.gz root=/dev/ram0 ramdisk_size=65536 ip=dhcp tftp_server=<user@yourserveraddress> tftp_rootimg=<tftpboot>/${IMAGE_BASENAME}.ext3 tftp_protocol=ssh quiet LABEL=boot
+
+${CM} Boot system, download disk image from a tftp server and then install it
+${CM} on /dev/sda. If install_dev is not specified and 'unassisted' option is
+${CM} given instead, the first available disk will be used; if unassisted is not
+${CM} given, the user will be prompted on the console
+${CM}
+${CM} NB: the LABEL argument must be given and must be 'install', otherwise the
+${CM}     the system will just boot
+LABEL install
+        linux <tftpboot>/vmlinuz-${MACHINE}
+	append initrd=<tftpboot>/${INITRD_IMAGE}-${MACHINE}.cpio.gz root=/dev/ram0 ramdisk_size=65536 ip=dhcp tftp_server=<yourserveraddress> tftp_rootimg=<tftpboot>/${IMAGE_BASENAME}.ext3 quiet LABEL=install install_dev=sda
+
+${CM} As above, but use ssh instead of tftp
+${CM}
+${CM} NB: the LABEL argument must be given and must be 'install', otherwise the
+${CM}     system will just boot
+LABEL install-ssh
+        linux <tftpboot>/vmlinuz-${MACHINE}
+	append initrd=<tftpboot>/${INITRD_IMAGE}-${MACHINE}.cpio.gz root=/dev/ram0 ramdisk_size=65536 ip=dhcp tftp_server=<yourserveraddress> tftp_rootimg=<tftpboot>/${IMAGE_BASENAME}.ext3 quiet tftp_protocol=ssh LABEL=install install_dev=sda
+EOF
+
+    ln -sf $cfg ${DEPLOY_DIR_IMAGE}/${IMAGE_LINK_NAME}.pxelinux.cfg
+}
+
+python do_pxeconfig () {
+        bb.build.exec_func('create_pxe_config', d)
+}
+
+addtask pxeconfig after do_rootfs before do_build
-- 
1.7.10.4


--------------020304050403060509030506--
