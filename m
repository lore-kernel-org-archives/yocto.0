Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web11.25484.1626686697927686149
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jul 2021 02:24:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.65, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10049"; a="211077687"
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; 
   d="scan'208";a="211077687"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jul 2021 02:24:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; 
   d="scan'208";a="494002093"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jul 2021 02:24:55 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] intel-x86-32.conf: drop machine configuration
Date: Mon, 19 Jul 2021 17:38:32 +0800
Message-Id: <20210719093832.7524-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

Support for 'minnowboard' and 'up_squared_32' BOARDS have been removed.

https://github.com/zephyrproject-rtos/zephyr/commit/ec5e3017acb1bb4aa802349dcc684eacbefef01c
https://github.com/zephyrproject-rtos/zephyr/commit/11b8dd85b976e9c56861e9cdc0695ea60a96e617

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/machine/include/tune-core2-common.inc |  6 ------
 conf/machine/intel-x86-32.conf             | 12 ------------
 2 files changed, 18 deletions(-)
 delete mode 100644 conf/machine/include/tune-core2-common.inc
 delete mode 100644 conf/machine/intel-x86-32.conf

diff --git a/conf/machine/include/tune-core2-common.inc b/conf/machine/include/tune-core2-common.inc
deleted file mode 100644
index 012f078..0000000
--- a/conf/machine/include/tune-core2-common.inc
+++ /dev/null
@@ -1,6 +0,0 @@
-DEFAULTTUNE ?= "core2-32"
-require conf/machine/include/tune-core2.inc
-require conf/machine/include/x86-base.inc
-
-# Add x86 to MACHINEOVERRIDES
-MACHINEOVERRIDES =. "x86:"
diff --git a/conf/machine/intel-x86-32.conf b/conf/machine/intel-x86-32.conf
deleted file mode 100644
index 06f6da5..0000000
--- a/conf/machine/intel-x86-32.conf
+++ /dev/null
@@ -1,12 +0,0 @@
-#@TYPE: Machine
-#@NAME: intel-x86-32
-#@DESCRIPTION: common MACHINE for 32-bit x86 boards. User must set ${ZEPHYR_BOARD}. By default is set to 'minnowboard' board.
-
-require conf/machine/include/tune-core2-common.inc
-
-ARCH_intel-x86-32 = "x86"
-
-# Supported Boards:
-# ZEPHYR_BOARD ?= "minnowboard"
-# ZEPHYR_BOARD ?= "up_squared_32"
-ZEPHYR_BOARD ?= "minnowboard"
-- 
2.17.1

