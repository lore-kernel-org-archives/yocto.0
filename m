Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1957E00874; Sun,  8 Feb 2015 03:57:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E935DE0083D
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 03:57:08 -0800 (PST)
Received: by labgf13 with SMTP id gf13so8643037lab.3
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 03:57:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=LPkE7j5pLKsWSH3kH8SCLVyFrRLfar8K/EEDYWt4vPY=;
	b=d8tHM0Jbvf+TsWbbI5fdo07PSThwiHQTxP7SZ5GNr9Cul2N3rBMzanOwSy8HymH3wm
	0Iw40JOn1YPeZmSYwgPhd1APUX9si9LmruD6l7B8waob75ItBgyVZhKFL+XdIAHyVQzL
	4c621goWK4cj0dApHTkpn1yvEXGQFU52p9IEL2H3OpeTT6hgk7aEkHWZON+7abLluWZE
	0MaHWfdu9XfR4W18i6BkRWWhMIZ2kq6ZMMN/2CvBusHau1g6ECQnR2JsIxmKtXBJ7KIJ
	XDpi0JbV2h5O+HHnom4K4YOCyeZKMB4pfg5OBoAlEqdLyDMk0fzjUm/a2JvF4pjqnYjF
	AWOQ==
X-Gm-Message-State: ALoCoQkqiT8rQhjkhE79Gco+BSA2CVFlWK5/86D6GpCWSLn+HGGZRa7pLPY/nN2R6dtH6P41pKq2
X-Received: by 10.112.150.98 with SMTP id uh2mr11160691lbb.92.1423396626115;
	Sun, 08 Feb 2015 03:57:06 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	jf3sm1434173lbc.44.2015.02.08.03.57.05 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 08 Feb 2015 03:57:05 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun,  8 Feb 2015 13:56:53 +0200
Message-Id: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
Subject: [meta-raspberrypi][PATCH 1/8] raspberrypi.conf: Split in specific and common conf. files
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
X-List-Received-Date: Sun, 08 Feb 2015 11:57:14 -0000

*.conf files should hold board specific stuff while rpi-base.inc should
include configuration that is common for all Raspberry Pi boards.

Remove MACHINE_KERNEL_PR as we don't use it anymore.

Minor tweaks.

Change-Id: I5e1b12c1d224ac003d2890544beb036f1d5d8643
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-base.inc | 46 +++++++++++++++++++++++++++++++++
 conf/machine/raspberrypi.conf     | 53 +--------------------------------------
 2 files changed, 47 insertions(+), 52 deletions(-)
 create mode 100644 conf/machine/include/rpi-base.inc

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
new file mode 100644
index 0000000..4be28a1
--- /dev/null
+++ b/conf/machine/include/rpi-base.inc
@@ -0,0 +1,46 @@
+include conf/machine/include/rpi-default-settings.inc
+include conf/machine/include/rpi-default-versions.inc
+include conf/machine/include/rpi-default-providers.inc
+
+IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
+
+SERIAL_CONSOLE ?= "115200 ttyAMA0"
+
+XSERVER = " \
+    xserver-xorg \
+    xf86-input-evdev \
+    xf86-input-mouse \
+    xf86-input-keyboard \
+    xf86-video-fbdev \
+    "
+
+# Really supported starting from linux-raspberrypi 3.18.y only
+#KERNEL_DEVICETREE ?= " \
+#    bcm2708-rpi-b.dtb \
+#    bcm2708-rpi-b-plus.dtb \
+#    ds1307-rtc-overlay.dtb \
+#    hifiberry-amp-overlay.dtb \
+#    hifiberry-dac-overlay.dtb \
+#    hifiberry-dacplus-overlay.dtb \
+#    hifiberry-digi-overlay.dtb \
+#    iqaudio-dac-overlay.dtb \
+#    iqaudio-dacplus-overlay.dtb \
+#    lirc-rpi-overlay.dtb \
+#    pcf8523-rtc-overlay.dtb \
+#    pps-gpio-overlay.dtb \
+#    w1-gpio-overlay.dtb \
+#    w1-gpio-pullup-overlay.dtb \
+#    "
+KERNEL_IMAGETYPE ?= "Image"
+
+MACHINE_FEATURES = "kernel26 apm usbhost keyboard vfat ext2 screen touchscreen alsa bluetooth wifi sdio"
+
+# Raspberry Pi has no hardware clock
+MACHINE_FEATURES_BACKFILL_CONSIDERED = "rtc"
+
+MACHINE_EXTRA_RRECOMMENDS += " kernel-modules"
+
+# Set Raspberrypi splash image
+SPLASH = "psplash-raspberrypi"
+
+IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* ${KERNEL_IMAGETYPE};kernel.img"
diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index af0907e..4e887b3 100644
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -1,57 +1,6 @@
 #@TYPE: Machine
 #@NAME: RaspberryPi Development Board
 #@DESCRIPTION: Machine configuration for the RaspberryPi http://www.raspberrypi.org/ Board
-#@MAINTAINER: John Willis
 
-include conf/machine/include/rpi-default-settings.inc
-include conf/machine/include/rpi-default-versions.inc
-include conf/machine/include/rpi-default-providers.inc
 require conf/machine/include/tune-arm1176jzf-s.inc
-
-IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
-
-SERIAL_CONSOLE = "115200 ttyAMA0"
-
-MACHINE_KERNEL_PR = "r5"
-
-XSERVER = " \
-	xserver-xorg \
-	xf86-input-evdev \
-	xf86-input-mouse \
-	xf86-input-keyboard \
-	xf86-video-fbdev \
-"
-
-KERNEL_IMAGETYPE ?= "Image"
-
-# Really supported starting from linux-rapsberry 3.18.y only !
-#KERNEL_DEVICETREE ?= " \
-#	bcm2708-rpi-b.dtb \
-#	bcm2708-rpi-b-plus.dtb \
-#	ds1307-rtc-overlay.dtb \
-#	hifiberry-amp-overlay.dtb \
-#	hifiberry-dac-overlay.dtb \
-#	hifiberry-dacplus-overlay.dtb \
-#	hifiberry-digi-overlay.dtb \
-#	iqaudio-dac-overlay.dtb \
-#	iqaudio-dacplus-overlay.dtb \
-#	lirc-rpi-overlay.dtb \
-#	pcf8523-rtc-overlay.dtb \
-#	pps-gpio-overlay.dtb \
-#	w1-gpio-overlay.dtb \
-#	w1-gpio-pullup-overlay.dtb \
-#	"
-
-MACHINE_FEATURES = "kernel26 apm usbhost keyboard vfat ext2 screen touchscreen alsa bluetooth wifi sdio"
-
-#RaspberryPi has no hardware clock
-MACHINE_FEATURES_BACKFILL_CONSIDERED = "rtc"
-
-MACHINE_EXTRA_RRECOMMENDS += " \
-	kernel-modules \
-"
-
-# Set raspberrypi splash image
-SPLASH = "psplash-raspberrypi"
-
-IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* ${KERNEL_IMAGETYPE};kernel.img"
+include conf/machine/include/rpi-base.inc
-- 
2.1.0


