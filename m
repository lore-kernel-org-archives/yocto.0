Return-Path: <denis@denix.org>
Received: from vms173021pub.verizon.net (vms173021pub.verizon.net
	[206.46.173.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D812E00BF0
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 01:03:05 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173021.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N3T00DL52C63S40@vms173021.mailsrvcs.net> for
	yocto@yoctoproject.org; Thu, 10 Apr 2014 03:02:46 -0500 (CDT)
Received: from localhost.localdomain (elrond [192.168.0.7])
	by gandalf.denix.org (Postfix) with ESMTP id 8508120265; Thu,
	10 Apr 2014 04:02:30 -0400 (EDT)
From: Denys Dmytriyenko <denis@denix.org>
To: yocto@yoctoproject.org
Date: Thu, 10 Apr 2014 04:02:13 -0400
Message-id: <1397116933-20764-2-git-send-email-denis@denix.org>
X-Mailer: git-send-email 1.9.1
In-reply-to: <1397116933-20764-1-git-send-email-denis@denix.org>
References: <1397116933-20764-1-git-send-email-denis@denix.org>
Cc: Denys Dmytriyenko <denys@ti.com>
Subject: [meta-yocto][PATCH 2/2] README.hardware: update with Texas Instruments Beaglebone instructions
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
X-List-Received-Date: Thu, 10 Apr 2014 08:03:05 -0000

From: Denys Dmytriyenko <denys@ti.com>

Replaces outdated Beagleboard instructions with Beaglebone Black (and White).

Signed-off-by: Denys Dmytriyenko <denys@ti.com>
---
 README.hardware | 78 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/README.hardware b/README.hardware
index 68e1dd2..37fdab0 100644
--- a/README.hardware
+++ b/README.hardware
@@ -46,6 +46,7 @@ Hardware Reference Boards
 
 The following boards are supported by the meta-yocto-bsp layer:
 
+  * Texas Instruments Beaglebone (beaglebone)
   * Freescale MPC8315E-RDB (mpc8315e-rdb)
 
 For more information see the board's section below. The appropriate MACHINE
@@ -179,6 +180,83 @@ USB Device:
   http://git.kernel.org/?p=boot/syslinux/syslinux.git;a=blob_plain;f=doc/usbkey.txt;hb=HEAD
 
 
+Texas Instruments Beaglebone (beaglebone)
+=========================================
+
+The Beaglebone is an ARM Cortex-A8 development board with USB, Ethernet, 2D/3D
+accelerated graphics, audio, serial, JTAG, and SD/MMC. The Black adds a faster
+CPU, more RAM, eMMC flash and a micro HDMI port. The beaglebone MACHINE is
+tested on the following platforms:
+
+  o Beaglebone Black A6
+  o Beaglebone A6 (the original "White" model)
+
+The Beaglebone Black has eMMC, while the White does not. Pressing the USER/BOOT
+button when powering on will temporarily change the boot order. But for the sake
+of simplicity, these instructions assume you have erased the eMMC on the Black,
+so its boot behavior matches that of the White and boots off of SD card. To do
+this, issue the following commands from the u-boot prompt:
+
+    # mmc dev 1
+    # mmc erase 0 512
+
+To further tailor these instructions for your board, please refer to the
+documentation at http://www.beagleboard.org/bone and http://www.beagleboard.org/black
+
+From a Linux system with access to the image files perform the following steps
+as root, replacing mmcblk0* with the SD card device on your machine (such as sdc
+if used via a usb card reader):
+
+  1. Partition and format an SD card:
+     # fdisk -lu /dev/mmcblk0
+
+     Disk /dev/mmcblk0: 3951 MB, 3951034368 bytes
+     255 heads, 63 sectors/track, 480 cylinders, total 7716864 sectors
+     Units = sectors of 1 * 512 = 512 bytes
+
+             Device Boot      Start         End      Blocks  Id System
+     /dev/mmcblk0p1   *          63      144584       72261   c Win95 FAT32 (LBA)
+     /dev/mmcblk0p2          144585      465884      160650  83 Linux
+
+     # mkfs.vfat -F 16 -n "boot" /dev/mmcblk0p1
+     # mke2fs -j -L "root" /dev/mmcblk0p2
+
+  The following assumes the SD card partitions 1 and 2 are mounted at
+  /media/boot and /media/root respectively. Removing the card and reinserting
+  it will do just that on most modern Linux desktop environments.
+
+  The files referenced below are made available after the build in
+  build/tmp/deploy/images.
+
+  2. Install the boot loaders
+     # cp MLO-beaglebone /media/boot/MLO
+     # cp u-boot-beaglebone.img /media/boot/u-boot.img
+
+  3. Install the root filesystem
+     # tar x -C /media/root -f core-image-$IMAGE_TYPE-beaglebone.tar.bz2
+
+  4. If using core-image-base or core-image-sato images, the SD card is ready
+     and rootfs already contains the kernel, modules and device tree (DTB)
+     files necessary to be booted with U-boot's default configuration, so
+     skip directly to step 8.
+     For core-image-minimal, proceed through next steps.
+
+  5. If using core-image-minimal rootfs, install the modules
+     # tar x -C /media/root -f modules-beaglebone.tgz
+
+  6. If using core-image-minimal rootfs, install the kernel uImage into /boot
+     directory of rootfs
+     # cp uImage-beaglebone.bin /media/root/boot/uImage
+
+  7. If using core-image-minimal rootfs, also install device tree (DTB) files
+     into /boot directory of rootfs
+     # cp uImage-am335x-bone.dtb /media/root/boot/am335x-bone.dtb
+     # cp uImage-am335x-boneblack.dtb /media/root/boot/am335x-boneblack.dtb
+
+  8. Unmount the SD partitions, insert the SD card into the Beaglebone, and
+     boot the Beaglebone
+
+
 Freescale MPC8315E-RDB (mpc8315e-rdb)
 =====================================
 
-- 
1.9.1


