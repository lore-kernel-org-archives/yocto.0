Received: from mga09.intel.com (mga09.intel.com [])
 by mx.groups.io with SMTP id smtpd.web08.1500.1620786456585841456
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 19:27:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: qEYmg0A9rUF9OySghXRP0/5DMuBfsFQD28wWUuICd5rs2FXRNDSEXaNk/+ew9pQa2EYE+Bv/uB
 pQBU5bfjGzNg==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="199658613"
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; 
   d="scan'208";a="199658613"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 May 2021 19:27:37 -0700
IronPort-SDR: YJcSM2Y4TV4FTjyvZMV6DVXqWsXyTwSx8nsPq0Cd99j0YDhz7i9bUPc9L1JUDa6mvjCOKvqrrB
 SzKVHWLqS55A==
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; 
   d="scan'208";a="625044096"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 May 2021 19:27:36 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 3/3] intel-x86-32.conf: add common MACHINE for x86 (32-bit) BOARDS
Date: Wed, 12 May 2021 10:40:04 +0800
Message-Id: <20210512024004.29966-4-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210512024004.29966-1-naveen.kumar.saini@intel.com>
References: <20210512024004.29966-1-naveen.kumar.saini@intel.com>

User need to specify board value to ZEPHYR_BOARD in local.conf
ZEPHYR_BOARD = "minnowboard"

By default it set to MinnowBoard Max 'minnowboard'

Currently 32-bit supported boards:
* up_squared_32
* minnowboard

Ref:
https://docs.zephyrproject.org/latest/boards/x86/index.html

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/machine/include/tune-core2-common.inc |  6 ++++++
 conf/machine/intel-x86-32.conf             | 12 ++++++++++++
 2 files changed, 18 insertions(+)
 create mode 100644 conf/machine/include/tune-core2-common.inc
 create mode 100644 conf/machine/intel-x86-32.conf

diff --git a/conf/machine/include/tune-core2-common.inc b/conf/machine/include/tune-core2-common.inc
new file mode 100644
index 0000000..012f078
--- /dev/null
+++ b/conf/machine/include/tune-core2-common.inc
@@ -0,0 +1,6 @@
+DEFAULTTUNE ?= "core2-32"
+require conf/machine/include/tune-core2.inc
+require conf/machine/include/x86-base.inc
+
+# Add x86 to MACHINEOVERRIDES
+MACHINEOVERRIDES =. "x86:"
diff --git a/conf/machine/intel-x86-32.conf b/conf/machine/intel-x86-32.conf
new file mode 100644
index 0000000..06f6da5
--- /dev/null
+++ b/conf/machine/intel-x86-32.conf
@@ -0,0 +1,12 @@
+#@TYPE: Machine
+#@NAME: intel-x86-32
+#@DESCRIPTION: common MACHINE for 32-bit x86 boards. User must set ${ZEPHYR_BOARD}. By default is set to 'minnowboard' board.
+
+require conf/machine/include/tune-core2-common.inc
+
+ARCH_intel-x86-32 = "x86"
+
+# Supported Boards:
+# ZEPHYR_BOARD ?= "minnowboard"
+# ZEPHYR_BOARD ?= "up_squared_32"
+ZEPHYR_BOARD ?= "minnowboard"
-- 
2.17.1

