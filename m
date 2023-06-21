Return-Path: <kai.kang@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 743AEEB64D7
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 03:56:24 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.3358.1687319776187311627
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jun 2023 20:56:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=WoGjqAbJ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=55366c3c49=kai.kang@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35L3ov2B018013
	for <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 03:56:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=PPS06212021;
 bh=25fSOcELI87FfWMlRFr/5KH/f2iohy560btSKc7/JKQ=;
 b=WoGjqAbJBiIUO49+VKnYqRZVlhywMYZocdxn6S1DNYgIvxQmwjRI7bM5bCjkotrWaRJr
 jHCcQnR/f4tp8jVO2tRrnZB6WSPCL0skRg7jcOpmFDdjoz8OAWUS+JmMEXGEYCwgBSbA
 Hmwgv0KRpKXo53LMuJnNpmUeboee53us/0rSa3zs3LTWmAjJasBeWi+bEwWt64UrrUrn
 jICF6U3bKD70lAmieZ6T41+AWb/B0FT/XE0EKk9z1zvSEKMuT40XxF5Bu9C1QiiR/6fP
 U5ve5vxDCFAlQnZASleoiskIORnfnm+ExC/Uu2mOofEGXw5xiNzvsMkscknxzc6e+zMK 5A== 
Received: from ala-exchng02.corp.ad.wrs.com (ala-exchng02.wrs.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3r9220k9kp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 03:56:15 +0000
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 20:56:03 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 20:56:02 -0700
From: <kai.kang@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] openscap: fix buildpaths issue
Date: Wed, 21 Jun 2023 11:55:40 +0800
Message-ID: <20230621035540.4014488-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: 3e0eNpnzmZrxpkdjwOPjAG0LGPlgotHw
X-Proofpoint-ORIG-GUID: 3e0eNpnzmZrxpkdjwOPjAG0LGPlgotHw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-21_01,2023-06-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 impostorscore=0 mlxscore=0
 mlxlogscore=999 clxscore=1011 spamscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306210033
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 03:56:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60368

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
 .../openscap/openscap_1.3.7.bb                |  8 +++-
 2 files changed, 44 insertions(+), 1 deletion(-)
 create mode 100644 meta-security-compliance/recipes-openscap/openscap/files/0001-CMakeLists.txt-make-2-variables-configurable.patch

diff --git a/meta-security-compliance/recipes-openscap/openscap/files/0001-CMakeLists.txt-make-2-variables-configurable.patch b/meta-security-compliance/recipes-openscap/openscap/files/0001-CMakeLists.txt-make-2-variables-configurable.patch
new file mode 100644
index 0000000..953b0d9
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/openscap/files/0001-CMakeLists.txt-make-2-variables-configurable.patch
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
diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
index cfe93f0..5ad92d4 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
@@ -7,7 +7,13 @@ require openscap.inc
 inherit systemd
 
 SRCREV = "55efbfda0f617e05862ab6ed4862e10dbee52b03"
-SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https"
+SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https \
+           file://0001-CMakeLists.txt-make-2-variables-configurable.patch \
+           "
+
+EXTRA_OECMAKE += "-DPREFERRED_PYTHON_PATH=${bindir}/python3 \
+                  -DPYTHON3_PATH=${bindir}/python3 \
+                  "
 
 SYSTEMD_PACKAGES = "${PN}"
 SYSTEMD_SERVICE:${PN} = "oscap-remediate.service"
-- 
2.34.1


