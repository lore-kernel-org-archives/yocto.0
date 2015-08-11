Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03CD1E00947; Tue, 11 Aug 2015 10:05:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80717E00758
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 10:05:12 -0700 (PDT)
Received: by wicne3 with SMTP id ne3so185558877wic.1
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 10:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=LdUFohAc2LgiY+p6NFrBEDxf3FZFH4V7m9OenbD4xxc=;
	b=VFv5S0qdGmKRbfk6k80rVu6rgS3W+7LZKAJ1y3DtYL9LkPy9IMkqakhKn18ZC6w4Fe
	ytbrky+OmFkG6xd7paxNMCgr4zupM2KhPAQyftX38LRtPPWp4oO16yXtiYU7W7rOQJ9U
	hkOHljjjVw9IgTFNbr5ZBvwK/qQnLiy665P98GdpyM6rHRyyrXyj99Hj36hE98q3GDh4
	Gd4lBkSAvYdvH/zhuyS0fxUoeqMxw+JOq1tQN/TfTuwpHozjG6heNS8JbmBLsFFjYXoD
	y00oNI7eHlYvyNNxD70f5qGvxldBFeq9R1oYZTkhOCQB4YQwA4akQD+kxe9GWnXC3b04
	rBvQ==
X-Received: by 10.180.86.100 with SMTP id o4mr38926171wiz.46.1439312710752;
	Tue, 11 Aug 2015 10:05:10 -0700 (PDT)
Received: from localhost.localdomain
	(cpc47-live22-2-0-cust92.17-2.cable.virginm.net. [86.17.157.93])
	by smtp.gmail.com with ESMTPSA id
	r6sm19769618wiy.13.2015.08.11.10.04.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 11 Aug 2015 10:05:10 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org,
	andrei@gherzan.ro,
	bruce.ashfield@gmail.com
Date: Tue, 11 Aug 2015 18:04:38 +0100
Message-Id: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.9.1
Subject: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi: support configuration fragments
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
X-List-Received-Date: Tue, 11 Aug 2015 17:05:15 -0000

- remove placeholder defconfig and custom copying logic
- use KBUILD_DEFCONFIG for default in-tree configurations instead
- do not replace all Yocto configured settings in do_configure_prepend

see: https://bugzilla.yoctoproject.org/show_bug.cgi?id=7474

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 recipes-kernel/linux/linux-raspberrypi.inc       | 15 ++++-----------
 recipes-kernel/linux/linux-raspberrypi/defconfig |  1 -
 recipes-kernel/linux/linux.inc                   |  6 +++---
 3 files changed, 7 insertions(+), 15 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi/defconfig

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 7e36408..e38d905 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -6,17 +6,14 @@ SECTION = "kernel"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
 
-SRC_URI += " \
-        file://defconfig \
-        "
-
 COMPATIBLE_MACHINE = "raspberrypi"
 
 PV = "${LINUX_VERSION}+git${SRCREV}"
 
-# NOTE: For now we pull in the default config from the RPi kernel GIT tree.
-KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
-KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
+KMACHINE ?= "${MACHINE}"
+KCONFIG_MODE = "--alldefconfig"
+KBUILD_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
+KBUILD_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
 
 # CMDLINE for raspberrypi
 CMDLINE = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 kgdboc=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
@@ -38,10 +35,6 @@ python __anonymous () {
             d.setVar("DEPENDS", depends)
 }
 
-do_kernel_configme_prepend() {
-    install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
-}
-
 do_install_prepend() {
     install -d ${D}/lib/firmware
 }
diff --git a/recipes-kernel/linux/linux-raspberrypi/defconfig b/recipes-kernel/linux/linux-raspberrypi/defconfig
deleted file mode 100644
index ecbf32c..0000000
--- a/recipes-kernel/linux/linux-raspberrypi/defconfig
+++ /dev/null
@@ -1 +0,0 @@
-# Dummy file to get through do_kernel_configme.
diff --git a/recipes-kernel/linux/linux.inc b/recipes-kernel/linux/linux.inc
index fae78b7..103512b 100644
--- a/recipes-kernel/linux/linux.inc
+++ b/recipes-kernel/linux/linux.inc
@@ -33,8 +33,7 @@ kernel_configure_variable() {
 }
 
 do_configure_prepend() {
-    # Clean .config
-    echo "" > ${B}/.config
+    mv -f ${B}/.config ${B}/.config.patched
     CONF_SED_SCRIPT=""
 
     # oabi / eabi support
@@ -109,7 +108,8 @@ do_configure_prepend() {
 
     # Keep this the last line
     # Remove all modified configs and add the rest to .config
-    sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
+    sed -e "${CONF_SED_SCRIPT}" < '${B}/.config.patched' >> '${B}/.config'
+    rm -f ${B}/.config.patched
 
     yes '' | oe_runmake oldconfig
 }
-- 
1.9.1


