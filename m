Received: from mga09.intel.com (mga09.intel.com [])
 by mx.groups.io with SMTP id smtpd.web08.8004.1621516152668018093
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 06:09:13 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: BO4UDRZxYrgNE46FQoFlCCIT/UnIq+rISRumrU5HI6lF7jQdycAAHCRRZmo8ydCSazH6DpsMfb
 H8PmkrhD0L5g==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="201263895"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="201263895"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 06:09:11 -0700
IronPort-SDR: teaEX6cP7GTIXLwECxu7o/E9V/+uzE5MsBYcvtGqkopOHtCQ2fGenua3rZqRJ04hcyTSLbIJJS
 uo0ItAM8s1Eg==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="467908675"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 06:09:11 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH v2 2/4] intel-x86-64.conf: add common MACHINE for x86 (64-bit) BOARDS
Date: Thu, 20 May 2021 21:20:28 +0800
Message-Id: <20210520132030.22991-3-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210520132030.22991-1-naveen.kumar.saini@intel.com>
References: <20210520132030.22991-1-naveen.kumar.saini@intel.com>

User need to specify board value to ZEPHYR_BOARD in local.conf
ZEPHYR_BOARD = "ehl_crb"

By default it set to Elkhart Lake CRB 'ehl_crb'

Currently 64-bit supported boards:
* up_squared
* ehl_crb_sbl
* ehl_crb
* acrn
* acrn_ehl_crb

Ref:
https://docs.zephyrproject.org/latest/boards/x86/index.html

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/machine/include/tune-corei7-common.inc |  3 +++
 conf/machine/intel-x86-64.conf              | 14 ++++++++++++++
 2 files changed, 17 insertions(+)
 create mode 100644 conf/machine/intel-x86-64.conf

diff --git a/conf/machine/include/tune-corei7-common.inc b/conf/machine/include/tune-corei7-common.inc
index 7ad9516..509d190 100644
--- a/conf/machine/include/tune-corei7-common.inc
+++ b/conf/machine/include/tune-corei7-common.inc
@@ -1,3 +1,6 @@
 DEFAULTTUNE ?= "corei7-64"
 require conf/machine/include/tune-corei7.inc
 require conf/machine/include/x86-base.inc
+
+# Add x86 to MACHINEOVERRIDE
+MACHINEOVERRIDES =. "x86:"
diff --git a/conf/machine/intel-x86-64.conf b/conf/machine/intel-x86-64.conf
new file mode 100644
index 0000000..2935cff
--- /dev/null
+++ b/conf/machine/intel-x86-64.conf
@@ -0,0 +1,14 @@
+#@TYPE: Machine
+#@NAME: intel-x86-64
+#@DESCRIPTION: common MACHINE for 64-bit x86 boards. User must set ${ZEPHYR_BOARD}. By default is set to 'ech_crb' board.
+
+require conf/machine/include/tune-corei7-common.inc
+
+ARCH_intel-x86-64 = "x86"
+
+# Supported Boards:
+# ZEPHYR_BOARD ?= "acrn"
+# ZEPHYR_BOARD ?= "acrn_ehl_crb"
+# ZEPHYR_BOARD ?= "up_squared"
+# ZEPHYR_BOARD ?= "ehl_crb_sbl"
+ZEPHYR_BOARD ?= "ehl_crb"
-- 
2.17.1

