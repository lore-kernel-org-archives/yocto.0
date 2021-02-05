Received: from mga07.intel.com (mga07.intel.com [])
 by mx.groups.io with SMTP id smtpd.web08.5997.1612517688351563351
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Feb 2021 01:34:48 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: 61cd9HtWQKG1SJ+HJCko5aAYcHmRkuPiypS4m9s4zHWY75lIwCjmXuS86l22EVAU6IJT0EBzud
 MHXnQIfswFww==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="245479620"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; 
   d="scan'208";a="245479620"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2021 01:34:47 -0800
IronPort-SDR: AC4MmQyUMPqMuPFJ6Kkad/gSceJVV51/HfWPMSj4wgDGU6IEee3+QuQ9LF1SLafBKxud38kXAn
 u4mPdSfz2jxg==
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; 
   d="scan'208";a="373337106"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2021 01:34:47 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/5] zephyr-ipm: drop recipe
Date: Fri,  5 Feb 2021 17:45:20 +0800
Message-Id: <20210205094523.33841-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210205094523.33841-1-naveen.kumar.saini@intel.com>
References: <20210205094523.33841-1-naveen.kumar.saini@intel.com>

ipm moved to driver folder. Sample is no longer available.

Ref:
https://github.com/zephyrproject-rtos/zephyr/commit/131cfa2043b255246ae5c30c2c1383dff49a0442

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-ipm.bb | 24 ----------------------
 1 file changed, 24 deletions(-)
 delete mode 100644 recipes-kernel/zephyr-kernel/zephyr-ipm.bb

diff --git a/recipes-kernel/zephyr-kernel/zephyr-ipm.bb b/recipes-kernel/zephyr-kernel/zephyr-ipm.bb
deleted file mode 100644
index 2f158c8..0000000
--- a/recipes-kernel/zephyr-kernel/zephyr-ipm.bb
+++ /dev/null
@@ -1,24 +0,0 @@
-require zephyr-kernel.inc
-require zephyr-kernel-common.inc
-inherit deploy
-
-SRC_DIR_IPM_arduino-101-sss = "samples/ipm/ipm_demo_arc"
-SRC_DIR_IPM_arduino-101     = "samples/ipm/ipm_demo_lmt"
-
-COMPATIBLE_MACHINE = "(arduino-101-sss|arduino-101)"
-
-ZEPHYR_SRC_DIR = "${S}/${SRC_DIR_IPM}/src"
-
-ZEPHYR_BASE = "${S}"
-
-do_compile () {
-    cd ${SRC_DIR_IPM}
-    oe_runmake ${ZEPHYR_MAKE_ARGS}
-}
-
-do_deploy () {
-    install -D ${SRC_DIR_IPM}/outdir/${BOARD}/zephyr.elf ${DEPLOYDIR}/${PN}.elf
-    install -D ${SRC_DIR_IPM}/outdir/${BOARD}/zephyr.bin ${DEPLOYDIR}/${PN}.bin
-}
-
-addtask deploy after do_compile
-- 
2.17.1

