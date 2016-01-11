Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 022F1E0090C; Mon, 11 Jan 2016 08:51:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-05.atm.binero.net (bin-mail-out-06.binero.net
	[195.74.38.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 722F2E00903
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 08:51:00 -0800 (PST)
X-Halon-ID: 68666639-b883-11e5-8d6c-005056916f53
Authorized-sender: petter@technux.se
Received: from localhost.localdomain (unknown [85.195.55.167])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Mon, 11 Jan 2016 17:50:23 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Mon, 11 Jan 2016 17:49:46 +0100
Message-Id: <1452530987-994-5-git-send-email-petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1452530987-994-1-git-send-email-petter@technux.se>
References: <1452530987-994-1-git-send-email-petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 4/5] pitft: Add basic support for PiTFT
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
X-List-Received-Date: Mon, 11 Jan 2016 16:51:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add basic support for PiTFT display by using device-trees.

In order get it working below configurations must be active in
local.conf:

MACHINEOVERRIDES .= ":pitft"
 - This will enable SPI bus and i2c device-trees, it will also setup
   framebuffer for console and x server on PiTFT.

[Support #70]

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 README                                             | 29 ++++++++++++++++------
 recipes-bsp/bootfiles/rpi-config_git.bb            | 14 +++++++++++
 .../rpi/xorg.conf.d/99-pitft.conf                  |  5 ++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |  1 +
 recipes-kernel/linux/linux-raspberrypi.inc         |  1 +
 5 files changed, 42 insertions(+), 8 deletions(-)
 create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf

diff --git a/README b/README
index 8ef4e7a..791038f 100644
--- a/README
+++ b/README
@@ -22,10 +22,11 @@ Contents:
     2.H. Optional - Enable kgdb over console support
     2.I. Optional - Enable SPI bus
     2.J. Optional - Enable I2C
-    2.K. Images
-    2.L. Boot to U-Boot
-    2.M. Image with Initramfs
-    2.N. Device tree support
+    2.K. Optional - Enable PiTFT support
+    2.L. Images
+    2.M. Boot to U-Boot
+    2.N. Image with Initramfs
+    2.O. Device tree support
 3. Extra apps
     3.A. omxplayer
 4. Source code and mirrors
@@ -157,7 +158,19 @@ ENABLE_SPI_BUS = "1"
 When using device tree kernels, set this variable to enable I2C
 ENABLE_I2C = "1"
 
-2.K. Images
+2.K. Optional - Enable PiTFT support
+====================================
+Basic support for using PiTFT screens can be enabled by adding
+below in local.conf:
+
+MACHINEOVERRIDES .= ":pitft"
+  - This will enable SPI bus and i2c device-trees, it will also setup
+    framebuffer for console and x server on PiTFT.
+
+NOTE: To get this working the overlay for the PiTFT model must be build,
+      added and specified as well (dtoverlay=<driver> in config.txt)
+
+2.L. Images
 ===========
 * rpi-hwup-image
     Hardware up image
@@ -167,7 +180,7 @@ ENABLE_I2C = "1"
     Image based on rpi-basic-image which includes most of the packages in this
     layer and some media samples.
 
-2.L. Boot to U-Boot
+2.M. Boot to U-Boot
 ===================
 To have u-boot load kernel image, set in your local.conf
 KERNEL_IMAGETYPE = "uImage"
@@ -175,7 +188,7 @@ KERNEL_IMAGETYPE = "uImage"
 This will make kernel.img be u-boot image which will load uImage.
 By default, kernel.img is the actual kernel image (ex. Image).
 
-2.M. Image with Initramfs
+2.N. Image with Initramfs
 =========================
 To build an initramfs image :
     * Set this 3 kernel variables (in linux-raspberrypi.inc for example)
@@ -188,7 +201,7 @@ To build an initramfs image :
     * Set the meta-rasberrypi variable (in raspberrypi.conf for example)
         - KERNEL_INITRAMFS = "-initramfs"
 
-2.N. Device tree support
+2.O. Device tree support
 =========================
 Device tree for RPi is only supported when using linux-raspberrypi 3.18+
 kernels.
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index ccb9b7f..9f20352 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -80,6 +80,20 @@ do_deploy() {
     fi
 }
 
+do_deploy_append_pitft() {
+    # Add SPI BUS and I2C support if needed
+    if [ -z "${ENABLE_SPI_BUS}" ]; then
+        echo "# Enable SPI bus" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "dtparam=spi=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+
+    if [ -z "${ENABLE_I2C}" ]; then
+        echo "# Enable I2C" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "dtparam=i2c1=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "dtparam=i2c_arm=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+}
+
 addtask deploy before do_package after do_install
 do_deploy[dirs] += "${DEPLOYDIR}/bcm2835-bootfiles"
 
diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf
new file mode 100644
index 0000000..0d2b36b
--- /dev/null
+++ b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf
@@ -0,0 +1,5 @@
+Section "Device"
+    Identifier "Adafruit PiTFT"
+    Driver "fbdev"
+    Option "fbdev" "/dev/fb1"
+EndSection
diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 2cf40f8..db8e4c1 100644
--- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,6 +1,7 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 SRC_URI_append_rpi = " file://xorg.conf.d/10-evdev.conf "
+SRC_URI_append_pitft = " file://xorg.conf.d/99-pitft.conf "
 
 do_install_append_rpi () {
 	install -d ${D}/${sysconfdir}/X11/xorg.conf.d/
diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 70e8bfe..420346a 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -24,6 +24,7 @@ CMDLINE = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 root=/dev/mmcblk0p2 rootf
 
 # Add the kernel debugger over console kernel command line option if enabled
 CMDLINE_append = ' ${@base_conditional("ENABLE_KGDB", "1", "kgdboc=ttyAMA0,115200", "", d)}'
+CMDLINE_append_pitft = "fbcon=map:10 fbcon=font:VGA8x8"
 
 UDEV_GE_141 ?= "1"
 
-- 
1.9.1


