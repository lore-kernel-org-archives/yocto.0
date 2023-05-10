Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 005C3C77B7C
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 07:42:27 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web10.11030.1683704541692670965
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 00:42:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=iAoGm0xa;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1683704541; x=1715240541;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Uf2FcCzgDNMXT1PT+wAX+t0fwaTdIRAYB1LYc2AJmhU=;
  b=iAoGm0xa13gaRN324tQxbkCRYoGcCSEaMLr8ihFGTT+/li4PkgqktAj9
   +DRrDdXKcyGk1M5XpIWGpj1GHDYu9LphpK+w2TRQRoTYcdkJPN4+Da9Wz
   XVcDo3tyoLgCKrZxa9+n9Pux1iYU3aCAAulTR8BYTfEUUrIvRfBiWr5il
   TJR+pp5I8Kt/ypKCKsrRoGkRO61gj3gdowjGxTifBP40fMA1pV1TQO3HW
   JYz/GnsFbQCplF0ekYKm9TL1ixTd92YWFy1E19ugtNFVpwKQ5W7VXmmim
   VNnHxg/rhZGcQ+anWfh/4Jq6xr5CAQgfVtmN65G1GB/1fZa8gBlkR1gtj
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="378247657"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; 
   d="scan'208";a="378247657"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2023 00:42:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="823447691"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; 
   d="scan'208";a="823447691"
Received: from saininav-desk1.png.intel.com ([172.30.130.129])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2023 00:42:20 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][master][mickledore][PATCH] zephyr-kernel: Include efi binary generation fix for Raptor Lake too
Date: Wed, 10 May 2023 16:05:20 +0800
Message-Id: <20230510080520.3535504-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 07:42:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59958

Extend patch to include efi binary generation issue fix
for x86 Raptor Lake board too.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 ...ry-generation-issue-in-cross-compila.patch | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.3-x86-fix-efi-binary-generation-issue-in-cross-compila.patch b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.3-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
index 315ed35..d4e1d09 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.3-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.3-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
@@ -1,4 +1,4 @@
-From bad26e63d47b638fc1c0b268faf5cee9738efc35 Mon Sep 17 00:00:00 2001
+From 60b4dc4214ee645833eff109ff04d4849219fd4e Mon Sep 17 00:00:00 2001
 From: Naveen Saini <naveen.kumar.saini@intel.com>
 Date: Thu, 28 Jul 2022 14:15:11 +0800
 Subject: [PATCH] x86: fix efi binary generation issue in cross compilation env
@@ -12,11 +12,12 @@ Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
  arch/x86/zefi/zefi.py                | 5 ++++-
  boards/x86/ehl_crb/CMakeLists.txt    | 1 +
  boards/x86/qemu_x86/CMakeLists.txt   | 1 +
+ boards/x86/rpl_crb/CMakeLists.txt    | 1 +
  boards/x86/up_squared/CMakeLists.txt | 1 +
- 4 files changed, 7 insertions(+), 1 deletion(-)
+ 5 files changed, 8 insertions(+), 1 deletion(-)
 
 diff --git a/arch/x86/zefi/zefi.py b/arch/x86/zefi/zefi.py
-index 1e95958bff..b356198aa6 100755
+index 99c188ecd0..1cd86a21cd 100755
 --- a/arch/x86/zefi/zefi.py
 +++ b/arch/x86/zefi/zefi.py
 @@ -109,8 +109,10 @@ def build_elf(elf_file, include_dirs):
@@ -63,6 +64,18 @@ index 8d227f8b26..a5d6480bc3 100644
    $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
    WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
  )
+diff --git a/boards/x86/rpl_crb/CMakeLists.txt b/boards/x86/rpl_crb/CMakeLists.txt
+index 8bd6e36099..7316f23759 100644
+--- a/boards/x86/rpl_crb/CMakeLists.txt
++++ b/boards/x86/rpl_crb/CMakeLists.txt
+@@ -7,6 +7,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
+   -i ${ZEPHYR_BASE}/include
+      $<$<BOOL:${CONFIG_LEGACY_INCLUDE_PATH}>:${ZEPHYR_BASE}/include/zephyr>
+   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
++  -s ${SYSROOT_DIR}
+   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
+   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
+ )
 diff --git a/boards/x86/up_squared/CMakeLists.txt b/boards/x86/up_squared/CMakeLists.txt
 index b867282d60..43cd081b21 100644
 --- a/boards/x86/up_squared/CMakeLists.txt
-- 
2.25.1


