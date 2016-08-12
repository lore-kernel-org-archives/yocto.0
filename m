Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E36EE0103C; Thu, 11 Aug 2016 18:06:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15C81E01252
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:16 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id h186so581229pfg.2
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=FsWP1f4ZPm9JqZDZfkkAO4I2aVrnQgsKFTzD8e+yrQs=;
	b=AfzePFpEJavj4xZIZY0E2Dbd00d1w77/Mau9AKxLtWdwzecAT1gkQyr5QvH978gIU5
	NNRCBv/X4+Qnbb9DydFHepYZqwRr2i+5v6bORZh80YSP3Nizv2YQN6axCopSZ/bl6q4+
	JHtyUkUb+u5BIrwpO4vIcSuU59XTKI5F2Cjmal+L2UXrgYnBt1IhoyKPkgERiML2LEvN
	+QRVjHeoDvV+srOQVYDKVgkMXkEVB9DL5mryAX8iAHwxYaiEL10oufJyV4RGjOcpfgKh
	w1L12aaOecQI+9Fy2qHxYG53eZbzNntR1k4rwdU0mBUKmnkL1PGX8Nd7JKx/pkNkaJ1/
	Tdvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=FsWP1f4ZPm9JqZDZfkkAO4I2aVrnQgsKFTzD8e+yrQs=;
	b=UO/+e9A68PbxmtJNmnVGKG2jPYSyci4zJ88cWomUddiZA3LpJ34QuQO3QI/cP6K5qE
	a16nMAdXhWfgi2E17iKv/ixdksG06/w57meVtfet39KPLQ0G5viqpWd2pxmjX7p7fezQ
	sNxWjm6kGbBqfQbmcCoWYHF1Fml9oUfIcYSlJQVow4YXLvkSDRr552U9o0KchTipTi+q
	4KuAM388m/JSnblw/Zl1y9luqSXumR2gZpQQ8b40eXQm9KBB4QEOBMUgw+gRecKAUoMo
	WCrD+/MBiY9MmW0SHzSK0p3eDLkstOOF+V8HKbF9IJmX9F6jYg+YH15Og9FkThpmJUYq
	W/YQ==
X-Gm-Message-State: AEkoouvt1wyklqWHBsXg8hiU3K6lY9HVVdvSCUsUuEy0QSFZaHxKw1Yer0oNcxndZkzhvA==
X-Received: by 10.98.135.13 with SMTP id i13mr22469525pfe.44.1470963975590;
	Thu, 11 Aug 2016 18:06:15 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:14 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:05:46 -0700
Message-Id: <20160812010608.31182-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
Subject: [meta-raspberrypi][PATCH 01/23] linux-raspberrypi_4.4.bb: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:17 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
Patch the kernel, which has faulty rules to generate .dtbo the way yocto does

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
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
2.9.2


