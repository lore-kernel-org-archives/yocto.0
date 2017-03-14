Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C108E0094C; Tue, 14 Mar 2017 03:59:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.178.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B80DE0050B
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 03:59:31 -0700 (PDT)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 53DEA47E7BF
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 11:33:24 +0100 (CET)
Received: from mfilter37-d.gandi.net (mfilter37-d.gandi.net [217.70.178.168])
	by relay4-d.mail.gandi.net (Postfix) with ESMTP id 15A7F17211E;
	Tue, 14 Mar 2017 11:33:23 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter37-d.gandi.net
Received: from relay4-d.mail.gandi.net ([IPv6:::ffff:217.70.183.196])
	by mfilter37-d.gandi.net (mfilter37-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id RknomON7XdQI; Tue, 14 Mar 2017 11:33:21 +0100 (CET)
X-Originating-IP: 82.34.23.153
Received: from host0.betafive.co.uk
	(cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net [82.34.23.153])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 01F5B1720F1;
	Tue, 14 Mar 2017 11:33:20 +0100 (CET)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 3DE454264615; Tue, 14 Mar 2017 10:32:50 +0000 (GMT)
From: Paul Barker <pbarker@toganlabs.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Mar 2017 10:32:35 +0000
Message-Id: <20170314103237.9533-2-pbarker@toganlabs.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170314103237.9533-1-pbarker@toganlabs.com>
References: <20170314103237.9533-1-pbarker@toganlabs.com>
Subject: [meta-raspberrypi][morty][PATCH 1/3] linux-raspberrypi_4.9.bb: Update to 4.9.13
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
X-List-Received-Date: Tue, 14 Mar 2017 10:59:33 -0000

From: Khem Raj <raj.khem@gmail.com>

drop upstreamed patch

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...-Add-rules-for-.dtbo-files-for-dts-overla.patch | 29 ----------------------
 recipes-kernel/linux/linux-raspberrypi_4.9.bb      |  5 ++--
 2 files changed, 2 insertions(+), 32 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch

diff --git a/recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch b/recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
deleted file mode 100644
index e8bc52e..0000000
--- a/recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-From 922ce1fd0eb810b713f6ffa9a7ab97c11b6e38cf Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Fri, 10 Feb 2017 17:57:08 -0800
-Subject: [PATCH] build/arm64: Add rules for .dtbo files for dts overlays
-
-We now create overlays as .dtbo files.
-
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
- arch/arm64/Makefile | 3 +++
- 1 file changed, 3 insertions(+)
-
-diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
-index 3635b8662724..822fefeb1cd0 100644
---- a/arch/arm64/Makefile
-+++ b/arch/arm64/Makefile
-@@ -113,6 +113,9 @@ zinstall install:
- %.dtb: scripts
- 	$(Q)$(MAKE) $(build)=$(boot)/dts $(boot)/dts/$@
- 
-+%.dtbo: | scripts
-+	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
-+
- PHONY += dtbs dtbs_install
- 
- dtbs: prepare scripts
--- 
-2.11.1
-
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index dcca369..7733bf1 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,9 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.10"
+LINUX_VERSION ?= "4.9.13"
 
-SRCREV = "095c4480e1f623bdc8a221a171ef13b2223706b1"
+SRCREV = "28ea32b9afb5d813986c4ab940c26fe298d80ed2"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
-           file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
 "
 require linux-raspberrypi.inc
-- 
2.11.0


