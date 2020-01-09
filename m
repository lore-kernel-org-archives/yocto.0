Received: from mga17.intel.com (mga17.intel.com [])
 by mx.groups.io with SMTP id smtpd.web09.6499.1578561525285294862
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 01:18:46 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Jan 2020 01:18:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; 
   d="scan'208";a="254531045"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga002.fm.intel.com with ESMTP; 09 Jan 2020 01:18:46 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 3/4] tune-cortexm3.inc: set '-mfloat-abi=soft' floating-point ABI
Date: Thu,  9 Jan 2020 17:23:09 +0800
Message-Id: <20200109092310.9730-3-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200109092310.9730-1-naveen.kumar.saini@intel.com>
References: <20200109092310.9730-1-naveen.kumar.saini@intel.com>

Due to default -mfloat-abi=softfp facing below error log:
"Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)"

Ref: https://gcc.gnu.org/onlinedocs/gcc/ARM-Options.html

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/machine/include/tune-cortexm3.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/tune-cortexm3.inc b/conf/machine/include/tune-cortexm3.inc
index 25d7590..3fba827 100644
--- a/conf/machine/include/tune-cortexm3.inc
+++ b/conf/machine/include/tune-cortexm3.inc
@@ -18,3 +18,4 @@ PACKAGE_EXTRA_ARCHS_tune-cortexm3 ="cortexm3"
 TUNE_FEATURES_tune-cortexm3 = "armv7m vfp cortexm3"
 PACKAGE_EXTRA_ARCHS_tune-cortexm3 = "${PACKAGE_EXTRA_ARCHS_tune-armv7at} armv7m-vfp"
 
+TUNE_CCARGS_MFLOAT = "soft"
-- 
2.17.1

