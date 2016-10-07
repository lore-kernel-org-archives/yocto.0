Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCB3CE00BF9; Thu,  6 Oct 2016 19:09:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DAF6E00B58
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 19:09:17 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id t25so1994849pfg.2
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2016 19:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=uIbXkSQRVR9aaX1jRYobjQhDQp/8jsSIaBZSw/9+AII=;
	b=0cDI6XDqEE9sq6yDyfmxXYVuyAHGZzGJWuXtLmmI9DCA0gzypPMsSNnNgFxmMvF0on
	e1Yye2ADL+z+bms5cUTf17fddij1CYNtO0brsADBploP5qd800TNpiwk8TyydMsMIuRk
	/8BIKlXdkFrVv5ANQ4Hwxg+eA2+Df5XwNOzhOFqRBTQnPDeOKd5vrAjDWJa5t2qjZzly
	X5+amDEiRkkC2DNga5CmxfFNWAZbq7O/CBOXhceoCbqCzW55jbrU3Q3ogrIKPhgJ5ota
	z0aClH6Mu0vu9mzAN3F56N3Ef7x9Nb+vvvqr7q8mCFWr8oCRpQIrHDCMvyxtSUX9/l13
	TjSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=uIbXkSQRVR9aaX1jRYobjQhDQp/8jsSIaBZSw/9+AII=;
	b=ino82Y5s/0+XWPT3Bp6Yw8hTumPHq/i4iAPuWSwS/XO62UWL8c7ioS15EhfSqRLAuX
	C2fgnww6K+YOL/FuNrjZgCe5M9+QuxNUIyuj2koSOfnndFKyUzFBg6Ow0ZkoygXEY8Z0
	/iL6EJm9Ex1+Ym2qZRGAoZhfk3O1auR94hAWR6JteseS9+j5R5NSZ47jDRiG36E5SFxo
	sBLzTkUebJf8xlNJWDrP214I15knXhWZ0OhJK2fZn1TSSoXUknN5m3udXdX3EwGE4P+w
	OWQ+2ZaSyBEbsv5HxGFhfczY94bQ7SKokLjokEwL+Qhol63SuL+06SYNjh4NMUKWrbKC
	Gyhw==
X-Gm-Message-State: AA6/9RlR+njY9FsfJFadd7y1zFKOfcRPwsCjahoXOYB+f4jeTPq17IabBjd0FFg8tja84A==
X-Received: by 10.98.33.214 with SMTP id o83mr13689632pfj.149.1475806156637;
	Thu, 06 Oct 2016 19:09:16 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	wd7sm25932607pab.2.2016.10.06.19.09.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 06 Oct 2016 19:09:16 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Oct 2016 19:09:06 -0700
Message-Id: <20161007020906.32228-4-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.0
In-Reply-To: <20161007020906.32228-1-raj.khem@gmail.com>
References: <20161007020906.32228-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 4/4] sdcard_image-rpi.bbclass: Remove redundant RPI_KERNEL_VERSION
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
X-List-Received-Date: Fri, 07 Oct 2016 02:09:17 -0000

From: Jonathan Liu <net147@gmail.com>

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
Signed-off-by: Khem Raj <raj.khem@gmail.com>
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


