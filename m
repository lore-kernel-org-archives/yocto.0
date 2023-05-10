Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13214C7EE26
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 14:51:40 +0000 (UTC)
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
 by mx.groups.io with SMTP id smtpd.web11.19453.1683730292867818501
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 07:51:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=aExd1cXl;
 spf=pass (domain: linux.ibm.com, ip: 148.163.158.5, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353724.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34AEdVP1031584;
	Wed, 10 May 2023 14:51:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : content-transfer-encoding
 : mime-version; s=pp1; bh=uP69Jj9SV9ziMm8O/+xSXUn889gskCiLRFGEJpYXLcc=;
 b=aExd1cXl0k1+Opq+a2mHS52/5KqCeX4jh6qQCXHH5Sup7cHJzVafVxkvSh+k6eCNCd9C
 Q04N9HYfcd2DpNhmR7V4DoShM93i5iZLUNhRvd5WclQpiOjA9xepqlgP5Z5xwn90Uu8E
 jc38r+bCW1QDQUaFnx9u4vLITWYaz96uw5svEh56Oni5nQKF7CzYMwFnlm9KRDfHs7Rp
 Ib9Q7tWyX0BSAxUsYlMbu5gDdRsz/I8+z0fNKOOycJzBYqlpb14zSCDxcgKIwbP4oiiI
 e4Z7nlDtaA+TCR/Hmvip+uE0895QTgucIidwuvfA9DvFnBnVrw020aQ1VqYC9176AL+C hQ== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qgcduj3vb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:51:31 +0000
Received: from m0353724.ppops.net (m0353724.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 34AEdbTF032370;
	Wed, 10 May 2023 14:51:30 GMT
Received: from ppma02dal.us.ibm.com (a.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.10])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qgcduj3v1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:51:30 +0000
Received: from pps.filterd (ppma02dal.us.ibm.com [127.0.0.1])
	by ppma02dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 34ADtssB011460;
	Wed, 10 May 2023 14:51:29 GMT
Received: from smtprelay03.wdc07v.mail.ibm.com ([9.208.129.113])
	by ppma02dal.us.ibm.com (PPS) with ESMTPS id 3qf7we3pkk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:51:29 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com [10.241.53.105])
	by smtprelay03.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 34AEpS2b3670666
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 14:51:28 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 241425805D;
	Wed, 10 May 2023 14:51:28 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BC7C258043;
	Wed, 10 May 2023 14:51:27 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Wed, 10 May 2023 14:51:27 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, quaresma.jose@gmail.com, mikko.rapeli@linaro.org,
        Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH v2 1/4] linux: overlayfs: Drop kernel patch resolving a file change notification issue
Date: Wed, 10 May 2023 10:51:22 -0400
Message-Id: <20230510145125.1067280-2-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230510145125.1067280-1-stefanb@linux.ibm.com>
References: <20230510145125.1067280-1-stefanb@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: Cw56p084NGW1YTf4JujIIh5uaNEnA_ju
X-Proofpoint-GUID: AtvEYjT51EROR1mt5Vc2v0LtnTD_RBvP
Content-Transfer-Encoding: 8bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 adultscore=0
 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0 mlxlogscore=999
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305100117
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 14:51:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59969

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


