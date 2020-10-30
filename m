Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web11.8994.1604033168146415172
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Oct 2020 21:46:08 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: VdgqFc255jskiKw0TMADcUp+Hvng0LxsgjWCkb8ZMbm/wqN/jtnm7/2CxzMvk1nFD2wYj2yrnu
 ibUar+EL5/HQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="165062196"
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; 
   d="scan'208";a="165062196"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2020 21:46:07 -0700
IronPort-SDR: dBuEs2PE+eZpRuWExitZ5pB+CscBF8+wLLhH8y/BXVVN//+7cme3FY6KpZXozLhnxaLjtR+1cD
 KHhX8fnurfGQ==
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; 
   d="scan'208";a="361739479"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2020 21:46:06 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyr-kernel-test: drop fatal kernel testcase
Date: Fri, 30 Oct 2020 12:55:17 +0800
Message-Id: <20201030045517.11213-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

kernel 'fatal' testcase has directory structure changes in v2.4.0
version, which does not fit in current meta-zephyr test
build structure. So excluding it for now.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
index faf28bd..a1e62af 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
@@ -25,7 +25,6 @@ ZEPHYRTESTS = " \
     context \
     device \
     early_sleep \
-    fatal \
     fifo \
     fpu_sharing \
     gen_isr_table \
-- 
2.17.1

