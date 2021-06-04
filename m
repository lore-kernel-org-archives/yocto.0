Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.5002.1622788573930665955
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Jun 2021 23:36:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: kai.kang@windriver.com)
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E5FB838C066A
	for <yocto@yoctoproject.org>; Fri,  4 Jun 2021 06:36:12 +0000 (UTC)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 1546a923017960
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 3 Jun 2021 23:36:09 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 3 Jun 2021 23:36:08 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.10 via Frontend Transport; Thu, 3 Jun 2021 23:36:07 -0700
From: "kai" <kai.kang@windriver.com>
To: <mark.hatle@kernel.crashing.org>
CC: <yocto@yoctoproject.org>
Subject: [meta-openssl102][PATCH] layer.conf: support honister
Date: Fri, 4 Jun 2021 14:36:04 +0800
Message-ID: <20210604063604.34706-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

There is no hardknott branch yet, so keep 'hardknott' rather than
replace it.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 4ea1009..ce7f99b 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -10,7 +10,7 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two = "5"
 
 LAYERVERSION_meta-openssl-one-zero-two = "1"
 
-LAYERSERIES_COMPAT_meta-openssl-one-zero-two = "hardknott"
+LAYERSERIES_COMPAT_meta-openssl-one-zero-two = "hardknott honister"
 
 LAYERDEPENDS_meta-openssl-one-zero-two = " \
         core \
-- 
2.17.1

