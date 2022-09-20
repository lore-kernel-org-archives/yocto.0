Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88CF5C6FA91
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 19:27:46 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.1480.1663702058439550573
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 12:27:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: jon.mason@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8BAEC143D
	for <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 12:27:44 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E9C5D3F73D
	for <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 12:27:37 -0700 (PDT)
From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/3] zephyr-bsp/qemu-cortex-m3: update to use new
 path
Date: Tue, 20 Sep 2022 11:01:45 -0400
Message-Id: <20220920150146.7124-2-jon.mason@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220920150146.7124-1-jon.mason@arm.com>
References: <20220920150146.7124-1-jon.mason@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 19:27:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58103

Update the qemu-cortex-m3 machine to use the OE tune file, and remove
the duplicate one locally.

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 .../conf/machine/include/tune-cortexm3.inc    | 21 -------------------
 .../conf/machine/qemu-cortex-m3.conf          |  2 +-
 2 files changed, 1 insertion(+), 22 deletions(-)
 delete mode 100644 meta-zephyr-bsp/conf/machine/include/tune-cortexm3.inc

diff --git a/meta-zephyr-bsp/conf/machine/include/tune-cortexm3.inc b/meta-zephyr-bsp/conf/machine/include/tune-cortexm3.inc
deleted file mode 100644
index 404e2b7..0000000
--- a/meta-zephyr-bsp/conf/machine/include/tune-cortexm3.inc
+++ /dev/null
@@ -1,21 +0,0 @@
-DEFAULTTUNE ?= "cortexm3"
-
-require conf/machine/include/arm/arch-armv7a.inc
-
-TUNEVALID[cortexm3] = "Enable Cortex-M3 specific processor optimizations"
-TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'cortexm3', ' -mcpu=cortex-m3', '', d)}"
-AVAILTUNES += "cortexm3"
-
-TUNEVALID[armv7m] = "Enable Cortex-M3 specific processor optimizations"
-TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', ' -march=armv7-m', '', d)}"
-MACHINEOVERRIDES =. "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', 'armv7m:', '' ,d)}"
-
-TUNE_PKGARCH:tune-cortexm3 = "cortexm3"
-
-ARMPKGARCH:tune-cortexm3 = "armv7m"
-PACKAGE_EXTRA_ARCHS:tune-cortexm3 ="cortexm3"
-
-TUNE_FEATURES:tune-cortexm3 = "armv7m vfp cortexm3"
-PACKAGE_EXTRA_ARCHS:tune-cortexm3 = "${PACKAGE_EXTRA_ARCHS:tune-armv7at} armv7m-vfp"
-
-TUNE_CCARGS_MFLOAT = "soft"
diff --git a/meta-zephyr-bsp/conf/machine/qemu-cortex-m3.conf b/meta-zephyr-bsp/conf/machine/qemu-cortex-m3.conf
index 835a775..989f2ca 100644
--- a/meta-zephyr-bsp/conf/machine/qemu-cortex-m3.conf
+++ b/meta-zephyr-bsp/conf/machine/qemu-cortex-m3.conf
@@ -3,7 +3,7 @@
 #@DESCRIPTION: Machine for Zephyr BOARD qemu_cortex_m3
 
 require conf/machine/include/qemu.inc
-require conf/machine/include/tune-cortexm3.inc
+require conf/machine/include/arm/armv7m/tune-cortexm3.inc
 
 ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
 
-- 
2.17.1


