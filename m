Return-Path: <kai.kang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C8AAC433FE
	for <webhook@archiver.kernel.org>; Tue,  1 Nov 2022 03:23:47 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.2167.1667273021759824698
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Oct 2022 20:23:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=SpFrHyg/;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=8304ef4da7=kai.kang@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2A13L6Ns017060;
	Tue, 1 Nov 2022 03:23:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=PPS06212021;
 bh=otV0RrT8odKtBxyAQse9lGfopNmpk0DabW10uSyfUFU=;
 b=SpFrHyg/SoYRzn/1DCqMNcWnUlM4jSOxiNS57tKlBltBd8KfFgWHAtci9AeDTshKbwOe
 dU5k9Cy2rTi2J05b8EMUPARAXDXbBQkNyU+YMfyU5dsuzrz1doeW+QdF2BWQWVtFk6N+
 koPX/AsuqJGrFoOMS+yafaRPU7cSgegRFpHR1c4VKi80ut6fR6s7Jdz0EGv6R5KknW5u
 xishgOZ5j1v5hgBa24sQoY9h+j4CU6rrqGNel7KJBMvCaic1gUSU0q2JoyxSn+07ee3b
 4AEsrWuDPY4sCy5IDWeusyzRsjjs892vzFzO6s8JN3SIDXhuYWY1BAXFwuTzBpVHk3Vw MA== 
Received: from ala-exchng02.corp.ad.wrs.com (unknown-82-254.windriver.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3kgu5c2256-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 01 Nov 2022 03:23:39 +0000
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 31 Oct 2022 20:23:37 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Mon, 31 Oct 2022 20:23:36 -0700
From: <kai.kang@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: <jpewhacker@gmail.com>
Subject: [meta-mingw][PATCH] libiconv: correct obsolete license
Date: Tue, 1 Nov 2022 11:23:35 +0800
Message-ID: <20221101032335.31768-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: lrYj6T-WZFWykMKI1QlTiQoP4_kYlV0s
X-Proofpoint-GUID: lrYj6T-WZFWykMKI1QlTiQoP4_kYlV0s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-31_22,2022-10-31_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 mlxscore=0 bulkscore=0
 suspectscore=0 clxscore=1011 mlxlogscore=999 priorityscore=1501
 spamscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2211010024
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Nov 2022 03:23:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58452

From: Kai Kang <kai.kang@windriver.com>

License name 'LGPLv3' is obsolete

  WARNING: nativesdk-libiconv-1.15-r1 do_package_qa: QA Issue: Recipe
    LICENSE includes obsolete licenses LGPLv3 [obsolete-license]

then replace it with 'LGPL-3.0-only'.

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
2.17.1


