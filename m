Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F8DC104C00E
	for <webhook@archiver.kernel.org>; Wed, 11 Mar 2026 10:47:38 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.16557.1773220129446695028
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Mar 2026 02:08:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=hNOb5liQ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=7530f55d5f=jianpeng.chang.cn@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B49hVf2711153
	for <yocto@lists.yoctoproject.org>; Wed, 11 Mar 2026 09:08:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=cc:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to; s=PPS06212021; bh=JanliLAwf
	2blgOkKe+TxOe3Zfjqyf9D1FlGdFdXWjgE=; b=hNOb5liQ+TgMfvoc68cGxALec
	x/iU8nEgdSJdQELMkDXf//swFtoH5OX3mUz0f3aqPSSl6RBfU5sPeJvFn6PsGser
	KAHKgMXyJLPVuJpg9P5Y5jASQPDzQEsbA9zueeolzVRfQFae8BVKy0NpONr/tYQj
	Sb7M2tRUlzR0BWfVPWiz0XPaMz48mowXj0EDDSkU6y2gPW3i5flUYAeSakVy6Ts9
	Mqem4znGULZKQN/0qvG54/OyRMDon7duM3jOWsxzyZGMEf70LsRe1Y0cQhCcwI24
	uFXDY6s30Uc5v1+hQ+lZ6trxN5a4ZY/vlAZmkvcwgyb5fVR3fBwvoyny64CDQ==
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [128.224.246.36])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4cty22rc4c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 11 Mar 2026 09:08:48 +0000 (GMT)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) by
 ala-exchng01.corp.ad.wrs.com (10.11.224.121) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.61; Wed, 11 Mar 2026 02:08:46 -0700
Received: from pek-lpggp9.wrs.com (10.11.232.110) by
 ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) with Microsoft SMTP Server id
 15.1.2507.61 via Frontend Transport; Wed, 11 Mar 2026 02:08:46 -0700
From: "Jianpeng Chang" <jianpeng.chang.cn@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: Jianpeng Chang <jianpeng.chang.cn@windriver.com>
Subject: [meta-raspberrypi][PATCH] libpisp: Remove build_rpath to fix reproducibility issues
Date: Wed, 11 Mar 2026 17:08:45 +0800
Message-ID: <20260311090845.2098799-1-jianpeng.chang.cn@windriver.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=LqOfC3dc c=1 sm=1 tr=0 ts=69b13120 cx=c_pps
 a=AbJuCvi4Y3V6hpbCNWx0WA==:117 a=AbJuCvi4Y3V6hpbCNWx0WA==:17
 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22 a=bi6dqmuHe4P4UrxVR6um:22
 a=klDOsUkWDRETUCZYPvoE:22 a=t7CeM3EgAAAA:8 a=Lv_nR7L6fkbtSHs_D_cA:9
 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-ORIG-GUID: 7CkXRfEjXUYl62g0DVuBKTYF9DvrXfIy
X-Proofpoint-GUID: 7CkXRfEjXUYl62g0DVuBKTYF9DvrXfIy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA3NiBTYWx0ZWRfX6Ch0XiRqCcdE
 SQxSlw3Nw7jc5r2HtyAvJnAfXr7rTH5CPz4vElCO2l3xI9NiUN/+E+kxIyKzdMdn6lMVqgxIPjB
 Okykc3ZWBddV/QHR20KonKYcjGpWroW7VpEIqKBrKsx0v/y3R2hJ/boML02/DfywLTSjWvijZYm
 zTy5e0nssmIyiXV059f1bJnzzGcpJYKWFCED0qnZV3ewtmYGcSpqwTC+d9CHlqM3fgZk005YrIV
 o7RzjUe4ttT90qUBwwqXaGWgGUoPl3SNOLmnfrAZzsC0l8OhN9VlsWryG1wX8mXn2gg8KpGarZ3
 D5ZnZub13ZDqXOA2SPjllg5BlN2o4CSZpnFpSshynvvrznDRJ4ULhyZqHD+8266WO3JNLmluexE
 znH3/BRkpgIypupRwDrRBLNrTETAuU2tcGqRNAdCEByQ/qstwdzUcyGXRNu5LDEmKeixTHIPn9L
 waMtPdzToo8dhkei/1g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 adultscore=0 clxscore=1011
 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110076
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Mar 2026 10:47:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66323

Add patch to delete rpath in meson.build, since yocto does not need to
run libpisp at build directory. Strip removes the symbol but left the
rpath string in other sections, like dynstr. Remove it to fix
reproducibility builds issues.

Signed-off-by: Jianpeng Chang <jianpeng.chang.cn@windriver.com>
---
 ...ld_rpath-to-fix-reproducibility-issu.patch | 38 +++++++++++++++++++
 .../libpisp/libpisp_1.3.0.bb                  |  2 +
 2 files changed, 40 insertions(+)
 create mode 100644 dynamic-layers/multimedia-layer/recipes-multimedia/libpisp/libpisp/0001-build-Remove-build_rpath-to-fix-reproducibility-issu.patch

diff --git a/dynamic-layers/multimedia-layer/recipes-multimedia/libpisp/libpisp/0001-build-Remove-build_rpath-to-fix-reproducibility-issu.patch b/dynamic-layers/multimedia-layer/recipes-multimedia/libpisp/libpisp/0001-build-Remove-build_rpath-to-fix-reproducibility-issu.patch
new file mode 100644
index 0000000..593a1ec
--- /dev/null
+++ b/dynamic-layers/multimedia-layer/recipes-multimedia/libpisp/libpisp/0001-build-Remove-build_rpath-to-fix-reproducibility-issu.patch
@@ -0,0 +1,38 @@
+From b3c5a94674b397d7003f2ea32d5c19f91b8315d9 Mon Sep 17 00:00:00 2001
+From: Jianpeng Chang <jianpeng.chang.cn@windriver.com>
+Date: Wed, 11 Mar 2026 06:10:21 +0000
+Subject: [PATCH] build: Remove build_rpath to fix reproducibility issues
+
+The build_rpath setting in meson.build embeds the absolute build directory
+path into the library's RUNPATH, causing non-reproducible builds when the
+build directory name varies between builds.
+
+This was introduced in upstream commit 6ca92c34f4f6 ("backend: Allow local
+builds to use the src backend_default_config.json") to allow running
+binaries directly from the build directory during development.
+
+Remove it in yocto, since the library will be installed to standard
+library path.
+
+Upstream-Status: Inappropriate [OE specific]
+
+Signed-off-by: Jianpeng Chang <jianpeng.chang.cn@windriver.com>
+---
+ src/meson.build | 1 -
+ 1 file changed, 1 deletion(-)
+
+diff --git a/src/meson.build b/src/meson.build
+index 6ace2ff..ab8a95a 100644
+--- a/src/meson.build
++++ b/src/meson.build
+@@ -52,7 +52,6 @@ libpisp = library(
+     include_directories : include_directories(inc_dirs),
+     name_prefix : '',
+     install : true,
+-    build_rpath : meson.project_source_root(),
+     dependencies : pisp_deps,
+ )
+ 
+-- 
+2.51.2
+
diff --git a/dynamic-layers/multimedia-layer/recipes-multimedia/libpisp/libpisp_1.3.0.bb b/dynamic-layers/multimedia-layer/recipes-multimedia/libpisp/libpisp_1.3.0.bb
index b6275b2..181d6d1 100644
--- a/dynamic-layers/multimedia-layer/recipes-multimedia/libpisp/libpisp_1.3.0.bb
+++ b/dynamic-layers/multimedia-layer/recipes-multimedia/libpisp/libpisp_1.3.0.bb
@@ -11,4 +11,6 @@ SRCREV = "9ba67e6680f03f31f2b1741a53e8fd549be82cbe"
 
 DEPENDS = "nlohmann-json"
 
+SRC_URI += "file://0001-build-Remove-build_rpath-to-fix-reproducibility-issu.patch"
+
 inherit meson pkgconfig
-- 
2.53.0


