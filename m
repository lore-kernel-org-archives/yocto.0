Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E233C4332F
	for <webhook@archiver.kernel.org>; Tue, 14 Nov 2023 16:47:13 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.17500.1699980426574194432
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Nov 2023 08:47:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=pj+Tg/1x;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=96824d1732=randy.macleod@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AEAsoJj005361;
	Tue, 14 Nov 2023 08:47:03 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PPS06212021; bh=p/c9n
	0bdDjb50tOod7UuJo/6YJH5rjJYymRYfQFuqoE=; b=pj+Tg/1xq8FBjwgvnPFxF
	GJ3ujYWyPvRbLykalsDQ4v/54zgdfaVvlRLMDDZKj5MTJJI3FJrJSpxD8Yyaj2/D
	baZ7OYt37btJ3TCR3DH6U/kvWalQ0vgGeI7JzLQsxUDjX4n/REmmikUcRn9mLV7V
	ZkkZ0/sVK497ezFGam1Bix/s4SoC++9SxBYvj0mwDZ8hn23GQ+GyXryM5jyxDtJ/
	lsi3qr58KDHSbvsi/SnVC90gbaiuRZEEJrWbnqiTrsTORCsB6JWaCxT3VKcSI9tL
	ze4k6vRcwWRdal2vQw3EHrXYu+zqXoMeF9f4Eo+HG24q+ZOtW6Ap3pXB7/BioUWO
	w==
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ua5s4tmgr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 14 Nov 2023 08:47:03 -0800 (PST)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 08:47:07 -0800
Received: from pop-os.wrs.com (172.25.44.2) by ala-exchng01.corp.ad.wrs.com
 (147.11.82.252) with Microsoft SMTP Server id 15.1.2507.34 via Frontend
 Transport; Tue, 14 Nov 2023 08:47:07 -0800
From: <Randy.MacLeod@windriver.com>
To: <yocto@lists.yoctoproject.org>, <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH] config.json: temporarily disable pressure regulation for master-next ONLY
Date: Tue, 14 Nov 2023 11:47:02 -0500
Message-ID: <20231114164702.3391746-1-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: 3yDN-1gJjACT-eEghjGM37-OnRJbX2JN
X-Proofpoint-ORIG-GUID: 3yDN-1gJjACT-eEghjGM37-OnRJbX2JN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-14_16,2023-11-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=929 clxscore=1031
 priorityscore=1501 lowpriorityscore=0 mlxscore=0 spamscore=0
 suspectscore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311060001 definitions=main-2311140128
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 16:47:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61683

From: Randy MacLeod <Randy.MacLeod@windriver.com>

Builds and oe-selftest runs have been seen to take around 16 hours.
Temporarily disable pressure regulation in master-next ONLY
to see if the pressure regulation is a significant part of what's
causing the slow down.

Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
---
 config.json | 2 --
 1 file changed, 2 deletions(-)

diff --git a/config.json b/config.json
index 0c581d1..ffe216b 100644
--- a/config.json
+++ b/config.json
@@ -50,8 +50,6 @@
             "BB_NUMBER_THREADS = '16'",
             "BB_NUMBER_PARSE_THREADS = '16'",
             "PARALLEL_MAKE = '-j 16 -l 52'",
-            "BB_PRESSURE_MAX_CPU = '10000'",
-            "BB_PRESSURE_MAX_IO = '10000'",
             "XZ_MEMLIMIT = '5%'",
             "XZ_THREADS = '8'",
             "ZSTD_THREADS = '8'",
-- 
2.34.1


