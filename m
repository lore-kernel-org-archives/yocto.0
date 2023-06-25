Return-Path: <kai.kang@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80D68EB64DA
	for <webhook@archiver.kernel.org>; Sun, 25 Jun 2023 03:04:32 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.5673.1687662270058964939
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Jun 2023 20:04:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=HldgjM1/;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=554073d143=kai.kang@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 35P2qmrD014315
	for <yocto@lists.yoctoproject.org>; Sat, 24 Jun 2023 20:04:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PPS06212021; bh=+exCL
	J7d82pQ/BT3LFcGbrFW4GFtWY6VrIsfhKRIRX4=; b=HldgjM1/tWNB7KdyPWj2X
	YDVOQQmm+HkbGWGDPZcbRMwZ+xsiNLC5R4BudUWnDqieYlMFTUrIsG+WJSCWBpDt
	jeM3Uyj+2soLVDbXQrstP9JIgUAa6pN48O/q+NcnV9mVHFgjmBMeNsrDsEJE8+Oj
	NkwNBiIfusHt07R7zxekfOk4+/rp1LVHxBBde14AS3EqYmMaeEq1wXMvcwameNC1
	+Xva0H8sz14FyyLj/F11mHYU9vwwVNfGpV+yYy5CAIiqdrQluXN3Lz5PoCoogmOd
	RQdMtZSmV4FH5pV3e1UQf8SL9Miy/7pmPNMbOT/EDo+6kNWvSHPtlBo6xIwq0JWF
	w==
Received: from ala-exchng02.corp.ad.wrs.com (ala-exchng02.wrs.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3re00ege1d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Sat, 24 Jun 2023 20:04:29 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sat, 24 Jun 2023 20:04:28 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.27 via Frontend Transport; Sat, 24 Jun 2023 20:04:27 -0700
From: <kai.kang@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-mingw][PATCH] libiconv: update license with SPDX name
Date: Sun, 25 Jun 2023 11:04:24 +0800
Message-ID: <20230625030424.1158549-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: d9wX7avHhSMQ-RsjcV8p-Cng0m1YM-6q
X-Proofpoint-GUID: d9wX7avHhSMQ-RsjcV8p-Cng0m1YM-6q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-24_18,2023-06-22_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 phishscore=0 suspectscore=0 mlxscore=0 adultscore=0
 bulkscore=0 mlxlogscore=914 malwarescore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2305260000 definitions=main-2306250027
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Jun 2023 03:04:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60430

From: Kai Kang <kai.kang@windriver.com>

License 'LGPLv3' is obsolete

  WARNING: nativesdk-libiconv-1.15-r1 do_package_qa: QA Issue: Recipe
    LICENSE includes obsolete licenses LGPLv3 [obsolete-license]

so replace it with the SPDX name 'LGPL-3.0-only'.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 recipes-support/libiconv/libiconv_1.15.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-support/libiconv/libiconv_1.15.bb b/recipes-support/libiconv/libiconv_1.15.bb
index 7b2252f..b58abb4 100644
--- a/recipes-support/libiconv/libiconv_1.15.bb
+++ b/recipes-support/libiconv/libiconv_1.15.bb
@@ -6,7 +6,7 @@ SECTION = "libs"
 NOTES = "Needs to be stripped down to: ascii iso8859-1 eucjp iso-2022jp gb utf8"
 PROVIDES = "virtual/libiconv"
 PR = "r1"
-LICENSE = "LGPLv3"
+LICENSE = "LGPL-3.0-only"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=9f604d8a4f8e74f4f5140845a21b6674 \
                     file://libcharset/COPYING.LIB;md5=9f604d8a4f8e74f4f5140845a21b6674"
 
-- 
2.34.1


