Return-Path: <sebmennetrier@gmail.com>
Received: from mail-ea0-f170.google.com (mail-ea0-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF301E002AC
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 07:28:12 -0800 (PST)
Received: by mail-ea0-f170.google.com with SMTP id k10so2437062eaj.29
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 07:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=YwhCovaojMUYTwf/iwNiWOJ3b6tfjiLKO5xuYVjUpKo=;
	b=Hd1U9elW9Bbok3FsSd5qoQK2kMfvwCKK7LEpMkJI62QOck51ckjtjbVAAhLQMPxq3l
	uN6s6ZYQeQrZEXYX42YuL6BNJCUqgPF6+m2sfWpeF4QHLaJnDTMReYKaxEpcJhGNkBID
	OeCg7sN4lknTF5TSkHLJqScmkPwRSze1FHdinXaG3m/YLIqH1gnb77Bf9QSdUYI2gW+C
	BJTzKrbIQzxUdJOQkwnfBKbPhxjGB/8PZf8nxBWkWrfNmYqbif4/5mHNLce2R9rjuhhe
	xyTd8MdVi5yOacPB6Xem8Kr8hkptVlCOeSsdin1sDYART8yfCCeRC0U8kHdWc3fVYh+Z
	0ojg==
X-Received: by 10.14.2.193 with SMTP id 41mr14819388eef.55.1391182090957;
	Fri, 31 Jan 2014 07:28:10 -0800 (PST)
Received: from smennetrier-desktop.mpl.mstarsemi.fr ([94.103.137.126])
	by mx.google.com with ESMTPSA id g1sm37657864eet.6.2014.01.31.07.28.09
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 31 Jan 2014 07:28:10 -0800 (PST)
Sender: Sebastien MENNETRIER <sebmennetrier@gmail.com>
From: =?UTF-8?q?S=C3=A9bastien=20Mennetrier?= <s.mennetrier@innotis.org>
To: yocto@yoctoproject.org
Date: Fri, 31 Jan 2014 16:27:27 +0100
Message-Id: <1391182047-10327-1-git-send-email-s.mennetrier@innotis.org>
X-Mailer: git-send-email 1.8.1.2
Subject: [meta-raspberrypi][PATCH] Add initramfs support
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
X-List-Received-Date: Fri, 31 Jan 2014 15:28:14 -0000

Permit to build an image with initramfs.
---
 classes/sdcard_image-rpi.bbclass | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 3ee4e94..815aaa9 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -26,6 +26,9 @@ inherit image_types
 # Set kernel and boot loader
 IMAGE_BOOTLOADER ?= "bcm2835-bootfiles"
 
+# Set initramfs extension
+KERNEL_INITRAMFS ?= ""
+
 # Boot partition volume id
 BOOTDD_VOLUME_ID ?= "${MACHINE}"
 
@@ -91,7 +94,7 @@ IMAGE_CMD_rpi-sdimg () {
 	BOOT_BLOCKS=$(LC_ALL=C parted -s ${SDIMG} unit b print | awk '/ 1 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
 	mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C ${WORKDIR}/boot.img $BOOT_BLOCKS
 	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/* ::/
-	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::kernel.img
+	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::kernel.img
 
 	if [ -n ${FATPAYLOAD} ] ; then
 		echo "Copying payload into VFAT"
-- 
1.8.1.2


