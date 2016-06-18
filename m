Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37AE9E00E02; Sat, 18 Jun 2016 04:06:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36738E00CCD
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2016 04:06:53 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id r201so3303378wme.0
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2016 04:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=6tjnz0+DsDvQU2Jqd5oGo79gOI8CmMxLBzZjI6nNsZo=;
	b=Nor7X3u/0wOND05ErxiB7iN30iKkaQB8t8+0QTPn9bQB2kMgNRh78Fl1Sx06bqPnCc
	Cb8xsIc4sG9z/hp6DdKnZoG6owEjyn2XFwcdrbtML+1qZvFGMaSliXxcvaUQiPE1AYTt
	PWebZd4pv41jbi+qnGF4mpYpWavnjDQBTSYFz0YWnOXdE9ltpGd1sWLfqSZyRc+Ooj7z
	/anZlBjhAlBSx0tNw95r7acfQ3vLu3GQN/CPvXbdoQd9KxyQC//yRr6W/wkdFFd+Kiu8
	g2XuoNU6VwP3ppJb0ApJ6eeo4Qqt+wyac1IGItvQ9lkiPPurULlbXqhKj/A2DWRc/jV/
	Jxkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=6tjnz0+DsDvQU2Jqd5oGo79gOI8CmMxLBzZjI6nNsZo=;
	b=Tfv24xrSDmZaW1BYNOv1qfDZyAA4T/+O+O8hPoJVwv0yWwZYBav9LOG9O/DJnMcEb/
	h4JfaZ4TaCc6IsISFNKzOxkEeUV0znRzCKe4rEAyUqVo1vk6lxPTyFBl2Qpr0pGokqTy
	DEOwQmcH+/15Tws0uzL/m5Y08blmPdvVDrNYhho6lUHcd4tOmwkGGGEnRL02xhD1Ivam
	UyFGoEA+48w1m7pqJqV6++VmRKJXKXTkiPRD9CxI61zsME/lmNjHHWaFEATQfVWt1SSH
	30ijZ4X9ifCWG8PYhY+Sttyj7q2uPKeHh1CHFLLN98s3pzCnfTGrmF9BEVDO6xo6Xnc/
	BKJg==
X-Gm-Message-State: ALyK8tJjgB9ldCMQULgRWf+PAzgkzjNYb2XuPWcRKMvp82TAnIu8RaTqsNqLLY1G5TK/OQ==
X-Received: by 10.194.34.202 with SMTP id b10mr6661419wjj.47.1466248012871;
	Sat, 18 Jun 2016 04:06:52 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	u71sm3201406wmu.13.2016.06.18.04.06.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 18 Jun 2016 04:06:52 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Sat, 18 Jun 2016 12:07:06 +0100
Message-Id: <1466248026-4838-5-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1466248026-4838-1-git-send-email-paul@paulbarker.me.uk>
References: <1466248026-4838-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH V3 4/4] sdcard_image-rpi: Always install dtb files
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
X-List-Received-Date: Sat, 18 Jun 2016 11:06:55 -0000

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


