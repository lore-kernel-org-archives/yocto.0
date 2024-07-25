Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CD5C3DA5D
	for <webhook@archiver.kernel.org>; Thu, 25 Jul 2024 11:15:46 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.33998.1721906079692234282
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jul 2024 04:14:39 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=7936f32357=li.wang@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 46P5OMUN011621;
	Thu, 25 Jul 2024 11:14:38 GMT
Received: from ala-exchng02.corp.ad.wrs.com (ala-exchng02.wrs.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 40kca1res2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 25 Jul 2024 11:14:38 +0000 (GMT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 25 Jul 2024 04:14:36 -0700
Received: from pek-lwang1-d1.wrs.com (147.11.136.210) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.39 via Frontend Transport; Thu, 25 Jul 2024 04:14:35 -0700
From: "Li Wang" <li.wang@windriver.com>
To: <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>, <li.wang@windriver.com>
Subject: [meta-security][kirkstone][PATCH] tpm2-tss: upgrade to 3.2.3
Date: Thu, 25 Jul 2024 19:10:26 +0800
Message-ID: <20240725111026.3032655-1-li.wang@windriver.com>
X-Mailer: git-send-email 2.35.5
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: cO3ox6kQvwKZ8yq4t-sgm0Wile9bpFje
X-Proofpoint-GUID: cO3ox6kQvwKZ8yq4t-sgm0Wile9bpFje
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-25_11,2024-07-25_02,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 bulkscore=0
 malwarescore=0 spamscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 phishscore=0 mlxscore=0 mlxlogscore=999
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.21.0-2407110000 definitions=main-2407250076
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jul 2024 11:15:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63573

fix error on some hardware in 3.2.2 version:
~# tpm2_nvread --output /tmp/DevID-cert.der 0x01C90000
WARN: Reading full size of the NV index
ERROR:esys:../tpm2-tss-3.2.2/src/tss2-esys/esys_iutil.c:1096:esys_GetResourceObject() Error: Esys handle does not exist (70018).
ERROR: Esys_SequenceComplete(0x70018) - esapi:The ESYS_TR resource object is bad
ERROR: Failed to get shandle
ERROR: Failed to read NVRAM area at index 0x1C90000
ERROR: Unable to run tpm2_nvread

Signed-off-by: Li Wang <li.wang@windriver.com>
---
 .../tpm2-tss/{tpm2-tss_3.2.2.bb => tpm2-tss_3.2.3.bb}           | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-tss/{tpm2-tss_3.2.2.bb => tpm2-tss_3.2.3.bb} (96%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.3.bb
similarity index 96%
rename from meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.3.bb
index 4d2c911..8bfc7db 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.3.bb
@@ -10,7 +10,7 @@ SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN
            file://fixup_hosttools.patch \
            "
 
-SRC_URI[sha256sum] = "ba9e52117f254f357ff502e7d60fce652b3bfb26327d236bbf5ab634235e40f1"
+SRC_URI[sha256sum] = "6279a9a1983ea6ffe41925067b7f0de3a6ed95020a30e7c97d80fa2754259534"
 
 inherit autotools pkgconfig systemd useradd
 
-- 
2.35.5


