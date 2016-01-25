Return-Path: <srae@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A10ABE00BE9; Mon, 25 Jan 2016 13:01:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [216.31.210.63 listed in list.dnswl.org]
Received: from mail-gw2-out.broadcom.com (mail-gw2-out.broadcom.com
	[216.31.210.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DFB0E00BB5
	for <yocto@yoctoproject.org>; Mon, 25 Jan 2016 13:00:59 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.22,346,1449561600"; d="scan'208";a="86408056"
Received: from irvexchcas07.broadcom.com (HELO
	IRVEXCHCAS07.corp.ad.broadcom.com) ([10.9.208.55])
	by mail-gw2-out.broadcom.com with ESMTP; 25 Jan 2016 13:43:20 -0800
Received: from IRVEXCHSMTP1.corp.ad.broadcom.com (10.9.207.51) by
	IRVEXCHCAS07.corp.ad.broadcom.com (10.9.208.55) with Microsoft SMTP
	Server (TLS) id 14.3.235.1; Mon, 25 Jan 2016 13:00:58 -0800
Received: from mail-irva-13.broadcom.com (10.10.10.20) by
	IRVEXCHSMTP1.corp.ad.broadcom.com (10.9.207.51) with Microsoft SMTP
	Server id 14.3.235.1; Mon, 25 Jan 2016 13:00:58 -0800
Received: from mail.broadcom.com (unknown [10.136.4.208])	by
	mail-irva-13.broadcom.com (Postfix) with ESMTP id 2F31F40FE5;
	Mon, 25 Jan 2016 12:57:06 -0800 (PST)
From: Steve Rae <srae@broadcom.com>
To: <yocto@yoctoproject.org>
Date: Mon, 25 Jan 2016 13:00:18 -0800
Message-ID: <1453755618-11640-1-git-send-email-srae@broadcom.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] u-boot-rpi2: use the upstreamed U-Boot
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
X-List-Received-Date: Mon, 25 Jan 2016 21:01:05 -0000
Content-Type: text/plain

For Raspberry Pi 2, use the U-Boot from "denx".

Signed-off-by: Steve Rae <srae@broadcom.com>
---
 conf/machine/raspberrypi2.conf        |  1 +
 recipes-bsp/u-boot/u-boot-rpi2_git.bb | 36 +++++++++++++++++++++++++++++++++++
 2 files changed, 37 insertions(+)
 create mode 100644 recipes-bsp/u-boot/u-boot-rpi2_git.bb

diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
index 30edae3..50912c9 100644
--- a/conf/machine/raspberrypi2.conf
+++ b/conf/machine/raspberrypi2.conf
@@ -5,4 +5,5 @@
 DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
 
 require conf/machine/include/tune-cortexa7.inc
+PREFERRED_PROVIDER_u-boot ?= "u-boot-rpi2"
 include conf/machine/include/rpi-base.inc
diff --git a/recipes-bsp/u-boot/u-boot-rpi2_git.bb b/recipes-bsp/u-boot/u-boot-rpi2_git.bb
new file mode 100644
index 0000000..ce0d1a0
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot-rpi2_git.bb
@@ -0,0 +1,36 @@
+DESCRIPTION = "U-Boot for Raspberry Pi 2 Model B"
+
+require recipes-bsp/u-boot/u-boot.inc
+
+DEPENDS += "rpi-mkimage-native"
+
+PROVIDES += "u-boot"
+
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://README;md5=587d8d939ae351bb11910921b1eafd42"
+
+SRCREV = "fa85e826c16b9ce1ad302a57e9c4b24db0d8b930"
+SRC_URI = "git://git.denx.de/u-boot.git;branch=master"
+
+S = "${WORKDIR}/git"
+
+UBOOT_MACHINE = "rpi2_b"
+UBOOT_MAKE_TARGET = "u-boot.bin"
+UBOOT_SUFFIX = "img"
+
+PACKAGE_ARCH = "${MACHINE_ARCH}"
+
+COMPATIBLE_MACHINE = "raspberrypi2"
+
+do_compile() {
+    oe_runmake mrproper
+    oe_runmake rpi_2_defconfig
+    oe_runmake CROSS_COMPILE=arm-poky-linux-gnueabi- \
+        CC="arm-poky-linux-gnueabi-gcc --sysroot=${PKG_CONFIG_SYSROOT_DIR}"
+}
+
+do_compile_append() {
+    # From 'uboot.bin', create 'kernel.img', then rename it to 'u-boot.img'
+    ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/imagetool-uncompressed.py u-boot.bin
+    mv kernel.img u-boot.img
+}
-- 
1.9.1


