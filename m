Return-Path: <liezhi.yang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1073C3DA4A
	for <webhook@archiver.kernel.org>; Sat,  3 Aug 2024 03:23:29 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.2307.1722655405102780908
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Aug 2024 20:23:25 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=8945eab8cd=liezhi.yang@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4733Dom6012475
	for <yocto@lists.yoctoproject.org>; Fri, 2 Aug 2024 20:23:24 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 40rjeyh7cj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 02 Aug 2024 20:23:24 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 2 Aug 2024 20:23:23 -0700
Received: from pek-lpg-core1.wrs.com (147.11.136.210) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.39 via Frontend Transport; Fri, 2 Aug 2024 20:23:23 -0700
From: <liezhi.yang@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-raspberrypi][PATCH] conf/layer.conf: Remove duplicated BBFILES
Date: Sat, 3 Aug 2024 11:24:53 +0800
Message-ID: <20240803032453.2570404-1-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: ntWLXiqKF5xnhZrzzsCrfVSWafc_gdjx
X-Proofpoint-ORIG-GUID: ntWLXiqKF5xnhZrzzsCrfVSWafc_gdjx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-02_20,2024-08-02_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 mlxscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1011
 lowpriorityscore=0 suspectscore=0 spamscore=0 mlxlogscore=926 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.21.0-2407110000
 definitions=main-2408030020
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 03 Aug 2024 03:23:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63647

From: Robert Yang <liezhi.yang@windriver.com>

The following doubles BBFILES for all layers in BBFILE_COLLECTIONS:
BBFILES += "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bb' % layer \
               for layer in BBFILE_COLLECTIONS.split())}"

And most of them are invalid, use BBFILES_DYNAMIC is the correct solution.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 conf/layer.conf | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 21fa529..b114fba 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -23,11 +23,6 @@ LICENSE_PATH += "${LAYERDIR}/files/custom-licenses"
 #
 # The .bbappend and .bb files are included if the respective layer
 # collection is available.
-BBFILES += "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bbappend' % layer \
-               for layer in BBFILE_COLLECTIONS.split())}"
-BBFILES += "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bb' % layer \
-               for layer in BBFILE_COLLECTIONS.split())}"
-
 BBFILES_DYNAMIC += " \
     openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/*/*/*.bb \
     openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/*/*/*.bbappend \
@@ -37,6 +32,8 @@ BBFILES_DYNAMIC += " \
     qt5-layer:${LAYERDIR}/dynamic-layers/qt5-layer/*/*/*.bbappend \
     multimedia-layer:${LAYERDIR}/dynamic-layers/multimedia-layer/*/*/*.bb \
     multimedia-layer:${LAYERDIR}/dynamic-layers/multimedia-layer/*/*/*.bbappend \
+    meta-python:${LAYERDIR}/dynamic-layers/meta-python/*/*/*.bb \
+    meta-python:${LAYERDIR}/dynamic-layers/meta-python/*/*/*.bbappend \
 "
 
 DEFAULT_TEST_SUITES:remove:rpi = "parselogs"
-- 
2.25.1


