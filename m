Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CB31E00DC2; Wed, 20 Jul 2016 15:01:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 097F3E00DAB
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 15:01:47 -0700 (PDT)
Received: from localhost.localdomain (unknown [8.36.234.10])
	by msfrf2633.sfr.fr (SMTP Server) with ESMTP id 714311C000C21;
	Thu, 21 Jul 2016 00:01:46 +0200 (CEST)
Received: from localhost.localdomain (unknown [8.36.234.10])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2633.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 21 Jul 2016 00:01:45 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Thu, 21 Jul 2016 06:00:39 +0800
Message-Id: <1469052039-7746-5-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
References: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v6 4/4] sdcard_image-rpi.bbclass: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Wed, 20 Jul 2016 22:01:48 -0000

Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
Add support for both extensions for overlays (".dtb" and ".dtbo")

CAUTION: in IMAGE_CMD_rpi-sdimg, 'TMPDIR' is not set, causing 'STAGING_KERNEL_BUILDDIR' to not be expanded, causing get_dts() to not being able to get the kernel version!
To avoid this problem, the kernel version is added in a new variable outside the scope of IMAGE_CMD_rpi-sdimg, and its value passed to get_dts() and split_overlays()!

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 classes/sdcard_image-rpi.bbclass | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 57cefea..a04204a 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -75,6 +75,8 @@ IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
 IMAGE_CMD_rpi-sdimg[vardepsexclude] += "IMAGEDATESTAMP"
 IMAGE_CMD_rpi-sdimg[vardepsexclude] += "DATETIME"
 
+RPI_KERNEL_VERSION := "${@get_kernelversion_file('${STAGING_KERNEL_BUILDDIR}')}"
+
 IMAGE_CMD_rpi-sdimg () {
 
 	# Align partitions
@@ -85,7 +87,7 @@ IMAGE_CMD_rpi-sdimg () {
 	echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNED} KiB and RootFS $ROOTFS_SIZE KiB"
 
 	# Check if we are building with device tree support
-	DTS="${@get_dts(d, None)}"
+	DTS="${@get_dts(d, '${RPI_KERNEL_VERSION}')}"
 
 	# Initialize sdcard image file
 	dd if=/dev/zero of=${SDIMG} bs=1024 count=0 seek=${SDIMG_SIZE}
@@ -105,9 +107,9 @@ IMAGE_CMD_rpi-sdimg () {
 	mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C ${WORKDIR}/boot.img $BOOT_BLOCKS
 	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/* ::/
 	if test -n "${DTS}"; then
-		# Device Tree Overlays are assumed to be suffixed by '-overlay.dtb' string and will be put in a dedicated folder
-		DT_OVERLAYS="${@split_overlays(d, 0)}"
-		DT_ROOT="${@split_overlays(d, 1)}"
+		# Device Tree Overlays are assumed to be suffixed by '-overlay.dtb' (4.1.x) or by '.dtbo' (4.4.9+) string and will be put in a dedicated folder
+		DT_OVERLAYS="${@split_overlays(d, '${RPI_KERNEL_VERSION}', 0)}"
+		DT_ROOT="${@split_overlays(d, '${RPI_KERNEL_VERSION}', 1)}"
 
 		# Copy board device trees to root folder
 		for DTB in ${DT_ROOT}; do
@@ -119,9 +121,10 @@ IMAGE_CMD_rpi-sdimg () {
 		# Copy device tree overlays to dedicated folder
 		mmd -i ${WORKDIR}/boot.img overlays
 		for DTB in ${DT_OVERLAYS}; do
-			DTB_BASE_NAME=`basename ${DTB} .dtb`
+				DTB_EXT=${DTB##*.}
+				DTB_BASE_NAME=`basename ${DTB} ."${DTB_EXT}"`
 
-			mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTB_BASE_NAME}.dtb ::overlays/${DTB_BASE_NAME}.dtb
+			mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTB_BASE_NAME}.${DTB_EXT} ::overlays/${DTB_BASE_NAME}.${DTB_EXT}
 		done
 	fi
 	case "${KERNEL_IMAGETYPE}" in
-- 
2.7.4


