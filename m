Return-Path: <mingli.yu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96629C19F2A
	for <webhook@archiver.kernel.org>; Thu, 11 Aug 2022 09:40:18 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.4571.1660210815264578122
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Aug 2022 02:40:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=WZRkcYIb;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=5222f7177a=mingli.yu@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27B9cjSv006328
	for <yocto@lists.yoctoproject.org>; Thu, 11 Aug 2022 02:40:14 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=PPS06212021;
 bh=SYzjuO5RGBx6uzOrNmJW4G4uHK66WrV9VaOgE+RF8Mg=;
 b=WZRkcYIbHP4EK6lvI8FIDQOH/SVlhFIH9q8myrejJosLN0mZJx6tfq1TXYCAfJg0iHyr
 o3R2Ua+5rEHMxiNRYEHmF69qsQAh9BfSqU1AwyssKA2TOB+oDgMv5j2Lh3phayHDkUrV
 SvaB+znzjdOb+vSiHyYQVSXfPoSAzsmuMtzMDxb36eD1dCTpRH00DiB9uFBcq60HoRkG
 QxK5Q8/NRDsR+1qGm6TGIOqSpOAPDlYyigWcJc+kAjxW/bYK+VwVMfdl0viTDKOufgZE
 PQXvzy/t3c9GhJVmwL5em2KippkLahhL/m5eTOD4vyGYbWswgPrpfPPFQdXVP8dKKQZZ qw==
Received: from ala-exchng01.corp.ad.wrs.com (unknown-82-252.windriver.com
 [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3hvqhs88kb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 11 Aug 2022 02:40:14 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 11 Aug 2022 02:40:13 -0700
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Thu, 11 Aug 2022 02:40:12 -0700
From: <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] samhain-standalone: fix buildpaths issue
Date: Thu, 11 Aug 2022 17:40:12 +0800
Message-ID: <20220811094012.423944-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: xWmVsqQqkYkQ0zlzFlIXknzD-1rFReSR
X-Proofpoint-ORIG-GUID: xWmVsqQqkYkQ0zlzFlIXknzD-1rFReSR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-11_05,2022-08-10_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=866
 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 mlxscore=0 spamscore=0 lowpriorityscore=0 clxscore=1011
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208110027
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Aug 2022 09:40:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57824

From: Mingli Yu <mingli.yu@windriver.com>

Fixes:
  WARNING: samhain-standalone-4.4.9-r0 do_package_qa: QA Issue: File /usr/share/doc/samhain-standalone/scripts/samhain.ebuild-light in package samhain-standalone-doc contains reference to TMPDIR
  File /usr/share/doc/samhain-standalone/scripts/samhain.ebuild in package samhain-standalone-doc contains reference to TMPDIR [buildpaths]

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 .../0001-Don-t-expose-configure-args.patch    | 44 +++++++++++++++++++
 recipes-ids/samhain/samhain-standalone.bb     |  1 +
 2 files changed, 45 insertions(+)
 create mode 100644 recipes-ids/samhain/files/0001-Don-t-expose-configure-args.patch

diff --git a/recipes-ids/samhain/files/0001-Don-t-expose-configure-args.patch b/recipes-ids/samhain/files/0001-Don-t-expose-configure-args.patch
new file mode 100644
index 0000000..fedbe5b
--- /dev/null
+++ b/recipes-ids/samhain/files/0001-Don-t-expose-configure-args.patch
@@ -0,0 +1,44 @@
+From 111b1e8f35e989513d8961a45a806767109f6e1e Mon Sep 17 00:00:00 2001
+From: Mingli Yu <mingli.yu@windriver.com>
+Date: Thu, 11 Aug 2022 17:15:30 +0800
+Subject: [PATCH] Don't expose configure args
+
+Don't expost configure args to fix buildpath issue.
+
+Upstream-Status: Inappropriate [oe specific]
+
+Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
+---
+ scripts/samhain.ebuild-light.in | 2 +-
+ scripts/samhain.ebuild.in       | 2 +-
+ 2 files changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/scripts/samhain.ebuild-light.in b/scripts/samhain.ebuild-light.in
+index 2b09cdb..b7f7062 100644
+--- a/scripts/samhain.ebuild-light.in
++++ b/scripts/samhain.ebuild-light.in
+@@ -55,7 +55,7 @@ src_compile() {
+ #	      --with-state-dir=/var/lib/${PN} \
+ #	      --with-log-file=/var/log/${PN}.log \
+ 
+-	./configure ${myconf} @mydefargs@ || die
++	./configure ${myconf} mydefargs || die
+         emake || die
+ 
+ 	echo '#!/bin/sh' > ./sstrip
+diff --git a/scripts/samhain.ebuild.in b/scripts/samhain.ebuild.in
+index 635a746..b9a42e7 100644
+--- a/scripts/samhain.ebuild.in
++++ b/scripts/samhain.ebuild.in
+@@ -55,7 +55,7 @@ src_compile() {
+ #	      --with-state-dir=/var/lib/${PN} \
+ #	      --with-log-file=/var/log/${PN}.log \
+ 
+-	./configure ${myconf} @mydefargs@ || die
++	./configure ${myconf} mydefargs || die
+         emake || die
+ 
+ 	echo '#!/bin/sh' > ./sstrip
+-- 
+2.25.1
+
diff --git a/recipes-ids/samhain/samhain-standalone.bb b/recipes-ids/samhain/samhain-standalone.bb
index 445cb99..b832dc8 100644
--- a/recipes-ids/samhain/samhain-standalone.bb
+++ b/recipes-ids/samhain/samhain-standalone.bb
@@ -1,6 +1,7 @@
 require samhain.inc
 
 SRC_URI += "file://samhain-not-run-ptest-on-host.patch \
+            file://0001-Don-t-expose-configure-args.patch \
             file://run-ptest \
 "
 
-- 
2.25.1


