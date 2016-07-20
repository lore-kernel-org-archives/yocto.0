Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3423E00D99; Wed, 20 Jul 2016 15:01:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD789E00D99
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 15:01:34 -0700 (PDT)
Received: from localhost.localdomain (unknown [8.36.234.10])
	by msfrf2633.sfr.fr (SMTP Server) with ESMTP id 218ED1C000C21;
	Thu, 21 Jul 2016 00:01:34 +0200 (CEST)
Received: from localhost.localdomain (unknown [8.36.234.10])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2633.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 21 Jul 2016 00:01:33 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Thu, 21 Jul 2016 06:00:36 +0800
Message-Id: <1469052039-7746-2-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
References: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v6 1/4] linux-raspberrypi_4.4.bb: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Wed, 20 Jul 2016 22:01:37 -0000

Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
Patch the kernel, which has faulty rules to generate .dtbo the way yocto does

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 .../0001-fix-dtbo-rules.patch                      | 44 ++++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
 2 files changed, 45 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch

diff --git a/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch b/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
new file mode 100644
index 0000000..5113e23
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
@@ -0,0 +1,44 @@
+From 13c8784da3dbd977f64cec740eba775b6fab11c2 Mon Sep 17 00:00:00 2001
+From: Herve Jourdain <herve.jourdain@neuf.fr>
+Date: Fri, 20 May 2016 16:02:23 +0800
+Subject: [yocto][meta-raspberrypi][PATCH v4 4/5] linux-raspberrypi_4.4.inc:
+ support for .dtbo files for dtb overlays
+
+Upstream-Status: Pending
+
+Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
+Patch the kernel, which has faulty rules to generate .dtbo the way yocto does
+
+Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
+---
+ .../0001-fix-dtbo-rules.patch                      | 27 ++++++++++++++++++++++
+ 1 file changed, 27 insertions(+)
+ create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
+
+diff --git a/arch/arm/Makefile b/arch/arm/Makefile
+index a2e7cf7..673c1cb 100644
+--- a/arch/arm/Makefile
++++ b/arch/arm/Makefile
+@@ -333,6 +333,8 @@ $(INSTALL_TARGETS):
+ 
+ %.dtb: | scripts
+ 	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
++%.dtbo: | scripts
++	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
+ 
+ PHONY += dtbs dtbs_install
+ 
+diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
+index 3079c4f..6cc3766 100644
+--- a/scripts/Makefile.lib
++++ b/scripts/Makefile.lib
+@@ -293,7 +293,8 @@ $(obj)/%.dtb: $(src)/%.dts FORCE
+ 	$(call if_changed_dep,dtc)
+ 
+ quiet_cmd_dtco = DTCO    $@
+-cmd_dtco = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
++cmd_dtco = mkdir -p $(dir ${dtc-tmp}) ; \
++	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
+ 	$(objtree)/scripts/dtc/dtc -@ -H epapr -O dtb -o $@ -b 0 \
+ 		-i $(dir $<) $(DTC_FLAGS) \
+ 		-d $(depfile).dtc.tmp $(dtc-tmp) ; \
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index 3291ffd..b13925c 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -4,5 +4,6 @@ LINUX_VERSION ?= "4.4.13"
 
 SRCREV = "680be5e27a9593cf26079c6e5744a04cc2809d13"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
+           file://0001-fix-dtbo-rules.patch \
 "
 require linux-raspberrypi.inc
-- 
2.7.4


