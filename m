Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E078C7EE24
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 17:55:14 +0000 (UTC)
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
 by mx.groups.io with SMTP id smtpd.web11.40123.1683654906278693910
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 10:55:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=KRDLIb6e;
 spf=pass (domain: linux.ibm.com, ip: 148.163.158.5, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349HeTrp027805
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 17:55:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : content-transfer-encoding
 : mime-version; s=pp1; bh=uP69Jj9SV9ziMm8O/+xSXUn889gskCiLRFGEJpYXLcc=;
 b=KRDLIb6e8+i/Eb5t/LYNmstbQnx0dQdx/I9d3U8e+qUh6+/LNvBJktY2LE+d2UlIiW/O
 HPmyvlgztmacekIbGh1n0hzNsPmmPT0Tc61daCvfbcLOTDG8yWQmHcvbdyPyAu1RHizt
 ICNGzW/nNYXu92QXmXv1VntMUFIh9AbJAi7AWUkJ69jZUen3v0785FX2pwY9VYa5vz0n
 TEBZV0z08o3i0MEMY7C9TM30bWL0cS1y9nQ3lB5JaISdd2V0xG+g36YHdnI2uFrL+udB
 Wt38xrLyGEMg5mSnQGBVGizViKQ2C79SBWPdnpg3ae+HZD9TtVOCDqKf/TUVjgb/4wBz /A== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfthpgr4e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 17:55:05 +0000
Received: from m0356516.ppops.net (m0356516.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349Hm6ha020788
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 17:55:04 GMT
Received: from ppma03dal.us.ibm.com (b.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.11])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfthpgr3y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 17:55:04 +0000
Received: from pps.filterd (ppma03dal.us.ibm.com [127.0.0.1])
	by ppma03dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 349GAnnE029873;
	Tue, 9 May 2023 17:55:04 GMT
Received: from smtprelay04.dal12v.mail.ibm.com ([9.208.130.102])
	by ppma03dal.us.ibm.com (PPS) with ESMTPS id 3qf7y8wrxj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 17:55:04 +0000
Received: from smtpav05.wdc07v.mail.ibm.com (smtpav05.wdc07v.mail.ibm.com [10.39.53.232])
	by smtprelay04.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349Ht26334996584
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 17:55:03 GMT
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B8DB258061;
	Tue,  9 May 2023 17:55:02 +0000 (GMT)
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 0061F58063;
	Tue,  9 May 2023 17:55:02 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav05.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 17:55:01 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, quaresma.jose@gmail.com,
        Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH 1/2] linux: overlayfs: Drop kernel patch resolving a file change notification issue
Date: Tue,  9 May 2023 13:54:56 -0400
Message-Id: <20230509175457.1038298-2-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230509175457.1038298-1-stefanb@linux.ibm.com>
References: <20230509175457.1038298-1-stefanb@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: pusBMnfoNwr0oZH60RrOm5nMHLs96gPX
X-Proofpoint-GUID: Cbtf-0pqn30yHx21HCKKQooaOGhDOfRi
Content-Transfer-Encoding: 8bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_10,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 mlxlogscore=999 suspectscore=0 malwarescore=0
 impostorscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2304280000 definitions=main-2305090146
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 17:55:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59937

Revert the patch resolving a file change notitfication issue (for IMA
appraisal) since this patch fails in 'many downstream kernels'.

- https://lists.yoctoproject.org/g/yocto/message/59928
- https://lists.yoctoproject.org/g/yocto/message/59929

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
---
 ...Increment-iversion-upon-file-changes.patch | 42 -------------------
 .../recipes-kernel/linux/linux_ima.inc        |  1 -
 2 files changed, 43 deletions(-)
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch

diff --git a/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
deleted file mode 100644
index d2b5c28..0000000
--- a/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
+++ /dev/null
@@ -1,42 +0,0 @@
-From e9ed62e8d1d3eee7ffe862d9812c5320d3b9bd88 Mon Sep 17 00:00:00 2001
-From: Stefan Berger <stefanb@linux.ibm.com>
-Date: Thu, 6 Apr 2023 11:27:29 -0400
-Subject: [PATCH] ovl: Increment iversion upon file changes
-
-This is a temporary patch for kernels that do not implement
-STATX_CHANGE_COOKIE (<= 6.2). The successor patch will be this one:
-
-https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
-
-Increment the lower inode's iversion for IMA to be able to recognize
-changes to the file.
-
-Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
----
- fs/overlayfs/file.c | 3 +++
- 1 file changed, 3 insertions(+)
-
-diff --git a/fs/overlayfs/file.c b/fs/overlayfs/file.c
-index 6011f955436b..1dfe5e7bfe1c 100644
---- a/fs/overlayfs/file.c
-+++ b/fs/overlayfs/file.c
-@@ -13,6 +13,7 @@
- #include <linux/security.h>
- #include <linux/mm.h>
- #include <linux/fs.h>
-+#include <linux/iversion.h>
- #include "overlayfs.h"
- 
- struct ovl_aio_req {
-@@ -408,6 +409,8 @@ static ssize_t ovl_write_iter(struct kiocb *iocb, struct iov_iter *iter)
- 		if (ret != -EIOCBQUEUED)
- 			ovl_aio_cleanup_handler(aio_req);
- 	}
-+	if (ret > 0)
-+		inode_maybe_inc_iversion(inode, false);
- out:
- 	revert_creds(old_cred);
- out_fdput:
--- 
-2.34.1
-
diff --git a/meta-integrity/recipes-kernel/linux/linux_ima.inc b/meta-integrity/recipes-kernel/linux/linux_ima.inc
index 9d48e5c..0b6f530 100644
--- a/meta-integrity/recipes-kernel/linux/linux_ima.inc
+++ b/meta-integrity/recipes-kernel/linux/linux_ima.inc
@@ -2,7 +2,6 @@ FILESEXTRAPATHS:append := "${THISDIR}/linux:"
 
 SRC_URI += " \
     ${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'file://ima.scc', '', d)} \
-    file://0001-ovl-Increment-iversion-upon-file-changes.patch \
 "
 
 do_configure() {
-- 
2.34.1


