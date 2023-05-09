Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5581C7EE24
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 13:31:12 +0000 (UTC)
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
 by mx.groups.io with SMTP id smtpd.web10.32533.1683639065578851115
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 06:31:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=ElFln3HD;
 spf=pass (domain: linux.ibm.com, ip: 148.163.158.5, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349DADxS017578
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 13:31:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : content-transfer-encoding
 : mime-version; s=pp1; bh=88122QIG8C9Qwn4xdL0q5rJxo6SwsY7+7zwanQE70rI=;
 b=ElFln3HDZQu+z6h6X86xVuBREcoDfRBhth0vUnzA2oLSEg3b3ZRnVWXC64nxNLOcxZ1N
 cHDGw27LuDXJgaxrFI2EhB7yziZ1DNY3qQlAAFlzu+p55XUuxgWPTBN7oUYIXrBZg69s
 LdqgpiSPyYHBVAuwRcjuzsa61MRQBEXxelWqvyfzjz4A+B5+4GS2xak6B2tu2A0CAxA5
 ZudDdn31A/c//5ZcEvhO5Fg0M7KjGRrM+qgoBJ4QhVVHdAzuwl5kxR9uiDDmxKHpI60e
 t5XwCMce1a33gbBrR1jmbRcF4K+2+dXEslNxbq23A1beNwAAyzcDePFc3ZOFMgis0sqA qg== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfnn4k596-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 13:31:03 +0000
Received: from m0353725.ppops.net (m0353725.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349DKXaQ027240
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 13:31:03 GMT
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com [169.53.41.122])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfnn4k58b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 13:31:03 +0000
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
	by ppma04dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 349DClHh032601;
	Tue, 9 May 2023 13:31:02 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([9.208.130.97])
	by ppma04dal.us.ibm.com (PPS) with ESMTPS id 3qf7s6mg41-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 13:31:02 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com [10.241.53.100])
	by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349DV0hP37356002
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 13:31:00 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BCEB65805D;
	Tue,  9 May 2023 13:31:00 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7193858058;
	Tue,  9 May 2023 13:31:00 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 13:31:00 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH v2 7/8] linux: overlayfs: Add kernel patch resolving a file change notification issue
Date: Tue,  9 May 2023 09:30:52 -0400
Message-Id: <20230509133053.1032476-8-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230509133053.1032476-1-stefanb@linux.ibm.com>
References: <20230509133053.1032476-1-stefanb@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 3UAElN8sxrvMh4yFwpqyMAqavtyEqufZ
X-Proofpoint-ORIG-GUID: YZnLjleI2cSyMlXCigFPotjcinWFedbT
Content-Transfer-Encoding: 8bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_08,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 mlxlogscore=999 mlxscore=0 adultscore=0 priorityscore=1501 spamscore=0
 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2304280000
 definitions=main-2305090106
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 13:31:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59923

Add a temporary patch that resolves a file change notification issue
with overlayfs where IMA did not become aware of the file changes
since the 'lower' inode's i_version had not changed. The issue will be
resolved in later kernels with the following patch that builds on
newly addd feature (support for STATX_CHANGE_COOKIE) in v6.3-rc1:

https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
---
 ...Increment-iversion-upon-file-changes.patch | 42 +++++++++++++++++++
 .../recipes-kernel/linux/linux_ima.inc        |  1 +
 2 files changed, 43 insertions(+)
 create mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch

diff --git a/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
new file mode 100644
index 0000000..d2b5c28
--- /dev/null
+++ b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
@@ -0,0 +1,42 @@
+From e9ed62e8d1d3eee7ffe862d9812c5320d3b9bd88 Mon Sep 17 00:00:00 2001
+From: Stefan Berger <stefanb@linux.ibm.com>
+Date: Thu, 6 Apr 2023 11:27:29 -0400
+Subject: [PATCH] ovl: Increment iversion upon file changes
+
+This is a temporary patch for kernels that do not implement
+STATX_CHANGE_COOKIE (<= 6.2). The successor patch will be this one:
+
+https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
+
+Increment the lower inode's iversion for IMA to be able to recognize
+changes to the file.
+
+Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
+---
+ fs/overlayfs/file.c | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/fs/overlayfs/file.c b/fs/overlayfs/file.c
+index 6011f955436b..1dfe5e7bfe1c 100644
+--- a/fs/overlayfs/file.c
++++ b/fs/overlayfs/file.c
+@@ -13,6 +13,7 @@
+ #include <linux/security.h>
+ #include <linux/mm.h>
+ #include <linux/fs.h>
++#include <linux/iversion.h>
+ #include "overlayfs.h"
+ 
+ struct ovl_aio_req {
+@@ -408,6 +409,8 @@ static ssize_t ovl_write_iter(struct kiocb *iocb, struct iov_iter *iter)
+ 		if (ret != -EIOCBQUEUED)
+ 			ovl_aio_cleanup_handler(aio_req);
+ 	}
++	if (ret > 0)
++		inode_maybe_inc_iversion(inode, false);
+ out:
+ 	revert_creds(old_cred);
+ out_fdput:
+-- 
+2.34.1
+
diff --git a/meta-integrity/recipes-kernel/linux/linux_ima.inc b/meta-integrity/recipes-kernel/linux/linux_ima.inc
index 0b6f530..9d48e5c 100644
--- a/meta-integrity/recipes-kernel/linux/linux_ima.inc
+++ b/meta-integrity/recipes-kernel/linux/linux_ima.inc
@@ -2,6 +2,7 @@ FILESEXTRAPATHS:append := "${THISDIR}/linux:"
 
 SRC_URI += " \
     ${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'file://ima.scc', '', d)} \
+    file://0001-ovl-Increment-iversion-upon-file-changes.patch \
 "
 
 do_configure() {
-- 
2.34.1


