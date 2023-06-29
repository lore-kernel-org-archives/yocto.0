Return-Path: <kai.kang@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23086EB64D9
	for <webhook@archiver.kernel.org>; Thu, 29 Jun 2023 07:25:44 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.3307.1688023535052234362
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jun 2023 00:25:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=GD2c2dXO;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=6544f2fcbd=kai.kang@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 35T60PRC011681;
	Thu, 29 Jun 2023 07:25:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PPS06212021; bh=9TDg+
	fT+jbu2ZK4lTSxCTBSsh0fc+luZyhH9BDNrL/I=; b=GD2c2dXOd+1MImK9suup2
	YIlrDfs08Q6tK+Uo4PWafG5Y1geAIiY5hvTpCS6gNvZ55+v2TJdMSl+qNsPAyAoB
	elNFDMvGaVLQBpI71Vlb4VFN7rmoRuCD80krgTHCb9Gv4ogcEU/DDhu35TXef+IO
	04vneqhCF/HoKmi2nkOLg86fpErueGVMRE4FP7J1oL66faF2zNmrMkZ33LqcX6Lw
	jAmXfGo8HtHG1jMKetCf/ds+Few7Sc1ycpRzIyxS24OTPV22TwjUoTf7dL8R6++y
	MvXqX4yMiDfqXeb7/eC9g/RL3YlPROquB0YVrnY9EqS2AWOzaqM9RmLT7BACgKQi
	A==
Received: from ala-exchng02.corp.ad.wrs.com (ala-exchng02.wrs.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3rdpqb4mhm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 29 Jun 2023 07:25:33 +0000 (GMT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 29 Jun 2023 00:25:32 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.27 via Frontend Transport; Thu, 29 Jun 2023 00:25:31 -0700
From: <kai.kang@windriver.com>
To: <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH v2] openscap: fix buildpaths issue
Date: Thu, 29 Jun 2023 15:25:29 +0800
Message-ID: <20230629072529.1781042-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: d8K_5lGMobC8Qnd_Q9AydAhg_-hpgsEj
X-Proofpoint-GUID: d8K_5lGMobC8Qnd_Q9AydAhg_-hpgsEj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-28_14,2023-06-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 clxscore=1015 mlxlogscore=999 bulkscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2305260000 definitions=main-2306290064
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 07:25:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60471

From: Kai Kang <kai.kang@windriver.com>

Variables PREFERRED_PYTHON_PATH and PYTHON3_PATH are set with
${PYTHON_EXECUTABLE}. For cross compile, ${PYTHON_EXECUTABLE} may point
to other path rather than standard dir such as /usr/bin. Then the
generated library file contains such path which should NOT. Update to
make variables PREFERRED_PYTHON_PATH and PYTHON3_PATH configurable to
fix buildpaths issue:

| WARNING: openscap-1.3.7-r0 do_package_qa: QA Issue: File
| /usr/lib/libopenscap.so.25.5.1 in package openscap contains reference
| to TMPDIR [buildpaths]

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 ...ts.txt-make-2-variables-configurable.patch | 37 +++++++++++++++++++
 recipes-compliance/openscap/openscap_1.3.8.bb |  5 ++-
 2 files changed, 41 insertions(+), 1 deletion(-)
 create mode 100644 recipes-compliance/openscap/files/0003-CMakeLists.txt-make-2-variables-configurable.patch

diff --git a/recipes-compliance/openscap/files/0003-CMakeLists.txt-make-2-variables-configurable.patch b/recipes-compliance/openscap/files/0003-CMakeLists.txt-make-2-variables-configurable.patch
new file mode 100644
index 0000000..953b0d9
--- /dev/null
+++ b/recipes-compliance/openscap/files/0003-CMakeLists.txt-make-2-variables-configurable.patch
@@ -0,0 +1,37 @@
+From f99c3f1f516a84d33794f8e3da59adea1a12ef54 Mon Sep 17 00:00:00 2001
+From: Kai Kang <kai.kang@windriver.com>
+Date: Tue, 20 Jun 2023 22:42:51 +0800
+Subject: [PATCH] CMakeLists.txt: make 2 variables configurable
+
+Variables PREFERRED_PYTHON_PATH and PYTHON3_PATH are set with
+${PYTHON_EXECUTABLE}. For cross compile, ${PYTHON_EXECUTABLE} may point
+to other path rather than standard dir such as /usr/bin. Then the
+generated library file contains such path which should NOT. Update to
+make variables PREFERRED_PYTHON_PATH and PYTHON3_PATH configurable to
+avoid such issue.
+
+Upstream-Status: Submitted [https://github.com/OpenSCAP/openscap/pull/1990]
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+---
+ CMakeLists.txt | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/CMakeLists.txt b/CMakeLists.txt
+index 5db014e77..74628cdd4 100644
+--- a/CMakeLists.txt
++++ b/CMakeLists.txt
+@@ -125,8 +125,8 @@ endif()
+ find_package(PythonInterp 3)
+ find_package(PythonLibs 3)
+ 
+-set(PREFERRED_PYTHON_PATH "${PYTHON_EXECUTABLE}")
+-set(PYTHON3_PATH "${PYTHON_EXECUTABLE}")
++set(PREFERRED_PYTHON_PATH "${PYTHON_EXECUTABLE}" CACHE PATH "Path to preferred Python")
++set(PYTHON3_PATH "${PYTHON_EXECUTABLE}" CACHE PATH "Path to Python3")
+ 
+ find_package(RPM)
+ if(RPM_FOUND)
+-- 
+2.34.1
+
diff --git a/recipes-compliance/openscap/openscap_1.3.8.bb b/recipes-compliance/openscap/openscap_1.3.8.bb
index ecc347c..5abd5a6 100644
--- a/recipes-compliance/openscap/openscap_1.3.8.bb
+++ b/recipes-compliance/openscap/openscap_1.3.8.bb
@@ -12,6 +12,7 @@ DEPENDS:class-native = "pkgconfig-native swig-native curl-native libxml2-native
 #Jun 22th, 2023
 SRCREV = "a81c66d9bc36612dd1ca83a8c959a59e172eb4b9"
 SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https \
+           file://0003-CMakeLists.txt-make-2-variables-configurable.patch \
            "
 
 S = "${WORKDIR}/git"
@@ -35,7 +36,9 @@ EXTRA_OECMAKE += "-DENABLE_PROBES_LINUX=ON -DENABLE_PROBES_UNIX=ON \
                   -DENABLE_PROBES_WINDOWS=OFF -DENABLE_VALGRIND=OFF \
                   -DENABLE_SCE=ON -DENABLE_MITRE=OFF -DENABLE_TESTS=OFF \
                   -DCMAKE_SKIP_INSTALL_RPATH=ON -DCMAKE_SKIP_RPATH=ON \
-                 "
+                  -DPREFERRED_PYTHON_PATH=${bindir}/python3 \
+                  -DPYTHON3_PATH=${bindir}/python3 \
+                  "
 
 STAGING_OSCAP_DIR = "${TMPDIR}/work-shared/${MACHINE}/oscap-source"
 STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
-- 
2.34.1


