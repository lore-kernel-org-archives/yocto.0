Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.5057.1622789358496414200
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Jun 2021 23:49:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: kai.kang@windriver.com)
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 14F1B38C0879
	for <yocto@yoctoproject.org>; Fri,  4 Jun 2021 06:49:17 +0000 (UTC)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 1546nETl018689
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 3 Jun 2021 23:49:14 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 3 Jun 2021 23:49:13 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.10 via Frontend Transport; Thu, 3 Jun 2021 23:49:12 -0700
From: "kai" <kai.kang@windriver.com>
To: <richard.purdie@linuxfoundation.org>
CC: <yocto@yoctoproject.org>
Subject: [meta-gplv2][PATCH] layer.conf: set honister in LAYERSERIES_COMPAT
Date: Fri, 4 Jun 2021 14:49:09 +0800
Message-ID: <20210604064909.1543-1-kai.kang@windriver.com>
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
index 9fc797a..3abe6b5 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,7 +14,7 @@ LAYERVERSION_gplv2 = "1"
 
 LAYERDEPENDS_gplv2 = "core"
 
-LAYERSERIES_COMPAT_gplv2 = "hardknott"
+LAYERSERIES_COMPAT_gplv2 = "honister"
 
 LICENSE_PATH += "${LAYERDIR}/licenses"
 
-- 
2.17.1

