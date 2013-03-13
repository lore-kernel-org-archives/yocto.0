Return-Path: <thaytan@noraisin.net>
Received: from noraisin.net (198.23.233.220.static.exetel.com.au
	[220.233.23.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8468CE0073A
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 13:58:18 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by noraisin.net (Postfix) with ESMTP id 4E2F83380E11;
	Thu, 14 Mar 2013 07:58:16 +1100 (EST)
X-Virus-Scanned: Debian amavisd-new at decorama.com.au
Received: from noraisin.net ([127.0.0.1])
	by localhost (mail.decorama.com.au [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id uQ0yf2tGK2dA; Thu, 14 Mar 2013 07:58:11 +1100 (EST)
Received: from shorty.home. (113.94.233.220.static.exetel.com.au
	[220.233.94.113])
	by noraisin.net (Postfix) with ESMTPA id 1DCA33380E03;
	Thu, 14 Mar 2013 07:58:11 +1100 (EST)
From: Jan Schmidt <thaytan@noraisin.net>
To: Yocto Project <yocto@yoctoproject.org>
Date: Thu, 14 Mar 2013 07:57:59 +1100
Message-Id: <1363208280-32663-1-git-send-email-thaytan@noraisin.net>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] sdcard-image: Use the size of the generated rootfs
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
X-List-Received-Date: Wed, 13 Mar 2013 20:58:20 -0000

When constructing the SD card image, the code was using
the inherited ROOTFS_SIZE, which is the size of the
rootfs contents. When building (for example) a compressed
rootfs, this allocates a partition much larger than necessary.

Instead, take the size of the generated rootfs file that is
about to be written into the generated image, and round it
up to the IMAGE_ROOTFS_ALIGNMENT size.

Fix some comments - the alignment is 4MiB, not 4KiB.

Signed-off-by: Jan Schmidt <thaytan@noraisin.net>
---
 classes/sdcard_image-rpi.bbclass |   30 ++++++++++++++++++------------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 421f561..3f0a16e 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -13,14 +13,14 @@ inherit image_types
 #                                                     Default Free space = 1.3x
 #                                                     Use IMAGE_OVERHEAD_FACTOR to add more space
 #                                                     <--------->
-#            4KiB              20MiB           SDIMG_ROOTFS
+#            4MiB              20MiB           SDIMG_ROOTFS
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
+# 0                      4MiB     4MiB + 20MiB       4MiB + 20Mib + SDIMG_ROOTFS
 
 
 # Set kernel and boot loader
@@ -29,7 +29,7 @@ IMAGE_BOOTLOADER ?= "bcm2835-bootfiles"
 # Boot partition volume id
 BOOTDD_VOLUME_ID ?= "${MACHINE}"
 
-# Boot partition size [in KiB]
+# Boot partition size [in KiB] (will be rounded up to IMAGE_ROOTFS_ALIGNMENT)
 BOOT_SPACE ?= "20480"
 
 # Set alignment to 4MB [in KiB]
@@ -60,18 +60,24 @@ IMAGE_CMD_rpi-sdimg () {
 	# Align partitions
 	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)
 	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE_ALIGNED} - ${BOOT_SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
-	SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + $ROOTFS_SIZE + ${IMAGE_ROOTFS_ALIGNMENT})
+	ROOTFS_SIZE=`du -bks ${SDIMG_ROOTFS} | awk '{print $1}'`
+        # Round up RootFS size to the alignment size as well
+	ROOTFS_SIZE_ALIGNED=$(expr ${ROOTFS_SIZE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)
+	ROOTFS_SIZE_ALIGNED=$(expr ${ROOTFS_SIZE_ALIGNED} - ${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
+	SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE_ALIGNED})
+
+	echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNED} KiB and RootFS ${ROOTFS_SIZE_ALIGNED} KiB"
 
 	# Initialize sdcard image file
-	dd if=/dev/zero of=${SDIMG} bs=1 count=0 seek=$(expr 1024 \* ${SDIMG_SIZE})
+	dd if=/dev/zero of=${SDIMG} bs=1024 count=0 seek=${SDIMG_SIZE}
 
 	# Create partition table
 	parted -s ${SDIMG} mklabel msdos
 	# Create boot partition and mark it as bootable
 	parted -s ${SDIMG} unit KiB mkpart primary fat32 ${IMAGE_ROOTFS_ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT})
 	parted -s ${SDIMG} set 1 boot on
-	# Create rootfs partition
-	parted -s ${SDIMG} unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT} \+ ${ROOTFS_SIZE})
+	# Create rootfs partition to the end of disk
+	parted -s ${SDIMG} -- unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) -1s
 	parted ${SDIMG} print
 
 	# Create a vfat image with boot files
-- 
1.7.10.4


