Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72CA6E00A31; Sun, 19 Feb 2017 03:18:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1404E00A25
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 03:18:43 -0800 (PST)
Received: from mfilter22-d.gandi.net (mfilter22-d.gandi.net [217.70.178.150])
	by relay4-d.mail.gandi.net (Postfix) with ESMTP id 76DAD17209D;
	Sun, 19 Feb 2017 12:18:42 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter22-d.gandi.net
Received: from relay4-d.mail.gandi.net ([IPv6:::ffff:217.70.183.196])
	by mfilter22-d.gandi.net (mfilter22-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id qiyVnykshV05; Sun, 19 Feb 2017 12:18:40 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 30DA91720AE;
	Sun, 19 Feb 2017 12:18:40 +0100 (CET)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 5BFEC402CE28; Sun, 19 Feb 2017 11:18:09 +0000 (GMT)
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Sun, 19 Feb 2017 11:18:04 +0000
Message-Id: <20170219111804.20566-3-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170219111804.20566-1-paul@paulbarker.me.uk>
References: <20170219111804.20566-1-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][morty][PATCH 2/2] linux-raspberrypi_4.9.bb: Upgrade to 4.9.10
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
X-List-Received-Date: Sun, 19 Feb 2017 11:18:45 -0000

From: Khem Raj <raj.khem@gmail.com>

Fix dtbo builds for arm64

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 ...-Add-rules-for-.dtbo-files-for-dts-overla.patch | 29 ++++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_4.9.bb      |  5 ++--
 2 files changed, 32 insertions(+), 2 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch

diff --git a/recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch b/recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
new file mode 100644
index 0000000..e8bc52e
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
@@ -0,0 +1,29 @@
+From 922ce1fd0eb810b713f6ffa9a7ab97c11b6e38cf Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Fri, 10 Feb 2017 17:57:08 -0800
+Subject: [PATCH] build/arm64: Add rules for .dtbo files for dts overlays
+
+We now create overlays as .dtbo files.
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ arch/arm64/Makefile | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
+index 3635b8662724..822fefeb1cd0 100644
+--- a/arch/arm64/Makefile
++++ b/arch/arm64/Makefile
+@@ -113,6 +113,9 @@ zinstall install:
+ %.dtb: scripts
+ 	$(Q)$(MAKE) $(build)=$(boot)/dts $(boot)/dts/$@
+ 
++%.dtbo: | scripts
++	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
++
+ PHONY += dtbs dtbs_install
+ 
+ dtbs: prepare scripts
+-- 
+2.11.1
+
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index cffea1a..dcca369 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,9 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.4"
+LINUX_VERSION ?= "4.9.10"
 
-SRCREV = "8b0be887f834e7eccf0de3edf630003880779a5f"
+SRCREV = "095c4480e1f623bdc8a221a171ef13b2223706b1"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
+           file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
 "
 require linux-raspberrypi.inc
-- 
2.11.0


