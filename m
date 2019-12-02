Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2357.1575284695016860916
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 03:05:04 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 03:05:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; 
   d="scan'208";a="411723573"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2019 03:05:03 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 11/13] zephyr-kernel: drop obsolete v1.6
Date: Mon,  2 Dec 2019 19:08:47 +0800
Message-Id: <20191202110849.31494-11-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202110849.31494-1-naveen.kumar.saini@intel.com>
References: <20191202110849.31494-1-naveen.kumar.saini@intel.com>

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../files/Makefile.toolchain.yocto            | 17 ---------
 .../zephyr-kernel/zephyr-kernel-src_1.6.bb    | 37 -------------------
 2 files changed, 54 deletions(-)
 delete mode 100644 recipes-kernel/zephyr-kernel/files/Makefile.toolchain.yocto
 delete mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.6.bb

diff --git a/recipes-kernel/zephyr-kernel/files/Makefile.toolchain.yocto b/recipes-kernel/zephyr-kernel/files/Makefile.toolchain.yocto
deleted file mode 100644
index 867fd39..0000000
--- a/recipes-kernel/zephyr-kernel/files/Makefile.toolchain.yocto
+++ /dev/null
@@ -1,17 +0,0 @@
-$(info ZEPHYR_SYSROOT:${ZEPHYR_SYSROOT})
-
-LIBGCC_DIR = $(shell dirname `$(CC) -print-libgcc-file-name`)
-$(info LIBGCCDIR:${LIBGCC_DIR} )
-
-#NEWLIB_DIR = $(shell `$(CC) -print-multi-directory`)
-#$(info NEWLIB_DIR:${NEWLIB_DIR})
-
-LIB_INCLUDE_DIR += -L $(LIBGCC_DIR) -L $(ZEPHYR_SYSROOT)/usr/lib/$(NEWLIB_DIR)
-$(info LIB_INCLUDE_DIR:${LIB_INCLUDE_DIR})
-
-TOOLCHAIN_CFLAGS = -I$(ZEPHYR_SYSROOT)/usr/include
-$(info TOOLCHAIN_CFLAGS:${TOOLCHAIN_CFLAGS})
-
-TOOLCHAIN_LIBS = gcc
-
-export LIB_INCLUDE_DIR CROSS_COMPILE TOOLCHAIN_LIBS TOOLCHAIN_CFLAGS
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.6.bb b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.6.bb
deleted file mode 100644
index b47e8ac..0000000
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.6.bb
+++ /dev/null
@@ -1,37 +0,0 @@
-
-LICENSE = "Apache-2.0"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
-
-# tag v1.6.0
-SRCREV="d4e799d77a36eaf6d678b357c207411ec32b2d62"
-SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v1.6-branch"
-SRC_URI += "file://Makefile.toolchain.yocto"
-
-PV = "1.6.0"
-
-S = "${WORKDIR}/git"
-
-IMAGE_NO_MANIFEST = "1"
-INHIBIT_DEFAULT_DEPS = "1"
-
-do_compile[noexec] = "1"
-
-do_configure() {
-    cp ${WORKDIR}/Makefile.toolchain.yocto ${S}/scripts
-}
-
-do_compile () {
-}
-
-
-do_install () {
-    kerneldir=${D}/usr/src/zephyr
-    install -d $kerneldir
-    cp -r ${S}/* $kerneldir
-}
-
-PACKAGES = "${PN}"
-FILES_${PN} = "/usr/src/zephyr"
-
-SYSROOT_DIRS += "/usr/src/zephyr"
-
-- 
2.17.1

