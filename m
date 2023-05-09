Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B30BC77B75
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 17:55:14 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web11.40124.1683654907174857393
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 10:55:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=iNN7/xiV;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353728.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349HgO9Y003966
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 17:55:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=QW344E6Ns1RJDXwvfzLIFxQ2WuNyjlV6YuNGBNmO8nw=;
 b=iNN7/xiV0vfDjEkqzDki13znEvBFNZdbPHYj5IsmsWp+80ThCWh7XPiA5KKhmhiXk01e
 zsm6xKQ43zXW4DLLovdze0cyyd9ItFisQmg1Gx6mt7NhbzBcKQxMd5m5bb+w1cKoXwgE
 b4b/bWOsGXcDD9xKuZ+YcC5u5IP9uRHzk5kkP7NbmcyIC1jPC+7fma9dJkL6oJDZBgiR
 K3aa2K2VeVESBoO24lRj7tvAhYpRSEsetoNns/G3HCKJLHc2jXqOT2EGWU27L+UpUTVp
 rmTK0fZ1eMZkWUeFuUChLnSm8ftmYrnuZ1SySJ/dMFIldXXRtHsHSkSYgXcJ9+E68bhi Ng== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qftt80dju-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 17:55:06 +0000
Received: from m0353728.ppops.net (m0353728.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349HiIkG012240
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 17:55:06 GMT
Received: from ppma03wdc.us.ibm.com (ba.79.3fa9.ip4.static.sl-reverse.com [169.63.121.186])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qftt80djd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 17:55:06 +0000
Received: from pps.filterd (ppma03wdc.us.ibm.com [127.0.0.1])
	by ppma03wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 349GnVRJ026705;
	Tue, 9 May 2023 17:55:05 GMT
Received: from smtprelay05.dal12v.mail.ibm.com ([9.208.130.101])
	by ppma03wdc.us.ibm.com (PPS) with ESMTPS id 3qf7xd4mkp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 17:55:05 +0000
Received: from smtpav05.wdc07v.mail.ibm.com (smtpav05.wdc07v.mail.ibm.com [10.39.53.232])
	by smtprelay05.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349Ht39A7144094
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 17:55:03 GMT
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 8105A5806A;
	Tue,  9 May 2023 17:55:03 +0000 (GMT)
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id EBF4B58067;
	Tue,  9 May 2023 17:55:02 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav05.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 17:55:02 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, quaresma.jose@gmail.com,
        Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH 2/2] ima: Drop kernel config option CONFIG_SQUASHFS_XATTR=y from ima.cfg
Date: Tue,  9 May 2023 13:54:57 -0400
Message-Id: <20230509175457.1038298-3-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230509175457.1038298-1-stefanb@linux.ibm.com>
References: <20230509175457.1038298-1-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: D9cHvEgjafj-qaujeds0KogK6hMKagRk
X-Proofpoint-GUID: DWxT69sFEjdX5Zi6kb3hEhCZU2zBZSDq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_10,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 bulkscore=0 mlxscore=0 impostorscore=0 clxscore=1015 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305090146
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 17:55:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59938

Drop the kernel config option CONFIG_SQUASHFS_XATTR=y from ima.cfg.
Instead, require projects that use squashfs to set this option.

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
---
 meta-integrity/recipes-kernel/linux/linux/ima.cfg | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-integrity/recipes-kernel/linux/linux/ima.cfg b/meta-integrity/recipes-kernel/linux/linux/ima.cfg
index 86fb3aa..d7d80a6 100644
--- a/meta-integrity/recipes-kernel/linux/linux/ima.cfg
+++ b/meta-integrity/recipes-kernel/linux/linux/ima.cfg
@@ -1,4 +1,3 @@
-CONFIG_SQUASHFS_XATTR=y
 CONFIG_KEYS=y
 CONFIG_ASYMMETRIC_KEY_TYPE=y
 CONFIG_SYSTEM_TRUSTED_KEYRING=y
-- 
2.34.1


