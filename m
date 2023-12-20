Return-Path: <kai.kang@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76D84C3DA6E
	for <webhook@archiver.kernel.org>; Wed, 20 Dec 2023 07:21:45 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.16905.1703056903272530398
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Dec 2023 23:21:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=HsGh/Qpu;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=07182f977b=kai.kang@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BK6x44k002765
	for <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 23:21:42 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PPS06212021; bh=+exCL
	J7d82pQ/BT3LFcGbrFW4GFtWY6VrIsfhKRIRX4=; b=HsGh/QpueUOw8c8N84xPn
	tk4MCdPoDj9nVZSSIBpscHUopJ1Kr1g+6qsFZ8FqQS+e5Vxs6lLDYqACVPBifwnx
	pbrmdskrfEahizYN17wSLZ4Gb5E/K6v0T4zlnJGAFM7ZIU6uqubHHMmPXfaahhwf
	66NtPF7+okQY7FzupbGHftcpahJihR1QlMmtH901aO3IqmPD6+bDLxa/iZm2xoBI
	OL2n/h/qsNrUqWwaL0wHmWP+NCvbvPAzlAjsayjz8/G5etdg1vuguVJg5Qo/Hj/3
	EeOz0lPzIflw3r6R7KaOe29+462VAhOFzoiy2N79xfcdHIstHhDC8i9sMnsD82v0
	Q==
Received: from ala-exchng02.corp.ad.wrs.com (ala-exchng02.wrs.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3v1c9kksrg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 23:21:42 -0800 (PST)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Dec 2023 23:21:48 -0800
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Tue, 19 Dec 2023 23:21:47 -0800
From: <kai.kang@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-mingw][PATCH] libiconv: update license with SPDX name
Date: Wed, 20 Dec 2023 15:21:37 +0800
Message-ID: <20231220072137.2482648-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: CPRRy3b9b7XTlcjiN1MdoK1FfcwtY-Wf
X-Proofpoint-ORIG-GUID: CPRRy3b9b7XTlcjiN1MdoK1FfcwtY-Wf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 lowpriorityscore=0 mlxlogscore=887 clxscore=1011 bulkscore=0
 impostorscore=0 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312200049
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Dec 2023 07:21:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61997

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


