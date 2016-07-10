Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20A7CE00D55; Sun, 10 Jul 2016 16:18:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BB8FE00D50
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2016 16:18:11 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id x83so12935929wma.3
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2016 16:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=UHF7qiygpc7bX01dLvcZ8hHD/+XScK31VMTv7TOLFp0=;
	b=st0B/n2VUjYCmc9kPDzkdVkK3RQjdUvQ8EeAL+P8o2fkkMsptIrVzFhS1WJfbbCtxN
	CgRWVKiz0U9NFgkP2l684MxL1yF/hzDzd2ltpWOclWhq3v+ABFisoe0UdW/0C92fO/OJ
	Byz+ZYVpRrN55CvP+0fIJJt590+5Vv0kwibgxoq20cAzK9gPu8zvF4hiutnG9emPRDuw
	Hm58JUCbcRbcgkAaNB4ClZU93o6L1gEaEFpRC0GfGyEpUKSP6ZT9cjCjn9qiERF11aJB
	/XIYNKNMo6XEr+r4WVSrYVMHjdXt2QPgIHaY/XhIhTlCoGq/oOF90LE3mpjEm0xp2xZk
	mdvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=UHF7qiygpc7bX01dLvcZ8hHD/+XScK31VMTv7TOLFp0=;
	b=NeXyLZu+m183vTrZGGMrcoE1tYTYFJ6lNy7XLwQNZFhe84rcwrpOt/EJjbvx8kNZKz
	9Y/YJoseMhmz9FBlzo9eGixeclHvJdUeyf8EqmOetFrlQSv+pF4OXueRwcaC8tdpxcod
	SrTtDt6d0iPkvbn19h6AiFrD/bxkrlL/Vy9W9VkWsH6NWFlOcfgaxDqNxU3UowKcsKIl
	o4YQjxiUE9m4SWacPuNK8jshBt71F9J+OaWVl7OipWMq70LbMU2KdrpKeSLLhnyP+k3S
	uROtoP9JKxYJEeRsEmwSUWZbGYgp2DAA6AIlOFg9caujoN8v5v7VlNrItT7k7cndyF4+
	UqJg==
X-Gm-Message-State: ALyK8tIANat2G+DIRE+rzo88ZxMlcZc1AryN5OyqJU61eiD/xu3BvrlPA0CvodoQmVhdwA==
X-Received: by 10.28.85.133 with SMTP id j127mr14829638wmb.103.1468192690305; 
	Sun, 10 Jul 2016 16:18:10 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	x83sm17787086wmx.9.2016.07.10.16.18.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 10 Jul 2016 16:18:09 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Mon, 11 Jul 2016 00:17:55 +0100
Message-Id: <1468192676-22030-3-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1468192676-22030-1-git-send-email-paul@paulbarker.me.uk>
References: <1468192676-22030-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH 2/3] u-boot-scr: Add recipe to create u-boot boot script
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
X-List-Received-Date: Sun, 10 Jul 2016 23:18:14 -0000

Upstream u-boot searches the boot partition for a script named 'boot.scr'. If
this file exists it is executed as a sequence of u-boot commands in order to
boot the system. This script must be compiled using the mkimage command to
ensure that it is understood by u-boot.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-bsp/u-boot-scr/files/raspberrypi/boot.cmd  |  6 ++++++
 recipes-bsp/u-boot-scr/files/raspberrypi0/boot.cmd |  6 ++++++
 recipes-bsp/u-boot-scr/files/raspberrypi2/boot.cmd |  6 ++++++
 recipes-bsp/u-boot-scr/files/raspberrypi3/boot.cmd |  6 ++++++
 recipes-bsp/u-boot-scr/u-boot-scr.bb               | 20 ++++++++++++++++++++
 5 files changed, 44 insertions(+)
 create mode 100644 recipes-bsp/u-boot-scr/files/raspberrypi/boot.cmd
 create mode 100644 recipes-bsp/u-boot-scr/files/raspberrypi0/boot.cmd
 create mode 100644 recipes-bsp/u-boot-scr/files/raspberrypi2/boot.cmd
 create mode 100644 recipes-bsp/u-boot-scr/files/raspberrypi3/boot.cmd
 create mode 100644 recipes-bsp/u-boot-scr/u-boot-scr.bb

diff --git a/recipes-bsp/u-boot-scr/files/raspberrypi/boot.cmd b/recipes-bsp/u-boot-scr/files/raspberrypi/boot.cmd
new file mode 100644
index 0000000..c86c758
--- /dev/null
+++ b/recipes-bsp/u-boot-scr/files/raspberrypi/boot.cmd
@@ -0,0 +1,6 @@
+setenv fdtfile bcm2708-rpi-b.dtb
+setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd'
+mmc dev 0
+fatload mmc 0:1 ${kernel_addr_r} uImage
+fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
+bootm ${kernel_addr_r} - ${fdt_addr_r}
diff --git a/recipes-bsp/u-boot-scr/files/raspberrypi0/boot.cmd b/recipes-bsp/u-boot-scr/files/raspberrypi0/boot.cmd
new file mode 100644
index 0000000..c86c758
--- /dev/null
+++ b/recipes-bsp/u-boot-scr/files/raspberrypi0/boot.cmd
@@ -0,0 +1,6 @@
+setenv fdtfile bcm2708-rpi-b.dtb
+setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd'
+mmc dev 0
+fatload mmc 0:1 ${kernel_addr_r} uImage
+fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
+bootm ${kernel_addr_r} - ${fdt_addr_r}
diff --git a/recipes-bsp/u-boot-scr/files/raspberrypi2/boot.cmd b/recipes-bsp/u-boot-scr/files/raspberrypi2/boot.cmd
new file mode 100644
index 0000000..aa4ea64
--- /dev/null
+++ b/recipes-bsp/u-boot-scr/files/raspberrypi2/boot.cmd
@@ -0,0 +1,6 @@
+setenv fdtfile bcm2709-rpi-2-b.dtb
+setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd'
+mmc dev 0
+fatload mmc 0:1 ${kernel_addr_r} uImage
+fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
+bootm ${kernel_addr_r} - ${fdt_addr_r}
diff --git a/recipes-bsp/u-boot-scr/files/raspberrypi3/boot.cmd b/recipes-bsp/u-boot-scr/files/raspberrypi3/boot.cmd
new file mode 100644
index 0000000..2950856
--- /dev/null
+++ b/recipes-bsp/u-boot-scr/files/raspberrypi3/boot.cmd
@@ -0,0 +1,6 @@
+setenv fdtfile bcm2710-rpi-3-b.dtb
+setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd'
+mmc dev 0
+fatload mmc 0:1 ${kernel_addr_r} uImage
+fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
+bootm ${kernel_addr_r} - ${fdt_addr_r}
diff --git a/recipes-bsp/u-boot-scr/u-boot-scr.bb b/recipes-bsp/u-boot-scr/u-boot-scr.bb
new file mode 100644
index 0000000..310bf3d
--- /dev/null
+++ b/recipes-bsp/u-boot-scr/u-boot-scr.bb
@@ -0,0 +1,20 @@
+SUMMARY = "U-boot boot scripts for Raspberry Pi"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
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


