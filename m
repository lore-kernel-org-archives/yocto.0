Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web10.5972.1600404191211249490
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 21:43:11 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: yock.gen.mah@intel.com)
IronPort-SDR: E+ZETa6XOOwnjcRaAmhGejUH3Zv3xU8eF7FeBThusq/uH6CXOeBIX/bNysC3jd+smAJGHjiObZ
 Do/nayMjrQYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="160778604"
X-IronPort-AV: E=Sophos;i="5.77,273,1596524400"; 
   d="scan'208";a="160778604"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2020 21:43:09 -0700
IronPort-SDR: W9hDJceXsEozkHxLQcPfodG1d8N9MZe+Vj4N3BdHOVaYMWmYFaILd5OmpL4RFjEODBvSQYsyFg
 P6RMCXvjEKuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,273,1596524400"; 
   d="scan'208";a="339676302"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by fmsmga002.fm.intel.com with ESMTP; 17 Sep 2020 21:43:08 -0700
From: yock.gen.mah@intel.com
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyr-kernel: add Zephyr RTOS version 2.3.0 support
Date: Fri, 18 Sep 2020 12:43:02 +0800
Message-Id: <1600404182-52638-1-git-send-email-yock.gen.mah@intel.com>
X-Mailer: git-send-email 2.7.4

From: yockgenm <yock.gen.mah@intel.com>

Signed-off-by: yockgenm <yock.gen.mah@intel.com>
---
 classes/zephyr-kernel-src.bbclass                  | 12 ++++----
 .../{qemu_4.2.%.bbappend => qemu_5.1.%.bbappend}   |  0
 .../zephyr-kernel/zephyr-kernel-common.inc         |  1 +
 .../zephyr-kernel/zephyr-kernel-src_2.2.bb         | 33 ----------------------
 .../zephyr-kernel/zephyr-kernel-src_2.3.bb         | 24 ++++++++++++++++
 .../zephyr-kernel/zephyr-kernel-test.inc           |  7 ++---
 6 files changed, 35 insertions(+), 42 deletions(-)
 rename recipes-devtools/qemu/{qemu_4.2.%.bbappend => qemu_5.1.%.bbappend} (100%)
 delete mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.2.bb
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.3.bb

diff --git a/classes/zephyr-kernel-src.bbclass b/classes/zephyr-kernel-src.bbclass
index 653cb9b..d202293 100644
--- a/classes/zephyr-kernel-src.bbclass
+++ b/classes/zephyr-kernel-src.bbclass
@@ -1,13 +1,15 @@
 #Set relevant variables based on Zephyr kernel version
 
-PREFERRED_VERSION_zephyr-kernel ??= "2.2.0"
+PREFERRED_VERSION_zephyr-kernel ??= "2.3.0"
 
-SRCREV = "d39cb42d0920d5658fad358ad5b91de75d747a20"
+SRCREV = "b8c78e254ff875680e99c9f131fbe285c4575927"
+SRCREV_cmsis = "542b2296e6d515b265e25c6b7208e8fea3014f90"
 
-SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.2-branch \
+SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.3-branch \
+           git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
           file://0001-cmake-add-yocto-toolchain.patch \
         "
-PV = "2.2.0"
+PV = "2.3.0"
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
 
@@ -15,7 +17,7 @@ ZEPHYR_TEST_SRCDIR = "tests/legacy/kernel/"
 
 python () {
     src_pn = d.getVar('PREFERRED_VERSION_zephyr-kernel', True)
-    if src_pn == '2.2.0':
+    if src_pn == '2.3.0':
         return
     else:
         bb.error("Unsupported Zephyr kernel version requested")
diff --git a/recipes-devtools/qemu/qemu_4.2.%.bbappend b/recipes-devtools/qemu/qemu_5.1.%.bbappend
similarity index 100%
rename from recipes-devtools/qemu/qemu_4.2.%.bbappend
rename to recipes-devtools/qemu/qemu_5.1.%.bbappend
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index d7147d5..aaf71a8 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -14,6 +14,7 @@ ZEPHYR_MAKE_OUTPUT = "zephyr.elf"
 
 
 EXTRA_OECMAKE = " -DZEPHYR_BASE=${S} -DZEPHYR_GCC_VARIANT=yocto -DBOARD=${BOARD} -DARCH=${ARCH} -DCROSS_COMPILE=${CROSS_COMPILE} -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} -DZEPHYR_TOOLCHAIN_VARIANT=yocto"
+EXTRA_OECMAKE_append_arm = " -DZEPHYR_MODULES=${S}/modules/cmsis"
 export ZEPHYR_BASE="${S}"
 
 
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.2.bb b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.2.bb
deleted file mode 100644
index a3e1c28..0000000
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.2.bb
+++ /dev/null
@@ -1,33 +0,0 @@
-
-LICENSE = "Apache-2.0"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
-
-# tag v2.2
-SRCREV="d39cb42d0920d5658fad358ad5b91de75d747a20"
-SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.2-branch \
-          file://0001-cmake-add-yocto-toolchain.patch \
-        "
-inherit cmake 
-PV = "2.2.0"
-S = "${WORKDIR}/git"
-
-IMAGE_NO_MANIFEST = "1"
-INHIBIT_DEFAULT_DEPS = "1"
-
-do_configure[noexec] = "1"
-do_compile[noexec] = "1"
-
-do_compile () {
-}
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
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.3.bb b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.3.bb
new file mode 100644
index 0000000..8e8b5b8
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.3.bb
@@ -0,0 +1,24 @@
+
+inherit zephyr-kernel-src
+inherit cmake
+
+S = "${WORKDIR}/git"
+
+IMAGE_NO_MANIFEST = "1"
+INHIBIT_DEFAULT_DEPS = "1"
+
+do_configure[noexec] = "1"
+do_compile[noexec] = "1"
+
+
+do_install () {
+    kerneldir=${D}/usr/src/zephyr
+    install -d $kerneldir
+    cp -r ${S}/* $kerneldir
+}
+
+PACKAGES = "${PN}"
+FILES_${PN} = "/usr/src/zephyr"
+
+SYSROOT_DIRS += "/usr/src/zephyr"
+
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
index 65da7e8..7ab9bd4 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
@@ -1,4 +1,4 @@
-ZEPHYRTESTS_remove = "fifo fp_sharing lifo mbox mem_heap mem_pool \
+ZEPHYRTESTS_remove = "fifo fpu_sharing lifo mbox mem_heap mem_pool \
     mem_protect mem_slab msgq mutex pipe profiling sched semaphore \
     stack threads tickless timer workq"
 
@@ -22,13 +22,12 @@ ZEPHYRTESTS_remove = "gen_isr_table spinlock smp mp"
 # List of all available kernel tests
 ZEPHYRTESTS = " \
     common \
-    context \
-    critical \
+    context \    
     device \
     early_sleep \
     fatal \
     fifo \
-    fp_sharing \
+    fpu_sharing \
     gen_isr_table \
     interrupt \
     lifo \
-- 
2.7.4

