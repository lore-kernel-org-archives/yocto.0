Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web08.4491.1613639716099734575
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 01:15:17 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: JKKifJWnjtJMt+ZSfmc1oCglYbG/7sJRsIEdAAvwD7NhKwwBrYgkkMIX0N6xly4zr4/62HOvzf
 SeAORLYbI4kw==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="247524736"
X-IronPort-AV: E=Sophos;i="5.81,186,1610438400"; 
   d="scan'208";a="247524736"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Feb 2021 01:15:13 -0800
IronPort-SDR: kG1m7KtTdFVdpXDFzp86QI4e8WXXga2vnrkkY3aS8oBur5N4S8F6Z2QbGz/+JaR/5YCU7ejqxx
 r+CPcL62jekg==
X-IronPort-AV: E=Sophos;i="5.81,186,1610438400"; 
   d="scan'208";a="513204964"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Feb 2021 01:15:12 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 1/2] zephyr: upgrade 2.5.0-rc4 -> 2.5.0
Date: Thu, 18 Feb 2021 17:26:01 +0800
Message-Id: <20210218092602.22918-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

Release notes:
https://github.com/zephyrproject-rtos/zephyr/releases/tag/zephyr-v2.5.0

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 ...r-kernel-src-2.5.0-rc4.inc => zephyr-kernel-src-2.5.0.inc} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-kernel/zephyr-kernel/{zephyr-kernel-src-2.5.0-rc4.inc => zephyr-kernel-src-2.5.0.inc} (82%)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0-rc4.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
similarity index 82%
rename from recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0-rc4.inc
rename to recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
index b8aa4dc..6350d86 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0-rc4.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
@@ -1,5 +1,5 @@
 SRCREV_FORMAT = "default_cmsis"
-SRCREV_default = "v2.5.0-rc4"
+SRCREV_default = "fe7c2efca800a0cf1bccf23aefe08b3c4beb88bf"
 SRCREV_cmsis = "c3bd2094f92d574377f7af2aec147ae181aa5f8e"
 SRCREV_nordic = "f3434da6446380fcdd426dbe2866af21d0d549b6"
 SRCREV_stm32 = "cc8731dba4fd9c57d7fe8ea6149828b89c2bd635"
@@ -7,4 +7,4 @@ SRCREV_open-amp = "de1b85a13032a2de1d8b6695ae5f800b613e739d"
 SRCREV_libmetal = "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
 SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
 
-PV = "2.5.0-rc4+git${SRCPV}"
+PV = "2.5.0+git${SRCPV}"
-- 
2.17.1

