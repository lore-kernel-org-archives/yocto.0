Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4BECC4332F
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 06:15:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web10.25157.1698905715222816979
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 23:15:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=oKcN6a8G;
 spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698905715; x=1730441715;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=BgoRptVTFyxer4tKWYzhrG2E76GmXRNG8X0e0xaatZs=;
  b=oKcN6a8G7Fg/t0EYA3Rx6D63MQmNNvcT+A3X91zcOumcdSIOCbhxtHGQ
   odukg9lVqgNsHL0RfLk6Kc2sZljhjGImFcKi4XMmhSzdsLa4aqQKeVUPR
   t1ydNA+3+juJQXO6AqsrPI5msrYSUmZysuy2vXI6oOmRQeoxRZHljgirX
   UWZiLWO3QHah/C2JAKupxrDrrZ3O/Qorz5tAITTokHt8QNbCxdw/02X40
   8FH9Het4ycwg+zGicNlZ67NlmmLASWBbAl5gfIH1KK4o/3ZpKTPUrmWvo
   zl7gztNnXXWhmEPv2W+ipgvsx/yifoFZ2osEDFLfTUwi32iK/3reec6ML
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="474884258"
X-IronPort-AV: E=Sophos;i="6.03,270,1694761200"; 
   d="scan'208";a="474884258"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2023 23:15:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="711035217"
X-IronPort-AV: E=Sophos;i="6.03,270,1694761200"; 
   d="scan'208";a="711035217"
Received: from saininav-desk1.png.intel.com ([172.30.130.5])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2023 23:15:12 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] intel-x86-64.conf: add intel_ prefix to x86 board names
Date: Thu,  2 Nov 2023 14:41:38 +0800
Message-Id: <20231102064138.3020088-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 06:15:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61569

Use newly added naming convention (intel_).

https://github.com/zephyrproject-rtos/zephyr/commit/03905f7e55d24788e0a38d1641dcadf529fce85d
https://github.com/zephyrproject-rtos/zephyr/commit/2b757f1eca3e27f2405362a99d77fc9fc2b17619

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 meta-zephyr-bsp/conf/machine/intel-x86-64.conf | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-zephyr-bsp/conf/machine/intel-x86-64.conf b/meta-zephyr-bsp/conf/machine/intel-x86-64.conf
index 74e8f6e..5112f28 100644
--- a/meta-zephyr-bsp/conf/machine/intel-x86-64.conf
+++ b/meta-zephyr-bsp/conf/machine/intel-x86-64.conf
@@ -1,6 +1,6 @@
 #@TYPE: Machine
 #@NAME: intel-x86-64
-#@DESCRIPTION: common MACHINE for 64-bit x86 boards. User must set ${ZEPHYR_BOARD}. By default is set to 'ech_crb' board.
+#@DESCRIPTION: common MACHINE for 64-bit x86 boards. User must set ${ZEPHYR_BOARD}. By default is set to 'intel_ehl_crb' board.
 
 require conf/machine/include/tune-corei7-common.inc
 
@@ -10,5 +10,5 @@ ARCH:intel-x86-64 = "x86"
 # ZEPHYR_BOARD ?= "acrn"
 # ZEPHYR_BOARD ?= "acrn_ehl_crb"
 # ZEPHYR_BOARD ?= "up_squared"
-# ZEPHYR_BOARD ?= "ehl_crb_sbl"
-ZEPHYR_BOARD ?= "ehl_crb"
+# ZEPHYR_BOARD ?= "intel_ehl_crb_sbl"
+ZEPHYR_BOARD ?= "intel_ehl_crb"
-- 
2.34.1


