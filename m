Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8826DC6FA8B
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 19:27:46 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.1479.1663702058204118439
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 12:27:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: jon.mason@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6179F139F
	for <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 12:27:44 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BCB653F73D
	for <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 12:27:37 -0700 (PDT)
From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 1/3] zephyr-bsp: remove unused tune file
Date: Tue, 20 Sep 2022 11:01:44 -0400
Message-Id: <20220920150146.7124-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 19:27:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58102

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 .../conf/machine/include/tune-cortexm0.inc    | 31 -------------------
 1 file changed, 31 deletions(-)
 delete mode 100644 meta-zephyr-bsp/conf/machine/include/tune-cortexm0.inc

diff --git a/meta-zephyr-bsp/conf/machine/include/tune-cortexm0.inc b/meta-zephyr-bsp/conf/machine/include/tune-cortexm0.inc
deleted file mode 100644
index 5067eb2..0000000
--- a/meta-zephyr-bsp/conf/machine/include/tune-cortexm0.inc
+++ /dev/null
@@ -1,31 +0,0 @@
-DEFAULTTUNE ?= "cortexm0"
-
-require conf/machine/include/arm/arch-armv6.inc
-
-TUNEVALID[cortexm0] = "Enable Cortex-M0 specific processor optimizations"
-TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'cortexm0', ' -mcpu=cortex-m0', '', d)}"
-AVAILTUNES += "cortexm0"
-
-TUNEVALID[no-thumb-interwork] = "Enable thumb mode"
-TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'no-thumb-interwork', ' -mno-thumb-interwork', '', d)}"
-AVAILTUNES += "no-thumb-interwork"
-
-TUNEVALID[no-ffast-math] = "Enable thumb mode"
-TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'no-ffast-math', ' -fno-fast-math', '', d)}"
-AVAILTUNES += "no-ffast-math"
-
-TUNEVALID[soft] = "Enable thumb mode"
-TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'soft', ' -mfloat-abi=soft', '', d)}"
-AVAILTUNES += "soft"
-
-TUNEVALID[armv6m] = "Enable Cortex-M0 specific processor optimizations"
-TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'armv6m', ' -march=armv6-m', '', d)}"
-MACHINEOVERRIDES =. "${@bb.utils.contains('TUNE_FEATURES', 'armv6m', 'armv6m:', '' ,d)}"
-
-ARMPKGARCH:tune-cortexm0 = "cortexm0"
-TUNE_FEATURES:tune-cortexm0 = "${TUNE_FEATURES:tune-armv6} cortexm0"
-
-PACKAGE_EXTRA_ARCHS:tune-cortexm0 = "${PACKAGE_EXTRA_ARCHS:tune-armv6m} cortexm0-vfp"
-
-TUNE_FEATURES:tune-cortexm0 = "armv6m vfp cortexm0 thumb no-thumb-interwork soft"
-
-- 
2.17.1


