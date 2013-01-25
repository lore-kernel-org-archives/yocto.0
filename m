Return-Path: <thaytan@noraisin.net>
Received: from noraisin.net (198.23.233.220.static.exetel.com.au
	[220.233.23.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3739E014EA
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 05:34:08 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by noraisin.net (Postfix) with ESMTP id DF13B33809C9;
	Sat, 26 Jan 2013 00:34:07 +1100 (EST)
X-Virus-Scanned: Debian amavisd-new at decorama.com.au
Received: from noraisin.net ([127.0.0.1])
	by localhost (mail.decorama.com.au [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id P5metyEULwwD; Sat, 26 Jan 2013 00:34:01 +1100 (EST)
Received: from shorty.home. (113.94.233.220.static.exetel.com.au
	[220.233.94.113])
	by noraisin.net (Postfix) with ESMTPA id C8DB133809CE;
	Sat, 26 Jan 2013 00:34:00 +1100 (EST)
From: Jan Schmidt <thaytan@noraisin.net>
To: yocto@yoctoproject.org
Date: Sat, 26 Jan 2013 00:33:25 +1100
Message-Id: <1359120805-25408-3-git-send-email-thaytan@noraisin.net>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1359120805-25408-1-git-send-email-thaytan@noraisin.net>
References: <1359120805-25408-1-git-send-email-thaytan@noraisin.net>
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
X-List-Received-Date: Fri, 25 Jan 2013 13:34:09 -0000

When constructing the SD card image, the code was using
the inherited ROOTFS_SIZE, which is the size of the
rootfs contents. When building (for example) a compressed
rootfs, this allocates a partition much larger than necessary.

Instead, take the size of the generated rootfs file that is
about to be written into the generated image.

Signed-off-by: Jan Schmidt <thaytan@noraisin.net>
---
 classes/sdcard_image-rpi.bbclass |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 421f561..355ff9c 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -60,7 +60,8 @@ IMAGE_CMD_rpi-sdimg () {
 	# Align partitions
 	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)
 	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE_ALIGNED} - ${BOOT_SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
-	SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + $ROOTFS_SIZE + ${IMAGE_ROOTFS_ALIGNMENT})
+	ROOTFS_SIZE=`du -ks ${SDIMG_ROOTFS} | awk '{print $1}'`
+	SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE})
 
 	# Initialize sdcard image file
 	dd if=/dev/zero of=${SDIMG} bs=1 count=0 seek=$(expr 1024 \* ${SDIMG_SIZE})
@@ -71,7 +72,7 @@ IMAGE_CMD_rpi-sdimg () {
 	parted -s ${SDIMG} unit KiB mkpart primary fat32 ${IMAGE_ROOTFS_ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT})
 	parted -s ${SDIMG} set 1 boot on
 	# Create rootfs partition
-	parted -s ${SDIMG} unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT} \+ ${ROOTFS_SIZE})
+	parted -s ${SDIMG} unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) $(expr ${SDIMG_SIZE} - 1)
 	parted ${SDIMG} print
 
 	# Create a vfat image with boot files
-- 
1.7.10.4


