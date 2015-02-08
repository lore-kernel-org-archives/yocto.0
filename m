Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B884FE00985; Sun,  8 Feb 2015 03:57:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f51.google.com (mail-la0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8033FE0083D
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 03:57:13 -0800 (PST)
Received: by labgm9 with SMTP id gm9so3908296lab.2
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 03:57:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=2QcYz0a4J9T5WLazFVcEBGzi5t8hReLw2m6Zw6ZIl0I=;
	b=iv+d66CY1VVlN4EQeK1uWtntXVyPej3bhPwDRWrM2tY2SJINFv8e2tCeVDLjsGCwGS
	1VUYzGfNm1HO9sbzUIyDqGPxuUfzJe2CheCMRPz55vnHWVRetdPn8CAjDzvUDblpKTpP
	f8EtIOkvC913/wPBt2a5iVWX2Jw3OMAMcApf5bEmY+kMUOWAtXw5YMc0uxLzCYXmqro2
	yZOo+wUatn77+xoMNMwNkPUvYY49w1IQlqKU+goOzC7ClXZZGcaCAp+IZGZWezg3IiIM
	J5bbl/0Fwr2ds4kAHcT8VgIJF4w4UO86Oqbx8iH9asaeEKMA3W/TbRzHRhM8sPGhOAsM
	IgNw==
X-Gm-Message-State: ALoCoQmPBsDSPIjmEg2QAYfW+Qysdr/5NkYGgPdf7gAdMJsxJpWNfrW9MGvrfWQR5DsezsK4qYq6
X-Received: by 10.112.63.134 with SMTP id g6mr11294349lbs.52.1423396632274;
	Sun, 08 Feb 2015 03:57:12 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	jf3sm1434173lbc.44.2015.02.08.03.57.11 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 08 Feb 2015 03:57:11 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun,  8 Feb 2015 13:57:00 +0200
Message-Id: <1423396620-22510-8-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
References: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 8/8] Add support for Raspberry PI 2
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
X-List-Received-Date: Sun, 08 Feb 2015 11:57:17 -0000

Add machine configuration file.
Change the kernel image name on SD card.
Use the defconfig for this machine (bcm2709_defconfig).

Change-Id: I6549d5f49b1ed32ef4d44aca6f7af4234618c1a8
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 classes/sdcard_image-rpi.bbclass           |  1 +
 conf/machine/raspberrypi2.conf             | 13 +++++++++++++
 recipes-kernel/linux/linux-raspberrypi.inc |  1 +
 3 files changed, 15 insertions(+)
 create mode 100644 conf/machine/raspberrypi2.conf

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 86cf773..1ff664d 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -33,6 +33,7 @@ KERNEL_INITRAMFS ?= ""
 
 # Kernel image name
 SDIMG_KERNELIMAGE_raspberrypi  ?= "kernel.img"
+SDIMG_KERNELIMAGE_raspberrypi2 ?= "kernel7.img"
 
 # Boot partition volume id
 BOOTDD_VOLUME_ID ?= "${MACHINE}"
diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
new file mode 100644
index 0000000..778f5a6
--- /dev/null
+++ b/conf/machine/raspberrypi2.conf
@@ -0,0 +1,13 @@
+#@TYPE: Machine
+#@NAME: RaspberryPi 2 Development Board
+#@DESCRIPTION: Machine configuration for the RaspberryPi 2
+
+# userland is not compiling on RPI 2
+# https://github.com/raspberrypi/userland/issues/214
+PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
+PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
+
+DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
+
+require conf/machine/include/tune-cortexa7.inc
+include conf/machine/include/rpi-base.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index b8afecc..fde68dd 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -15,6 +15,7 @@ PV_append = "+git${SRCREV}"
 
 # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
 KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
+KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
 
 # CMDLINE for raspberrypi
 CMDLINE = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 kgdboc=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
-- 
2.1.0


