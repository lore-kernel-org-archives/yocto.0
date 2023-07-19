Return-Path: <mingli.yu@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8649EB64DD
	for <webhook@archiver.kernel.org>; Wed, 19 Jul 2023 02:08:23 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.5022.1689732494139971140
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jul 2023 19:08:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=6564ce24fe=mingli.yu@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 36J102J4030629
	for <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 19:08:13 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3rutyeu384-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 19:08:13 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 19:08:12 -0700
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.27 via Frontend Transport; Tue, 18 Jul 2023 19:08:12 -0700
From: <mingli.yu@eng.windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-freescale][kirkstone][PATCH] piglit: Remove portions which are now in main recipe
Date: Wed, 19 Jul 2023 10:08:11 +0800
Message-ID: <20230719020811.945116-1-mingli.yu@eng.windriver.com>
X-Mailer: git-send-email 2.35.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: -eljlflT6_1qnrOcX3937ht2_-DMtZ2e
X-Proofpoint-GUID: -eljlflT6_1qnrOcX3937ht2_-DMtZ2e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-18_19,2023-07-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0 spamscore=0
 priorityscore=1501 clxscore=1011 mlxlogscore=836 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2306200000
 definitions=main-2307190018
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jul 2023 02:08:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60611

From: Khem Raj <raj.khem@gmail.com>

Some pieces have been moved to core in [1]
[1] https://git.openembedded.org/openembedded-core/commit/?id=53c90930fca17cdaec2a5492320a286b6db6bdda

Signed-off-by: Khem Raj <raj.khem@gmail.com>
(cherry picked from commit f8dbb3a7722c9037d10a4d4372992b78aceb51aa)
Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 ...n-t-enable-GLX-if-tests-are-disabled.patch | 32 -------------------
 recipes-graphics/piglit/piglit_%.bbappend     |  6 ----
 2 files changed, 38 deletions(-)
 delete mode 100644 recipes-graphics/piglit/piglit/0005-cmake-Don-t-enable-GLX-if-tests-are-disabled.patch

diff --git a/recipes-graphics/piglit/piglit/0005-cmake-Don-t-enable-GLX-if-tests-are-disabled.patch b/recipes-graphics/piglit/piglit/0005-cmake-Don-t-enable-GLX-if-tests-are-disabled.patch
deleted file mode 100644
index ef6fda0f..00000000
--- a/recipes-graphics/piglit/piglit/0005-cmake-Don-t-enable-GLX-if-tests-are-disabled.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-From 13ff43fe760ac343b33d8e8c84b89886aac07116 Mon Sep 17 00:00:00 2001
-From: Tom Hochstein <tom.hochstein@nxp.com>
-Date: Fri, 3 Jun 2022 10:44:29 -0500
-Subject: [PATCH] cmake: Don't enable GLX if tests are disabled
-
-Allow building for systems that don't support GLX.
-
-Upstream-Status: Submitted [https://gitlab.freedesktop.org/mesa/piglit/-/merge_requests/720]
-Signed-off-by: Tom Hochstein <tom.hochstein@nxp.com>
----
- CMakeLists.txt | 5 +----
- 1 file changed, 1 insertion(+), 4 deletions(-)
-
-diff --git a/CMakeLists.txt b/CMakeLists.txt
-index e1aeb5ddf..85e171aba 100644
---- a/CMakeLists.txt
-+++ b/CMakeLists.txt
-@@ -134,10 +134,7 @@ if(PIGLIT_BUILD_CL_TESTS)
- endif(PIGLIT_BUILD_CL_TESTS)
- 
- IF(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
--	if(X11_FOUND AND OPENGL_gl_LIBRARY)
--		# Assume the system has GLX. In the future, systems may exist
--		# with libGL and libX11 but no GLX, but that world hasn't
--		# arrived yet.
-+	if(X11_FOUND AND OPENGL_gl_LIBRARY AND PIGLIT_BUILD_GLX_TESTS)
- 		set(PIGLIT_HAS_GLX True)
- 		add_definitions(-DPIGLIT_HAS_GLX)
- 	endif()
--- 
-2.17.1
-
diff --git a/recipes-graphics/piglit/piglit_%.bbappend b/recipes-graphics/piglit/piglit_%.bbappend
index 6a1b9b98..72cf8eff 100644
--- a/recipes-graphics/piglit/piglit_%.bbappend
+++ b/recipes-graphics/piglit/piglit_%.bbappend
@@ -1,10 +1,4 @@
 FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
 
-SRC_URI += "file://0005-cmake-Don-t-enable-GLX-if-tests-are-disabled.patch"
-
-PACKAGECONFIG ?= "${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'x11 glx', '', d)}"
 PACKAGECONFIG:remove:imxgpu = "glx"
 PACKAGECONFIG:append:mx8-nxp-bsp = " opencl"
-
-PACKAGECONFIG[glx] = "-DPIGLIT_BUILD_GLX_TESTS=ON,-DPIGLIT_BUILD_GLX_TESTS=OFF"
-PACKAGECONFIG[opencl] = "-DPIGLIT_BUILD_CL_TESTS=ON,-DPIGLIT_BUILD_CL_TESTS=OFF,opencl-icd-loader"
-- 
2.35.5


