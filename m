Return-Path: <gthomas@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A8D5E00A48; Wed, 21 Sep 2016 00:34:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 448 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Sep 2016 00:34:07 PDT
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19BE7E0083E
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 00:34:07 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 147CE68A019; Wed, 21 Sep 2016 08:26:37 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 85F7B68A019;
	Wed, 21 Sep 2016 08:26:37 +0100 (BST)
Received: by zeus.mlbassoc.com (Postfix, from userid 1000)
	id 3D40A67403A9; Wed, 21 Sep 2016 09:26:37 +0200 (CEST)
From: Gary Thomas <gary@mlbassoc.com>
To: yocto@yoctoproject.org
Date: Wed, 21 Sep 2016 09:26:32 +0200
Message-Id: <1474442792-27579-1-git-send-email-gary@mlbassoc.com>
X-Mailer: git-send-email 2.7.4
Cc: Gary Thomas <gary@mlbassoc.com>
Subject: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: Fix sdimg generation
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
X-List-Received-Date: Wed, 21 Sep 2016 07:34:11 -0000

Track changes in OE-core variable names - needed to be able to
build an rpi-sdimg image file.

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 classes/sdcard_image-rpi.bbclass | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 388398b..ad245f3 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -47,7 +47,7 @@ IMAGE_ROOTFS_ALIGNMENT = "4096"
 
 # Use an uncompressed ext3 by default as rootfs
 SDIMG_ROOTFS_TYPE ?= "ext3"
-SDIMG_ROOTFS = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
+SDIMG_ROOTFS = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
 
 IMAGE_DEPENDS_rpi-sdimg = " \
 			parted-native \
@@ -59,7 +59,7 @@ IMAGE_DEPENDS_rpi-sdimg = " \
 			"
 
 # SD card image name
-SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
+SDIMG = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
 
 # Compression method to apply to SDIMG after it has been created. Supported
 # compression formats are "gzip", "bzip2" or "xz". The original .rpi-sdimg file
-- 
2.7.4


