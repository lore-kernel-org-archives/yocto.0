Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web09.3931.1576139448547174718
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Dec 2019 00:30:48 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Dec 2019 00:30:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,305,1571727600"; 
   d="scan'208";a="207996443"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga008.jf.intel.com with ESMTP; 12 Dec 2019 00:30:46 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 1/2] zephyr.conf: Enable uninative
Date: Thu, 12 Dec 2019 16:34:50 +0800
Message-Id: <20191212083451.18422-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

Use uninative by default to allow to build multiple distro
and re-use sstate cache

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/distro/zephyr.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/distro/zephyr.conf b/conf/distro/zephyr.conf
index 580ae2a..673152f 100644
--- a/conf/distro/zephyr.conf
+++ b/conf/distro/zephyr.conf
@@ -14,3 +14,5 @@ TEST_SUITES = "zephyr"
 TOOLCHAIN_TARGET_TASK += " newlib"
 INHERIT += "siteinfo-zephyr"
 
+INHERIT += "uninative"
+require conf/distro/include/yocto-uninative.inc
-- 
2.17.1

