Received: from mga09.intel.com (mga09.intel.com [])
 by mx.groups.io with SMTP id smtpd.web10.6500.1585651694403689486
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2020 03:48:19 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: Jab0SZbIKuEssdp/PkP+irTAfAUSvc3I5+0kWa1n81uDt8C09p425Xl328ZQSZMRr6sREL/zjp
 Fii6+97eUngA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2020 03:48:15 -0700
IronPort-SDR: UEMLVRgkcSSgb8yVyLbCjMgmrc75FViZMUKRtnMyX+IqfMn3QMbGF4zMAGucoPINBV4SCzticd
 8wkNQW6Jkxxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; 
   d="scan'208";a="252195534"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga006.jf.intel.com with ESMTP; 31 Mar 2020 03:48:15 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 3/5] zephyr-kernel: add Zephyr RTOS version 2.2.0 support
Date: Tue, 31 Mar 2020 18:53:59 +0800
Message-Id: <20200331105401.23726-3-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200331105401.23726-1-naveen.kumar.saini@intel.com>
References: <20200331105401.23726-1-naveen.kumar.saini@intel.com>

Release notes:
https://github.com/zephyrproject-rtos/zephyr/releases/tag/zephyr-v2.2.0

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 classes/zephyr-kernel-src.bbclass             | 10 ++++----
 .../0001-cmake-add-yocto-toolchain.patch      | 23 ++++---------------
 ...el-src_2.0.bb => zephyr-kernel-src_2.2.bb} |  8 +++----
 3 files changed, 14 insertions(+), 27 deletions(-)
 rename recipes-kernel/zephyr-kernel/{zephyr-kernel-src_2.0.bb => zephyr-kernel-src_2.2.bb} (84%)

diff --git a/classes/zephyr-kernel-src.bbclass b/classes/zephyr-kernel-src.bbclass
index 9e2558b..653cb9b 100644
--- a/classes/zephyr-kernel-src.bbclass
+++ b/classes/zephyr-kernel-src.bbclass
@@ -1,13 +1,13 @@
 #Set relevant variables based on Zephyr kernel version
 
-PREFERRED_VERSION_zephyr-kernel ??= "2.0.0"
+PREFERRED_VERSION_zephyr-kernel ??= "2.2.0"
 
-SRCREV = "ca3eb0eb31d134be41aefc952f696f7d9c356b7a"
+SRCREV = "d39cb42d0920d5658fad358ad5b91de75d747a20"
 
-SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.0-branch \
+SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.2-branch \
           file://0001-cmake-add-yocto-toolchain.patch \
         "
-PV = "2.0.0"
+PV = "2.2.0"
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
 
@@ -15,7 +15,7 @@ ZEPHYR_TEST_SRCDIR = "tests/legacy/kernel/"
 
 python () {
     src_pn = d.getVar('PREFERRED_VERSION_zephyr-kernel', True)
-    if src_pn == '2.0.0':
+    if src_pn == '2.2.0':
         return
     else:
         bb.error("Unsupported Zephyr kernel version requested")
diff --git a/recipes-kernel/zephyr-kernel/files/0001-cmake-add-yocto-toolchain.patch b/recipes-kernel/zephyr-kernel/files/0001-cmake-add-yocto-toolchain.patch
index 2f91c6f..caab16f 100644
--- a/recipes-kernel/zephyr-kernel/files/0001-cmake-add-yocto-toolchain.patch
+++ b/recipes-kernel/zephyr-kernel/files/0001-cmake-add-yocto-toolchain.patch
@@ -1,37 +1,24 @@
-From 7dffe6c78e6799a3dfd3910876b29645305a55db Mon Sep 17 00:00:00 2001
+From 511745625637da0effca13c5489a392e15d32271 Mon Sep 17 00:00:00 2001
 From: Naveen Saini <naveen.kumar.saini@intel.com>
-Date: Tue, 19 Nov 2019 14:36:19 +0800
+Date: Tue, 31 Mar 2020 13:22:17 +0800
 Subject: [PATCH] cmake: add yocto toolchain
 
 Upstream status: inappropriate [OE specific]
 
 Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
 ---
- cmake/app/boilerplate.cmake         |  1 +
  cmake/compiler/gcc/target.cmake     |  7 -------
  cmake/toolchain/yocto/generic.cmake | 13 +++++++++++++
  cmake/toolchain/yocto/target.cmake  |  1 +
- 4 files changed, 15 insertions(+), 7 deletions(-)
+ 3 files changed, 14 insertions(+), 7 deletions(-)
  create mode 100644 cmake/toolchain/yocto/generic.cmake
  create mode 100644 cmake/toolchain/yocto/target.cmake
 
-diff --git a/cmake/app/boilerplate.cmake b/cmake/app/boilerplate.cmake
-index b0920b1d95..2dceead6c0 100644
---- a/cmake/app/boilerplate.cmake
-+++ b/cmake/app/boilerplate.cmake
-@@ -441,6 +441,7 @@ else()
-   set(SOC_PATH ${SOC_FAMILY}/${SOC_SERIES})
- endif()
- 
-+#include(${ZEPHYR_BASE}/cmake/toolchain-yocto.cmake)
- include(${ZEPHYR_BASE}/cmake/target_toolchain.cmake)
- 
- set(KERNEL_NAME ${CONFIG_KERNEL_BIN_NAME})
 diff --git a/cmake/compiler/gcc/target.cmake b/cmake/compiler/gcc/target.cmake
-index accd4ff19f..1d4018f5e6 100644
+index 401cc28db8..5a026f4559 100644
 --- a/cmake/compiler/gcc/target.cmake
 +++ b/cmake/compiler/gcc/target.cmake
-@@ -85,13 +85,6 @@ if(NOT no_libgcc)
+@@ -66,13 +66,6 @@ if(NOT no_libgcc)
      OUTPUT_STRIP_TRAILING_WHITESPACE
      )
  
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.0.bb b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.2.bb
similarity index 84%
rename from recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.0.bb
rename to recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.2.bb
index cb457f5..a3e1c28 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.0.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.2.bb
@@ -2,13 +2,13 @@
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
 
-# tag v2.0
-SRCREV="ca3eb0eb31d134be41aefc952f696f7d9c356b7a"
-SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.0-branch \
+# tag v2.2
+SRCREV="d39cb42d0920d5658fad358ad5b91de75d747a20"
+SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.2-branch \
           file://0001-cmake-add-yocto-toolchain.patch \
         "
 inherit cmake 
-PV = "2.0.0"
+PV = "2.2.0"
 S = "${WORKDIR}/git"
 
 IMAGE_NO_MANIFEST = "1"
-- 
2.17.1

