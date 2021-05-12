Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web11.1581.1620786457782215458
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 19:27:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: BbCni3Kx7Xm0MJTld+FgtZgKN91WWZnwCH7hIk+JVAZqd4q+pvQTITSG1LKCIdO1JXBnhGBWSb
 9BFR4ANfveMg==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="199658612"
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; 
   d="scan'208";a="199658612"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 May 2021 19:27:36 -0700
IronPort-SDR: gCyp4Vvg8HkH/fpAjf4VcZJqCdEFW7H9HR2YMG0yHXGVxWg/8gGZHdn86dmR7jrqju/seQTAhn
 h54fDnBoz83w==
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; 
   d="scan'208";a="625044093"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 May 2021 19:27:35 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/3] intel-x86-64.conf: add common MACHINE for x86 (64-bit) BOARDS
Date: Wed, 12 May 2021 10:40:03 +0800
Message-Id: <20210512024004.29966-3-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210512024004.29966-1-naveen.kumar.saini@intel.com>
References: <20210512024004.29966-1-naveen.kumar.saini@intel.com>

User need to specify board value to ZEPHYR_BOARD in local.conf
ZEPHYR_BOARD = "ehl_crb"

By default it set to Elkhart Lake CRB 'ehl_crb'

Currently 64-bit supported boards:
* up_squared
* ehl_crb_sbl
* ehl_crb

Ref:
https://docs.zephyrproject.org/latest/boards/x86/index.html

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/machine/include/tune-corei7-common.inc |  3 +++
 conf/machine/intel-x86-64.conf              | 12 ++++++++++++
 2 files changed, 15 insertions(+)
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
index 0000000..15e3ad8
--- /dev/null
+++ b/conf/machine/intel-x86-64.conf
@@ -0,0 +1,12 @@
+#@TYPE: Machine
+#@NAME: intel-x86-64
+#@DESCRIPTION: common MACHINE for 64-bit x86 boards. User must set ${ZEPHYR_BOARD}. By default is set to 'ech_crb' board.
+
+require conf/machine/include/tune-corei7-common.inc
+
+ARCH_intel-x86-64 = "x86"
+
+# Supported Boards:
+# ZEPHYR_BOARD ?= "up_squared"
+# ZEPHYR_BOARD ?= "ehl_crb_sbl"
+ZEPHYR_BOARD ?= "ehl_crb"
-- 
2.17.1

