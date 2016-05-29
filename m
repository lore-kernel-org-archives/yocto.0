Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4D68E00EB2; Sun, 29 May 2016 08:59:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE85EE00E22
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 08:59:10 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id q62so15226697wmg.3
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 08:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=CyVjIS5+ENjUnzpCDw+3KdUAj6L0hJIE33PV7WwbleI=;
	b=e7FGxjcR7QmwaOH2Ce46GaoejXKtJ3hkn7faHtG87CBCdR9t82cCHpaeuTQDDrS5eJ
	CpuTNfy5r6qD/yG4U1Y3I5Rg4TI/b+qoUiLoBazfzbf6t2774YS2A5NU+4s9yXgMywu1
	JQK7oDePVMjyRZjUgtzWmHhSRAHiCC3AsI6p/6CRxCMzdieFltztyGP7CRMIXU0uQ+Ei
	VUFca5YwMyGCP5w8aeZ9VkuoRnhpAnhTRqT4cS4fiIhm/gZSCcWU8jIJtCtRzzm0mtB6
	inICh00oKj0C6q5mMxydO+KP7ikMk3mNgwdmdyVYAZopCIqloVrkzYidkD+GJm62fmdk
	wrOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=CyVjIS5+ENjUnzpCDw+3KdUAj6L0hJIE33PV7WwbleI=;
	b=i0pd/RDyfy6POIx7FAD1YC+DkYFbPRCafNQeff2VFIiCUdlYqRxaPQ8Y0s8AgAe7yn
	OQnMRvk5z6rZTJTwBGESD5zrb8ZqgCtfpMHae2VT8PkVeeLKFl+WmLB10cDvHeNiJnQ+
	2K4qio2nC06KTicte5ANIso1gpy40pGcpHNHR/6T6l8nKw5gnwp9zDM3bQHs96eX8iFe
	XTujDZ8zCQQJcmJZJRHxJklJT6bNx/Jj+paTEuz0Hy8xbVEARPGRRtWTrM3VtqI3JkPM
	kNMPurTOrnUfo5k9jjXWCvn6dwR6EiVXdENsWn/hT+tOSLu9easev2bdy5tTicM2XZv2
	0+Ug==
X-Gm-Message-State: ALyK8tLTWjHtuL2xRHF8yqk7JrSs2Pyo17zdPlPpixttE5zv+CcUZUhLTVOO/E258lheaw==
X-Received: by 10.194.116.9 with SMTP id js9mr27194874wjb.112.1464537549377;
	Sun, 29 May 2016 08:59:09 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	kq9sm29834872wjc.26.2016.05.29.08.59.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 29 May 2016 08:59:08 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Sun, 29 May 2016 16:59:10 +0100
Message-Id: <1464537553-24915-4-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH 3/6] u-boot: Use mainline u-boot recipe from oe-core
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
X-List-Received-Date: Sun, 29 May 2016 15:59:11 -0000

The repository used by u-boot-rpi has not been updated since 2012. In the
meantime, mailine u-boot has gained Raspberry Pi support. All we need to do is
set UBOOT_MACHINE to an appropriate value in the machine config files.

Currently configs are only provided for raspberrypi and raspberrypi2. The master
branch of u-boot now also appears to have a config file for raspberrypi3 so
support for this can be added in the future when u-boot is upgraded in oe-core.

The mainline u-boot recipe creates the file "u-boot.bin" instead of
"u-boot.img".

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 classes/sdcard_image-rpi.bbclass               |  2 +-
 conf/machine/include/rpi-default-providers.inc |  1 -
 conf/machine/raspberrypi.conf                  |  2 ++
 conf/machine/raspberrypi2.conf                 |  2 ++
 recipes-bsp/u-boot/u-boot-rpi_git.bb           | 29 --------------------------
 5 files changed, 5 insertions(+), 31 deletions(-)
 delete mode 100644 recipes-bsp/u-boot/u-boot-rpi_git.bb

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 4dfd7a3..20bd314 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -105,7 +105,7 @@ IMAGE_CMD_rpi-sdimg () {
 	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/* ::/
 	case "${KERNEL_IMAGETYPE}" in
 	"uImage")
-		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/u-boot.img ::${SDIMG_KERNELIMAGE}
+		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/u-boot.bin ::${SDIMG_KERNELIMAGE}
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::uImage
 		;;
 	*)
diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index cabbd43..359870d 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -1,7 +1,6 @@
 # RaspberryPi BSP default providers
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-raspberrypi"
-PREFERRED_PROVIDER_u-boot ?= "u-boot-rpi"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 PREFERRED_PROVIDER_virtual/egl ?= "userland"
 PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index 0f95f1a..72beeb8 100644
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -8,3 +8,5 @@ require conf/machine/include/tune-arm1176jzf-s.inc
 include conf/machine/include/rpi-base.inc
 
 SERIAL_CONSOLE = "115200 ttyAMA0"
+
+UBOOT_MACHINE = "rpi_config"
diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
index b6346e6..d50ef70 100644
--- a/conf/machine/raspberrypi2.conf
+++ b/conf/machine/raspberrypi2.conf
@@ -8,3 +8,5 @@ require conf/machine/include/tune-cortexa7.inc
 include conf/machine/include/rpi-base.inc
 
 SERIAL_CONSOLE = "115200 ttyAMA0"
+
+UBOOT_MACHINE = "rpi_2_config"
diff --git a/recipes-bsp/u-boot/u-boot-rpi_git.bb b/recipes-bsp/u-boot/u-boot-rpi_git.bb
deleted file mode 100644
index 3e8d377..0000000
--- a/recipes-bsp/u-boot/u-boot-rpi_git.bb
+++ /dev/null
@@ -1,29 +0,0 @@
-DESCRIPTION = "U-Boot port for RaspberryPi"
-
-require recipes-bsp/u-boot/u-boot.inc
-
-DEPENDS += "rpi-mkimage-native"
-
-PROVIDES += "u-boot"
-
-LICENSE = "GPLv2+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb"
-
-SRCREV = "6709570cdc947c2a546f96d571551acf4474778c"
-SRC_URI = "git://github.com/gonzoua/u-boot-pi.git;branch=rpi"
-
-S = "${WORKDIR}/git"
-
-UBOOT_MACHINE = "rpi_b"
-UBOOT_MAKE_TARGET = "u-boot.bin"
-UBOOT_SUFFIX = "img"
-
-PACKAGE_ARCH = "${MACHINE_ARCH}"
-
-COMPATIBLE_MACHINE = "raspberrypi"
-
-do_compile_append() {
-    # Create kernel.img from uboot.bin and name it u-boot.img
-    ${STAGING_BINDIR_NATIVE}/imagetool-uncompressed.py u-boot.bin
-    mv kernel.img u-boot.img
-}
-- 
2.1.4


