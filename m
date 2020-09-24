Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by mx.groups.io with SMTP id smtpd.web10.6012.1600909975075441730
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 18:12:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.151, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: 4HBAPpAeQg4vRWgtfmxxk8mtrYm93COdo1BgVLsKv8Q++dUIrDVJ3Rl54khQLn7lPu1l/E0J7G
 MP7Llo7qdV8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="141070008"
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; 
   d="scan'208";a="141070008"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Sep 2020 18:12:53 -0700
IronPort-SDR: h4ADoNTSYi5NJUvwbjmzJQ4FhMBD0ocVlr7iXCOFt4BTHcYGXS4UchnMQnVVXO1nd7fID4ddG8
 V0CNVdpGwXYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; 
   d="scan'208";a="382868428"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by orsmga001.jf.intel.com with ESMTP; 23 Sep 2020 18:12:52 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] acrn.conf: set tune corei7-64
Date: Thu, 24 Sep 2020 09:12:50 +0800
Message-Id: <1600909970-76742-1-git-send-email-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.7.4

Added CONFIG_X86_64 since ACRN hypervisor supports x86_64 capable
platforms only.

Ref:
https://github.com/zephyrproject-rtos/zephyr/commit/d0126a037d23484feebba00d2c0eac27e6393fef

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/machine/acrn.conf                      | 3 +--
 conf/machine/include/tune-corei7-common.inc | 3 +++
 2 files changed, 4 insertions(+), 2 deletions(-)
 create mode 100644 conf/machine/include/tune-corei7-common.inc

diff --git a/conf/machine/acrn.conf b/conf/machine/acrn.conf
index 96a7d66..c044933 100644
--- a/conf/machine/acrn.conf
+++ b/conf/machine/acrn.conf
@@ -3,8 +3,7 @@
 #@DESCRIPTION: Machine for Zephyr BOARD acrn
 
 require conf/machine/include/qemu.inc
-require conf/machine/include/tune-i586.inc
-
+require conf/machine/include/tune-corei7-common.inc
 ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
 
 ARCH_acrn = "x86"
diff --git a/conf/machine/include/tune-corei7-common.inc b/conf/machine/include/tune-corei7-common.inc
new file mode 100644
index 0000000..7ad9516
--- /dev/null
+++ b/conf/machine/include/tune-corei7-common.inc
@@ -0,0 +1,3 @@
+DEFAULTTUNE ?= "corei7-64"
+require conf/machine/include/tune-corei7.inc
+require conf/machine/include/x86-base.inc
-- 
2.7.4

