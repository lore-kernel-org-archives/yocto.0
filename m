Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E243EE00DEF; Fri,  3 Jun 2016 12:58:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E250E00DE3
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2016 12:58:51 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id e3so1671366wme.2
	for <yocto@yoctoproject.org>; Fri, 03 Jun 2016 12:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=CyVjIS5+ENjUnzpCDw+3KdUAj6L0hJIE33PV7WwbleI=;
	b=zs4X6zrMgEP+QvnBB0IZiW/M8AwxCZ844A5DF7d7kI6fBabNP6ZRImvyg4SrF3CaCa
	Z4ZdBAEfFqZs3mCDONY7FiDHHSu1TvJsv4m5A8frrifj77E3rmoXfopsVMVPud+HWS7T
	P/albsBSR9R07qfUgtCnQC3COu2/p9fa2USK8Yqrb4DHMKYZAZlB2BYPsMIA/82WiUtD
	v2yAYSuviOydW5HnXnHMW99qo/rX4yW47UIv5Q4DKZSmx9qqNIYTU+WRTfjNkSyi9ba2
	6hEuMTP5ydkDezMvQ2zdrSGxufHLHvRl4zTMRts0HUTqEtP8SgMNU00iKYXDW3uDGDkV
	KEnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=CyVjIS5+ENjUnzpCDw+3KdUAj6L0hJIE33PV7WwbleI=;
	b=Eg5Pma0PATCRa5arAFa4oifrQIBR7YkLNJvnX1fkIDUBUWoTVkIySM82jch5er/UIb
	2fHVzS8kGghxlKSpmWv2Wi8agnZ8APuUnpaieMXgIGb8Ed3WvFdg3+vMW2wyewVK9WFj
	3Nk028zqg/zas5J1J9am0YEl0o+pMXOxBZyUuV1dSCwjrJ/J0Bsekkmij/rJ0jRugm1f
	8i80Zc70LjuY0PWjg0nuFILEA7kTbe3KMI8h6wosu/dWsGEY8ioXp8BhIf9sULcbLYMj
	3snzoMMXLga5YWljnA9sNYDGm8tTTaEmAE0uBFk8gPoeMzMJ25T0w8pNNajrLijnz7nJ
	bCkQ==
X-Gm-Message-State: ALyK8tI2NxTedL+NNWCllW8NJCGTtiiXyrE6gDIMCIvjZotBdof/cwG5SKL3zBaZPbkRhw==
X-Received: by 10.28.169.66 with SMTP id s63mr1015768wme.29.1464983930431;
	Fri, 03 Jun 2016 12:58:50 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id v5sm7219500wjv.36.2016.06.03.12.58.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Jun 2016 12:58:49 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Fri,  3 Jun 2016 20:58:58 +0100
Message-Id: <1464983940-32210-3-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1464983940-32210-1-git-send-email-paul@paulbarker.me.uk>
References: <1464983940-32210-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH V2 2/4] u-boot: Use mainline u-boot recipe from oe-core
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
X-List-Received-Date: Fri, 03 Jun 2016 19:58:55 -0000

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


