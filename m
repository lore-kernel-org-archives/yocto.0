Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD337E0159D
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 15:36:54 -0700 (PDT)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id 3604CB6A00C;
	Wed, 11 Sep 2013 00:36:50 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-101.0 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from poweramy.fritz.box (ppp-188-174-75-98.dynamic.mnet-online.de
	[188.174.75.98])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lists@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id D2889B6A009; 
	Wed, 11 Sep 2013 00:36:49 +0200 (CEST)
From: lists@philipp-wagner.com
To: yocto@yoctoproject.org
Date: Wed, 11 Sep 2013 00:36:31 +0200
Message-Id: <1378852594-13307-2-git-send-email-lists@philipp-wagner.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1378852594-13307-1-git-send-email-lists@philipp-wagner.com>
References: <1378852594-13307-1-git-send-email-lists@philipp-wagner.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Philipp Wagner <mail@philipp-wagner.com>
Subject: [meta-raspberrypi][PATCH 1/4] Refactor kernel recipes to reduce code duplication
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
X-List-Received-Date: Tue, 10 Sep 2013 22:36:55 -0000

From: Philipp Wagner <mail@philipp-wagner.com>

Signed-off-by: Philipp Wagner <mail@philipp-wagner.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc       | 34 ++++++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_3.2.27.bb | 33 ++---------------------
 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb | 33 ++---------------------
 3 files changed, 38 insertions(+), 62 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi.inc

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
new file mode 100644
index 0000000..e756b57
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -0,0 +1,34 @@
+require linux.inc
+
+DESCRIPTION = "Linux Kernel for Raspberry Pi"
+SECTION = "kernel"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
+
+COMPATIBLE_MACHINE = "raspberrypi"
+
+PV_append = "+git${SRCREV}"
+
+S = "${WORKDIR}/git"
+
+# NOTE: For now we pull in the default config from the RPi kernel GIT tree.
+KERNEL_DEFCONFIG = "bcmrpi_defconfig"
+
+# CMDLINE for raspberrypi
+CMDLINE_raspberrypi = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 kgdboc=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
+
+UDEV_GE_141 ?= "1"
+
+do_configure_prepend() {
+    install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
+}
+
+do_install_prepend() {
+    install -d ${D}/lib/firmware
+}
+
+do_deploy_append() {
+    # Deploy cmdline.txt
+    install -d ${DEPLOYDIR}/bcm2835-bootfiles
+    echo "${CMDLINE}" > ${DEPLOYDIR}/bcm2835-bootfiles/cmdline.txt
+}
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb b/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
index 263e0ce..cc4ee38 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
@@ -1,35 +1,6 @@
-require linux.inc
-
-DESCRIPTION = "Linux kernel for the RaspberryPi board"
-COMPATIBLE_MACHINE = "raspberrypi"
-
-PR = "r7"
-PV_append = "+git${SRCREV}"
-
 SRCREV = "ada8b4415ff44d535d63e4291a0eca733bc2ad0f"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27 \
-	   file://sl030raspberrypii2ckernel.patch \
+           file://sl030raspberrypii2ckernel.patch \
           "
-S = "${WORKDIR}/git"
-
-# NOTE: For now we pull in the default config from the RPi kernel GIT tree.
-KERNEL_DEFCONFIG = "bcmrpi_defconfig"
-
-# CMDLINE for raspberrypi
-CMDLINE_raspberrypi = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 kgdboc=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
-
-UDEV_GE_141 ?= "1"
-
-do_configure_prepend() {
-	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
-}
-
-do_install_prepend() {
-	install -d ${D}/lib/firmware
-}
 
-do_deploy_append() {
-	# Deploy cmdline.txt
-	install -d ${DEPLOYDIR}/bcm2835-bootfiles
-	echo "${CMDLINE}" > ${DEPLOYDIR}/bcm2835-bootfiles/cmdline.txt
-}
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
index 48c99fd..5314f5d 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
@@ -1,35 +1,6 @@
-require linux.inc
-
-DESCRIPTION = "Linux kernel for the RaspberryPi board"
-COMPATIBLE_MACHINE = "raspberrypi"
-
-PR = "r7"
-PV_append = "+git${SRCREV}"
-
-SRCREV = "63b69a8806ce1890711ff55280c90673ea415933"
+SRCREV = "cbd6672e7e1b2dc5026f5dc7929a13a9a68f2a62"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
            file://sl030raspberrypii2ckernel.patch \
           "
-S = "${WORKDIR}/git"
-
-# NOTE: For now we pull in the default config from the RPi kernel GIT tree.
-KERNEL_DEFCONFIG = "bcmrpi_defconfig"
-
-# CMDLINE for raspberrypi
-CMDLINE_raspberrypi = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 kgdboc=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
-
-UDEV_GE_141 ?= "1"
-
-do_configure_prepend() {
-	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
-}
-
-do_install_prepend() {
-	install -d ${D}/lib/firmware
-}
 
-do_deploy_append() {
-	# Deploy cmdline.txt
-	install -d ${DEPLOYDIR}/bcm2835-bootfiles
-	echo "${CMDLINE}" > ${DEPLOYDIR}/bcm2835-bootfiles/cmdline.txt
-}
+require linux-raspberrypi.inc
-- 
1.8.1.4

