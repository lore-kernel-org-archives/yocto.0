Return-Path: <thaytan@noraisin.net>
Received: from noraisin.net (198.23.233.220.static.exetel.com.au
	[220.233.23.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70864E006DC
	for <yocto@yoctoproject.org>; Sat, 26 Jan 2013 03:18:36 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by noraisin.net (Postfix) with ESMTP id 6B5BD33804F4;
	Sat, 26 Jan 2013 22:18:35 +1100 (EST)
X-Virus-Scanned: Debian amavisd-new at decorama.com.au
Received: from noraisin.net ([127.0.0.1])
	by localhost (mail.decorama.com.au [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id gOYF5R8wTUyD; Sat, 26 Jan 2013 22:18:30 +1100 (EST)
Received: from shorty.home. (113.94.233.220.static.exetel.com.au
	[220.233.94.113])
	by noraisin.net (Postfix) with ESMTPA id 3AE5733804EF;
	Sat, 26 Jan 2013 22:18:30 +1100 (EST)
From: Jan Schmidt <thaytan@noraisin.net>
To: yocto@yoctoproject.org
Date: Sat, 26 Jan 2013 22:18:24 +1100
Message-Id: <1359199104-10713-1-git-send-email-thaytan@noraisin.net>
X-Mailer: git-send-email 1.7.10.4
Subject: [meta-raspberrypi][PATCH 3/3] sdcard-image: Use the size of the generated rootfs
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
X-List-Received-Date: Sat, 26 Jan 2013 11:18:37 -0000

When constructing the SD card image, the code was using
the inherited ROOTFS_SIZE, which is the size of the
rootfs contents. When building (for example) a compressed
rootfs, this allocates a partition much larger than necessary.

Instead, take the size of the generated rootfs file that is
about to be written into the generated image.

Also remove the extra ${IMAGE_ROOTFS_ALIGNMENT} padding at
the end of the image, as it isn't needed now.

Signed-off-by: Jan Schmidt <thaytan@noraisin.net>
---
 classes/sdcard_image-rpi.bbclass |   23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 421f561..fdac3b2 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -13,14 +13,16 @@ inherit image_types
 #                                                     Default Free space = 1.3x
 #                                                     Use IMAGE_OVERHEAD_FACTOR to add more space
 #                                                     <--------->
-#            4KiB              20MiB           SDIMG_ROOTFS
+#            4KiB             ~20MiB           SDIMG_ROOTFS
 # <-----------------------> <----------> <---------------------->
-#  ------------------------ ------------ ------------------------ -------------------------------
-# | IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE | ROOTFS_SIZE            |     IMAGE_ROOTFS_ALIGNMENT    |
-#  ------------------------ ------------ ------------------------ -------------------------------
-# ^                        ^            ^                        ^                               ^
-# |                        |            |                        |                               |
-# 0                      4096     4KiB + 20MiB       4KiB + 20Mib + SDIMG_ROOTFS   4KiB + 20MiB + SDIMG_ROOTFS + 4KiB
+#  ------------------------ ------------ ------------------------
+# | IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE | ROOTFS_SIZE            |
+#  ------------------------ ------------ ------------------------
+# ^                        ^            ^                        ^
+# |                        |            |                        |
+# 0                      4096     4KiB + ~20MiB      4KiB + ~20Mib + SDIMG_ROOTFS
+#                                 rounded up to
+#                              IMAGE_ROOTFS_ALIGNMENT
 
 
 # Set kernel and boot loader
@@ -29,7 +31,7 @@ IMAGE_BOOTLOADER ?= "bcm2835-bootfiles"
 # Boot partition volume id
 BOOTDD_VOLUME_ID ?= "${MACHINE}"
 
-# Boot partition size [in KiB]
+# Boot partition size [in KiB] (will be rounded up to IMAGE_ROOTFS_ALIGNMENT)
 BOOT_SPACE ?= "20480"
 
 # Set alignment to 4MB [in KiB]
@@ -60,7 +62,8 @@ IMAGE_CMD_rpi-sdimg () {
 	# Align partitions
 	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)
 	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE_ALIGNED} - ${BOOT_SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
-	SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + $ROOTFS_SIZE + ${IMAGE_ROOTFS_ALIGNMENT})
+	ROOTFS_SIZE=`du -ks ${SDIMG_ROOTFS} | awk '{print $1}'`
+	SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE})
 
 	# Initialize sdcard image file
 	dd if=/dev/zero of=${SDIMG} bs=1 count=0 seek=$(expr 1024 \* ${SDIMG_SIZE})
@@ -71,7 +74,7 @@ IMAGE_CMD_rpi-sdimg () {
 	parted -s ${SDIMG} unit KiB mkpart primary fat32 ${IMAGE_ROOTFS_ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT})
 	parted -s ${SDIMG} set 1 boot on
 	# Create rootfs partition
-	parted -s ${SDIMG} unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT} \+ ${ROOTFS_SIZE})
+	parted -s ${SDIMG} unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) $(expr ${SDIMG_SIZE} - 1)
 	parted ${SDIMG} print
 
 	# Create a vfat image with boot files
-- 
1.7.10.4


