Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D4B6E00AF6; Thu, 22 Oct 2015 07:01:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A16E7E00ADF
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 07:01:04 -0700 (PDT)
Received: by wicfv8 with SMTP id fv8so121681400wic.0
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 07:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=i/UEbbKd5ZmBTMzd/rstMzksS4yPGxFGddeazZViTTA=;
	b=pB8jjvfzX0Y16UOLLCSvd9EE9EEmLYDvKwhSfVzEY9yYFQ+Xi8zfrDOZ72UuxVmGo3
	VxTTX/mMNVov6WXYlC2Ie3v/nvagMaE20Vk2gbltKHtaTiLsH8EIY/JVKndEKFtbhXae
	4Za/qEneqVoP0XMp87dNX6sHH/JRCobAP0dO0yB8hjyC45fRzQ04/Ppav+ZCb0/YSEZk
	OEjpJoYKvF7uPDzHUjHhL5fHqdG66+2OiIz1nB3Of9QsOh34OcqRZtyGONWHv+53IemF
	ZWpSi1EWqJ1b2lDP5jWzHRxxrKzBAcb+zuZmy4ubSg1g5bybgj5W2f5vDWrtfhE4GFC/
	EiLQ==
X-Received: by 10.194.86.161 with SMTP id q1mr4567057wjz.88.1445522463064;
	Thu, 22 Oct 2015 07:01:03 -0700 (PDT)
Received: from localhost.localdomain
	(cpc47-live22-2-0-cust92.17-2.cable.virginm.net. [86.17.157.93])
	by smtp.gmail.com with ESMTPSA id
	bf8sm17034681wjc.22.2015.10.22.07.00.52
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 22 Oct 2015 07:00:52 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: petter@technux.se,
	andrei@gherzan.ro,
	yocto@yoctoproject.org
Date: Thu, 22 Oct 2015 15:00:42 +0100
Message-Id: <1445522442-14456-1-git-send-email-ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.9.1
Subject: [meta-raspberrypi][PATCH v2] linux-raspberrypi: support configuration fragments / in-tree defconfig
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
X-List-Received-Date: Thu, 22 Oct 2015 14:01:10 -0000

Synopsis
========

Start using Yocto kernel configuration fragments[0] and the "in-tree
defconfig" solution provided in poky[1].

To specify an "in-tree" defconfig file, you may edit the recipe that
builds your kernel so that it has the following command form:

     KBUILD_DEFCONFIG_KMACHINE ?= defconfig_file

You need to append the variable with KMACHINE and then supply the
path to your "in-tree" defconfig file.

In order to achieve this meta-raspberrypi needs to:

- start using KBUILD_DEFCONFIG_KMACHINE
- remove placeholder defconfig and custom copying logic.
- avoid replacing all Yocto project configured settings in
  do_configure_prepend.

In many cases it should not be necessary to change the defconfig
file used.

Instead Yocto supports use of kernel configuration fragment files
to override the in-tree defconfig defaults[0].

For more background regarding this migration read the bugzilla bug
info[2].

[0] - http://www.yoctoproject.org/docs/1.8/kernel-dev/kernel-dev.html#changing-the-configuration
[1] - http://www.yoctoproject.org/docs/1.8/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file
[2] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=7474

Testing
=======

Poky master (#6d8ace03) core-image-sato with MACHINE=raspberrypi2

Kernels 3.18.16 / 4.1.10

(1) with no fragment files defined, using in-tree defconfig, kernels/images
    build and boot without error.

- build host kernel .config file contains CONFIG_SND_BCM2835=m.
- post boot, target aplay -l reports no sound devices until module is
  loaded.
- post modprobe, target aplay -l reports sound device.

(2) adding a test configuration fragment to build sound driver
    into the kernel.

- build host kernel .config file contains CONFIG_SND_BCM2835=y.
- post boot, target aplay -l reports sound device with no modprobe
  step.

Note: It may be necessary to clean sstate for the kernel after adding
      a new configuration fragment to the SRC_URI, e.g.

      bitbake -c cleansstate virtual/kernel

Sample Fragment Implementation
==============================

linux-raspberrypi.inc:

+SRC_URI += " \
+        file://build-in-audio.cfg \
+        "

linux-raspberrypi/build-in-audio.cfg:

+CONFIG_SND=y
+CONFIG_SND_BCM2835=y

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 recipes-kernel/linux/linux-raspberrypi.inc       | 12 ++++--------
 recipes-kernel/linux/linux-raspberrypi/defconfig |  1 -
 recipes-kernel/linux/linux.inc                   |  7 +++----
 3 files changed, 7 insertions(+), 13 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi/defconfig

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 70e8bfe..d3766c4 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -6,10 +6,6 @@ SECTION = "kernel"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
 
-SRC_URI += " \
-        file://defconfig \
-        "
-
 COMPATIBLE_MACHINE = "raspberrypi"
 
 PE = "1"
@@ -18,6 +14,10 @@ PV = "${LINUX_VERSION}+git${SRCPV}"
 # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
 KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
 KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
+KMACHINE ?= "${MACHINE}"
+KCONFIG_MODE = "--alldefconfig"
+KBUILD_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
+KBUILD_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
 
 # CMDLINE for raspberrypi
 CMDLINE = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
@@ -42,10 +42,6 @@ python __anonymous () {
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
index fae78b7..7ed80af 100644
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
@@ -109,8 +108,8 @@ do_configure_prepend() {
 
     # Keep this the last line
     # Remove all modified configs and add the rest to .config
-    sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
-
+    sed -e "${CONF_SED_SCRIPT}" < '${B}/.config.patched' >> '${B}/.config'
+    rm -f ${B}/.config.patched
     yes '' | oe_runmake oldconfig
 }
 
-- 
1.9.1


