Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EEC7E00EB3; Sun, 29 May 2016 08:59:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A82AE00EB1
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 08:59:12 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id n129so15177594wmn.1
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 08:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=6tjnz0+DsDvQU2Jqd5oGo79gOI8CmMxLBzZjI6nNsZo=;
	b=S4DyzDO57iV1aZ+aKzC2QPN+5yK+PzNwlY5kY85+TdEJKSWKUlbY3Pzx1IiXU1PBTl
	zYYdohnCqewVmAZSHvbieWXcVgZ94F/C5gf4ic/+hAUUVNBfLrvT1Pph5fFeB2+F6Djf
	fg64C6bN/TZv+PDOcTmg9SLbAZhTj8jmM5ve8KJgWcQ2x2n4OChkOU4Yx8ft7UM8NpQr
	IEdclNUF2/vkkvr6y1nFWRTA1DeQigdCB5ti0AjKYuk45w4VJWfCPnban1InqJin5LF5
	7UnB5nYFK8AVNLtCwjBTHMFE5UM5L1IBsovv7KLW3OeQaN91O7/XKA0T+DTvQ/zagT40
	epDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=6tjnz0+DsDvQU2Jqd5oGo79gOI8CmMxLBzZjI6nNsZo=;
	b=SCwpPp9QoeN8k4/IR4atYEVzmUaOQPdFK/TlwK93GG1wPcDvGdRSmVid6a2SG47+sP
	4N8ha77g888YFQPLt8niA9trC5vdDgJWYq4hR+zMJXmwTqErP59DWWgW3hKirteS4+PX
	WHPkgXvnv0PMUMQjhKUtMBLmwzVOvem5TdfjIKtet614pEYlds5WsMBNCEaCCQXed9zS
	H6BqiWPZmELArSei4+s1VC+VlQz74twz0HO+eT/XpRkZ8pxnvXN55Zi+NbWOdJZQPTlK
	TjVUJI13oJ6EBdWk9DBzFl9vY/fMWrXJQVYfMApEfx1UbktaS3+/j+FdaF+ejGvrVuDD
	QZGQ==
X-Gm-Message-State: ALyK8tKJFYw+Wo0AeKtU6n33CJRT7rER+f+mcsMA8MfEjoT50D+LD0iAhDBSPtANSRquGQ==
X-Received: by 10.28.156.2 with SMTP id f2mr7593593wme.94.1464537551705;
	Sun, 29 May 2016 08:59:11 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	kq9sm29834872wjc.26.2016.05.29.08.59.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 29 May 2016 08:59:11 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Sun, 29 May 2016 16:59:13 +0100
Message-Id: <1464537553-24915-7-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH 6/6] sdcard_image-rpi: Always install dtb files
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
X-List-Received-Date: Sun, 29 May 2016 15:59:13 -0000

We now need dtb files when booting via u-boot.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 classes/sdcard_image-rpi.bbclass | 40 ++++++++++++++++++++--------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 20bd314..3b4f13f 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -103,32 +103,32 @@ IMAGE_CMD_rpi-sdimg () {
 	rm -f ${WORKDIR}/boot.img
 	mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C ${WORKDIR}/boot.img $BOOT_BLOCKS
 	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/* ::/
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
 	case "${KERNEL_IMAGETYPE}" in
 	"uImage")
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/u-boot.bin ::${SDIMG_KERNELIMAGE}
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
2.1.4


