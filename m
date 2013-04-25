Return-Path: <seth.boll@gmail.com>
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CD5CE014E0
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 18:00:35 -0700 (PDT)
Received: by mail-ob0-f174.google.com with SMTP id wc20so2097019obb.5
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 18:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:content-type; bh=BcrV++73kYtInoEq/6C2d0zZk1PUZXzufifH8vKOEwM=;
	b=09rs3tp+R1tCvErUarliQxr6r3dF+UCw4S2xQZzPn6jgIORzbjxzlIuJ6B84MDie4L
	Ppb4iTol04EcYbfnHLuvSUQSE8T7IrtLP3BohT46JP8HjUMCrYydeRcqsny8JjWJ4BRc
	KtzGrIMENcJdZj1T6JlTc83jOprqYoF/B1l6+cAaXKu+UsdtyL6zTcBcvKSm8DruuXDV
	G4l5wFICxiN88lfsHqJq4eKvucsdMEzag6obqoaQETJA0TPAS0/Bwiaikegv+2GWwrF+
	rNWNdIJM1RWiwwxFmAnQV5qlM7d4MK37aYfndDbZyD3Msoiens3W8kp/v7rhZcDSIOJv
	fVuQ==
X-Received: by 10.60.102.73 with SMTP id fm9mr15507613oeb.110.1366851635136;
	Wed, 24 Apr 2013 18:00:35 -0700 (PDT)
Received: from [192.168.1.102] (c-66-41-191-40.hsd1.mn.comcast.net.
	[66.41.191.40])
	by mx.google.com with ESMTPSA id w7sm2564838obx.9.2013.04.24.18.00.34
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 24 Apr 2013 18:00:34 -0700 (PDT)
Message-ID: <51788033.9010908@gmail.com>
Date: Wed, 24 Apr 2013 20:00:35 -0500
From: seth bollinger <seth.boll@gmail.com>
User-Agent: Postbox 3.0.7 (Macintosh/20130119)
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-raspberrypi][PATCH 2/2] sdcard_image-rpi.bbclass: Copy startup files required for 16MB GPU operation.
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
X-List-Received-Date: Thu, 25 Apr 2013 01:00:35 -0000
X-Groupsio-MsgNum: 13419
Content-Type: multipart/mixed; boundary="------------080400000607040806070902"

--------------080400000607040806070902
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

start_cd.elf and fixup_cd.dat are required when running the system with
a 16MB GPU memory configuration.  This change copies all files contained
in bcm2835-bootfiles instead of cherry picking.

Signed-off-by: Seth Bollinger <seth.boll@gmail.com>
---
  classes/sdcard_image-rpi.bbclass |    6 +-----
  1 files changed, 1 insertions(+), 5 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass 
b/classes/sdcard_image-rpi.bbclass
index 7fe7c35..2ae5fd4 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -77,11 +77,7 @@ IMAGE_CMD_rpi-sdimg () {
      # Create a vfat image with boot files
      BOOT_BLOCKS=$(LC_ALL=C parted -s ${SDIMG} unit b print | awk '/ 1 
/ { print substr($4, 1, length($4 -1)) / 512 /2 }')
      mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C ${WORKDIR}/boot.img 
$BOOT_BLOCKS
-    mcopy -i ${WORKDIR}/boot.img -s 
${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/start.elf ::
-    mcopy -i ${WORKDIR}/boot.img -s 
${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/fixup.dat ::
-    mcopy -i ${WORKDIR}/boot.img -s 
${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt ::
-    mcopy -i ${WORKDIR}/boot.img -s 
${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/cmdline.txt ::
-    mcopy -i ${WORKDIR}/boot.img -s 
${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/bootcode.bin ::
+    mcopy -i ${WORKDIR}/boot.img -s 
${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/* ::/
      mcopy -i ${WORKDIR}/boot.img -s 
${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::kernel.img

      if [ -n ${FATPAYLOAD} ] ; then
-- 
1.7.2.5

--------------080400000607040806070902
Content-Type: text/plain; x-mac-type="0"; x-mac-creator="0";
 name="0002-sdcard_image-rpi.bbclass-Copy-startup-files-required.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0002-sdcard_image-rpi.bbclass-Copy-startup-files-required.pa";
 filename*1="tch"

From 2ac1c7b285fa0f48ae88461e72fd9b95d8ee2576 Mon Sep 17 00:00:00 2001
From: Seth Bollinger <seth.boll@gmail.com>
Date: Mon, 22 Apr 2013 07:25:58 -0500
Subject: [PATCH 2/2] sdcard_image-rpi.bbclass:  Copy startup files required for 16MB GPU operation.

start_cd.elf and fixup_cd.dat are required when running the system with
a 16MB GPU memory configuration.  This change copies all files contained
in bcm2835-bootfiles instead of cherry picking.

Signed-off-by: Seth Bollinger <seth.boll@gmail.com>
---
 classes/sdcard_image-rpi.bbclass |    6 +-----
 1 files changed, 1 insertions(+), 5 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 7fe7c35..2ae5fd4 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -77,11 +77,7 @@ IMAGE_CMD_rpi-sdimg () {
 	# Create a vfat image with boot files
 	BOOT_BLOCKS=$(LC_ALL=C parted -s ${SDIMG} unit b print | awk '/ 1 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
 	mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C ${WORKDIR}/boot.img $BOOT_BLOCKS
-	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/start.elf ::
-	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/fixup.dat ::
-	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt ::
-	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/cmdline.txt ::
-	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/bootcode.bin ::
+	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/* ::/
 	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::kernel.img
 
 	if [ -n ${FATPAYLOAD} ] ; then
-- 
1.7.2.5


--------------080400000607040806070902--
