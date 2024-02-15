Return-Path: <joe.slater@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48A4CC4829E
	for <webhook@archiver.kernel.org>; Thu, 15 Feb 2024 17:15:09 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.19840.1708017307730299958
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Feb 2024 09:15:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=iSXMClOu;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2775a99494=joe.slater@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41F6LOE9009614
	for <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 09:15:07 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PPS06212021; bh=9kw+j
	+s7aGvEuUGoTBRn1NpQxb0Xgn/LZOJmNEJgnk0=; b=iSXMClOuV8a62eBslL9JO
	ZfWci2n7Aa1dpmptqGNfi5rgjhRVhcqPEtJl1jiLqNQf4k+dIxW+POXY7I5auhb1
	TnWzIwEWWLSwSRiTtvpp4Zx8F9l/e5u7F7Tc1rUU2aHt8rfzSp7yo1Hp7Ukbg43T
	Lw6M1Fe/mXXPuwWTItwl9u/AQX8YveqA1nPD4+jnRRHujaWKpst96AeZgLcKDuNS
	X/rJmzS3LULSCrvY+YALyFVIo4G9xw4VH/RAPyC4vTlW9IPSjGTFPJQv0XXE0vol
	kGV5dQZmsADItlAeTke8NwEZmGj9IUutpsYvKEDR70i0AYv5Kl5mYjLG9D7kMt2B
	w==
Received: from ala-exchng02.corp.ad.wrs.com (ala-exchng02.wrs.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3w65a4vve7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 09:15:07 -0800 (PST)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 15 Feb 2024 09:15:06 -0800
Received: from ala-jslater-lx2.corp.ad.wrs.com (147.11.136.210) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Thu, 15 Feb 2024 09:15:06 -0800
From: <joe.slater@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: <joe.slater@windriver.com>, <randy.macleod@windriver.com>
Subject: [meta-security][PATCH 1/1] sanity-meta-security.bbclass: allow warning customization
Date: Thu, 15 Feb 2024 09:15:06 -0800
Message-ID: <20240215171506.2989385-1-joe.slater@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: oqyYJkxdH-svJpWye_wRJssxUDHr3Jx7
X-Proofpoint-GUID: oqyYJkxdH-svJpWye_wRJssxUDHr3Jx7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-15_16,2024-02-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=943 bulkscore=0
 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0
 mlxscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401310000 definitions=main-2402150139
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 17:15:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62497

From: Joe Slater <joe.slater@windriver.com>

Introduce META_SECURITY_SANITY_CHECK_WARNING variable which
can be overridden, if desired.

Signed-off-by: Joe Slater <joe.slater@windriver.com>
---
 classes/sanity-meta-security.bbclass | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/classes/sanity-meta-security.bbclass b/classes/sanity-meta-security.bbclass
index f9e2698..95180aa 100644
--- a/classes/sanity-meta-security.bbclass
+++ b/classes/sanity-meta-security.bbclass
@@ -1,10 +1,15 @@
 addhandler security_bbappend_distrocheck
 security_bbappend_distrocheck[eventmask] = "bb.event.SanityCheck"
+
 python security_bbappend_distrocheck() {
     skip_check = e.data.getVar('SKIP_META_SECURITY_SANITY_CHECK') == "1"
     if 'security' not in e.data.getVar('DISTRO_FEATURES').split() and not skip_check:
-        bb.warn("You have included the meta-security layer, but \
-'security' has not been enabled in your DISTRO_FEATURES. Some bbappend files \
-and preferred version setting may not take effect. See the meta-security README \
-for details on enabling security support.")
+        bb.warn(e.data.getVar('META_SECURITY_SANITY_CHECK_WARNING'))
 }
+
+META_SECURITY_SANITY_CHECK_WARNING ??= "\
+You have included the meta-security layer, but 'security' has not been \
+enabled in your DISTRO_FEATURES. Some bbappend files and preferred version \
+settings may not take effect. See the meta-security README for details on \
+enabling security support."
+
-- 
2.25.1


