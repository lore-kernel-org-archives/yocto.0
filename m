Return-Path: <soumya.sambu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBFA0C77B60
	for <webhook@archiver.kernel.org>; Mon, 24 Apr 2023 02:27:18 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.42084.1682303229356884818
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Apr 2023 19:27:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=WHbZrsS/;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=3478c2501c=soumya.sambu@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33O2LoJ0011926
	for <yocto@lists.yoctoproject.org>; Mon, 24 Apr 2023 02:27:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=PPS06212021;
 bh=j41UO8BIFau3gr8W+iTHQK1wqbHD40sg9u8YflOLA3c=;
 b=WHbZrsS/wIj1BJfyne3qYzNQOJyoBaTh5k3qyFRrLAaJux2EMn/Z2Q3H7y3Yo91FyC30
 h+iUsqbl9rNnLqWZ/fH9Y29LzA0rOYSOT/LfyvcWcWOyRkp+Et2Uphjz8lOFW87wD/vu
 cRzLaC/gHlDSZtfm9/ejyCBcTbqwTwP1UdLuATLmCNTWLUv5Yr1GA5Cy4wR8vNGPB7KS
 Y1WHHJETGEztwSbe454imFy9odjNYrJS4a7hpJsn7x0ZZwApWFp8NX3IERfFBRvalLes
 F74d+jMdVDVhDA3QiyfHZfa3luiu2bG/DODtH+osYMmRW5d3lu/q+tjQXCJ4NOiE0GFC 9g== 
Received: from ala-exchng02.corp.ad.wrs.com (unknown-82-254.windriver.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3q44t3sxye-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 24 Apr 2023 02:27:08 +0000
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 23 Apr 2023 19:27:06 -0700
Received: from blr-linux-engg1.wrs.com (147.11.136.210) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.23 via Frontend Transport; Sun, 23 Apr 2023 19:27:05 -0700
From: Soumya <soumya.sambu@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: Soumya <soumya.sambu@windriver.com>
Subject: [meta-cgl][kirkstone][PATCH 1/1] pacemaker: Remove build host path
Date: Mon, 24 Apr 2023 02:27:01 +0000
Message-ID: <20230424022701.2574063-1-soumya.sambu@windriver.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: EYL8XV696tJSlrs1HtGyzU9n483RNHxl
X-Proofpoint-ORIG-GUID: EYL8XV696tJSlrs1HtGyzU9n483RNHxl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-23_16,2023-04-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 adultscore=0 clxscore=1011 impostorscore=0 suspectscore=0
 bulkscore=0 mlxlogscore=848 lowpriorityscore=0 phishscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304240021
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Apr 2023 02:27:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59764

File installed by pacemaker-cli-utils contains path of build host.

Signed-off-by: Soumya <soumya.sambu@windriver.com>
---
 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
index 2b4f96d..c3fdff3 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
@@ -84,6 +84,12 @@ do_install:append() {
     do
         sed -i "s:${RECIPE_SYSROOT_NATIVE}::g" $temdir
     done
+
+    hostdir=$(grep -Rn ${HOSTTOOLS_DIR} ${D}/* | awk -F: '{print $1}' | uniq)
+    for tmpdir in $hostdir
+   do
+        sed -i "s:${HOSTTOOLS_DIR}::g" $tmpdir
+    done
 }
 
 PACKAGES:prepend = "${PN}-cli-utils ${PN}-libs ${PN}-cluster-libs ${PN}-remote "
-- 
2.40.0


