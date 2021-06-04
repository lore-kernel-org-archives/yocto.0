Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3640.1622776014940631160
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Jun 2021 20:06:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: kai.kang@windriver.com)
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C76F638C0872
	for <yocto@yoctoproject.org>; Fri,  4 Jun 2021 03:06:53 +0000 (UTC)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 15436oVM008581
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 3 Jun 2021 20:06:51 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 3 Jun 2021 20:06:50 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.10 via Frontend Transport; Thu, 3 Jun 2021 20:06:49 -0700
From: "kai" <kai.kang@windriver.com>
To: <bruce.ashfield@gmail.com>
CC: <yocto@yoctoproject.org>
Subject: [meta-realtime][PATCH] layer.conf: set LAYERSERIES_COMPAT with honister
Date: Fri, 4 Jun 2021 11:06:19 +0800
Message-ID: <20210604030619.35679-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

Replace hardknott with honister in layer.conf which aligns with
oe-core.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 007f578..8ae67ba 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -15,6 +15,6 @@ BBFILE_PRIORITY_realtime = "5"
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
 LAYERVERSION_realtime = "1"
-LAYERSERIES_COMPAT_realtime = "hardknott"
+LAYERSERIES_COMPAT_realtime = "honister"
 LAYERDEPENDS_realtime = "core openembedded-layer"
 LAYERRECOMMENDS_realtime = "meta-realtime-dl (= 3.2)"
-- 
2.17.1

