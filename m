Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E900C77B61
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 12:23:28 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web10.18041.1682684606994121261
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 05:23:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=BSnfRmMy;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353727.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33SCMYgn027675
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=uCixy1rigqhG9yk1LQ8Bz/tek4y3xHf8/dGE8pLyVvM=;
 b=BSnfRmMySRNBKxNrZaZmifllWVbJiB9GzX8FPSrDoNtLzT+75dqTulV7G+Z+x3lxSE2G
 dabm9khhzXVvVp/q1clqBCIC+hKngGlAWgxEmQbpq8Aql6+pdOz2SgAAZGHQ8V/t3ZaE
 7rFdg0e7ZlBsn0L//xJ03HzzmQ5KwYLXCLx8fCKD7z2EwsEjwDizKzBzG0vrSvVnld4N
 qGDx4VvXNC69dEqGqzjgOoZ21gQg4E3WdVtvvaXDJeT0h6KeRfqEYfF94Kx7vgkekmch
 ccJxzjCzOGMPbU/Vk4eZh/QzPJCWVixycRSiS08wSAMQmsjT8dfPVWFRJE3j/5fFI5rW +g== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q8cde3774-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:25 +0000
Received: from m0353727.ppops.net (m0353727.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 33SC8Wug015762
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:22 GMT
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com [169.53.41.122])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q8cde376s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:23:22 +0000
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
	by ppma04dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 33SAfuL2018445;
	Fri, 28 Apr 2023 12:23:21 GMT
Received: from smtprelay06.wdc07v.mail.ibm.com ([9.208.129.118])
	by ppma04dal.us.ibm.com (PPS) with ESMTPS id 3q4778ycs8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:23:21 +0000
Received: from smtpav03.dal12v.mail.ibm.com (smtpav03.dal12v.mail.ibm.com [10.241.53.102])
	by smtprelay06.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 33SCNJ9751839480
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 28 Apr 2023 12:23:19 GMT
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 435C858063;
	Fri, 28 Apr 2023 12:23:19 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id EA3235803F;
	Fri, 28 Apr 2023 12:23:18 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav03.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 28 Apr 2023 12:23:18 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH 2/8] ima: Fix the ima_policy_appraise_all to appraise executables & libraries
Date: Fri, 28 Apr 2023 08:23:10 -0400
Message-Id: <20230428122316.521800-3-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230428122316.521800-1-stefanb@linux.ibm.com>
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: 1YjQ7m88WFymQENV8etajrENProzxTzQ
X-Proofpoint-GUID: M7NU9bVvopA1DncebyxiOsVHJq1eQEhq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-28_04,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 impostorscore=0 bulkscore=0 spamscore=0 adultscore=0
 clxscore=1015 mlxlogscore=999 suspectscore=0 malwarescore=0
 priorityscore=1501 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2303200000 definitions=main-2304280098
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59805

Fix the ima_policy_appraise_all policy to appraise all executables
and libraries. Also update the list of files that are not appraised to not
appraise cgroup related files.

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
---
 .../files/ima_policy_appraise_all                        | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/meta-integrity/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all b/meta-integrity/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all
index 36e71a7..3498025 100644
--- a/meta-integrity/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all
+++ b/meta-integrity/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all
@@ -25,5 +25,12 @@ dont_appraise fsmagic=0xf97cff8c
 dont_appraise fsmagic=0x6e736673
 # EFIVARFS_MAGIC
 dont_appraise fsmagic=0xde5e81e4
+# Cgroup
+dont_appraise fsmagic=0x27e0eb
+# Cgroup2
+dont_appraise fsmagic=0x63677270
 
-appraise
+# Appraise libraries
+appraise func=MMAP_CHECK mask=MAY_EXEC
+# Appraise executables
+appraise func=BPRM_CHECK
-- 
2.34.1


