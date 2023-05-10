Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3AF0C77B7D
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 14:51:39 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web11.19454.1683730293376542530
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 07:51:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=obDR+SQD;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34AEbGig007743;
	Wed, 10 May 2023 14:51:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=QW344E6Ns1RJDXwvfzLIFxQ2WuNyjlV6YuNGBNmO8nw=;
 b=obDR+SQD3i9O7BGIcBaYVw3J4hSSWgRPr7zAo/ywemCDAlXXr452jBWNlawOKWOBfmEI
 aORl0e75Eq4MPnJz9fAyVZFn6kd1dPaflmG9wKHctnUSh1u1nF7iVf16x/JNtKnULXF0
 OdbBkCtXnQf33l//xz0rSmB0HVz+uahuVT7jU09lfzpOn/diZFKAmp7a/k0wxRhYGFv+
 g2Xga27Gaw2+/e/AXaHXfwbxZxmOQRKfsqtLgivcnFeh83eM0dOfN0AeXDjPEFUTq1ZU
 DUoLCDdsCYHilZiYfer5hrms7c5LBT5I1x9VSgZ/JwvneivnAkhjNI9pkNys9kT3DUqj 7w== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qgbkg3rc9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:51:32 +0000
Received: from m0356517.ppops.net (m0356517.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 34AEbu7K011958;
	Wed, 10 May 2023 14:51:31 GMT
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com [169.53.41.122])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qgbkg3rb7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:51:31 +0000
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
	by ppma04dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 34ADjTN6032212;
	Wed, 10 May 2023 14:51:30 GMT
Received: from smtprelay03.wdc07v.mail.ibm.com ([9.208.129.113])
	by ppma04dal.us.ibm.com (PPS) with ESMTPS id 3qf7s6uree-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:51:30 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com [10.241.53.105])
	by smtprelay03.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 34AEpSua3670668
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 14:51:29 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A16DE58055;
	Wed, 10 May 2023 14:51:28 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3C51958043;
	Wed, 10 May 2023 14:51:28 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Wed, 10 May 2023 14:51:28 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, quaresma.jose@gmail.com, mikko.rapeli@linaro.org,
        Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH v2 2/4] ima: Drop kernel config option CONFIG_SQUASHFS_XATTR=y from ima.cfg
Date: Wed, 10 May 2023 10:51:23 -0400
Message-Id: <20230510145125.1067280-3-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230510145125.1067280-1-stefanb@linux.ibm.com>
References: <20230510145125.1067280-1-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: ADtbU-ymPiWc7Pp4ux_ELEtIXQx_VYBS
X-Proofpoint-ORIG-GUID: ACCAHa8G-yZb7-U__CTFXyDc1X_D2oZi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 clxscore=1015
 suspectscore=0 phishscore=0 spamscore=0 bulkscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305100117
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 14:51:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59970

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


