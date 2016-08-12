Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A48DCE0104C; Thu, 11 Aug 2016 18:06:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46ECFE0103E
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:19 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id g202so588984pfb.1
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=iEh3jJC23TbaEL+Vj5+3PV9KosHQWAEkrx9rBRFtXEs=;
	b=AwUFtnrRPKoodPUo6n67Pnjo7lwlbbt06onQj/u5WnHdjJpLOcKI4VYvE568IXwN2Z
	uYkGeF1T4pSH48b94xUmi4quaBEVNRT0FOlD/aCtxUdA4oUTNvL55P+182slzkzfsuzZ
	uqS82UDLCzD74g7KquiSaR3FW2wYCUNpzJFok5gZfrFysy51PMgJvVmilk500gj2ZBEo
	1Tmeg2E/f5CIQGZ1bzx8f4+/2XJnvk+Nv8ksgDYF5zq2yfnfWhd+dpkqK1cvSs+EttUg
	G6dYkbyo3+gVAjouGURZJNBaqqK7jk8mUqZTZ1svipK4Sq00sZfTCZDbMki5MZ/F8X8g
	Cr8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=iEh3jJC23TbaEL+Vj5+3PV9KosHQWAEkrx9rBRFtXEs=;
	b=SO7TNS15a/nNmLJ/JqGUyBYJqYl63n0gU+jUwjI0/VA7wjrFnzdkwUmaq89PZonHhM
	W0Jy8LlI18IjL8DBCoXxYIO5tKDrn57dkLeNXZL7EAPbgX6y/i0Bk5lu3gBUuYh5V684
	dTbdp574TrFeps3S64dKKNONaWMgtPmBqSWUD36h08h51Ekq4nns4Z5xAcsJYceQHYq6
	y8rjwWXDMFCWQmLZOCJSU9PdEfv2CLvQfEz7yVwX+TAEjr74+HyVTf4GyBWPs06bzJfV
	0vAaaDIYU5QAmb3UmTCNYLjvm4407yUbNiHEWovFuoSB2sBLp3MgAG0g6pLvLSj9adPk
	MNrQ==
X-Gm-Message-State: AEkoouvTzIV9mC2dwJWGPslG/2hDHXTyYExuDcI1KTyrw9BLS/6e4jrDQBL04aUcJ+X2AQ==
X-Received: by 10.98.207.6 with SMTP id b6mr22300081pfg.25.1470963979039;
	Thu, 11 Aug 2016 18:06:19 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:18 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:05:49 -0700
Message-Id: <20160812010608.31182-4-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 04/23] sdcard_image-rpi.bbclass: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:21 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
Add support for both extensions for overlays (".dtb" and ".dtbo")

CAUTION: in IMAGE_CMD_rpi-sdimg, 'TMPDIR' is not set, causing 'STAGING_KERNEL_BUILDDIR' to not be expanded, causing get_dts() to not being able to get the kernel version!
To avoid this problem, the kernel version is added in a new variable outside the scope of IMAGE_CMD_rpi-sdimg, and its value passed to get_dts() and split_overlays()!

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
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
2.9.2


