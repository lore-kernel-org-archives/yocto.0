Return-Path: <kai.kang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77BF9C00140
	for <webhook@archiver.kernel.org>; Tue, 16 Aug 2022 02:04:15 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.11038.1660615452804443656
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Aug 2022 19:04:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Tc3dW9jW;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=5227a7d44d=kai.kang@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27G1drto032510
	for <yocto@lists.yoctoproject.org>; Tue, 16 Aug 2022 02:04:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : mime-version : content-type; s=PPS06212021;
 bh=rgvji+kA6ehLThoSpheo/MxSG7G9/mXObnvpb4LryZg=;
 b=Tc3dW9jWbGbEdkMfdZ3gBKKVOL81wqiLu0qXopAFwYCtjCUkcnLMEqWphtuVi5Udc/nl
 K3oJtzOqGAy4+RYVpoJUa2IdoPTBMvewEw/qvkJgJa+Ts+kPz545oCjrJA/dNszxzUVV
 J1BFiocfOC85aeQNh7qDih+Jy4DfNOpJij+0ryjVLH+fwqRl3gO53s+3iB6/NOCH41Kx
 0/42dBpugcbSm2LNdEku6G958hNk8hEMgObvli764MG87//Yjxv2MzoM8F+2oofoYvqX
 +GsWPvSXdJx/xk5FcnE+LGR7oVSwxgpAbDNBU8yZRwEl47OMPANxNco1BQN/VsTZ6PRY XQ==
Received: from ala-exchng01.corp.ad.wrs.com (unknown-82-252.windriver.com
 [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3hx160t7rr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 16 Aug 2022 02:04:11 +0000
Received: from ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 15 Aug 2022 19:04:10 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 15 Aug 2022 19:04:10 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Mon, 15 Aug 2022 19:04:09 -0700
From: <kai.kang@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-mingw][PATCH] mingw-libgnurx: update license name
Date: Tue, 16 Aug 2022 10:04:05 +0800
Message-ID: <20220816020405.544-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: Aggk6GltoiN888KkKZ4df1_nKLubfPz8
X-Proofpoint-GUID: Aggk6GltoiN888KkKZ4df1_nKLubfPz8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-15_08,2022-08-15_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 mlxlogscore=999 lowpriorityscore=0 malwarescore=0 mlxscore=0 phishscore=0
 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0 impostorscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208160007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Aug 2022 02:04:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57851

From: Kai Kang <kai.kang@windriver.com>

Update license name with SPDX identifier to eliminate warning:

  WARNING: mingw-libgnurx-2.5.1-r0 do_package_qa: QA Issue: Recipe LICENSE
    includes obsolete licenses LGPLv2.1 [obsolete-license]

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb b/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
index ca5bbf9..4547298 100644
--- a/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
+++ b/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
@@ -1,6 +1,6 @@
 # Copyright (C) 2021 Khem Raj <raj.khem@gmail.com>
 # Released under the MIT license (see COPYING.MIT for the terms)
-LICENSE = "LGPLv2.1"
+LICENSE = "LGPL-2.1-only"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=bbb461211a33b134d42ed5ee802b37ff"
 
 SRC_URI = "http://download.sourceforge.net/mingw/Other/UserContributed/regex/mingw-regex-${PV}/mingw-libgnurx-${PV}-src.tar.gz \
-- 
2.17.1


