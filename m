Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6D3CE00924; Sun, 15 Jan 2017 23:26:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.198 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EF4BE006EA
	for <yocto@yoctoproject.org>; Sun, 15 Jan 2017 23:26:41 -0800 (PST)
Received: from mfilter14-d.gandi.net (mfilter14-d.gandi.net [217.70.178.142])
	by relay6-d.mail.gandi.net (Postfix) with ESMTP id A6E20FB8B9;
	Mon, 16 Jan 2017 08:26:40 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter14-d.gandi.net
Received: from relay6-d.mail.gandi.net ([IPv6:::ffff:217.70.183.198])
	by mfilter14-d.gandi.net (mfilter14-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id PUS8j7kS0byI; Mon, 16 Jan 2017 08:26:39 +0100 (CET)
X-Originating-IP: 5.9.142.21
Received: from autobuilder.betafive.co.uk (srv1.betafive.co.uk [5.9.142.21])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id EAF34FB883;
	Mon, 16 Jan 2017 08:26:38 +0100 (CET)
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Mon, 16 Jan 2017 07:26:56 +0000
Message-Id: <1484551617-11222-2-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1484551617-11222-1-git-send-email-paul@paulbarker.me.uk>
References: <1484551617-11222-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi: Drop v4.7
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
X-List-Received-Date: Mon, 16 Jan 2017 07:26:44 -0000

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 .../0001-fix-dtbo-rules.patch                      | 44 ----------------------
 recipes-kernel/linux/linux-raspberrypi_4.7.bb      |  9 -----
 2 files changed, 53 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.7.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch b/recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
deleted file mode 100644
index 5113e23..0000000
--- a/recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
+++ /dev/null
@@ -1,44 +0,0 @@
-From 13c8784da3dbd977f64cec740eba775b6fab11c2 Mon Sep 17 00:00:00 2001
-From: Herve Jourdain <herve.jourdain@neuf.fr>
-Date: Fri, 20 May 2016 16:02:23 +0800
-Subject: [yocto][meta-raspberrypi][PATCH v4 4/5] linux-raspberrypi_4.4.inc:
- support for .dtbo files for dtb overlays
-
-Upstream-Status: Pending
-
-Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
-Patch the kernel, which has faulty rules to generate .dtbo the way yocto does
-
-Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
----
- .../0001-fix-dtbo-rules.patch                      | 27 ++++++++++++++++++++++
- 1 file changed, 27 insertions(+)
- create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
-
-diff --git a/arch/arm/Makefile b/arch/arm/Makefile
-index a2e7cf7..673c1cb 100644
---- a/arch/arm/Makefile
-+++ b/arch/arm/Makefile
-@@ -333,6 +333,8 @@ $(INSTALL_TARGETS):
- 
- %.dtb: | scripts
- 	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
-+%.dtbo: | scripts
-+	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
- 
- PHONY += dtbs dtbs_install
- 
-diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
-index 3079c4f..6cc3766 100644
---- a/scripts/Makefile.lib
-+++ b/scripts/Makefile.lib
-@@ -293,7 +293,8 @@ $(obj)/%.dtb: $(src)/%.dts FORCE
- 	$(call if_changed_dep,dtc)
- 
- quiet_cmd_dtco = DTCO    $@
--cmd_dtco = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
-+cmd_dtco = mkdir -p $(dir ${dtc-tmp}) ; \
-+	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
- 	$(objtree)/scripts/dtc/dtc -@ -H epapr -O dtb -o $@ -b 0 \
- 		-i $(dir $<) $(DTC_FLAGS) \
- 		-d $(depfile).dtc.tmp $(dtc-tmp) ; \
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.7.bb b/recipes-kernel/linux/linux-raspberrypi_4.7.bb
deleted file mode 100644
index 0315f8f..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_4.7.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
-
-LINUX_VERSION ?= "4.7.7"
-
-SRCREV = "a45a35c08598b23f9fd82e49c83b46c7d536244f"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.7.y \
-           file://0001-fix-dtbo-rules.patch \
-"
-require linux-raspberrypi.inc
-- 
2.1.4


