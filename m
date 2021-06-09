Received: from mga04.intel.com (mga04.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2717.1623206272937044334
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 19:37:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: M6rEL7W0VInSUmlD21kKuQdNSJAHdZKgSb/syZYT6lUYA3dl6YWDIby/foKKjmOEsV5REkAU1h
 MuUvilmZlSpg==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="203135713"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="203135713"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 19:37:58 -0700
IronPort-SDR: 89FclQy7GHKmuHZrQYc1pZQBNBxizHLny6wuWbM+MV+ROs1L7Ivz/B0KHw93KMc/1rqzkJ+TkY
 QuTIbo/hfwqw==
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="476819658"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 19:37:57 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 07/10] zephyr-kernel-src set default preferred version to 2.6.0
Date: Wed,  9 Jun 2021 10:50:41 +0800
Message-Id: <20210609025044.8543-7-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210609025044.8543-1-naveen.kumar.saini@intel.com>
References: <20210609025044.8543-1-naveen.kumar.saini@intel.com>

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index 01c87c4..5e43583 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -22,5 +22,5 @@ SRC_URI = "\
 S = "${WORKDIR}/git"
 
 # Default to a stable version
-PREFERRED_VERSION_zephyr-kernel ??= "2.5.0"
+PREFERRED_VERSION_zephyr-kernel ??= "2.6.0"
 include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
-- 
2.17.1

