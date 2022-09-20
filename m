Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81E37C54EE9
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 19:27:46 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.1399.1663702058480784320
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 12:27:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: jon.mason@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B62BC1D6F
	for <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 12:27:44 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2046A3F73D
	for <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 12:27:38 -0700 (PDT)
From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 3/3] zephyr-bsp: update cortex-m4's to use new
 path
Date: Tue, 20 Sep 2022 11:01:46 -0400
Message-Id: <20220920150146.7124-3-jon.mason@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220920150146.7124-1-jon.mason@arm.com>
References: <20220920150146.7124-1-jon.mason@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 19:27:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58101

Update the machines using cortex m4s to use the OE tune file, and remove
the duplicate one locally.

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 .../conf/machine/include/nrf52.inc            |  4 ++--
 .../machine/include/stm32mp1-cortex-m4.inc    |  4 ++--
 .../conf/machine/include/tune-cortexm4.inc    | 19 -------------------
 3 files changed, 4 insertions(+), 23 deletions(-)
 delete mode 100644 meta-zephyr-bsp/conf/machine/include/tune-cortexm4.inc

diff --git a/meta-zephyr-bsp/conf/machine/include/nrf52.inc b/meta-zephyr-bsp/conf/machine/include/nrf52.inc
index 4162d3e..bd72195 100644
--- a/meta-zephyr-bsp/conf/machine/include/nrf52.inc
+++ b/meta-zephyr-bsp/conf/machine/include/nrf52.inc
@@ -3,9 +3,9 @@
 
 #@DESCRIPTION: Machine configuration for Nordic Semiconductor nRF52xxx (Cortex-M4) SoC.
 
-require conf/machine/include/tune-cortexm4.inc
+require conf/machine/include/arm/armv7m/tune-cortexm4.inc
 
-TUNE_FEATURES = "armv7m cortexm4"
+TUNE_FEATURES = "armv7em cortexm4"
 
 # Target type for this machine used by Pyocd
 PYOCD_TARGET = "nrf52"
diff --git a/meta-zephyr-bsp/conf/machine/include/stm32mp1-cortex-m4.inc b/meta-zephyr-bsp/conf/machine/include/stm32mp1-cortex-m4.inc
index 0d46620..94b2e05 100644
--- a/meta-zephyr-bsp/conf/machine/include/stm32mp1-cortex-m4.inc
+++ b/meta-zephyr-bsp/conf/machine/include/stm32mp1-cortex-m4.inc
@@ -3,6 +3,6 @@
 
 #@DESCRIPTION: Machine configuration for Cortex-M4 core of STMicroelectronics STM32MP1 SoC.
 
-require conf/machine/include/tune-cortexm4.inc
+require conf/machine/include/arm/armv7m/tune-cortexm4.inc
 
-TUNE_FEATURES = "armv7m cortexm4"
+TUNE_FEATURES = "armv7em cortexm4"
diff --git a/meta-zephyr-bsp/conf/machine/include/tune-cortexm4.inc b/meta-zephyr-bsp/conf/machine/include/tune-cortexm4.inc
deleted file mode 100644
index b3092d8..0000000
--- a/meta-zephyr-bsp/conf/machine/include/tune-cortexm4.inc
+++ /dev/null
@@ -1,19 +0,0 @@
-DEFAULTTUNE ?= "cortexm4"
-
-require conf/machine/include/arm/arch-armv7a.inc
-
-TUNEVALID[cortexm4] = "Enable Cortex-M4 specific processor optimizations"
-TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'cortexm4', ' -mcpu=cortex-m4', '', d)}"
-AVAILTUNES += "cortexm4"
-
-TUNEVALID[armv7m] = "Enable Cortex-M4 specific processor optimizations"
-TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', ' -march=armv7e-m', '', d)}"
-MACHINEOVERRIDES =. "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', 'armv7m:', '' ,d)}"
-
-TUNE_PKGARCH:tune-cortexm4 = "cortexm4"
-
-ARMPKGARCH:tune-cortexm4 = "armv7m"
-PACKAGE_EXTRA_ARCHS:tune-cortexm4 ="cortexm4"
-
-TUNE_FEATURES:tune-cortexm4 = "armv7m vfp cortexm4"
-PACKAGE_EXTRA_ARCHS:tune-cortexm4 = "${PACKAGE_EXTRA_ARCHS:tune-armv7at} armv7m-vfp armv7m"
-- 
2.17.1


