Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE002.bigfish.com (tx2ehsobe001.messaging.microsoft.com
	[65.55.88.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1C3AE0125D
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2011 22:52:38 -0700 (PDT)
Received: from mail136-tx2-R.bigfish.com (10.9.14.253) by
	TX2EHSOBE002.bigfish.com (10.9.40.22) with Microsoft SMTP Server id
	14.1.225.22; Thu, 29 Sep 2011 05:52:36 +0000
Received: from mail136-tx2 (localhost.localdomain [127.0.0.1])	by
	mail136-tx2-R.bigfish.com (Postfix) with ESMTP id CD9AE12301A5	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:52:35 +0000 (UTC)
X-SpamScore: 3
X-BigFish: VS3(zzzz1202h1082kzz8275bhz2dh2a8h668h839h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 13,
Received: from mail136-tx2 (localhost.localdomain [127.0.0.1]) by mail136-tx2
	(MessageSwitch) id 1317275555661160_13898;
	Thu, 29 Sep 2011 05:52:35 +0000 (UTC)
Received: from TX2EHSMHS041.bigfish.com (unknown [10.9.14.245])	by
	mail136-tx2.bigfish.com (Postfix) with ESMTP id 9ABCC93004B	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:52:35 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS041.bigfish.com
	(10.9.99.141) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Thu, 29 Sep 2011 05:52:35 +0000
Received: from az33smr02.freescale.net (10.64.34.200) by
	039-SN1MMR1-002.039d.mgd.msft.net (10.84.1.15) with Microsoft SMTP
	Server id 14.1.323.7; Thu, 29 Sep 2011 00:52:35 -0500
Received: from right.am.freescale.net (right.am.freescale.net [10.82.193.13])
	by az33smr02.freescale.net (8.13.1/8.13.0) with ESMTP id
	p8T5qXmp014523	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 00:52:34 -0500 (CDT)
From: Matthew McClintock <msm@freescale.com>
To: <yocto@yoctoproject.org>
Date: Thu, 29 Sep 2011 00:52:27 -0500
Message-ID: <1317275552-19908-2-git-send-email-msm@freescale.com>
X-Mailer: git-send-email 1.7.6.1
In-Reply-To: <1317275552-19908-1-git-send-email-msm@freescale.com>
References: <1317275552-19908-1-git-send-email-msm@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [PATCH 2/7] Add support for generating ext2.lzma{, .u-boot} images
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
X-List-Received-Date: Thu, 29 Sep 2011 05:52:39 -0000
Content-Type: text/plain

Machines can now add ext2.lzma and ext2.lzma.u-boot images as a
generated image type.

Signed-off-by: Matthew McClintock <msm@freescale.com>
---
 meta/classes/image_types.bbclass       |   11 ++++++++++-
 meta/classes/image_types_uboot.bbclass |    6 +++++-
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/meta/classes/image_types.bbclass b/meta/classes/image_types.bbclass
index 4619ebe..2260915 100644
--- a/meta/classes/image_types.bbclass
+++ b/meta/classes/image_types.bbclass
@@ -53,6 +53,13 @@ IMAGE_CMD_ext2.bz2 () {
 	mv ${DEPLOY_DIR_IMAGE}/tmp.gz/${IMAGE_NAME}.rootfs.ext2.bz2 ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ext2.bz2
 	rmdir ${DEPLOY_DIR_IMAGE}/tmp.gz
 }
+IMAGE_CMD_ext2.lzma () {
+	rm -rf ${DEPLOY_DIR_IMAGE}/tmp.gz && mkdir ${DEPLOY_DIR_IMAGE}/tmp.gz
+	genext2fs -b $ROOTFS_SIZE -d ${IMAGE_ROOTFS} ${EXTRA_IMAGECMD} ${DEPLOY_DIR_IMAGE}/tmp.gz/${IMAGE_NAME}.rootfs.ext2
+	lzma -f -7 ${DEPLOY_DIR_IMAGE}/tmp.gz/${IMAGE_NAME}.rootfs.ext2
+	mv ${DEPLOY_DIR_IMAGE}/tmp.gz/${IMAGE_NAME}.rootfs.ext2.lzma ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ext2.lzma
+	rmdir ${DEPLOY_DIR_IMAGE}/tmp.gz
+}
 
 IMAGE_CMD_ext3 () {
 	genext2fs -b $ROOTFS_SIZE -d ${IMAGE_ROOTFS} ${EXTRA_IMAGECMD} ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ext3
@@ -134,6 +141,8 @@ IMAGE_DEPENDS_jffs2 = "mtd-utils-native"
 IMAGE_DEPENDS_cramfs = "cramfs-native"
 IMAGE_DEPENDS_ext2 = "genext2fs-native"
 IMAGE_DEPENDS_ext2.gz = "genext2fs-native"
+IMAGE_DEPENDS_ext2.bz2 = "genext2fs-native"
+IMAGE_DEPENDS_ext2.lzma = "genext2fs-native"
 IMAGE_DEPENDS_ext3 = "genext2fs-native e2fsprogs-native"
 IMAGE_DEPENDS_ext3.gz = "genext2fs-native e2fsprogs-native"
 IMAGE_DEPENDS_ext4 = "genext2fs-native e2fsprogs-native"
@@ -148,4 +157,4 @@ IMAGE_DEPENDS_ubi = "mtd-utils-native"
 IMAGE_DEPENDS_ubifs = "mtd-utils-native"
 
 # This variable is available to request which values are suitable for IMAGE_FSTYPES
-IMAGE_TYPES = "jffs2 cramfs ext2 ext2.gz ext2.bz2 ext3 ext3.gz live squashfs squashfs-lzma ubi tar tar.gz tar.bz2 tar.xz cpio cpio.gz cpio.xz cpio.lzma"
+IMAGE_TYPES = "jffs2 cramfs ext2 ext2.gz ext2.bz2 ext3 ext3.gz ext2.lzma live squashfs squashfs-lzma ubi tar tar.gz tar.bz2 tar.xz cpio cpio.gz cpio.xz cpio.lzma"
diff --git a/meta/classes/image_types_uboot.bbclass b/meta/classes/image_types_uboot.bbclass
index aee88a6..65dc91b 100644
--- a/meta/classes/image_types_uboot.bbclass
+++ b/meta/classes/image_types_uboot.bbclass
@@ -13,6 +13,10 @@ IMAGE_DEPENDS_ext2.bz2.u-boot = "genext2fs-native e2fsprogs-native u-boot-mkimag
 IMAGE_CMD_ext2.bz2.u-boot      = "${IMAGE_CMD_ext2.bz2} \
                                  oe_mkimage ${IMAGE_NAME}.rootfs.ext2.bz2 bzip2"
 
+IMAGE_DEPENDS_ext2.lzma.u-boot = "genext2fs-native e2fsprogs-native u-boot-mkimage-native"
+IMAGE_CMD_ext2.lzma.u-boot      = "${IMAGE_CMD_ext2.lzma} \
+                                 oe_mkimage ${IMAGE_NAME}.rootfs.ext2.lzma lzma"
+
 IMAGE_DEPENDS_ext3.gz.u-boot = "genext2fs-native e2fsprogs-native u-boot-mkimage-native"
 IMAGE_CMD_ext3.gz.u-boot      = "${IMAGE_CMD_ext3.gz} \
                                  oe_mkimage ${IMAGE_NAME}.rootfs.ext3.gz gzip"
@@ -21,4 +25,4 @@ IMAGE_DEPENDS_ext4.gz.u-boot = "genext2fs-native e2fsprogs-native u-boot-mkimage
 IMAGE_CMD_ext4.gz.u-boot      = "${IMAGE_CMD_ext4.gz} \
                                  oe_mkimage ${IMAGE_NAME}.rootfs.ext4.gz gzip"
 
-IMAGE_TYPES += "ext2.gz.u-boot ext2.bz2.u-boot ext3.gz.u-boot ext4.gz.u-boot"
+IMAGE_TYPES += "ext2.gz.u-boot ext2.bz2.u-boot ext2.lzma.u-boot ext3.gz.u-boot ext4.gz.u-boot"
-- 
1.7.6.1



