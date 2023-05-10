Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16CCBC7EE2D
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 14:51:40 +0000 (UTC)
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
 by mx.groups.io with SMTP id smtpd.web10.19618.1683730292761634060
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 07:51:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=eEM4MrjV;
 spf=pass (domain: linux.ibm.com, ip: 148.163.158.5, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34AEd0EU015048;
	Wed, 10 May 2023 14:51:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : content-transfer-encoding
 : mime-version; s=pp1; bh=2IHWZyt1TNcO69d7IxtRNQqoT1K9I+RIxNTtNvUoHkA=;
 b=eEM4MrjVfemTJ6x3xkKgd6JJXFbH7IRrBTesBJZNq8EIFNdIZzbNTiqVbFMhMrwMyWsw
 6DczGxano2qf8iL7wNSLT1Z//yW3EYO5G+Lrw3POcq0TMU75y//xf94i9B34cSk11IjY
 D2ivFAcZ+CUozPJLhTPpyVb3dL4ju+TuxlXk2WTYI7iM0jYYkPTAGKXyS+RetXM/3uku
 1z2KyQWDb/NW72wAbdCHdbrrEbWJtmB+mhxX2YYgtFjFEnomPH15OsG49+BDJ0Ib22Xb
 /PRk3THQoA27oehiyn3kvBWaJnF711S+qp0VsiVuQtf80p5j+bOVAn+H2NpI3Ft9+V57 RQ== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qgcdvacp2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:51:31 +0000
Received: from m0356516.ppops.net (m0356516.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 34AEdh7l017283;
	Wed, 10 May 2023 14:51:31 GMT
Received: from ppma02wdc.us.ibm.com (aa.5b.37a9.ip4.static.sl-reverse.com [169.55.91.170])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qgcdvacnr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:51:31 +0000
Received: from pps.filterd (ppma02wdc.us.ibm.com [127.0.0.1])
	by ppma02wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 34ABmaoi014494;
	Wed, 10 May 2023 14:51:30 GMT
Received: from smtprelay04.wdc07v.mail.ibm.com ([9.208.129.114])
	by ppma02wdc.us.ibm.com (PPS) with ESMTPS id 3qf7ey9gd3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:51:30 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com [10.241.53.105])
	by smtprelay04.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 34AEpTU833817232
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 14:51:29 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 2AD5258055;
	Wed, 10 May 2023 14:51:29 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BA08958043;
	Wed, 10 May 2023 14:51:28 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Wed, 10 May 2023 14:51:28 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, quaresma.jose@gmail.com, mikko.rapeli@linaro.org,
        Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH v2 3/4] integrity: Fix the do_configure function
Date: Wed, 10 May 2023 10:51:24 -0400
Message-Id: <20230510145125.1067280-4-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230510145125.1067280-1-stefanb@linux.ibm.com>
References: <20230510145125.1067280-1-stefanb@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: uzmQkCARebeeowXm8bA9S6nsiimkKQ39
X-Proofpoint-GUID: _PCmVz_DRglnrVueO6pPasdJb5HJxPIs
Content-Transfer-Encoding: 8bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 mlxscore=0 malwarescore=0 mlxlogscore=999 clxscore=1015
 phishscore=0 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305100117
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 14:51:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59968

Append ':append' to do_configure so it does not replace all existing
do_configure's.

Only run 'sed' when DISTRO_FEATURES contains 'ima' and the .config file
exists.

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
---
 meta-integrity/recipes-kernel/linux/linux_ima.inc | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-integrity/recipes-kernel/linux/linux_ima.inc b/meta-integrity/recipes-kernel/linux/linux_ima.inc
index 0b6f530..7016800 100644
--- a/meta-integrity/recipes-kernel/linux/linux_ima.inc
+++ b/meta-integrity/recipes-kernel/linux/linux_ima.inc
@@ -4,8 +4,10 @@ SRC_URI += " \
     ${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'file://ima.scc', '', d)} \
 "
 
-do_configure() {
-    sed -i "s|^CONFIG_SYSTEM_TRUSTED_KEYS=.*|CONFIG_SYSTEM_TRUSTED_KEYS=\"${IMA_EVM_ROOT_CA}\"|" .config
+do_configure:append() {
+    if [ "${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'yes', '', d)}" = "yes" ] && [ -f .config ] ; then
+        sed -i "s|^CONFIG_SYSTEM_TRUSTED_KEYS=.*|CONFIG_SYSTEM_TRUSTED_KEYS=\"${IMA_EVM_ROOT_CA}\"|" .config
+    fi
 }
 
 KERNEL_FEATURES:append = " ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', ' features/ima/modsign.scc', '', d)}"
-- 
2.34.1


