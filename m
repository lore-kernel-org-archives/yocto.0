Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E58B0E00AC8; Thu, 30 Jul 2015 01:41:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [54.187.51.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81436E00AB0
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 01:41:22 -0700 (PDT)
Received: from localhost.localdomain (119.3.11.37.dynamic.jazztel.es
	[37.11.3.119])
	by lists.s-osg.org (Postfix) with ESMTPSA id 7910346328;
	Thu, 30 Jul 2015 01:36:08 -0700 (PDT)
From: Javier Martinez Canillas <javier@osg.samsung.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 30 Jul 2015 10:34:07 +0200
Message-Id: <1438245251-20437-2-git-send-email-javier@osg.samsung.com>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
X-Mailman-Approved-At: Sun, 02 Aug 2015 23:22:39 -0700
Cc: yocto@yoctoproject.org, Derek Foreman <derekf@osg.samsung.com>,
	Javier Martinez Canillas <javier@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: [meta-raspberrypi][PATCH 1/5] linux-raspberrypi.inc: Make kgdboc kernel param optional
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
X-List-Received-Date: Thu, 30 Jul 2015 08:41:26 -0000

From: Mauro Carvalho Chehab <mchehab@osg.samsung.com>

The kernel debugger over console (kgdboc) parameter is being added
unconditionally to the kernel command line but this means that the
kernel will stop and wait for gdb to attach in case of a exception
or when sending a sysrq-g key. This behaviour may not be what most
users wants that are not remotely debugging the kernel over serial
console so make it optional by adding a ENABLE_KGDB config option.

Signed-off-by: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
[javier: Extended commit message and made it conditional]
Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>

---

 README                                     | 23 +++++++++++++++--------
 recipes-kernel/linux/linux-raspberrypi.inc |  5 ++++-
 2 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/README b/README
index 3913f415bbc1..d70f21fe06ed 100644
--- a/README
+++ b/README
@@ -19,10 +19,11 @@ Contents:
     2.E. Set overclocking options
     2.F. Optional - Video camera support with V4L2 drivers
     2.G. Optional - Enable offline compositing support
-    2.H. Images
-    2.I. Boot to U-Boot
-    2.J. Image with Initramfs
-    2.K. Device tree support
+    2.H. Optional - Enable kgdb over console support
+    2.I. Images
+    2.J. Boot to U-Boot
+    2.K. Image with Initramfs
+    2.L. Device tree support
 3. Extra apps
     3.A. omxplayer
 4. Source code and mirrors
@@ -138,7 +139,13 @@ Heavily recommended for Wayland/Weston.
 
 See: http://wayland.freedesktop.org/raspberrypi.html
 
-2.H. Images
+2.H. Optional - Enable kgdb over console support
+================================================
+To add the kdbg over console (kgdboc) parameter to the kernel command line,
+set this variable in local.conf:
+ENABLE_KGDB = "1"
+
+2.I. Images
 ===========
 * rpi-hwup-image
     Hardware up image
@@ -148,7 +155,7 @@ See: http://wayland.freedesktop.org/raspberrypi.html
     Image based on rpi-basic-image which includes most of the packages in this
     layer and some media samples.
 
-2.I. Boot to U-Boot
+2.J. Boot to U-Boot
 ===================
 To have u-boot load kernel image, set in your local.conf
 KERNEL_IMAGETYPE = "uImage"
@@ -156,7 +163,7 @@ KERNEL_IMAGETYPE = "uImage"
 This will make kernel.img be u-boot image which will load uImage.
 By default, kernel.img is the actual kernel image (ex. Image).
 
-2.J. Image with Initramfs
+2.K. Image with Initramfs
 =========================
 To build an initramfs image :
     * Set this 3 kernel variables (in linux-raspberrypi.inc for example)
@@ -169,7 +176,7 @@ To build an initramfs image :
     * Set the meta-rasberrypi variable (in raspberrypi.conf for example)
         - KERNEL_INITRAMFS = "-initramfs"
 
-2.K. Device tree support
+2.L. Device tree support
 =========================
 Device tree for RPi is only supported when using linux-raspberrypi 3.18+
 kernels.
diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 7e36408ae071..d60a3e941027 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -19,7 +19,10 @@ KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
 KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
 
 # CMDLINE for raspberrypi
-CMDLINE = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 kgdboc=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
+CMDLINE = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
+
+# Add the kernel debugger over console kernel command line option if enabled
+CMDLINE_append = ' ${@base_conditional("ENABLE_KGDB", "1", "kgdboc=ttyAMA0,115200", "", d)}'
 
 UDEV_GE_141 ?= "1"
 
-- 
2.4.3


