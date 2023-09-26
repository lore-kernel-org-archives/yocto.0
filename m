Return-Path: <changqing.li@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 898FDE81810
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 02:37:16 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.10527.1695695828545807820
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Sep 2023 19:37:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=ZjxAz1oT;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=763376595a=changqing.li@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38Q20Ftu013813;
	Mon, 25 Sep 2023 19:37:04 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PPS06212021; bh=fQt+5
	Ex9JpzDvJrCGuQs90WtRbfCDlOsA5SEpPbSwYk=; b=ZjxAz1oTbAKgatvtmlkwR
	FcllbRczUTRPQM7CPp5ShmnwoGwOEJV07Nn8j3gBIYmsnEuM98IOzCTssqajwQ3c
	UC/tSx+01RW7roDN/rbBoO0gLxizudaPe3jsEIY26csGF4GgqfrAZM2WbScLdxUh
	88cIv7zy1dR+4/WFNpxzukZfN3/y4wHG1F8W4409SgtAsFsdV+D8ZBE8XUwnCYif
	aM1doZUPxXxFECLT5drV2skbKgkb2aV6j6RYkoV2Vzh93IUHhba6OU/g9cnsm6o1
	2fLLGIvv7sKRn8uimZI3UqMVMxnX6S5/X4nzaljiRMwkc+0hUBPYND3o5ymHm9pU
	Q==
Received: from ala-exchng02.corp.ad.wrs.com (ala-exchng02.wrs.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3t9yhgj1gs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 25 Sep 2023 19:37:03 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 25 Sep 2023 19:37:00 -0700
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.32 via Frontend Transport; Mon, 25 Sep 2023 19:36:58 -0700
From: <changqing.li@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: <jpewhacker@gmail.com>
Subject: [kirkstone][mickledore][master][PATCH] mingw-libgnurx: dev package conflicts with libc6-dev
Date: Tue, 26 Sep 2023 10:37:00 +0800
Message-ID: <20230926023700.406709-1-changqing.li@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: dDkpulgcj9yUY_fLcLJoRBEErNJMWdCE
X-Proofpoint-ORIG-GUID: dDkpulgcj9yUY_fLcLJoRBEErNJMWdCE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-26_01,2023-09-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 mlxlogscore=607 phishscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 spamscore=0 mlxscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2309180000
 definitions=main-2309260021
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 02:37:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61111

From: Changqing Li <changqing.li@windriver.com>

bitbake core-image-minimal, do_rootfs will fail with following configs:
SDKMACHINE = "x86_64-mingw32"
IMAGE_INSTALL:append = " mingw-libgnurx"
EXTRA_IMAGE_FEATURES = "dbg-pkgs dev-pkgs debug-tweaks"

libgnurx is the regex functionality from glibc 2.5 extracted into a
separate library, for Win32. So its dev package has conflict files with
libc6-dev.

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb b/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
index 4547298..127cdcd 100644
--- a/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
+++ b/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
@@ -15,3 +15,5 @@ inherit autotools
 EXTRA_OECONF = ""
 
 BBCLASSEXTEND = "nativesdk"
+
+RCONFLICTS:${PN}-dev = "libc6-dev"
-- 
2.25.1


