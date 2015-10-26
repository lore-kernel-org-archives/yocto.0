Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF4A1E00B94; Sun, 25 Oct 2015 23:46:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 838A6E00978
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 23:46:18 -0700 (PDT)
Received: by padhk11 with SMTP id hk11so179228597pad.1
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 23:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=DBYXzAmC5ZvM8pWhftAZ2mjjMbO6HEqZp8B5QonniqI=;
	b=UaO9ES+bHUJRfYGruYC+DBQuYK/+MZAWM9cIaKjVZMc5FhNmWXvZ440u80+O4V/ogk
	ayYlWnltQtr+RvIgzZC32+wV5km/8lKHlBkZleUgkERPgrYk0SurlkqYebdbf+zhH52d
	n/UtEvwBJRHbP43FB0JTXI7NdAKZhyjTyV1EQ+laNwtyDMPIb30n7zYq17H8DHMT40WP
	lslwBYweZkvGYyDvLJI/Itwzmax6SQEnvxSwgLKBa5v4BNx5gtmxGLUQFUEfpz2ffgHr
	L4pk9BzI1BJ43ga0gIywoHJqmTGoBEvJjhfS6Qjz81NlS1AECNu/qHwhQ4eTlEp/oHKO
	nKsg==
X-Received: by 10.66.158.201 with SMTP id ww9mr20413481pab.33.1445841978646;
	Sun, 25 Oct 2015 23:46:18 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	rc5sm31832711pbc.95.2015.10.25.23.46.17
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Oct 2015 23:46:17 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 26 Oct 2015 17:46:25 +1100
Message-Id: <1445841987-2917-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.6.1
Subject: [meta-raspberrypi][PATCH 1/3] sdcard_image-rpi.bbclass: always include device tree files
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
X-List-Received-Date: Mon, 26 Oct 2015 06:46:22 -0000

This allows device tree support to be enabled when using U-Boot.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 classes/sdcard_image-rpi.bbclass | 42 +++++++++++++++++++++-------------------
 1 file changed, 22 insertions(+), 20 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 2e9bdb3..2efc36d 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -102,32 +102,34 @@ IMAGE_CMD_rpi-sdimg () {
 	rm -f ${WORKDIR}/boot.img
 	mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C ${WORKDIR}/boot.img $BOOT_BLOCKS
 	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/* ::/
+
+	if test -n "${DTS}"; then
+		# Device Tree Overlays are assumed to be suffixed by '-overlay.dtb' string and will be put in a dedicated folder
+		DT_OVERLAYS="${@split_overlays(d, 0)}"
+		DT_ROOT="${@split_overlays(d, 1)}"
+
+		# Copy board device trees to root folder
+		for DTB in ${DT_ROOT}; do
+			DTB_BASE_NAME=`basename ${DTB} .dtb`
+
+			mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTB_BASE_NAME}.dtb ::${DTB_BASE_NAME}.dtb
+		done
+
+		# Copy device tree overlays to dedicated folder
+		mmd -i ${WORKDIR}/boot.img overlays
+		for DTB in ${DT_OVERLAYS}; do
+			DTB_BASE_NAME=`basename ${DTB} .dtb`
+
+			mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTB_BASE_NAME}.dtb ::overlays/${DTB_BASE_NAME}.dtb
+		done
+	fi
+
 	case "${KERNEL_IMAGETYPE}" in
 	"uImage")
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/u-boot.img ::${SDIMG_KERNELIMAGE}
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::uImage
 		;;
 	*)
-		if test -n "${DTS}"; then
-			# Device Tree Overlays are assumed to be suffixed by '-overlay.dtb' string and will be put in a dedicated folder
-			DT_OVERLAYS="${@split_overlays(d, 0)}"
-			DT_ROOT="${@split_overlays(d, 1)}"
-
-			# Copy board device trees to root folder
-			for DTB in ${DT_ROOT}; do
-				DTB_BASE_NAME=`basename ${DTB} .dtb`
-
-				mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTB_BASE_NAME}.dtb ::${DTB_BASE_NAME}.dtb
-			done
-
-			# Copy device tree overlays to dedicated folder
-			mmd -i ${WORKDIR}/boot.img overlays
-			for DTB in ${DT_OVERLAYS}; do
-				DTB_BASE_NAME=`basename ${DTB} .dtb`
-
-				mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTB_BASE_NAME}.dtb ::overlays/${DTB_BASE_NAME}.dtb
-			done
-		fi
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::${SDIMG_KERNELIMAGE}
 		;;
 	esac
-- 
2.6.1


