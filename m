Return-Path: <paul.betafive@gmail.com>
Received: from mail-we0-f178.google.com (mail-we0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15232E0073F
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 03:49:41 -0700 (PDT)
Received: by mail-we0-f178.google.com with SMTP id u57so1474624wes.37
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 03:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=WZayQbYqXakgWSTbpD9OPUaSKjn4p2XwLwxIsSszu4o=;
	b=saDpNq1QEmFEIPDZwSh1nLcriCGLIXPN44mOf1jukRC3+hyXhyGW9tkdPvOElRkhLe
	KprbGof8HsalFqJOAQEZTZYzbGkmTK6NrjVDQx4FeS2aPEdmR/ARjZAibbUQHLseAM2/
	KDHsp3SuyAEx2cUpZ5unYK0G/MkOQ5cyooKo01ya9N5th/hJkXnP+wX67Y4Ud7B1vvJB
	LtPxp0d9f8iPlnV0BB18tLXjdppqcR8HI6gnMx3qGG+bpJPkjQVlFARFTskw0cXpeMA8
	UhLqHLKJXhrFAx84yPpSsBXdud3KKnsCb6MR/XMn5Q1wqWIlJWzxPQXRogtnOuWH789+
	jQuA==
X-Received: by 10.180.75.148 with SMTP id c20mr601227wiw.25.1376650180380;
	Fri, 16 Aug 2013 03:49:40 -0700 (PDT)
Received: from turn.betafive.co.uk (94-192-12-83.zone6.bethere.co.uk.
	[94.192.12.83])
	by mx.google.com with ESMTPSA id dt17sm7414870wic.1.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 16 Aug 2013 03:49:39 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Fri, 16 Aug 2013 11:48:36 +0100
Message-Id: <1376650116-11855-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.8.3.4
Subject: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: Allow optional compression
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
X-List-Received-Date: Fri, 16 Aug 2013 10:49:43 -0000

Image files will typically contain lots of null blocks and should compress well.
This will help with distribution of images over slow network links.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 classes/sdcard_image-rpi.bbclass | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index a2fcd52..8d2a5f2 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -50,6 +50,11 @@ IMAGE_DEPENDS_rpi-sdimg = " \
 # SD card image name
 SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
 
+# Compression method to apply to SDIMG after it has been created. May be "none",
+# "gzip", "bzip2" or "xz". Setting this to something other than "none" will
+# cause SDIMG to be renamed.
+SDIMG_COMPRESSION ?= "none"
+
 # Additional files and/or directories to be copied into the vfat partition from the IMAGE_ROOTFS.
 FATPAYLOAD ?= ""
 
@@ -107,6 +112,19 @@ IMAGE_CMD_rpi-sdimg () {
 	else
 		dd if=${SDIMG_ROOTFS} of=${SDIMG} conv=notrunc seek=1 bs=$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
 	fi
+
+	# Optionally apply compression
+	case "${SDIMG_COMPRESSION}" in
+	"gzip")
+		gzip -9 "${SDIMG}"
+		;;
+	"bzip2")
+		bzip2 -9 "${SDIMG}"
+		;;
+	"xz")
+		xz "${SDIMG}"
+		;;
+	esac
 }
 
 ROOTFS_POSTPROCESS_COMMAND += " rpi_generate_sysctl_config ; "
-- 
1.8.3.4


