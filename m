Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web10.6500.1585651694403689486
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2020 03:48:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: uAiDso7W1h8Aths6iRmGxq/HeDJrUf9NgDaWpJMvxhGoVo1HU+/vQxhYHKwwMbl9LPuscOiJvP
 sD359IKOZzsw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2020 03:48:13 -0700
IronPort-SDR: QPPAKd/JXq06yjccjEZXV5xTYAiKfT6lRCRSKdLb50BblDog4bF+1FaW+Fls+rFxBKcp19Cx92
 qfk48oMH7eJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; 
   d="scan'208";a="252195519"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga006.jf.intel.com with ESMTP; 31 Mar 2020 03:48:12 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 1/5] layer.conf: update LAYERSERIES_COMPAT to dunfell
Date: Tue, 31 Mar 2020 18:53:57 +0800
Message-Id: <20200331105401.23726-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index cb0064f..1d41b3f 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -15,4 +15,4 @@ LAYERVERSION_zephyr = "1"
 
 LAYERDEPENDS_zephyr = "core"
 
-LAYERSERIES_COMPAT_zephyr = "warrior zeus"
+LAYERSERIES_COMPAT_zephyr = "dunfell"
-- 
2.17.1

