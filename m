Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web11.2357.1575284695016860916
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 03:04:55 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 03:04:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; 
   d="scan'208";a="411723484"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2019 03:04:53 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 01/13] layer.conf: add LAYERSERIES_COMPAT to warrior & zeus
Date: Mon,  2 Dec 2019 19:08:37 +0800
Message-Id: <20191202110849.31494-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/layer.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index f7cd15d..cb0064f 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,3 +14,5 @@ BBFILE_PRIORITY_zephyr = "6"
 LAYERVERSION_zephyr = "1"
 
 LAYERDEPENDS_zephyr = "core"
+
+LAYERSERIES_COMPAT_zephyr = "warrior zeus"
-- 
2.17.1

