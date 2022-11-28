Return-Path: <mingli.yu@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAEECC352A1
	for <webhook@archiver.kernel.org>; Mon, 28 Nov 2022 01:54:56 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.107535.1669600496033954069
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Nov 2022 17:54:56 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=83312b5adc=mingli.yu@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2AS1osbA014546
	for <yocto@lists.yoctoproject.org>; Mon, 28 Nov 2022 01:54:55 GMT
Received: from ala-exchng01.corp.ad.wrs.com (unknown-82-252.windriver.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3m381315m4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 28 Nov 2022 01:54:55 +0000
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 27 Nov 2022 17:54:53 -0800
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Sun, 27 Nov 2022 17:54:53 -0800
From: <mingli.yu@eng.windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 2/5] iproute2: move PACKAGECONFIG to oe-core
Date: Mon, 28 Nov 2022 09:54:48 +0800
Message-ID: <20221128015451.2307473-2-mingli.yu@eng.windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221128015451.2307473-1-mingli.yu@eng.windriver.com>
References: <20221128015451.2307473-1-mingli.yu@eng.windriver.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: T0uVUZK_h0S1zkooTzMVUXet3qf9TsNn
X-Proofpoint-ORIG-GUID: T0uVUZK_h0S1zkooTzMVUXet3qf9TsNn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-28_02,2022-11-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 mlxlogscore=999 impostorscore=0 adultscore=0
 malwarescore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2211280013
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Nov 2022 01:54:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58640

From: Mingli Yu <mingli.yu@windriver.com>

Move PACKAGECONFIG setting to oe-core [1] to conform to yocto compliance.

[1] https://git.openembedded.org/openembedded-core/commit/?id=067ce90494bc370fc7a271c6a036c414358f0f38

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 recipes-connectivity/iproute2/iproute2_%.bbappend | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-connectivity/iproute2/iproute2_%.bbappend b/recipes-connectivity/iproute2/iproute2_%.bbappend
index 8cb2a5b..74e22b3 100644
--- a/recipes-connectivity/iproute2/iproute2_%.bbappend
+++ b/recipes-connectivity/iproute2/iproute2_%.bbappend
@@ -1,2 +1 @@
 inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
-PACKAGECONFIG[selinux] = ",,libselinux"
-- 
2.25.1


