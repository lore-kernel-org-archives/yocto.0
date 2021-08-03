Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web09.2585.1627980846193897504
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 01:54:06 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="277395552"
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; 
   d="scan'208";a="277395552"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2021 01:54:06 -0700
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; 
   d="scan'208";a="510952235"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2021 01:54:05 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/2] layer.conf: add honister to LAYERSERIES_COMPAT
Date: Tue,  3 Aug 2021 17:07:59 +0800
Message-Id: <20210803090759.20953-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210803090759.20953-1-naveen.kumar.saini@intel.com>
References: <20210803090759.20953-1-naveen.kumar.saini@intel.com>

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

