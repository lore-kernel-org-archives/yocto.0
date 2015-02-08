Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B0BDE00848; Sun,  8 Feb 2015 03:57:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CAC1E007AB
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 03:57:12 -0800 (PST)
Received: by labhz20 with SMTP id hz20so8589928lab.0
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 03:57:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=5ZYdET2OIB1aB6UyLkB8oPO/+8M8rbmdlsWBSLjGfMQ=;
	b=Wl+LTq4+yHIsTUc+gmBjWrZxd63KfKzQFVJKwtgTrG2zahz6dsM1VDmYMQhMERXAsQ
	1+z9/bzRrYqk8Tf7M5RpcX+g9yRwz5gE0LiH76vLi0voDHvlE8uD26wuYKO345P5sOAd
	IrUWZGha82tvDmvxG5nXL90oRH7ipm9E0i7WM+b0aQcfBqh5ZGo69c+SbdsNCO7YuQo8
	kJy50twhAFAj+VOZ/Jg8RDTQz4AjqFtJUqQuxqxyIfvb4zCITm+ttHfrfoHu32GFP3Xn
	x5vV1ZT4UGtz2GbjajNCHMusv3+/SVmGBeULQRcdCCfnEjEq5KJu6+rJLxoo2PycNnoX
	YflQ==
X-Gm-Message-State: ALoCoQme1bFjZxfZc6SyXhx82yPo2cUQd6+z9HbbaSN5MFVid6EJ5p1ePewPo9Jc5sgL3qVxASL8
X-Received: by 10.112.98.99 with SMTP id eh3mr11799951lbb.32.1423396631376;
	Sun, 08 Feb 2015 03:57:11 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	jf3sm1434173lbc.44.2015.02.08.03.57.10 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 08 Feb 2015 03:57:10 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun,  8 Feb 2015 13:56:59 +0200
Message-Id: <1423396620-22510-7-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
References: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 7/8] Use variable for kernel image deployed name on SD card
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
X-List-Received-Date: Sun, 08 Feb 2015 11:57:14 -0000

Change-Id: I4a55b53d337930aae3351629a902dbac832ac958
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 classes/sdcard_image-rpi.bbclass  | 7 +++++--
 conf/machine/include/rpi-base.inc | 2 +-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 43f1346..86cf773 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -31,6 +31,9 @@ IMAGE_BOOTLOADER ?= "bcm2835-bootfiles"
 # Set initramfs extension
 KERNEL_INITRAMFS ?= ""
 
+# Kernel image name
+SDIMG_KERNELIMAGE_raspberrypi  ?= "kernel.img"
+
 # Boot partition volume id
 BOOTDD_VOLUME_ID ?= "${MACHINE}"
 
@@ -104,7 +107,7 @@ IMAGE_CMD_rpi-sdimg () {
 	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/* ::/
 	case "${KERNEL_IMAGETYPE}" in
 	"uImage")
-		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/u-boot.img ::kernel.img
+		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/u-boot.img ::${SDIMG_KERNELIMAGE}
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::uImage
 		;;
 	*)
@@ -124,7 +127,7 @@ IMAGE_CMD_rpi-sdimg () {
 				mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTB_BASE_NAME}.dtb ::overlays/${DTB_BASE_NAME}.dtb
 			done
 		fi
-		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::kernel.img
+		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::${SDIMG_KERNELIMAGE}
 		;;
 	esac
 
diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 65ec712..f1c404d 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -46,4 +46,4 @@ MACHINE_EXTRA_RRECOMMENDS += " kernel-modules"
 # Set Raspberrypi splash image
 SPLASH = "psplash-raspberrypi"
 
-IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* ${KERNEL_IMAGETYPE};kernel.img"
+IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* ${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE}"
-- 
2.1.0


