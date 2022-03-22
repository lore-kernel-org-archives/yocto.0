Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8175CC433F5
	for <webhook@archiver.kernel.org>; Tue, 22 Mar 2022 08:58:36 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web11.7580.1647939514832496009
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 01:58:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=ii5oCQqK;
 spf=pass (domain: intel.com, ip: 192.55.52.88,
 mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647939515; x=1679475515;
  h=from:to:subject:date:message-id;
  bh=cghPTvhnKH9oHpiMkSarkS/eWae8LiqFg77usZ/pfwk=;
  b=ii5oCQqKsjF9XOldStseVSKPIl5KQdWryUN17orJD+L/hTK1QDASGtay
   47sXCMv6boZnHBi+Edo0/tOPJo2Z1cSezXx0YpqGvk64Wq/EjJx/kAJbD
   Ht0palDML2D68veMgtOsBvn2fthUlI0Cpu4qQEfdI84keeomzvprSBJgh
   7qgpIuATT688SR7890xUeH++xYZxU/ASeCKsH4CgGbEv3TJy5NTS9bSvk
   +27IuEECKIjmw5FPANSjK0xJtdOJ3Gm+ZjXHK5/kOmryRfUS4qP7j8tr4
   wGmOaUxg12TB1q2ldXSg/vMvEQK7hM6LlHIymZD3cO9sZD6TNHXoxcyHQ
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="282600127"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400";
   d="scan'208";a="282600127"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 01:58:33 -0700
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400";
   d="scan'208";a="636969627"
Received: from saininav-desk1.png.intel.com ([10.158.87.77])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 01:58:33 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] meta-zephyr-core: drop obsolete patches
Date: Tue, 22 Mar 2022 17:15:58 +0800
Message-Id: <20220322091558.19355-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Mar 2022 08:58:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56523

These patches are not being applied and not required any more.

Already part of zephyr 2.7.1 and zephyr 3.0.0

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 ...0001-cmake-added-missing-file-ext-to.patch | 42 ----------------
 ...rduino-nano-33-ble-storage-partition.patch | 49 -------------------
 2 files changed, 91 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-cmake-added-missing-file-ext-to.patch
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/arduino-nano-33-ble-storage-partition.patch

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-cmake-added-missing-file-ext-to.patch b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-cmake-added-missing-file-ext-to.patch
deleted file mode 100644
index 6aeca14..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-cmake-added-missing-file-ext-to.patch
+++ /dev/null
@@ -1,42 +0,0 @@
-From 783c1f78c8e39751fe89d0883c8bce7336f55e94 Mon Sep 17 00:00:00 2001
-From: Torsten Rasmussen <Torsten.Rasmussen@nordicsemi.no>
-Date: Thu, 19 Aug 2021 08:53:00 +0200
-Subject: [PATCH] cmake: added missing file ext to
- lv_font_dejavu_16_persian_hebrew.c
-
-CMake >= 3.20 requires file extensions explicitly added to source files.
-
-See CMP0115:
-> Starting in CMake 3.20, CMake prefers all source files to have their
-> extensions explicitly listed:
-
-In the CMakeLists.txt, the file lv_font_dejavu_16_persian_hebrew.c
-was added without its .c extension, causing never CMakes ti fail
-discovering the file.
-
-This has been fixed by correctly add the file as:
-lv_font_dejavu_16_persian_hebrew.c
-
-Signed-off-by: Torsten Rasmussen <Torsten.Rasmussen@nordicsemi.no>
----
-Upstream-status: Accepted
-
- CMakeLists.txt | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/CMakeLists.txt b/CMakeLists.txt
-index 57b07c84..0f433edc 100644
---- a/CMakeLists.txt
-+++ b/CMakeLists.txt
-@@ -58,7 +58,7 @@ zephyr_library_sources(
-     src/lv_misc/lv_utils.c
- 
-     src/lv_font/lv_font.c
--    src/lv_font/lv_font_dejavu_16_persian_hebrew
-+    src/lv_font/lv_font_dejavu_16_persian_hebrew.c
-     src/lv_font/lv_font_fmt_txt.c
-     src/lv_font/lv_font_loader.c
-     src/lv_font/lv_font_montserrat_12.c
--- 
-Gitee
-
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/arduino-nano-33-ble-storage-partition.patch b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/arduino-nano-33-ble-storage-partition.patch
deleted file mode 100644
index 4568a41..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/arduino-nano-33-ble-storage-partition.patch
+++ /dev/null
@@ -1,49 +0,0 @@
-commit 6c9945aafa00c09149e2052a9c2bccad16dd1d8a
-Author: Stefan Schmidt <stefan.schmidt@huawei.com>
-Date:   Fri May 7 11:47:44 2021 +0200
-
-    boards/arduino_nano_33_ble: add storage partition at end of flash
-    
-    Change default partition table to allow for application which need
-    storage. One use case is running the OpenThread integration which has
-    a dependency on this.
-
-    Upstream-Status: Backported [https://github.com/zephyrproject-rtos/zephyr/commit/6c9945aafa00c09149e2052a9c2bccad16dd1d8a]
-    
-    Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
-    Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
-
-diff --git a/boards/arm/arduino_nano_33_ble/arduino_nano_33_ble.dts b/boards/arm/arduino_nano_33_ble/arduino_nano_33_ble.dts
-index d09b66ec43..d11d800eb5 100644
---- a/boards/arm/arduino_nano_33_ble/arduino_nano_33_ble.dts
-+++ b/boards/arm/arduino_nano_33_ble/arduino_nano_33_ble.dts
-@@ -44,15 +44,27 @@
- 
- 		boot_partition: partition@0 {
- 			label = "sam-ba";
--			reg = <0x0 0x10000>;
-+			reg = <0x00000000 0x00010000>;
- 			read-only;
- 		};
- 
- 		code_partition: partition@10000 {
- 			label = "code";
--			reg = <0x10000 0xf0000>;
-+			reg = <0x00010000 0x000e8000>;
- 			read-only;
- 		};
-+
-+		/*
-+		 * The flash starting at 0x000f8000 and ending at
-+		 * 0x000fffff is reserved for use by the application.
-+		 *
-+		 * Storage partition will be used by FCB/LittleFS/NVS
-+		 * if enabled.
-+		 */
-+		storage_partition: partition@f8000 {
-+			label = "storage";
-+			reg = <0x000f8000 0x00008000>;
-+		};
- 	};
- };
- 
-- 
2.17.1


