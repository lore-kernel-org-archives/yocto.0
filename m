Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31ADEC7EE29
	for <webhook@archiver.kernel.org>; Tue, 30 May 2023 09:40:41 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web11.5909.1685439635984376679
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 May 2023 02:40:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=DBijWpdA;
 spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1685439636; x=1716975636;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=ExcTd6pThd5eoDK9YQrHSRalZX2O49Ud3K/AylsKhHk=;
  b=DBijWpdAcna/Nsyq6XANYyGSVwIh/n1KcmP5IDHH9DiEv+ICV1UQY7wH
   YuloSHB+T3PKeN2pfzXWmIUugZD2oN8gxMPb+cDHnP2gjFqOkKsW5A24O
   aznrlLKPO9+tKV8kEFRyK4Of72lnRnYnJZ3Q9tZDucmQB0ycOMxaeyHuJ
   CYCcvvthHAWaakRbQpEJ+rYjsHzmkJfJpubkzIIRhN2Ebg5KIJkoq9mrv
   PSXbVwUze7w2oMr9UlMQDVjnGzcPe1Rx/T/I6f1K3FseatBneBI9YljKj
   9ZXpb++3ClBuVzGYFyyrvhGgaUgDFgL+9ycInFPbLRcUXu7tarLtBjVQm
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="352367119"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; 
   d="scan'208";a="352367119"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 May 2023 02:40:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="706360879"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; 
   d="scan'208";a="706360879"
Received: from saininav-desk1.png.intel.com ([172.30.130.5])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 May 2023 02:40:34 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyr-kernel-src-3.3.0: fix build with gcc-13
Date: Tue, 30 May 2023 18:04:44 +0800
Message-Id: <20230530100444.3460438-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 May 2023 09:40:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60146

Configuration error:
| -- Configuring done (4.9s)
| CMake Error in CMakeLists.txt:
|   Target "zephyr_interface" contains relative path in its
|   INTERFACE_INCLUDE_DIRECTORIES:
|
|     "include-fixed"

With GCC-13, limits.h and syslimits.h header files
are always being installed to include folder.
https://gcc.gnu.org/git/gitweb.cgi?p=gcc.git;h=be9dd80f933480

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 ...c-target.cmake-fix-build-with-gcc-13.patch | 54 +++++++++++++++++++
 .../zephyr-kernel/zephyr-kernel-src-3.3.0.inc |  1 +
 2 files changed, 55 insertions(+)
 create mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-gcc-target.cmake-fix-build-with-gcc-13.patch

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-gcc-target.cmake-fix-build-with-gcc-13.patch b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-gcc-target.cmake-fix-build-with-gcc-13.patch
new file mode 100644
index 0000000..c239f4f
--- /dev/null
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-gcc-target.cmake-fix-build-with-gcc-13.patch
@@ -0,0 +1,54 @@
+From ba1ca46190900b5d003e3d0386c20694f04b1710 Mon Sep 17 00:00:00 2001
+From: Naveen Saini <naveen.kumar.saini@intel.com>
+Date: Mon, 29 May 2023 17:48:20 +0800
+Subject: [PATCH] gcc/target.cmake: fix build with gcc-13
+
+Configuration error:
+| -- Configuring done (4.9s)
+| CMake Error in CMakeLists.txt:
+|   Target "zephyr_interface" contains relative path in its
+|   INTERFACE_INCLUDE_DIRECTORIES:
+|
+|     "include-fixed"
+
+With GCC-13, limits.h and syslimits.h header files
+are always being installed to include folder.
+https://gcc.gnu.org/git/gitweb.cgi?p=gcc.git;h=be9dd80f933480
+
+Upstream-Status: Submitted [https://github.com/zephyrproject-rtos/zephyr/pull/58408]
+
+Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
+---
+ cmake/compiler/gcc/target.cmake | 16 +++++++++++++++-
+ 1 file changed, 15 insertions(+), 1 deletion(-)
+
+diff --git a/cmake/compiler/gcc/target.cmake b/cmake/compiler/gcc/target.cmake
+index c970048297..e78a7c6a0b 100644
+--- a/cmake/compiler/gcc/target.cmake
++++ b/cmake/compiler/gcc/target.cmake
+@@ -34,7 +34,21 @@ if(NOT DEFINED NOSYSDEF_CFLAG)
+   set(NOSYSDEF_CFLAG -undef)
+ endif()
+ 
+-foreach(file_name include/stddef.h include-fixed/limits.h)
++# GCC-13, does not install limits.h on include-fixed anymore
++# https://gcc.gnu.org/git/gitweb.cgi?p=gcc.git;h=be9dd80f933480
++# Add check for GCC version >= 13.1
++execute_process(
++    COMMAND ${CMAKE_C_COMPILER} -dumpversion
++    OUTPUT_VARIABLE TEMP_COMPILER_VERSION
++    )
++
++if(${TEMP_COMPILER_VERSION} VERSION_GREATER_EQUAL 13.1.0)
++    set(FIX_HEADER_FILE include/limits.h)
++else()
++    set(FIX_HEADER_FILE include-fixed/limits.h)
++endif()
++
++foreach(file_name include/stddef.h ${FIX_HEADER_FILE})
+   execute_process(
+     COMMAND ${CMAKE_C_COMPILER} --print-file-name=${file_name}
+     OUTPUT_VARIABLE _OUTPUT
+-- 
+2.34.1
+
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3.0.inc
index 3b0ff08..2c99ca2 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3.0.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3.0.inc
@@ -117,6 +117,7 @@ SRC_URI_ZEPHYR_THRIFT ?= "git://github.com/zephyrproject-rtos/thrift;protocol=ht
 SRC_URI_PATCHES ?= "\
     file://0001-3.3-x86-fix-efi-binary-generation-issue-in-cross-compila.patch;patchdir=zephyr \
     file://0002-3.3-toolchain-gcc-Fix-separator-between-directives-on-sa.patch;patchdir=zephyr \
+    file://0001-gcc-target.cmake-fix-build-with-gcc-13.patch;patchdir=zephyr \
 "
 
 SRC_URI = "\
-- 
2.34.1


