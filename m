Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web12.3225.1628126396793392616
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 18:19:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10066"; a="277803984"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; 
   d="scan'208";a="277803984"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Aug 2021 18:19:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; 
   d="scan'208";a="437623624"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Aug 2021 18:19:55 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH v2 2/2] layer.conf: add honister to LAYERSERIES_COMPAT
Date: Thu,  5 Aug 2021 09:33:52 +0800
Message-Id: <20210805013352.1723-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210805013352.1723-1-naveen.kumar.saini@intel.com>
References: <20210805013352.1723-1-naveen.kumar.saini@intel.com>

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 8e6b15d..5f13c27 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -15,4 +15,4 @@ LAYERVERSION_zephyr = "1"
 
 LAYERDEPENDS_zephyr = "core meta-python"
 
-LAYERSERIES_COMPAT_zephyr = "dunfell gatesgarth hardknott"
+LAYERSERIES_COMPAT_zephyr = "dunfell gatesgarth hardknott honister"
-- 
2.17.1

