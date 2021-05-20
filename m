Received: from mga09.intel.com (mga09.intel.com [])
 by mx.groups.io with SMTP id smtpd.web08.8005.1621516152993000414
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 06:09:13 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: HZNTzuX/nzBBymDLBQBfK4bDYjgLa8U/ZAM9crm5mxX6ILtndpfXRllv3o4g5raegn2McEMzkr
 jjMWgL2QQJ8Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="201263905"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="201263905"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 06:09:12 -0700
IronPort-SDR: RFikTTZQXVEiawRFP875hjPIMGK1XyD4KQk/LbjGCjSRhBbla77Sk/UyTn+a3WVV2VcT4ZEKh4
 Nk5RQ+y9M4MQ==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="467908695"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 06:09:12 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH v2 3/4] intel-x86-32.conf: add common MACHINE for x86 (32-bit) BOARDS
Date: Thu, 20 May 2021 21:20:29 +0800
Message-Id: <20210520132030.22991-4-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210520132030.22991-1-naveen.kumar.saini@intel.com>
References: <20210520132030.22991-1-naveen.kumar.saini@intel.com>

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

