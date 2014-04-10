Return-Path: <denis@denix.org>
Received: from vms173021pub.verizon.net (vms173021pub.verizon.net
	[206.46.173.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62A68E00BBF
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 01:03:02 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173021.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N3T00DKX2C43S40@vms173021.mailsrvcs.net> for
	yocto@yoctoproject.org; Thu, 10 Apr 2014 03:02:43 -0500 (CDT)
Received: from localhost.localdomain (elrond [192.168.0.7])
	by gandalf.denix.org (Postfix) with ESMTP id 6E8FF20201; Thu,
	10 Apr 2014 04:02:28 -0400 (EDT)
From: Denys Dmytriyenko <denis@denix.org>
To: yocto@yoctoproject.org
Date: Thu, 10 Apr 2014 04:02:12 -0400
Message-id: <1397116933-20764-1-git-send-email-denis@denix.org>
X-Mailer: git-send-email 1.9.1
Cc: Denys Dmytriyenko <denys@ti.com>
Subject: [meta-yocto][PATCH 1/2] beaglebone.conf: configuration updates
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
X-List-Received-Date: Thu, 10 Apr 2014 08:03:05 -0000

From: Denys Dmytriyenko <denys@ti.com>

* Use fbdev video driver for xserver-xorg
* Recommend installing device tree DTB files into rootfs /boot directory
* Switch back to uImage kernel format from zImage, as U-boot was not updated
  - default has changed to zImage in newer U-boot 2013.10+, but we use 2013.07
* Correct copy/paste typo in serial console

Signed-off-by: Denys Dmytriyenko <denys@ti.com>
---
 meta-yocto-bsp/conf/machine/beaglebone.conf | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
index f2ef0cf..4263715 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -6,11 +6,10 @@ PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
            xf86-input-evdev \
            xf86-input-mouse \
-           xf86-video-omapfb \
+           xf86-video-fbdev \
            xf86-input-keyboard"
 
-# Ship all kernel modules by default
-MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
+MACHINE_EXTRA_RRECOMMENDS = " kernel-modules kernel-devicetree"
 
 EXTRA_IMAGEDEPENDS += "u-boot"
 
@@ -20,13 +19,14 @@ include conf/machine/include/tune-cortexa8.inc
 IMAGE_FSTYPES += "tar.bz2 jffs2"
 EXTRA_IMAGECMD_jffs2 = "-lnp "
 
-SERIAL_CONSOLE = "115200 ttyO2"
+SERIAL_CONSOLE = "115200 ttyO0"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "3.14%"
 
-KERNEL_IMAGETYPE = "zImage"
+KERNEL_IMAGETYPE = "uImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
+KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
 
 SPL_BINARY = "MLO"
 UBOOT_SUFFIX = "img"
-- 
1.9.1


