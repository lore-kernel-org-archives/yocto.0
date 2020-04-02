Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web12.963.1585808773252109818
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Apr 2020 23:26:13 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 0326QBGZ026826
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Wed, 1 Apr 2020 23:26:11 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Wed, 1 Apr
 2020 23:26:10 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH] layer.conf: update LAYERSERIES_COMPAT for dunfell
Date: Thu, 2 Apr 2020 14:26:08 +0800
Message-ID: <20200402062608.4424-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index cdee27a..da24359 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -23,7 +23,7 @@ BBFILE_PRIORITY_selinux = "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux = "1"
 
-LAYERSERIES_COMPAT_selinux = "zeus"
+LAYERSERIES_COMPAT_selinux = "dunfell"
 
 LAYERDEPENDS_selinux = " \
     core \
-- 
2.17.1

