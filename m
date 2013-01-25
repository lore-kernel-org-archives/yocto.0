Return-Path: <thaytan@noraisin.net>
Received: from noraisin.net (198.23.233.220.static.exetel.com.au
	[220.233.23.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C6D7E014E2
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 05:34:04 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by noraisin.net (Postfix) with ESMTP id E49273380A1B;
	Sat, 26 Jan 2013 00:34:00 +1100 (EST)
X-Virus-Scanned: Debian amavisd-new at decorama.com.au
Received: from noraisin.net ([127.0.0.1])
	by localhost (mail.decorama.com.au [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id aGzS+M0f3nxk; Sat, 26 Jan 2013 00:33:55 +1100 (EST)
Received: from shorty.home. (113.94.233.220.static.exetel.com.au
	[220.233.94.113])
	by noraisin.net (Postfix) with ESMTPA id C184333809C9;
	Sat, 26 Jan 2013 00:33:54 +1100 (EST)
From: Jan Schmidt <thaytan@noraisin.net>
To: yocto@yoctoproject.org
Date: Sat, 26 Jan 2013 00:33:23 +1100
Message-Id: <1359120805-25408-1-git-send-email-thaytan@noraisin.net>
X-Mailer: git-send-email 1.7.10.4
Subject: [meta-raspberrypi][PATCH 1/3] linux: Add a Linux 3.6 kernel recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 25 Jan 2013 13:34:04 -0000

* Add a recipe to build the linux kernel from the rpi-3.6.y branch at
  https://github.com/raspberrypi/linux
* Since this has a higher version, it will be the preferred linux kernel
  by default.

Signed-off-by: Jan Schmidt <thaytan@noraisin.net>
---
 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb |   34 ++++++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
new file mode 100644
index 0000000..caee7f2
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
@@ -0,0 +1,34 @@
+require linux.inc
+
+DESCRIPTION = "Linux kernel for the RaspberryPi board"
+COMPATIBLE_MACHINE = "raspberrypi"
+
+PR = "r6"
+PV_append = "+git${SRCREV}"
+
+SRCREV = "31a951046155b27361127d9cf85a1f58719fe9b3"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
+          "
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
+	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
+}
+
+do_install_prepend() {
+	install -d ${D}/lib/firmware
+}
+
+do_deploy_append() {
+	# Deploy cmdline.txt
+	install -d ${DEPLOYDIR}/bcm2835-bootfiles
+	echo "${CMDLINE}" > ${DEPLOYDIR}/bcm2835-bootfiles/cmdline.txt
+}
-- 
1.7.10.4


