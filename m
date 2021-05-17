Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web10.15617.1621236663048679217
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 00:31:03 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: QMq/mrlTCP/lJwlWLzFzr7Z2Kwc8sQ2+wai0qb4Fz9Oo3oU75JyxqIGzWygqTSdwrfspk2RiyU
 hlLkGrXCG1EQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9986"; a="187528441"
X-IronPort-AV: E=Sophos;i="5.82,306,1613462400"; 
   d="scan'208";a="187528441"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 May 2021 00:31:02 -0700
IronPort-SDR: 0SMsqSySuPcKuAOHePaHm0C294sbKYYfzQuBrOZNu2hCFR9ERaJ4xCWl1nOVrwZxNv+N/tk8Va
 4sk4Qw+SkJ3A==
X-IronPort-AV: E=Sophos;i="5.82,306,1613462400"; 
   d="scan'208";a="438782303"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 May 2021 00:31:01 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyr-kernel-src: switch from master branch to main
Date: Mon, 17 May 2021 15:43:30 +0800
Message-Id: <20210517074330.32229-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

* branch was renamed in upstream repo

It fixes do_fetch failure

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index 8d5f176..dfc2250 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -13,7 +13,7 @@ inherit cmake
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 SRC_URI = "\
-    git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=master;name=default \
+    git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=main;name=default \
     git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
     git://github.com/zephyrproject-rtos/hal_nordic.git;protocol=https;destsuffix=git/modules/hal/nordic;name=nordic \
     git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=https;destsuffix=git/modules/hal/stm32;name=stm32 \
-- 
2.17.1

