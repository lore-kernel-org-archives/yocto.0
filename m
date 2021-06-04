Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.5273.1622791032030901925
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Jun 2021 00:17:12 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: kai.kang@windriver.com)
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3480438C0879
	for <yocto@yoctoproject.org>; Fri,  4 Jun 2021 07:17:09 +0000 (UTC)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 1547H6Cg021187
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 4 Jun 2021 00:17:06 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 4 Jun 2021 00:17:06 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.10 via Frontend Transport; Fri, 4 Jun 2021 00:17:05 -0700
From: "kai" <kai.kang@windriver.com>
To: <mark.hatle@kernel.crashing.org>
CC: <yocto@yoctoproject.org>
Subject: [meta-openssl102-fips][PATCH] layer.conf: set honister in LAYERSERIES_COMPAT
Date: Fri, 4 Jun 2021 15:17:01 +0800
Message-ID: <20210604071701.13129-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <16854D9C5413480C.23333@lists.yoctoproject.org>
References: <16854D9C5413480C.23333@lists.yoctoproject.org>
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
index 01026f0..27ddad6 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -10,7 +10,7 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two-fips = "5"
 
 LAYERVERSION_meta-openssl-one-zero-two-fips = "1"
 
-LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips = "hardknott"
+LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips = "hardknott honister"
 
 LAYERPATH_meta-openssl-one-zero-two-fips = "${LAYERDIR}"
 
-- 
2.17.1

