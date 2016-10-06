Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BFC2E00510; Thu,  6 Oct 2016 05:20:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.65 listed in dnsbl.sorbs.net]
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D449E0045D
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 05:20:42 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id qn10so1053966pac.2
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2016 05:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=yTuET0h2bJFXvp8r89vFJuUFx9xds0Bssz8zhT4Srdg=;
	b=LZPdhQ4j5X6f0mYUclY2OePgniWkUalOog84AtCoHSXlyEpB8EdhxPUnHBILk5aNsT
	30qAYVJFphC/GmZTHU7n+UwgttyZ8kEepT9rWcqN7xERO9A7eqURb5MqHwKsm3w4Qz2x
	rSDEmAFe/kFFyN/JodHPNIt0cw9KfcL1C7c42pl12sGezAFDkcHONk5fF/Z+LcqmpiXl
	gBreNjEws/P7moSIIIW5XmobqacXZ7DilU7JY6JycOjUA4ZNeDMrHQWx1tHs2k3+X8Vb
	7K4W5dDJtcPoy0BTGMtoDPII1JOXnsBZXG+KTBfn6fb43rGsEoAHfsppNDAt6T7LhBL8
	HXMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=yTuET0h2bJFXvp8r89vFJuUFx9xds0Bssz8zhT4Srdg=;
	b=EkDhFZNBzRHLo2pEPqpd3Iew2D/uPZErA1DC5/kUK/05Z+f1ngXF20lgXfJ3a2rhEe
	V1v8hVyS0jxuvaqAQMLZLPxTd84R+CQGxyGilhKqj+LgZy2A1ky3iR3x0JSPtCOHj9Cg
	5NPYpk+MoSyuBWRE1ABLBgBu44ktyV992GHMXLo0CqHJl0idRM2Kip71dGZLfcjaUMTg
	7K/Lcryt5c1gfTpxjvdC38A4CmBF+zuFqoO4ygjp6xdgvdEycMPbpJElEevtNvevNSvx
	4fu+EXPwJ5juqxg3TW88bUooYfUkQ49Xov7yM2qoF20MmnWGeS7NB0ugbtHM4Bg6rLEM
	0X8Q==
X-Gm-Message-State: AA6/9RmGir3a4Zt6M/NbcwT4/4mpKD0QcpJXWjUyuQcKV50zNf+E0RMlhiZ0OH+zzd00ZA==
X-Received: by 10.66.188.202 with SMTP id gc10mr22123338pac.104.1475756441730; 
	Thu, 06 Oct 2016 05:20:41 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	b88sm5387973pfe.66.2016.10.06.05.20.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 06 Oct 2016 05:20:41 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Oct 2016 23:20:41 +1100
Message-Id: <20161006122041.5048-1-net147@gmail.com>
X-Mailer: git-send-email 2.10.0
Subject: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: Remove redundant RPI_KERNEL_VERSION
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
X-List-Received-Date: Thu, 06 Oct 2016 12:20:45 -0000

The value of the RPI_KERNEL_VERSION can change between None and the
kernel version which can result in taskhash mismatch errors while
building images.

The taskhash mismatch errors can be reproduced using:
bitbake -c cleansstate virtual/kernel core-image-minimal && bitbake core-image-minimal

The get_dts() and split_overlays() functions are modified so that the
kernel version argument is optional. If the version is not supplied to
these functions, they will fallback to the Python equivalent of the
expression used for RPI_KERNEL_VERSION.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 classes/linux-raspberrypi-base.bbclass | 4 ++--
 classes/sdcard_image-rpi.bbclass       | 8 +++-----
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberrypi-base.bbclass
index 930fc44..3a6e33d 100644
--- a/classes/linux-raspberrypi-base.bbclass
+++ b/classes/linux-raspberrypi-base.bbclass
@@ -1,6 +1,6 @@
 inherit linux-kernel-base
 
-def get_dts(d, ver):
+def get_dts(d, ver=None):
     import re
 
     staging_dir = d.getVar("STAGING_KERNEL_BUILDDIR", True)
@@ -32,7 +32,7 @@ def get_dts(d, ver):
     return dts
 
 
-def split_overlays(d, ver, out):
+def split_overlays(d, out, ver=None):
     dts = get_dts(d, ver)
     if out:
         overlays = oe.utils.str_filter_out('\S+\-overlay\.dtb$', dts, d)
diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 2f0daee..0487ef1 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -71,8 +71,6 @@ SDIMG = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
 # Additional files and/or directories to be copied into the vfat partition from the IMAGE_ROOTFS.
 FATPAYLOAD ?= ""
 
-RPI_KERNEL_VERSION := "${@get_kernelversion_file('${STAGING_KERNEL_BUILDDIR}')}"
-
 IMAGE_CMD_rpi-sdimg () {
 
 	# Align partitions
@@ -83,7 +81,7 @@ IMAGE_CMD_rpi-sdimg () {
 	echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNED} KiB and RootFS $ROOTFS_SIZE KiB"
 
 	# Check if we are building with device tree support
-	DTS="${@get_dts(d, '${RPI_KERNEL_VERSION}')}"
+	DTS="${@get_dts(d)}"
 
 	# Initialize sdcard image file
 	dd if=/dev/zero of=${SDIMG} bs=1024 count=0 seek=${SDIMG_SIZE}
@@ -104,8 +102,8 @@ IMAGE_CMD_rpi-sdimg () {
 	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/* ::/
 	if test -n "${DTS}"; then
 		# Device Tree Overlays are assumed to be suffixed by '-overlay.dtb' (4.1.x) or by '.dtbo' (4.4.9+) string and will be put in a dedicated folder
-		DT_OVERLAYS="${@split_overlays(d, '${RPI_KERNEL_VERSION}', 0)}"
-		DT_ROOT="${@split_overlays(d, '${RPI_KERNEL_VERSION}', 1)}"
+		DT_OVERLAYS="${@split_overlays(d, 0)}"
+		DT_ROOT="${@split_overlays(d, 1)}"
 
 		# Copy board device trees to root folder
 		for DTB in ${DT_ROOT}; do
-- 
2.10.0


