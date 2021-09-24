Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-21.0 required=3.0 tests=BAYES_00,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECC23C433F5
	for <webhook@archiver.kernel.org>; Fri, 24 Sep 2021 06:40:45 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web10.4625.1632465645434458405
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 23:40:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="222125569"
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200";
   d="scan'208";a="222125569"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 23:40:45 -0700
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200";
   d="scan'208";a="475885569"
Received: from saininav-desk1.png.intel.com ([10.158.87.77])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 23:40:44 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/2] zephyr-kernel: upgrade 2.6.0 -> 2.6.1
Date: Fri, 24 Sep 2021 14:55:18 +0800
Message-Id: <20210924065518.13567-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210924065518.13567-1-naveen.kumar.saini@intel.com>
References: <20210924065518.13567-1-naveen.kumar.saini@intel.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Sep 2021 06:40:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54832

It has GCC-11 fixes.
https://github.com/zephyrproject-rtos/zephyr/issues/35707

Commits included:
2d6322d74a demand_paging: eviction/nru: fix incorrect dirty bit return val
25771e6928 drivers: clock_control: stm32: enable PWR clock unconditionally
92e36185e8 [Backport v2.6-branch] Microchip: XEC GPIO driver interrupt enable part 2
68d33e3834 libc/minimal: locate the memory pool for malloc() to .bss
7f3abab9bf net: tcp: accept [FIN, PSH, ACK] in TCP_FIN_WAIT_2 state
533dcaf374 lib/os/cbprintf_nano.c: avoid sign extension on unsigned formats
ea55ebfa74 tests: schedule_api: use stack array extern macro
95bb8841b8 tests: mem_protect: fix warning on uninitialized variable
1f8c53dfaf tests: kernel/common: avoid using compiler builtin popcount
7bb7454a00 kernel: use proper macro to declare extern interrupt stacks
25fd176014 kernel: add macros to allow declaring extern stack arrays
e1cde092ac kernel: move Z_KERNEL_STACK_LEN higher in thread_stack.h
244049bd71 x86: type cast to uint8_t* for bit ops
5dae0c1bf0 kernel: ignore array bound warnings for generated syscall funcs
5666e4d525 cmake: force GCC to emit DWARF version 4
91a78866ca Bluetooth: Controller: Fix advertising after connections from same peer
0afddb2341 x86/cache: fix issues in arch dcache flush function
9bcf9b6a53 json: fix parsing first array-array element
2595cce714 cmake: oneApi: add oneApi support on windows.
18d314e750 cmake: oneApi: add oneApi support on windows
c8755e0b46 (tag: v2.6.1-rc1) tests/benchmarks: add dynamic memory allocation measurement
a4d35f0a3e doc: 2.6.1 release notes
7094aaee55 release: Bump release to 2.6.1-rc1
585c03a0b6 drivers/clock_control: stm32: Fix macro to get HCLK freq
cacb0a4e59 Bluetooth: L2CAP: Fix missing net_buf_unref()
78ab750540 timer: hpet: convert register access to functions
d9df404d47 timer: hpet: don't force TIMER_READS_ITS_FREQUENCY_AT_RUNTIME
8e80955511 timer: hpet: allow overriding MIN_DELAY
99dc33faaf timer: hpet: extract Counter Clock Period into a macro
02fbe652a5 logging: fs: fix leak of opened directories in check_log_file_exist()
80b406d784 x86: acpi: limit search on where EBDA can be

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 ...ephyr-kernel-src-2.6.0.inc => zephyr-kernel-src-2.6.1.inc} | 4 ++--
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc            | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename recipes-kernel/zephyr-kernel/{zephyr-kernel-src-2.6.0.inc => zephyr-kernel-src-2.6.1.inc} (90%)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.1.inc
similarity index 90%
rename from recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
rename to recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.1.inc
index 63665bf..109242e 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.1.inc
@@ -1,5 +1,5 @@
 SRCREV_FORMAT = "default_cmsis"
-SRCREV_default = "837ab4a915f7802a6fb02a27e4b024e287ac93c2"
+SRCREV_default = "2d6322d74aaac838ead46bfcba0db619cff4b534"
 SRCREV_cmsis = "c3bd2094f92d574377f7af2aec147ae181aa5f8e"
 SRCREV_nordic = "574493fe29c79140df4827ab5d4a23df79d03681"
 SRCREV_stm32 = "f8ff8d25aa0a9e65948040c7b47ec67f3fa300df"
@@ -10,7 +10,7 @@ SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
 SRCREV_mbedtls = "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
 
 ZEPHYR_BRANCH = "v2.6-branch"
-PV = "2.6.0+git${SRCPV}"
+PV = "2.6.1+git${SRCPV}"
 
 SRC_URI:append = " file://0001-cmake-add-yocto-toolchain.patch \
                     file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch \
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index abe755d..458ff1e 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -22,5 +22,5 @@ SRC_URI = "\
 S = "${WORKDIR}/git"
 
 # Default to a stable version
-PREFERRED_VERSION_zephyr-kernel ??= "2.6.0"
+PREFERRED_VERSION_zephyr-kernel ??= "2.6.1"
 include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
-- 
2.17.1


