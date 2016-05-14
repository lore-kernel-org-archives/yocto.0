Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A9CCE00D47; Fri, 13 May 2016 23:35:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 519 seconds by postgrey-1.32 at yocto-www;
	Fri, 13 May 2016 23:35:15 PDT
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D39DE00D42
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 23:35:15 -0700 (PDT)
Received: from localhost.localdomain (111-250-208-151.dynamic.hinet.net
	[111.250.208.151])
	by msfrf2603.sfr.fr (SMTP Server) with ESMTP id 817C11C000C28;
	Sat, 14 May 2016 08:26:40 +0200 (CEST)
Received: from localhost.localdomain (111-250-208-151.dynamic.hinet.net
	[111.250.208.151])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2603.sfr.fr (SMTP Server) with ESMTPSA;
	Sat, 14 May 2016 08:26:38 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Sat, 14 May 2016 14:26:16 +0800
Message-Id: <1463207176-47917-2-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1463207176-47917-1-git-send-email-herve.jourdain@neuf.fr>
References: <1463207176-47917-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/1] Support for .dtbo files for dtb overlays, required by firmware after 2016/04/12
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
X-List-Received-Date: Sat, 14 May 2016 06:35:18 -0000

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 classes/linux-raspberrypi-base.bbclass             |  4 +--
 classes/sdcard_image-rpi.bbclass                   |  6 ++--
 conf/machine/include/rpi-base.inc                  | 30 +++++++++----------
 .../0002-fix-dtbo-rules.patch                      | 35 ++++++++++++++++++++++
 .../0001-fix-dtbo-rules.patch                      | 13 ++++++++
 recipes-kernel/linux/linux-raspberrypi_4.1.bb      |  1 +
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
 7 files changed, 70 insertions(+), 20 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0002-fix-dtbo-rules.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch

diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberrypi-base.bbclass
index 40beef1..f2f0a5a 100644
--- a/classes/linux-raspberrypi-base.bbclass
+++ b/classes/linux-raspberrypi-base.bbclass
@@ -32,8 +32,8 @@ def get_dts(d, ver):
 def split_overlays(d, out):
     dts = get_dts(d, None)
     if out:
-        overlays = oe.utils.str_filter_out('\S+\-overlay\.dtb$', dts, d)
+        overlays = oe.utils.str_filter_out('\S+\.dtbo$', dts, d)
     else:
-        overlays = oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d)
+        overlays = oe.utils.str_filter('\S+\.dtbo$', dts, d)
 
     return overlays
diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 4dfd7a3..e510ce0 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -110,7 +110,7 @@ IMAGE_CMD_rpi-sdimg () {
 		;;
 	*)
 		if test -n "${DTS}"; then
-			# Device Tree Overlays are assumed to be suffixed by '-overlay.dtb' string and will be put in a dedicated folder
+			# Device Tree Overlays are assumed to be suffixed by '.dtbo' string and will be put in a dedicated folder
 			DT_OVERLAYS="${@split_overlays(d, 0)}"
 			DT_ROOT="${@split_overlays(d, 1)}"
 
@@ -124,9 +124,9 @@ IMAGE_CMD_rpi-sdimg () {
 			# Copy device tree overlays to dedicated folder
 			mmd -i ${WORKDIR}/boot.img overlays
 			for DTB in ${DT_OVERLAYS}; do
-				DTB_BASE_NAME=`basename ${DTB} .dtb`
+				DTB_BASE_NAME=`basename ${DTB} ".dtbo"`
 
-				mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTB_BASE_NAME}.dtb ::overlays/${DTB_BASE_NAME}.dtb
+				mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTB_BASE_NAME}.dtbo ::overlays/${DTB_BASE_NAME}.dtbo
 			done
 		fi
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::${SDIMG_KERNELIMAGE}
diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 56ca83e..47eb23b 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -22,21 +22,21 @@ KERNEL_DEVICETREE ?= " \
     bcm2709-rpi-2-b.dtb \
     bcm2710-rpi-3-b.dtb \
     \
-    overlays/hifiberry-amp-overlay.dtb \
-    overlays/hifiberry-dac-overlay.dtb \
-    overlays/hifiberry-dacplus-overlay.dtb \
-    overlays/hifiberry-digi-overlay.dtb \
-    overlays/i2c-rtc-overlay.dtb \
-    overlays/iqaudio-dac-overlay.dtb \
-    overlays/iqaudio-dacplus-overlay.dtb \
-    overlays/lirc-rpi-overlay.dtb \
-    overlays/pitft22-overlay.dtb \
-    overlays/pitft28-resistive-overlay.dtb \
-    overlays/pps-gpio-overlay.dtb \
-    overlays/rpi-ft5406-overlay.dtb \
-    overlays/w1-gpio-overlay.dtb \
-    overlays/w1-gpio-pullup-overlay.dtb \
-    overlays/pi3-miniuart-bt-overlay.dtb \
+    overlays/hifiberry-amp.dtbo \
+    overlays/hifiberry-dac.dtbo \
+    overlays/hifiberry-dacplus.dtbo \
+    overlays/hifiberry-digi.dtbo \
+    overlays/i2c-rtc.dtbo \
+    overlays/iqaudio-dac.dtbo \
+    overlays/iqaudio-dacplus.dtbo \
+    overlays/lirc-rpi.dtbo \
+    overlays/pitft22.dtbo \
+    overlays/pitft28-resistive.dtbo \
+    overlays/pps-gpio.dtbo \
+    overlays/rpi-ft5406.dtbo \
+    overlays/w1-gpio.dtbo \
+    overlays/w1-gpio-pullup.dtbo \
+    overlays/pi3-miniuart-bt.dtbo \
     "
 KERNEL_IMAGETYPE ?= "Image"
 
diff --git a/recipes-kernel/linux/linux-raspberrypi-4.1/0002-fix-dtbo-rules.patch b/recipes-kernel/linux/linux-raspberrypi-4.1/0002-fix-dtbo-rules.patch
new file mode 100644
index 0000000..25564c2
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-4.1/0002-fix-dtbo-rules.patch
@@ -0,0 +1,35 @@
+diff --git a/arch/arm/Makefile b/arch/arm/Makefile
+index afd559d..06819fd 100644
+--- a/arch/arm/Makefile
++++ b/arch/arm/Makefile
+@@ -322,6 +322,8 @@ $(INSTALL_TARGETS):
+ 
+ %.dtb: | scripts
+ 	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
++%.dtbo: | scripts
++	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
+ 
+ PHONY += dtbs dtbs_install
+ 
+diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
+index 79e8661..d9bc367 100644
+--- a/scripts/Makefile.lib
++++ b/scripts/Makefile.lib
+@@ -292,6 +292,17 @@ cmd_dtc = mkdir -p $(dir ${dtc-tmp}) ; \
+ $(obj)/%.dtb: $(src)/%.dts FORCE
+ 	$(call if_changed_dep,dtc)
+ 
++quiet_cmd_dtco = DTCO    $@
++cmd_dtco = mkdir -p $(dir ${dtc-tmp}) ; \
++	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
++	$(objtree)/scripts/dtc/dtc -@ -H epapr -O dtb -o $@ -b 0 \
++		-i $(dir $<) $(DTC_FLAGS) \
++		-d $(depfile).dtc.tmp $(dtc-tmp) ; \
++	cat $(depfile).pre.tmp $(depfile).dtc.tmp > $(depfile)
++
++$(obj)/%.dtbo: $(src)/%-overlay.dts FORCE
++	$(call if_changed_dep,dtco)
++
+ dtc-tmp = $(subst $(comma),_,$(dot-target).dts.tmp)
+ 
+ # Bzip2
diff --git a/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch b/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
new file mode 100644
index 0000000..ddce445
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
@@ -0,0 +1,13 @@
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
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
index 79fac66..4d02ea6 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
@@ -5,6 +5,7 @@ LINUX_VERSION ?= "4.1.21"
 SRCREV = "ff45bc0e8917c77461b2901e2743e6339bb70413"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y \
            file://0001-dts-add-overlay-for-pitft22.patch \
+           file://0002-fix-dtbo-rules.patch \
           "
 
 require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index f6e1005..831ac5a 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -4,5 +4,6 @@ LINUX_VERSION ?= "4.4.8"
 
 SRCREV = "fe7ad6aa5c6940817fe971d80a7b2a1d6052190a"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
+           file://0001-fix-dtbo-rules.patch \
 "
 require linux-raspberrypi.inc
-- 
2.7.4


