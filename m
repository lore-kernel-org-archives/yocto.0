Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0605CC77B75
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 13:33:23 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web11.32541.1683639194625016242
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 06:33:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=MqqYMeYu;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353728.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349D8ZIT024421
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 13:33:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=q7CcALdxWRc3P+rVCBTABFyATTM7c+9+6hKPBrWKs1w=;
 b=MqqYMeYuMaGdHsyoQ6pA2YGnze5tT/RvrD7v/gHnzMfNbE8HxrosU+i/Jf0kUAte5BQw
 rNQ3OQ4KD7xLcmsZJLrXM9GDNeTa5OVZgzbtTweXd5RqMU8feDuUVSrD448GO7MrEvkH
 mMw7dEDqw6drrLc98uOHpUCU56CPPfzsvSPtywcPJ3E+trjg7e6evHU0NkV5eJ5YY3w9
 +Ka8MrsDCBp5jftk9bIQGgKy5aiuEQJrPFctxmizFENjXbp7rIEkxK0DK2HpWxwoHtEB
 Rn9u3hgOdimcYQ0cVU596nwc5/6qCML9p2HzIAyvY8MTX/3IpPestdF7934yvAtQGrna Kg== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfkth6s18-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 13:33:10 +0000
Received: from m0353728.ppops.net (m0353728.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349DMWKN016510
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 13:33:02 GMT
Received: from ppma01dal.us.ibm.com (83.d6.3fa9.ip4.static.sl-reverse.com [169.63.214.131])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfkth6qs5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 13:33:01 +0000
Received: from pps.filterd (ppma01dal.us.ibm.com [127.0.0.1])
	by ppma01dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 349DAih7019495;
	Tue, 9 May 2023 13:31:00 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([9.208.129.120])
	by ppma01dal.us.ibm.com (PPS) with ESMTPS id 3qf7njmgm6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 13:31:00 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com [10.241.53.100])
	by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349DUwRp59965740
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 13:30:59 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 9AA2658061;
	Tue,  9 May 2023 13:30:58 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4697358068;
	Tue,  9 May 2023 13:30:58 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 13:30:58 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH v2 2/8] ima: Fix the ima_policy_appraise_all to appraise executables & libraries
Date: Tue,  9 May 2023 09:30:47 -0400
Message-Id: <20230509133053.1032476-3-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230509133053.1032476-1-stefanb@linux.ibm.com>
References: <20230509133053.1032476-1-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: 1Cxol9HdtLYZpAkuzZdU2Xe5ADUCqwrT
X-Proofpoint-GUID: peD-EnrUwP5MpMP6sdQtf4hxePWSokVO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_08,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 malwarescore=0 spamscore=0 adultscore=0 phishscore=0 suspectscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305090111
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 13:33:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59925

Fix the ima_policy_appraise_all policy to appraise all executables
and libraries. Also update the list of files that are not appraised to not
appraise cgroup related files.

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
---
 .../files/ima_policy_appraise_all                        | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/meta-integrity/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all b/meta-integrity/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all
index 36e71a7..3387edc 100644
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
+appraise func=MMAP_CHECK mask=MAY_EXEC appraise_type=imasig
+# Appraise executables
+appraise func=BPRM_CHECK appraise_type=imasig
-- 
2.34.1


