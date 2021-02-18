Received: from mga07.intel.com (mga07.intel.com [])
 by mx.groups.io with SMTP id smtpd.web08.4491.1613639716099734575
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 01:15:18 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: 0XXiYlxLn97IKIzrYe05VxZucEbntZyQh7YHYqjEvnqYH+1xc2Pwj/XtX2dfS+BXazYLLXRKoB
 1dcTGeKu7y3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="247524748"
X-IronPort-AV: E=Sophos;i="5.81,186,1610438400"; 
   d="scan'208";a="247524748"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Feb 2021 01:15:14 -0800
IronPort-SDR: M5Y/qXjxTd/6v0A9gtlSwXMHUiWAxCDdF4oybzT5B6Lcr7MknTxPCxrC9oK6fXuF1WXkorlCve
 CCJKD/zSrsOQ==
X-IronPort-AV: E=Sophos;i="5.81,186,1610438400"; 
   d="scan'208";a="513204968"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Feb 2021 01:15:13 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/2] zephyr-kernel-src.inc: set default preferred version to 2.5.0
Date: Thu, 18 Feb 2021 17:26:02 +0800
Message-Id: <20210218092602.22918-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210218092602.22918-1-naveen.kumar.saini@intel.com>
References: <20210218092602.22918-1-naveen.kumar.saini@intel.com>

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index 2dcde74..39cbc10 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -2,7 +2,7 @@ LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
 
 # Default to a stable version
-PREFERRED_VERSION_zephyr-kernel ??= "2.4.0"
+PREFERRED_VERSION_zephyr-kernel ??= "2.5.0"
 include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
 
 inherit cmake
-- 
2.17.1

