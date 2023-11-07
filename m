Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14AF3C4332F
	for <webhook@archiver.kernel.org>; Tue,  7 Nov 2023 02:36:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by mx.groups.io with SMTP id smtpd.web10.2165.1699324556855367143
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Nov 2023 18:35:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=JtTOQwcM;
 spf=pass (domain: intel.com, ip: 198.175.65.9, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1699324557; x=1730860557;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=4piz+xjTu7SnfFEP7sucnthQk0+mxZVxKzZISMfXePk=;
  b=JtTOQwcMZXfSnQZim2D78GtXbuWBKen/zVuKojE9pEUA/cbdevE0MJc4
   EgcbzWPkkTmjaMZxM/mBEm6hqfAPs65rZ1I+XKSq9+LJWN2gdLwXCGC6k
   efbN1X1HNTW9gSFprKTMLWBoAllyZPSWNOf3fPkWqnRgN7hCsLJrLhQHi
   1IBf5UMNLLDNubmVE4/SdnIUKJvCXxsp2wpfpQrICn07dUZL5uVpdQA9N
   D7lp1X+3jstby3burCLyZTXqfXsCN3F56s1VgwW6MTl87esbusQV8nw6O
   hP29qdqsAfKcynWIEc/AFTsP7c+ZqAtVT+5hIdj56JguubfXunHn4t2pC
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="8051457"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; 
   d="scan'208";a="8051457"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Nov 2023 18:35:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="756038855"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; 
   d="scan'208";a="756038855"
Received: from saininav-desk1.png.intel.com ([172.30.130.5])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Nov 2023 18:35:55 -0800
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] x86: Refresh patch to include efi fix for up_squared board
Date: Tue,  7 Nov 2023 11:02:23 +0800
Message-Id: <20231107030223.3114668-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Nov 2023 02:36:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61628

Include fix for generating efi binary file for the up_squared board, which
was missed in v3.5 upgrade.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 ...ry-generation-issue-in-cross-compila.patch | 25 ++++++++++++++-----
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.5-x86-fix-efi-binary-generation-issue-in-cross-compila.patch b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.5-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
index c12eed0..f1b2b9f 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.5-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.5-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
@@ -1,4 +1,4 @@
-From 67971b0be2230c2a691561e55a023b59c66bad87 Mon Sep 17 00:00:00 2001
+From 25cf09358eebde64474cbf0759974e2087d4dcc6 Mon Sep 17 00:00:00 2001
 From: Naveen Saini <naveen.kumar.saini@intel.com>
 Date: Tue, 31 Oct 2023 16:57:31 +0800
 Subject: [PATCH] x86: fix efi binary generation issue in cross compilation env
@@ -9,11 +9,12 @@ Upstream-Status: Inappropriate [Cross-compilation specific]
 
 Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
 ---
- arch/x86/zefi/zefi.py               | 5 ++++-
- boards/x86/intel_adl/CMakeLists.txt | 1 +
- boards/x86/intel_ehl/CMakeLists.txt | 1 +
- boards/x86/intel_rpl/CMakeLists.txt | 1 +
- 4 files changed, 7 insertions(+), 1 deletion(-)
+ arch/x86/zefi/zefi.py                | 5 ++++-
+ boards/x86/intel_adl/CMakeLists.txt  | 1 +
+ boards/x86/intel_ehl/CMakeLists.txt  | 1 +
+ boards/x86/intel_rpl/CMakeLists.txt  | 1 +
+ boards/x86/up_squared/CMakeLists.txt | 1 +
+ 5 files changed, 8 insertions(+), 1 deletion(-)
 
 diff --git a/arch/x86/zefi/zefi.py b/arch/x86/zefi/zefi.py
 index 99c188ecd0..1cd86a21cd 100755
@@ -67,6 +68,18 @@ diff --git a/boards/x86/intel_rpl/CMakeLists.txt b/boards/x86/intel_rpl/CMakeLis
 index 2dc5afcc32..7981e576f2 100644
 --- a/boards/x86/intel_rpl/CMakeLists.txt
 +++ b/boards/x86/intel_rpl/CMakeLists.txt
+@@ -6,6 +6,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
+   -o ${CMAKE_OBJCOPY}
+   -i ${ZEPHYR_BASE}/include
+   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
++  -s ${SYSROOT_DIR}
+   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
+   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
+ )
+diff --git a/boards/x86/up_squared/CMakeLists.txt b/boards/x86/up_squared/CMakeLists.txt
+index 2dc5afcc32..7981e576f2 100644
+--- a/boards/x86/up_squared/CMakeLists.txt
++++ b/boards/x86/up_squared/CMakeLists.txt
 @@ -6,6 +6,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
    -o ${CMAKE_OBJCOPY}
    -i ${ZEPHYR_BASE}/include
-- 
2.34.1


