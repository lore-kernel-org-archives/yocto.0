Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web10.5852.1622193233090340226
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 May 2021 02:13:53 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: tZ42kqy+pIuY2gQTvbbiSIJPkTMQ7I4Gv6eybEWqvJmeKSji+7yolrHkmCGA7pKOFd2aPcfz+y
 IH7M8lmVs63g==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="224154406"
X-IronPort-AV: E=Sophos;i="5.83,229,1616482800"; 
   d="scan'208";a="224154406"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2021 02:13:52 -0700
IronPort-SDR: kinarpiKkqB5geOGVBxKAcfXt4Cfd2Pbe4BinScS6x9bukoZ8eiABFi7cY0Lo1mCbb05MXijqS
 fJM0eEDIMDlg==
X-IronPort-AV: E=Sophos;i="5.83,229,1616482800"; 
   d="scan'208";a="445556169"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2021 02:13:52 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][hardknott][PATCH 2/4] intel-x86-64.conf: add common MACHINE for x86 (64-bit) BOARDS
Date: Fri, 28 May 2021 17:26:45 +0800
Message-Id: <20210528092647.12652-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210528092647.12652-1-naveen.kumar.saini@intel.com>
References: <20210528092647.12652-1-naveen.kumar.saini@intel.com>

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

