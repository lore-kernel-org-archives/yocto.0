Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33876E009C5; Tue, 21 Jul 2015 04:45:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F474E00973
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 04:45:13 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 96F9CF811DA; Tue, 21 Jul 2015 05:45:13 -0600 (MDT)
Received: from Zeus.chez-thomas.org (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2F370F811DA;
	Tue, 21 Jul 2015 05:45:13 -0600 (MDT)
From: Gary Thomas <gary@mlbassoc.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Jul 2015 05:45:30 -0600
Message-Id: <1437479130-7065-1-git-send-email-gary@mlbassoc.com>
X-Mailer: git-send-email 1.9.1
Cc: Gary Thomas <gary@mlbassoc.com>
Subject: [meta-raspberrypi][PATCH] sdcard_image: Fix sdcard image generation
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
X-List-Received-Date: Tue, 21 Jul 2015 11:45:17 -0000

Recent updates to the MSDOS tools (OE-core is now at 3.0.28) have made
it an error to overwrite an image using mkfs.vfat.  This patch fixes
that problem by removing any old/stale images, thus starting from scratch.

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 classes/sdcard_image-rpi.bbclass | 1 +
 1 file changed, 1 insertion(+)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 7592cc1..62c0768 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -103,6 +103,7 @@ IMAGE_CMD_rpi-sdimg () {
 
 	# Create a vfat image with boot files
 	BOOT_BLOCKS=$(LC_ALL=C parted -s ${SDIMG} unit b print | awk '/ 1 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
+	rm -f ${WORKDIR}/boot.img
 	mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C ${WORKDIR}/boot.img $BOOT_BLOCKS
 	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/* ::/
 	case "${KERNEL_IMAGETYPE}" in
-- 
1.9.1


