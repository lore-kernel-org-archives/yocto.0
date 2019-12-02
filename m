Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2357.1575284695016860916
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 03:05:05 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 03:05:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; 
   d="scan'208";a="411723579"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2019 03:05:04 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 12/13] zephyr-helloworld: code clean up
Date: Mon,  2 Dec 2019 19:08:48 +0800
Message-Id: <20191202110849.31494-12-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202110849.31494-1-naveen.kumar.saini@intel.com>
References: <20191202110849.31494-1-naveen.kumar.saini@intel.com>

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-helloworld.bb     |  9 ++-------
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 10 +++++++---
 2 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb b/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
index 7c0823c..84db068 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
@@ -1,18 +1,13 @@
 require zephyr-kernel.inc
 require zephyr-kernel-common.inc
-inherit cmake pkgconfig deploy
+inherit deploy
 
 ZEPHYR_SRC_DIR = "${S}/samples/hello_world"
 ZEPHYR_BASE = "${S}"
 OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
 
-DEPENDS += "gperf-native"
-
-EXTRA_OECMAKE = " -DZEPHYR_BASE=${S} -DZEPHYR_GCC_VARIANT=yocto -DBOARD=${BOARD} -DARCH=${ARCH} -DCROSS_COMPILE=${CROSS_COMPILE} -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} -DZEPHYR_TOOLCHAIN_VARIANT=yocto"
-export ZEPHYR_BASE="${S}"
-
 do_deploy () {
-    install -D ${B}/zephyr/zephyr.elf ${DEPLOYDIR}/${PN}.elf
+    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
 }
 
 addtask deploy after do_compile
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index 4fab740..d7147d5 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -1,6 +1,6 @@
 # Common settings for all Zephyr recipes
 
-ZEPHYR_INHERIT_CLASSES += "zephyr"
+ZEPHYR_INHERIT_CLASSES += "zephyr cmake"
 inherit ${ZEPHYR_INHERIT_CLASSES}
 
 # There shouldn't be a manifest for zephyr kernels since there is no root
@@ -11,11 +11,15 @@ ZEPHYR_GCC_VARIANT="yocto"
 ZEPHYR_SYSROOT="${STAGING_DIR_TARGET}"
 
 ZEPHYR_MAKE_OUTPUT = "zephyr.elf"
-ZEPHYR_MAKE_ARGS = " BOARD=${BOARD} ARCH=${ARCH} CROSS_COMPILE=${CROSS_COMPILE} ZEPHYR_GCC_VARIANT=${ZEPHYR_GCC_VARIANT} ZEPHYR_BASE=${ZEPHYR_BASE} ZEPHYR_SYSROOT=${ZEPHYR_SYSROOT}"
+
+
+EXTRA_OECMAKE = " -DZEPHYR_BASE=${S} -DZEPHYR_GCC_VARIANT=yocto -DBOARD=${BOARD} -DARCH=${ARCH} -DCROSS_COMPILE=${CROSS_COMPILE} -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} -DZEPHYR_TOOLCHAIN_VARIANT=yocto"
+export ZEPHYR_BASE="${S}"
+
 
 # We always need a toolchain to cross-compile.
 INHIBIT_DEFAULT_DEPS = "1"
-DEPENDS += "gcc-cross-${TARGET_ARCH} libgcc ${TOOLCHAIN_TARGET_TASK}"
+DEPENDS += "gcc-cross-${TARGET_ARCH} libgcc ${TOOLCHAIN_TARGET_TASK} gperf-native"
 CROSS_COMPILE = "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
 
 DEPENDS_append_qemuall = " qemu-native qemu-helper-native"
-- 
2.17.1

