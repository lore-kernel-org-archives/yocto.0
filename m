Return-Path: <rafael.carre@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01F28E00B9C; Thu, 11 Feb 2016 03:42:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36427E00B9C
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 03:42:09 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id 128so10122099wmz.3
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 03:42:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=X355GUIkj4n0qIyl7J3JSubOX+OS80us12U9w4J1rLw=;
	b=LPY/C4Fik1hFdPm6bL/pGJace3jQVHZf+6y0AEbQBFFtmBIiR5pZtMTl4FdswBWxEM
	JaIoF+o2usxgCbHXTb9EE9eZS5XpUsqlut6+Q2sUoHYTxKvnK3C21sW3kwb4PUrlPCMQ
	laGibyPw793Hq+GWnkZn0eu3cew8KPppSb+SF6DPdTgWQo+my7GmpYfhOpm5sgqI7gnz
	HY8rBIL+vF7u0mnrmxtNAVKrniKvN22G0EIpb7knNmgugeLLP7L/hoU3wAzbyRW/KbCV
	AmXrS6jw9HVdQUelQ4eYDKyR/Q6mT4BXjbwCgpbJaWvFn7aNZ5dmaY9ynBnFifxaPNsV
	8DNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=X355GUIkj4n0qIyl7J3JSubOX+OS80us12U9w4J1rLw=;
	b=hBgtah83Zm3/QGkgsZ1Xu3/YJipirFgDu2IB0xo1SxHSgGPnJRXe8LdDJL2mtqYhA4
	s9X0P5vTyF7B2oSBhR69UUReEpkSuxqi1MeZShu3AmIi9lrvsc4uu6dAvvgmUvc9Kang
	heRhyJdZHs+bNZxQz8T676tqaBVXpOiJYDg1Arab7v5IEz/J+UbmbfOaiUoLb2Y65o9j
	VkE352vu5PZo8Zq942Ev8YVZaLorptZfygj6FPVdLJjREknaD3lSCgkB0tiGQXnT/jCz
	sSPWUmsC88DZoLLZyhY/gmWcj/L3IF4mMShBHnQRIPEniqcbmCZOc4wUhbODtOBL5Lqu
	/yHQ==
X-Gm-Message-State: AG10YOQNAnhWh3CJfYP/vyydCDH4L2smL5N8lGzY8nyCPiF5mR99sxKeyqiuZPA954XZvA==
X-Received: by 10.194.175.198 with SMTP id cc6mr45954328wjc.24.1455190928865; 
	Thu, 11 Feb 2016 03:42:08 -0800 (PST)
Received: from localhost.localdomain ([81.56.255.191])
	by smtp.gmail.com with ESMTPSA id
	y188sm7633787wmy.11.2016.02.11.03.42.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 11 Feb 2016 03:42:07 -0800 (PST)
Sender: =?UTF-8?B?UmFmYcOrbCBDYXJyw6k=?= <rafael.carre@gmail.com>
From: =?UTF-8?q?Rafa=C3=ABl=20Carr=C3=A9?= <funman@videolan.org>
To: yocto@yoctoproject.org
Date: Thu, 11 Feb 2016 12:42:01 +0100
Message-Id: <1455190922-3669-1-git-send-email-funman@videolan.org>
X-Mailer: git-send-email 2.5.0
X-Mailman-Approved-At: Mon, 15 Feb 2016 08:36:43 -0800
Subject: [PATCH 1/2] u-boot-edison: v2015.10
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
X-List-Received-Date: Thu, 11 Feb 2016 11:42:12 -0000

---
 .../files/0001-fw_env.c-missing-header.patch       | 26 ++++++++++++++
 recipes-bsp/u-boot/files/edison.env                |  4 +--
 .../u-boot/u-boot-edison-fw-utils_2014.04.bb       | 41 ----------------------
 .../u-boot/u-boot-edison-fw-utils_2015.10.bb       | 40 +++++++++++++++++++++
 recipes-bsp/u-boot/u-boot-edison_git.bb            |  9 +++--
 5 files changed, 72 insertions(+), 48 deletions(-)
 create mode 100644 recipes-bsp/u-boot/files/0001-fw_env.c-missing-header.patch
 delete mode 100644 recipes-bsp/u-boot/u-boot-edison-fw-utils_2014.04.bb
 create mode 100644 recipes-bsp/u-boot/u-boot-edison-fw-utils_2015.10.bb

diff --git a/recipes-bsp/u-boot/files/0001-fw_env.c-missing-header.patch b/recipes-bsp/u-boot/files/0001-fw_env.c-missing-header.patch
new file mode 100644
index 0000000..7f233b8
--- /dev/null
+++ b/recipes-bsp/u-boot/files/0001-fw_env.c-missing-header.patch
@@ -0,0 +1,26 @@
+From dd7affe7ec11aff5099b0c5cf0419cb030f2fca0 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Rafa=C3=ABl=20Carr=C3=A9?= <funman@videolan.org>
+Date: Wed, 10 Feb 2016 11:19:03 +0100
+Subject: [PATCH] fw_env.c: missing header
+
+tools/env/fw_env.c:54:2: error: unknown type name 'uint8_t'
+  uint8_t mtd_type;  /* type of the MTD device */
+---
+ tools/env/fw_env.c | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/tools/env/fw_env.c b/tools/env/fw_env.c
+index daa02a7..eff638a 100644
+--- a/tools/env/fw_env.c
++++ b/tools/env/fw_env.c
+@@ -17,6 +17,7 @@
+ #include <stdio.h>
+ #include <stdlib.h>
+ #include <stddef.h>
++#include <inttypes.h>
+ #include <string.h>
+ #include <sys/types.h>
+ #include <sys/ioctl.h>
+-- 
+2.5.0
+
diff --git a/recipes-bsp/u-boot/files/edison.env b/recipes-bsp/u-boot/files/edison.env
index 22200df..3dea0ed 100644
--- a/recipes-bsp/u-boot/files/edison.env
+++ b/recipes-bsp/u-boot/files/edison.env
@@ -5,9 +5,9 @@
 partitions=uuid_disk=${uuid_disk};name=u-boot0,start=1MiB,size=2MiB,uuid=${uuid_uboot0};name=u-boot-env0,size=1MiB,uuid=${uuid_uboot_env0};name=u-boot1,size=2MiB,uuid=${uuid_uboot1};name=u-boot-env1,size=1MiB,uuid=${uuid_uboot_env1};name=factory,size=1MiB,uuid=${uuid_factory};name=panic,size=24MiB,uuid=${uuid_panic};name=boot,size=32MiB,uuid=${uuid_boot};name=rootfs,size=512MiB,uuid=${uuid_rootfs};name=update,size=768MiB,uuid=${uuid_update};name=home,size=-,uuid=${uuid_home};
 
 # Dfu Alternate setting definition
-do_dfu_alt_info_mmc=setenv dfu_alt_info "ifwi${hardware_id} mmc 0 8192 mmcpart 1;ifwib${hardware_id} mmc 0 8192 mmcpart 2;u-boot0 part 0 1;u-boot-env0 part 0 2;u-boot1 part 0 3;u-boot-env1 part 0 4;boot part 0 7;rootfs part 0 8;update part 0 9;home part 0 10;vmlinuz fat 0 7;initrd fat 0 7"
+do_dfu_alt_info_mmc=setenv dfu_alt_info "ifwi${hardware_id} raw 0 8192 mmcpart 1;ifwib${hardware_id} raw 0 8192 mmcpart 2;u-boot0 part 0 1;u-boot-env0 part 0 2;u-boot1 part 0 3;u-boot-env1 part 0 4;boot part 0 7;rootfs part 0 8;update part 0 9;home part 0 10;vmlinuz fat 0 7;initrd fat 0 7"
 dfu_alt_info_ram=kernel ram ${loadaddr} 0x800000
-do_dfu_alt_info_ifwi=setenv dfu_alt_info "ifwi${hardware_id} mmc 0 8192 mmcpart 1;ifwib${hardware_id} mmc 0 8192 mmcpart 2"
+do_dfu_alt_info_ifwi=setenv dfu_alt_info "ifwi${hardware_id} raw 0 8192 mmcpart 1;ifwib${hardware_id} raw 0 8192 mmcpart 2"
 dfu_alt_info_reset=reset ram 0x0 0x0
 
 # Kernel load configuration
diff --git a/recipes-bsp/u-boot/u-boot-edison-fw-utils_2014.04.bb b/recipes-bsp/u-boot/u-boot-edison-fw-utils_2014.04.bb
deleted file mode 100644
index 0abd0d3..0000000
--- a/recipes-bsp/u-boot/u-boot-edison-fw-utils_2014.04.bb
+++ /dev/null
@@ -1,41 +0,0 @@
-SUMMARY = "U-boot bootloader fw_printenv/setenv utils"
-
-LICENSE = "GPLv2+"
-LIC_FILES_CHKSUM = "file://Licenses/README;md5=025bf9f768cbcb1a165dbe1a110babfb"
-
-SECTION = "bootloader"
-
-DEPENDS = "virtual/bootloader"
-
-PV = "2014.04"
-SRCREV = "dda0dbfc69f3d560c87f5be85f127ed862ea6721"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-SRC_URI = "git://git.denx.de/u-boot.git;branch=master \
-           file://upstream_to_edison.patch \
-           file://${MACHINE}.env \
-           file://target_env/*.env \
-           file://fw_env.config \
-          "
- 
-S = "${WORKDIR}/git"
-
-EXTRA_OEMAKE = 'CROSS_COMPILE=${TARGET_PREFIX} CC="${TARGET_PREFIX}gcc ${TOOLCHAIN_OPTIONS}"'
-
-do_compile () {
-  oe_runmake ${UBOOT_MACHINE}
-  oe_runmake env
-}
-
-do_install () {
-  install -d ${D}${sbindir}
-  install -m 755 ${S}/tools/env/fw_printenv_unstripped ${D}${sbindir}/fw_printenv
-  # This is not a typo, this tool checks the args[0] to change its behavior a-la-busybox
-  install -m 755 ${S}/tools/env/fw_printenv_unstripped ${D}${sbindir}/fw_setenv
-}
-
-PACKAGE_ARCH = "${MACHINE_ARCH}"
-FILES_${PN} = "${sbindir}/*"
-FILES_${PN} += "${sysconfdir}/fw_env.config"
-
diff --git a/recipes-bsp/u-boot/u-boot-edison-fw-utils_2015.10.bb b/recipes-bsp/u-boot/u-boot-edison-fw-utils_2015.10.bb
new file mode 100644
index 0000000..0e62a1f
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot-edison-fw-utils_2015.10.bb
@@ -0,0 +1,40 @@
+SUMMARY = "U-boot bootloader fw_printenv/setenv utils"
+
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://Licenses/README;md5=0507cd7da8e7ad6d6701926ec9b84c95"
+
+SECTION = "bootloader"
+
+DEPENDS = "virtual/bootloader"
+
+PV = "2015.10"
+SRCREV = "2e2b030bc6ed039b3b27225ee3486bd5b5d9f5a4"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+SRC_URI = "git://github.com/01org/edison-u-boot;branch=edison-v2015.10 \
+           file://${MACHINE}.env \
+            file://target_env/*.env \
+            file://0001-fw_env.c-missing-header.patch \
+            "
+
+S = "${WORKDIR}/git"
+
+EXTRA_OEMAKE = 'CROSS_COMPILE=${TARGET_PREFIX} CC="${TARGET_PREFIX}gcc ${TOOLCHAIN_OPTIONS}"'
+
+do_compile () {
+  oe_runmake ${UBOOT_MACHINE}
+  oe_runmake env
+}
+
+do_install () {
+  install -d ${D}${sbindir}
+  install -m 755 ${S}/tools/env/fw_printenv ${D}${sbindir}/fw_printenv
+  # This is not a typo, this tool checks the args[0] to change its behavior a-la-busybox
+  install -m 755 ${S}/tools/env/fw_printenv ${D}${sbindir}/fw_setenv
+}
+
+PACKAGE_ARCH = "${MACHINE_ARCH}"
+FILES_${PN} = "${sbindir}/*"
+FILES_${PN} += "${sysconfdir}/fw_env.config"
+
diff --git a/recipes-bsp/u-boot/u-boot-edison_git.bb b/recipes-bsp/u-boot/u-boot-edison_git.bb
index 703ae40..2e57791 100644
--- a/recipes-bsp/u-boot/u-boot-edison_git.bb
+++ b/recipes-bsp/u-boot/u-boot-edison_git.bb
@@ -3,13 +3,12 @@ require u-boot-target-env.inc
 require u-boot-osip.inc
 
 LICENSE = "GPLv2+"
-LIC_FILES_CHKSUM = "file://Licenses/README;md5=025bf9f768cbcb1a165dbe1a110babfb"
+LIC_FILES_CHKSUM = "file://Licenses/README;md5=0507cd7da8e7ad6d6701926ec9b84c95"
 
-PV = "2014.04"
-SRCREV = "dda0dbfc69f3d560c87f5be85f127ed862ea6721"
+PV = "2015.10"
+SRCREV = "2e2b030bc6ed039b3b27225ee3486bd5b5d9f5a4"
 
-SRC_URI = "git://git.denx.de/u-boot.git;branch=master \
-           file://upstream_to_edison.patch \
+SRC_URI = "git://github.com/01org/edison-u-boot;branch=edison-v2015.10 \
 	   file://${MACHINE}.env \
 	   file://target_env/*.env \
 	  "
-- 
2.5.0


