Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 646FEE00DEA; Fri,  3 Jun 2016 12:58:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2125E00DEE
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2016 12:58:52 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id m124so612801wme.3
	for <yocto@yoctoproject.org>; Fri, 03 Jun 2016 12:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=6tjnz0+DsDvQU2Jqd5oGo79gOI8CmMxLBzZjI6nNsZo=;
	b=xyRy9cQJAmCpXen1OxwbV4u0zi2cpq7Godh8BAMTGjcm03IxmmkpQinBSetXjBTvxC
	1Tmo/eK7EstQa+UD0wuCHKaU0aPycQH7o3jTIbSXkxTjQki7RHzVAT+zK7fwlw1958m2
	opzHZAYfxLCPV+1DXxxvEanTkXsXrRdNSwB7VpYkM4kpBr4j0VU3ylfDwEHrj28tXdbB
	KVYzkxc22GcKm0R3duqr0K1nEdDQrAffQQcpdquV+K8E6ucMGOW5HFd3goYawrd7pijU
	QGOOfILy6bGicWCxdYxIftXKZo0V3GisxxnWSMn206759gm1LTBnP8vDgJOGS+MO29mB
	N+tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=6tjnz0+DsDvQU2Jqd5oGo79gOI8CmMxLBzZjI6nNsZo=;
	b=Wnhax40+c9f97Lgnc3KdkUBtRw9ZS8YGJyE8UGT7MojVzrww5sR1rUvriOQ0Mn3NWT
	faAd8HnYSfLly+POgOk6VbmV2yq6w1lutJDJhk5LYIeHqj+X0SSBaPx7IXoaXCSsibwx
	Hb7Ar4O40Mw4z9YGVhH3POllGlsXJdFk6IG/MJIPeKKodz9s9BeTLj+mcFnanabfGQ0+
	fZjQ70xjOpe7XoYKgjrpMWQbzvwcWQoB5jDHY/+uy0iaqcA1u8j4lcuT6QPixT8TG+2Y
	VaDPecYptF/dPUNnIqz3eMCs125A+21jGXKbrxum/8K6y4w7OfgUtBcTPQaRfij1So2C
	7F/w==
X-Gm-Message-State: ALyK8tJB3YZmefL+FK85m6kVv+MIU41z0Uv6wdnwzwzQJm0c1xI8HQ9q6Cy2C95Lom1Q2A==
X-Received: by 10.28.152.130 with SMTP id a124mr1028268wme.98.1464983932116;
	Fri, 03 Jun 2016 12:58:52 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id v5sm7219500wjv.36.2016.06.03.12.58.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Jun 2016 12:58:51 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Fri,  3 Jun 2016 20:59:00 +0100
Message-Id: <1464983940-32210-5-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1464983940-32210-1-git-send-email-paul@paulbarker.me.uk>
References: <1464983940-32210-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH V2 4/4] sdcard_image-rpi: Always install dtb files
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
X-List-Received-Date: Fri, 03 Jun 2016 19:58:57 -0000

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


