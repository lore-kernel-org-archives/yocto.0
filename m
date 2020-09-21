Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web11.33207.1600654883872995095
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Sep 2020 19:21:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: six7D5oAuuMj15NezJNH59lMm94rkjR8CkCEZlCuQICo6+ALlGh7pSI2+ZKj+20bhlPG+34jYv
 H75h73OCQagQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9750"; a="161217081"
X-IronPort-AV: E=Sophos;i="5.77,285,1596524400"; 
   d="scan'208";a="161217081"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Sep 2020 19:21:21 -0700
IronPort-SDR: 5oylWjOzZryOnpwdDTn/95Ub5ErybZmNr8gL1tQpgDWaVOTpCByAs3O3s7DIALlA1J1R5TxwRL
 kuWH/LNsgcbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,285,1596524400"; 
   d="scan'208";a="347882588"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by orsmga007.jf.intel.com with ESMTP; 20 Sep 2020 19:21:20 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyr-kernel: Add python dependencies
Date: Mon, 21 Sep 2020 10:21:18 +0800
Message-Id: <20200921022118.3875-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jon Mason <jdmason@kudzu.us>

Zephyr refuses to compile due to missing python dependencies.

Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index d7147d5..2090092 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -2,6 +2,7 @@
 
 ZEPHYR_INHERIT_CLASSES += "zephyr cmake"
 inherit ${ZEPHYR_INHERIT_CLASSES}
+inherit python3native
 
 # There shouldn't be a manifest for zephyr kernels since there is no root
 # filesystem.
@@ -20,6 +21,7 @@ export ZEPHYR_BASE="${S}"
 # We always need a toolchain to cross-compile.
 INHIBIT_DEFAULT_DEPS = "1"
 DEPENDS += "gcc-cross-${TARGET_ARCH} libgcc ${TOOLCHAIN_TARGET_TASK} gperf-native"
+DEPENDS += " python3-pyelftools-native python3-pyyaml-native python3-pykwalify-native"
 CROSS_COMPILE = "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
 
 DEPENDS_append_qemuall = " qemu-native qemu-helper-native"
-- 
2.27.0

