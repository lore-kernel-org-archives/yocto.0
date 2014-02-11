Return-Path: <sebmennetrier@gmail.com>
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4FE3E00764
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2014 08:33:44 -0800 (PST)
Received: by mail-lb0-f174.google.com with SMTP id l4so6061735lbv.19
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2014 08:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding;
	bh=/bflLe35NN2pEDh5zlCJ6d9OGZVoJCLZfstmztYiRG8=;
	b=ai8rQbJ8CKszTyP8px/5eGLosJQ2xUx10JkS1JiURPErX+GVEk3gy0U9MtDnU+/MA7
	LQlAKy68ZPl86dmn43VFYPVmAdIAVZsdx3aV0BR/d9TEAlen3gmnXOvVCN4+io8yiWV8
	Cp9WCll/MVq7+NndgfgVN7AhQNBNAT5gd5AIEAlfRGo3L8ct0u6CJPdWBNXETG92kepn
	RThc/fCTszPWIbJ3zUCdEOW3BOW1HP0Dw5+vEjNKXUOIc9C513WTtGrAGWKpJhw7f5KY
	ta6E+aV7V/euEUg+241dY+mCZ5t0i7EKNFCG9Gmt+WLZjFhmPR5xxVg33ejKPjzf3T+J
	Vbaw==
X-Received: by 10.112.14.1 with SMTP id l1mr2396639lbc.39.1392136422834;
	Tue, 11 Feb 2014 08:33:42 -0800 (PST)
Received: from smennetrier-desktop.mpl.mstarsemi.fr
	(connected-labs-gw1.ter2.neodc.mpl.cust.as8218.eu. [94.103.137.126])
	by mx.google.com with ESMTPSA id
	pz10sm20364191lbb.10.2014.02.11.08.33.41 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 11 Feb 2014 08:33:42 -0800 (PST)
Sender: Sebastien MENNETRIER <sebmennetrier@gmail.com>
From: =?UTF-8?q?S=C3=A9bastien=20Mennetrier?= <s.mennetrier@innotis.org>
To: yocto@yoctoproject.org
Date: Tue, 11 Feb 2014 17:33:30 +0100
Message-Id: <1392136410-8478-1-git-send-email-s.mennetrier@innotis.org>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH V3] Add initramfs support
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
X-List-Received-Date: Tue, 11 Feb 2014 16:33:46 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Permit to build an image with initramfs.
Add information in README to build with initramfs.

Signed-off-by: Sébastien Mennetrier <s.mennetrier@innotis.org>
---
 README                           | 13 +++++++++++++
 classes/sdcard_image-rpi.bbclass |  7 +++++--
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/README b/README
index fc492c5..daa4059 100644
--- a/README
+++ b/README
@@ -37,6 +37,7 @@ Contents:
     2.F. Optional - Video camera support with V4L2 drivers
     2.G. Images
     2.H. Boot to U-Boot
+    2.I. Image with Initramfs
 3. Extra apps
     3.A. omxplayer
 4. Source code and mirrors
@@ -155,6 +156,18 @@ KERNEL_IMAGETYPE = "uImage"
 This will make kernel.img be u-boot image which will load uImage.
 By default, kernel.img is the actual kernel image (ex. Image).
 
+2.I. Image with Initramfs
+=========================
+To build an initramfs image :
+    * Set this 3 kernel variables (in linux-raspberrypi.inc for example)
+        - kernel_configure_variable BLK_DEV_INITRD y
+        - kernel_configure_variable INITRAMFS_SOURCE ""
+        - kernel_configure_variable RD_GZIP y
+    * Set the yocto variables (in linux-raspberrypi.inc for example)
+        - INITRAMFS_IMAGE = "<a name for your initramfs image>"
+        - INITRAMFS_IMAGE_BUNDLE = "1"
+    * Set the meta-rasberrypi variable (in raspberrypi.conf for example)
+        - KERNEL_INITRAMFS = "-initramfs"
 
 3. Extra apps
 =============
diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 179b7b7..eb337dc 100644
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
 
@@ -95,10 +98,10 @@ IMAGE_CMD_rpi-sdimg () {
 	case "${KERNEL_IMAGETYPE}" in
 	"uImage")
 	    mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/u-boot.img ::kernel.img
-	    mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::uImage
+	    mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::uImage
 	    ;;
 	*)
-	    mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::kernel.img
+	    mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::kernel.img
 	    ;;
 	esac
 
-- 
1.8.1.2


