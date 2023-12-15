Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35FC4C35274
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 18:35:16 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.71738.1702665308623258084
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Dec 2023 10:35:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=LYY5GjLM;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=0713847ec4=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BFFo26V004562;
	Fri, 15 Dec 2023 10:35:04 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PPS06212021; bh=J5mAz
	PBWItRO61bkfGMNkDeNqkX3N6+qPx6xxSPZBBI=; b=LYY5GjLMteW2eugbCpO2k
	TT8eDaJCV9G1rjg+HJhDtRwinA9esLgLUBiqcEA6/tB55GawTdr85wfMPxerK0wK
	kHMG+RyTEj7dr8QTwBp4F3dvqGQlhX52tk62g5RCgjV09NA12LJleLhqJRAbXYlm
	T78AXhCv7wCA7lGuqWmEqzjVgyv74E7pecjdmCKifpGv14LxSgACKgHSvPaR3/4J
	rQQ06feJmviINsNb0PH0DU8uhpgxoO0M8PLhJgXyk6lAkXBR2p1v6KjzgM5rCy8/
	nE3wSZ6V1QA+65uHvrduhKN4HGBauUdDJefal8l7xobx7LrL+UCSo2pR/P07BGyO
	w==
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3uyr7dhyfg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 15 Dec 2023 10:35:04 -0800 (PST)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 10:35:09 -0800
Received: from pop-os.wrs.com (172.25.44.2) by ala-exchng01.corp.ad.wrs.com
 (147.11.82.252) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Fri, 15 Dec 2023 10:35:09 -0800
From: <Randy.MacLeod@windriver.com>
To: <yocto@lists.yoctoproject.org>, <jiahongxujia@163.com>
Subject: [meta-tensorflow][PATCH] layer.conf: revert -> add dl layer to LAYERRECOMMENDS
Date: Fri, 15 Dec 2023 13:35:03 -0500
Message-ID: <20231215183503.1743058-1-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: kopkdH3Vnsgu6OKncqLN4JG5eW7mokAV
X-Proofpoint-GUID: kopkdH3Vnsgu6OKncqLN4JG5eW7mokAV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=707
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 mlxscore=0 bulkscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312150130
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 18:35:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61917

From: Randy MacLeod <Randy.MacLeod@windriver.com>

The -dl (download) layers are not used anywhere but in Wind River products
so drop the line that was added in:
   5044996 layer.conf: add dl layer to LAYERRECOMMENDS

Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
---
 conf/layer.conf | 2 --
 1 file changed, 2 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index ccb6343..60cbd52 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -21,6 +21,4 @@ LAYERDEPENDS_meta-tensorflow = " \
 
 LAYER_PATH_meta-tensorflow = "${LAYERDIR}"
 
-LAYERRECOMMENDS_meta-tensorflow += "meta-tensorflow-dl (= 4.1)"
-
 NON_MULTILIB_RECIPES:append = " tensorflow tensorflow-lite"
-- 
2.34.1


