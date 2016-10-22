Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31E82E00BC1; Sat, 22 Oct 2016 12:50:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED09CE007C2
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 12:50:22 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id o81so3714822wma.2
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 12:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Hy45oaNw7op4gLmmzVzKr7ZCM8gVtfxXRxSr37gaOFM=;
	b=yIhf08P9y5biTjFEi6CmZBEIoMMRJZuKzhN96+mbbJFbVgWeWbx1utQggNeatQ6GsD
	pL34fAfrj/h2kqEULfkH1rhpXRLAjDcFYdaAwD7x8/rsCpUSI7g8lDVM+7fu6M8/WfMJ
	FzblzG7lmdKAmOuKzqKGbJfgCfgaBNJJEJHdhRVY+Eo71If279yfGsVXo3kHLQBmESgN
	aQN7lWOrWKwiOpqfQv5iKbFc/IKizd3g5h97jXMyon6xrKwnC+a/sZtcncWna/3pqhpf
	DEkYjMz2b2vq6XAvSYVSGPBdBATjLlXxGbucw0mLWAFZVVQzhq/xYcWEM4nrTcS1o+rE
	h9gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=Hy45oaNw7op4gLmmzVzKr7ZCM8gVtfxXRxSr37gaOFM=;
	b=JFbdsnq5zjms+jXe08iLDv6NDK+tqWUq8DvaxTNzEqB2P4PruE7U83jRXod0KKiScK
	BdNKvlTn5DF+bDEoKkv+d8/FpIN1o3XXkMhbwSZ6Na9atCXjj/1R3Dgt7RQNFnZn/Vmy
	09ZxU2lwoiCNcQ5V2J4e4QJdZ9hloJoj4aYUjWRA8lzorpidLOIT3AQ4aRM0ZLh16NDO
	q/nP/+7XC4ZsVpbGkHk9AcXXSSx2HlvYXOHz5j5iaLwHxVMn3sCgXARPeyb4BZM9I/kA
	/RuPc1v9fLTOVeh9C/fFfZbl+exftRF9tREQ93J8Tp/DzFPW3X4ZmwlXzboVzfKs1eQR
	YL1Q==
X-Gm-Message-State: AA6/9RmP8NbooITbwYsiciEn4Hp8cwh9AXaiPHEL7dKgw/gELCf34lC5OAheCyWvVfA3gg==
X-Received: by 10.28.133.202 with SMTP id h193mr14727725wmd.85.1477165821714; 
	Sat, 22 Oct 2016 12:50:21 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	yo1sm9896023wjc.16.2016.10.22.12.50.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 22 Oct 2016 12:50:20 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: Yocto Project <yocto@yoctoproject.org>
Date: Sat, 22 Oct 2016 20:49:55 +0100
Message-Id: <1477165797-27121-3-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1477165797-27121-1-git-send-email-paul@paulbarker.me.uk>
References: <1477165797-27121-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH V2 2/4] rpi-u-boot-scr: Add recipe to create u-boot boot script
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
X-List-Received-Date: Sat, 22 Oct 2016 19:50:26 -0000

Upstream u-boot searches the boot partition for a script named 'boot.scr'. If
this file exists it is executed as a sequence of u-boot commands in order to
boot the system. This script must be compiled using the mkimage command to
ensure that it is understood by u-boot.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 .../rpi-u-boot-scr/files/raspberrypi/boot.cmd       |  6 ++++++
 .../rpi-u-boot-scr/files/raspberrypi0/boot.cmd      |  6 ++++++
 .../rpi-u-boot-scr/files/raspberrypi2/boot.cmd      |  6 ++++++
 .../rpi-u-boot-scr/files/raspberrypi3/boot.cmd      |  6 ++++++
 recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb        | 21 +++++++++++++++++++++
 5 files changed, 45 insertions(+)
 create mode 100644 recipes-bsp/rpi-u-boot-scr/files/raspberrypi/boot.cmd
 create mode 100644 recipes-bsp/rpi-u-boot-scr/files/raspberrypi0/boot.cmd
 create mode 100644 recipes-bsp/rpi-u-boot-scr/files/raspberrypi2/boot.cmd
 create mode 100644 recipes-bsp/rpi-u-boot-scr/files/raspberrypi3/boot.cmd
 create mode 100644 recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb

diff --git a/recipes-bsp/rpi-u-boot-scr/files/raspberrypi/boot.cmd b/recipes-bsp/rpi-u-boot-scr/files/raspberrypi/boot.cmd
new file mode 100644
index 0000000..c86c758
--- /dev/null
+++ b/recipes-bsp/rpi-u-boot-scr/files/raspberrypi/boot.cmd
@@ -0,0 +1,6 @@
+setenv fdtfile bcm2708-rpi-b.dtb
+setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd'
+mmc dev 0
+fatload mmc 0:1 ${kernel_addr_r} uImage
+fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
+bootm ${kernel_addr_r} - ${fdt_addr_r}
diff --git a/recipes-bsp/rpi-u-boot-scr/files/raspberrypi0/boot.cmd b/recipes-bsp/rpi-u-boot-scr/files/raspberrypi0/boot.cmd
new file mode 100644
index 0000000..c86c758
--- /dev/null
+++ b/recipes-bsp/rpi-u-boot-scr/files/raspberrypi0/boot.cmd
@@ -0,0 +1,6 @@
+setenv fdtfile bcm2708-rpi-b.dtb
+setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd'
+mmc dev 0
+fatload mmc 0:1 ${kernel_addr_r} uImage
+fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
+bootm ${kernel_addr_r} - ${fdt_addr_r}
diff --git a/recipes-bsp/rpi-u-boot-scr/files/raspberrypi2/boot.cmd b/recipes-bsp/rpi-u-boot-scr/files/raspberrypi2/boot.cmd
new file mode 100644
index 0000000..aa4ea64
--- /dev/null
+++ b/recipes-bsp/rpi-u-boot-scr/files/raspberrypi2/boot.cmd
@@ -0,0 +1,6 @@
+setenv fdtfile bcm2709-rpi-2-b.dtb
+setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd'
+mmc dev 0
+fatload mmc 0:1 ${kernel_addr_r} uImage
+fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
+bootm ${kernel_addr_r} - ${fdt_addr_r}
diff --git a/recipes-bsp/rpi-u-boot-scr/files/raspberrypi3/boot.cmd b/recipes-bsp/rpi-u-boot-scr/files/raspberrypi3/boot.cmd
new file mode 100644
index 0000000..2950856
--- /dev/null
+++ b/recipes-bsp/rpi-u-boot-scr/files/raspberrypi3/boot.cmd
@@ -0,0 +1,6 @@
+setenv fdtfile bcm2710-rpi-3-b.dtb
+setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd'
+mmc dev 0
+fatload mmc 0:1 ${kernel_addr_r} uImage
+fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
+bootm ${kernel_addr_r} - ${fdt_addr_r}
diff --git a/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb b/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
new file mode 100644
index 0000000..4936dcf
--- /dev/null
+++ b/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
@@ -0,0 +1,21 @@
+SUMMARY = "U-boot boot scripts for Raspberry Pi"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+COMPATIBLE_MACHINE = "rpi"
+
+DEPENDS = "u-boot-mkimage-native"
+
+SRC_URI = "file://boot.cmd"
+
+do_compile() {
+    mkimage -A arm -T script -C none -n "Boot script" -d "${WORKDIR}/boot.cmd" boot.scr
+}
+
+inherit deploy
+
+do_deploy() {
+    install -d ${DEPLOYDIR}
+    install -m 0644 boot.scr ${DEPLOYDIR}
+}
+
+addtask do_deploy after do_compile before do_build
-- 
2.1.4


