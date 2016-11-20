Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA283E00C75; Sun, 20 Nov 2016 04:46:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5515BE00C40
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 04:46:36 -0800 (PST)
Received: from localhost.localdomain (111-250-155-21.dynamic.hinet.net
	[111.250.155.21])
	by msfrf2632.sfr.fr (SMTP Server) with ESMTP id B1C1D1C000841;
	Sun, 20 Nov 2016 13:46:35 +0100 (CET)
Received: from localhost.localdomain (111-250-155-21.dynamic.hinet.net
	[111.250.155.21])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2632.sfr.fr (SMTP Server) with ESMTPSA;
	Sun, 20 Nov 2016 13:46:33 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Sun, 20 Nov 2016 20:46:13 +0800
Message-Id: <1479645974-95274-2-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1479645974-95274-1-git-send-email-herve.jourdain@neuf.fr>
References: <1479645974-95274-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/2] Support for 64bits target on raspberrypi3 (generic part)
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
X-List-Received-Date: Sun, 20 Nov 2016 12:46:38 -0000

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 classes/sdcard_image-rpi.bbclass           |  2 ++
 conf/machine/include/rpi-base.inc          | 21 +++++++++++++++++
 recipes-bsp/bootfiles/rpi-config_git.bb    |  6 +++++
 recipes-kernel/linux/linux-raspberrypi.inc |  2 ++
 recipes-kernel/linux/linux-rpi.inc         | 38 ++++++++++++++++++++++--------
 5 files changed, 59 insertions(+), 10 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 116d5e8..375f624 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -35,6 +35,8 @@ KERNEL_INITRAMFS ?= ""
 # Kernel image name
 SDIMG_KERNELIMAGE_raspberrypi  ?= "kernel.img"
 SDIMG_KERNELIMAGE_raspberrypi2 ?= "kernel7.img"
+SDIMG_KERNELIMAGE_raspberrypi3 ?= "kernel7.img"
+SDIMG_KERNELIMAGE_raspberrypi3-64 ?= "kernel8.img"
 
 # Boot partition volume id
 BOOTDD_VOLUME_ID ?= "${MACHINE}"
diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 497dd29..f6e2997 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -40,6 +40,27 @@ KERNEL_DEVICETREE ?= " \
     overlays/pi3-miniuart-bt.dtbo \
     overlays/vc4-kms-v3d.dtbo \
     "
+KERNEL_DEVICETREE_raspberrypi3-64 ?= " \
+    broadcom/bcm2837-rpi-3-b.dtb \
+    \
+    broadcom/overlays/hifiberry-amp.dtbo \
+    broadcom/overlays/hifiberry-dac.dtbo \
+    broadcom/overlays/hifiberry-dacplus.dtbo \
+    broadcom/overlays/hifiberry-digi.dtbo \
+    broadcom/overlays/i2c-rtc.dtbo \
+    broadcom/overlays/iqaudio-dac.dtbo \
+    broadcom/overlays/iqaudio-dacplus.dtbo \
+    broadcom/overlays/lirc-rpi.dtbo \
+    broadcom/overlays/pitft22.dtbo \
+    broadcom/overlays/pitft28-resistive.dtbo \
+    broadcom/overlays/pps-gpio.dtbo \
+    broadcom/overlays/rpi-ft5406.dtbo \
+    broadcom/overlays/w1-gpio.dtbo \
+    broadcom/overlays/w1-gpio-pullup.dtbo \
+    broadcom/overlays/pi3-disable-bt.dtbo \
+    broadcom/overlays/pi3-miniuart-bt.dtbo \
+    broadcom/overlays/vc4-kms-v3d.dtbo \
+    "
 KERNEL_IMAGETYPE ?= "Image"
 
 MACHINE_FEATURES += "apm usbhost keyboard vfat ext2 screen touchscreen alsa bluetooth wifi sdio"
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index f610718..df87d3d 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -112,6 +112,12 @@ do_deploy() {
     fi
 }
 
+do_deploy_append_raspberrypi3-64() {
+    # Device Tree support
+    echo "# Load correct Device Tree for Aarch64" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    echo "device_tree=bcm2837-rpi-3-b.dtb" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+}
+
 addtask deploy before do_package after do_install
 do_deploy[dirs] += "${DEPLOYDIR}/bcm2835-bootfiles"
 
diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 98229d9..6ae94ea 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -18,6 +18,8 @@ PV = "${LINUX_VERSION}+git${SRCPV}"
 # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
 KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
 KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
+KERNEL_DEFCONFIG_raspberrypi3 ?= "bcm2709_defconfig"
+KERNEL_DEFCONFIG_raspberrypi3-64 ?= "bcm2837_defconfig"
 
 # CMDLINE for raspberrypi
 CMDLINE = "dwc_otg.lpm_enable=0 console=serial0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
index 95a9530..27adf40 100644
--- a/recipes-kernel/linux/linux-rpi.inc
+++ b/recipes-kernel/linux/linux-rpi.inc
@@ -39,12 +39,15 @@ do_configure_prepend() {
     echo "" > ${B}/.config
     CONF_SED_SCRIPT=""
 
-    # oabi / eabi support
-    kernel_configure_variable AEABI y
-    if [ "${ARM_KEEP_OABI}" = "1" ] ; then
-        kernel_configure_variable OABI_COMPAT y
-    else
-        kernel_configure_variable OABI_COMPAT n
+    if [ "${ARCH}" = "arm" ]; then
+
+        # oabi / eabi support
+        kernel_configure_variable AEABI y
+        if [ "${ARM_KEEP_OABI}" = "1" ] ; then
+            kernel_configure_variable OABI_COMPAT y
+        else
+            kernel_configure_variable OABI_COMPAT n
+        fi
     fi
 
     # Set cmdline
@@ -58,7 +61,11 @@ do_configure_prepend() {
     # Newer versions of udev mandate that sysfs doesn't have deprecated entries
     if [ "${UDEV_GE_141}" = "1" ] ; then
         kernel_configure_variable SYSFS_DEPRECATED n
-        kernel_configure_variable SYSFS_DEPRECATED_V2 n
+
+        if [ "${ARCH}" = "arm" ]; then
+            kernel_configure_variable SYSFS_DEPRECATED_V2 n
+        fi
+
         kernel_configure_variable HOTPLUG y
         kernel_configure_variable UEVENT_HELPER_PATH "\"\""
         kernel_configure_variable UNIX y
@@ -77,13 +84,20 @@ do_configure_prepend() {
     if [ "${KERNEL_ENABLE_CGROUPS}" = "1" ] ; then
         kernel_configure_variable CGROUP_SCHED y
         kernel_configure_variable CGROUPS y
-        kernel_configure_variable CGROUP_NS y
+
+        if [ "${ARCH}" = "arm" ]; then
+            kernel_configure_variable CGROUP_NS y
+        fi
+
         kernel_configure_variable CGROUP_FREEZER y
         kernel_configure_variable CGROUP_DEVICE y
         kernel_configure_variable CPUSETS y
         kernel_configure_variable PROC_PID_CPUSET y
         kernel_configure_variable CGROUP_CPUACCT y
-        kernel_configure_variable RESOURCE_COUNTERS y
+
+        if [ "${ARCH}" = "arm" ]; then
+            kernel_configure_variable RESOURCE_COUNTERS y
+        fi
     fi
 
     # root-over-nfs-over-usb-eth support. Limited, but should cover some cases
@@ -93,7 +107,11 @@ do_configure_prepend() {
         kernel_configure_variable INET y
         kernel_configure_variable IP_PNP y
         kernel_configure_variable USB_GADGET y
-        kernel_configure_variable USB_GADGET_SELECTED y
+
+        if [ "${ARCH}" = "arm" ]; then
+            kernel_configure_variable USB_GADGET_SELECTED y
+        fi
+
         kernel_configure_variable USB_ETH y
         kernel_configure_variable NFS_FS y
         kernel_configure_variable ROOT_NFS y
-- 
2.7.4


