Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web11.5950.1622193234908438245
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 May 2021 02:13:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: iza/UanvOWNCf08uc+V7xCA4FWHqiQoj62UBdnY2ISaB82O4fctTdED4cfZhxXqygHK+gwLqSi
 YVuEuB/Ul7sg==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="224154415"
X-IronPort-AV: E=Sophos;i="5.83,229,1616482800"; 
   d="scan'208";a="224154415"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2021 02:13:54 -0700
IronPort-SDR: U++3nUxnAux5kzgtvGeACSe/4GeqU8sAnMPnLaO3HzrG8f8yxze/B9U+3FAfzG0Dt/4WBuySWl
 xhSuyVXSssOQ==
X-IronPort-AV: E=Sophos;i="5.83,229,1616482800"; 
   d="scan'208";a="445556176"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2021 02:13:53 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][hardknott][PATCH 3/4] intel-x86-32.conf: add common MACHINE for x86 (32-bit) BOARDS
Date: Fri, 28 May 2021 17:26:46 +0800
Message-Id: <20210528092647.12652-3-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210528092647.12652-1-naveen.kumar.saini@intel.com>
References: <20210528092647.12652-1-naveen.kumar.saini@intel.com>

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

