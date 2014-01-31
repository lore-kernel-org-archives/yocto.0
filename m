Return-Path: <sebmennetrier@gmail.com>
Received: from mail-ea0-f171.google.com (mail-ea0-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 826AFE002AC
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 07:30:23 -0800 (PST)
Received: by mail-ea0-f171.google.com with SMTP id f15so2428927eak.30
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 07:30:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding;
	bh=J+8ZfsdAdUtnpVcT2icZlfFteqM7ISdfgQs/76JG/Io=;
	b=Txx2udQwRxHkv03V3lvsYclyM+vrzE7XYiC3QyYb1ahZCIU3VQVRmROR21Dv0E5MzM
	zdiXgfjU9rqWiLeOXgPbrluE9pYQWK+NndjrS8nVVUJGGmcyEJFHwoxe8WHAL1gTxvfk
	0tHPpgqX15PffIR1niTcv8cQbr19dq4dC9CuQaYW5t7bhGKQk9o8iqXjn3kqAZBOISpB
	8gBMDqwuG86wWVnqvUAHdVUe29vQxzDKODYuk850Fty13DhI7VGKmwgd9jnJBJK9HqEk
	tLOi7pBb2uPXE6rzZuHzFM4YGTl3hj5ox7TjJlJV0cP+XxJfxHym1mgP5SDsGLePNCMo
	UuYQ==
X-Received: by 10.14.182.68 with SMTP id n44mr3326896eem.110.1391182222627;
	Fri, 31 Jan 2014 07:30:22 -0800 (PST)
Received: from smennetrier-desktop.mpl.mstarsemi.fr ([94.103.137.126])
	by mx.google.com with ESMTPSA id m9sm24431039eeh.3.2014.01.31.07.30.21
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 31 Jan 2014 07:30:21 -0800 (PST)
Sender: Sebastien MENNETRIER <sebmennetrier@gmail.com>
From: =?UTF-8?q?S=C3=A9bastien=20Mennetrier?= <s.mennetrier@innotis.org>
To: yocto@yoctoproject.org
Date: Fri, 31 Jan 2014 16:30:12 +0100
Message-Id: <1391182212-10378-1-git-send-email-s.mennetrier@innotis.org>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH V2] Add initramfs support
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
X-List-Received-Date: Fri, 31 Jan 2014 15:30:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Permit to build an image with initramfs.

Signed-off-by: Sébastien Mennetrier <s.mennetrier@innotis.org>
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


