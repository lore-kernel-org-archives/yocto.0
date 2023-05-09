Return-Path: <joe.slater@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13722C7EE22
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 00:27:19 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.2092.1683592035513004750
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 May 2023 17:27:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=pOZhb12n;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=4493b7f9a6=joe.slater@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 348Nv2X2015075
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 00:27:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=PPS06212021;
 bh=WPZqJzgVBn+JH7oOWVo1RXuZpI8D4TOdq6fp5V2x7qc=;
 b=pOZhb12n8ffomq6aRu8mGRb57Pp4987E3rx4A05jycEXmQiKNsbfk6RwxcJq7/vcWCN4
 /d+pXKjtE55SK9Fpit9HjLl95v2cDHCn0CbbGATm8AH/XuHR/vuM8qJW8kJNQ2RKBCCN
 6HLnExF27K7phHWALIgDzv4ZcQtNMIOSfdlfvf6GUocpSrAJ+oYWgvH0lw/LrER2tuXh
 A2KcJ6mFnGDIA3EA8nXZdcV07Z/A0+bdP3ydvZpFAklmaB1IQNVZzKlg5Sa0yGjhfCJQ
 v66kfw1+QXKP5NzT+BWFQmRprxJUf2sfknJ8MC8nJ4n2lfABvk1SIFU0dG7IPlPpvbkV zw== 
Received: from ala-exchng02.corp.ad.wrs.com (unknown-82-254.windriver.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3qf8b904ja-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 00:27:14 +0000
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 17:27:13 -0700
Received: from ala-jslater-lx2.corp.ad.wrs.com (147.11.136.210) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 17:27:13 -0700
From: <joe.slater@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: <joe.slater@windriver.com>, <randy.macleod@windriver.com>
Subject: [meta-mingw][PATCH 1/1] meta-mingw: remove old overrides
Date: Mon, 8 May 2023 17:27:13 -0700
Message-ID: <20230509002713.568191-1-joe.slater@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: 9TPUtt3hKoXxi-acXpCNVyaFVRcZixBM
X-Proofpoint-ORIG-GUID: 9TPUtt3hKoXxi-acXpCNVyaFVRcZixBM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-08_18,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 clxscore=1011 lowpriorityscore=0 mlxlogscore=692 adultscore=0 spamscore=0
 malwarescore=0 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2304280000
 definitions=main-2305090002
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 00:27:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59908

From: Joe Slater <joe.slater@windriver.com>

Adjust a comment.

Signed-off-by: Joe Slater <joe.slater@windriver.com>
---
 conf/machine-sdk/include/mingw32-common.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index 1ec8469..af6bfc4 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -21,7 +21,7 @@ DISTRO_FEATURES_FILTER_NATIVESDK:remove:mingw32 = "debuginfod"
 SDK_PACKAGING_FUNC = "do_compile"
 
 # Causes an endless loop
-#SDKTAROPTS_append = " -h --hard-dereference"
+# SDKTAROPTS:append = " -h --hard-dereference"
 
 SDKUSE_NLS = "no"
 SDKIMAGE_LINGUAS = ""
-- 
2.25.1


