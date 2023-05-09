Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E02ABC7EE26
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 13:31:12 +0000 (UTC)
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
 by mx.groups.io with SMTP id smtpd.web10.32532.1683639063939284718
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 06:31:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=RW2mAqd9;
 spf=pass (domain: linux.ibm.com, ip: 148.163.158.5, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353724.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349DHIDh003050
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 13:31:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=fAeN74BRvp/a7hkOQyVdXqp+OG/BP1V/YJr3VX/5itc=;
 b=RW2mAqd9Vlvu5s5OQqNuBsmnANnKVeWBTzqpehBnmyQUZRrFVwD0JI9SvBZkO4rTxymp
 EZ0rJbWo4Eu4x/dOkqXFj/wrkfzWOFaJEICUAaJwGfDoOAP46U53UlLV2ILY5ly0fiZ7
 /wqORYTehULgTDwvPzI23KjnD3i6ijQ1at/gkG5d+FCb9vvJI+dJQ3mnvIDK2hYv8lnL
 /dVoJoalx2RK3f7hBzGH3WnFf7uj6uBsvg5a5hjbBCXneQUPEybf+0xtmbWX1LKvC812
 FZKibNNax2RGXdur37SresdTE+AIj6xxMUe9sivGwvSU6pmrqIxU4mQJ2mOYezZ3D04R Sw== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfpa62414-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 13:31:02 +0000
Received: from m0353724.ppops.net (m0353724.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349DNTbv029926
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 13:31:02 GMT
Received: from ppma04wdc.us.ibm.com (1a.90.2fa9.ip4.static.sl-reverse.com [169.47.144.26])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfpa6240p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 13:31:02 +0000
Received: from pps.filterd (ppma04wdc.us.ibm.com [127.0.0.1])
	by ppma04wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 349CooC4031532;
	Tue, 9 May 2023 13:31:01 GMT
Received: from smtprelay03.wdc07v.mail.ibm.com ([9.208.129.113])
	by ppma04wdc.us.ibm.com (PPS) with ESMTPS id 3qf7dkbntm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 13:31:01 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com [10.241.53.100])
	by smtprelay03.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349DUxPB62325236
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 13:30:59 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7F3DE58064;
	Tue,  9 May 2023 13:30:59 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 349B158061;
	Tue,  9 May 2023 13:30:59 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 13:30:59 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH v2 4/8] ima: Rename IMA_EVM_POLICY_SYSTEMD to IMA_EVM_POLICY
Date: Tue,  9 May 2023 09:30:49 -0400
Message-Id: <20230509133053.1032476-5-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230509133053.1032476-1-stefanb@linux.ibm.com>
References: <20230509133053.1032476-1-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: fs4dRI4A8EgNJrGK7c_tU9JVU24clN1w
X-Proofpoint-ORIG-GUID: hGGHpZR-4ggSpiLGSScnxGQtl9199TTH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_08,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 adultscore=0
 clxscore=1015 malwarescore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 mlxscore=0 impostorscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2304280000
 definitions=main-2305090106
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 13:31:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59920

The IMA policy will be specified using the IMA_EVM_POLICY variable since
systemd will not be involved in loading the policy but the init script will
load it.

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
---
 meta-integrity/README.md                      | 2 +-
 meta-integrity/classes/ima-evm-rootfs.bbclass | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-integrity/README.md b/meta-integrity/README.md
index eae1c57..816b40d 100644
--- a/meta-integrity/README.md
+++ b/meta-integrity/README.md
@@ -187,7 +187,7 @@ IMA policy loading became broken in systemd 2.18. The modified systemd
 changes. To activate policy loading via systemd, place a policy file
 in `/etc/ima/ima-policy`, for example with:
 
-    IMA_EVM_POLICY_SYSTEMD = "${INTEGRITY_BASE}/data/ima_policy_simple"
+    IMA_EVM_POLICY = "${INTEGRITY_BASE}/data/ima_policy_simple"
 
 To check that measuring works, look at `/sys/kernel/security/ima/ascii_runtime_measurements`
 
diff --git a/meta-integrity/classes/ima-evm-rootfs.bbclass b/meta-integrity/classes/ima-evm-rootfs.bbclass
index 3cb0d07..6902d69 100644
--- a/meta-integrity/classes/ima-evm-rootfs.bbclass
+++ b/meta-integrity/classes/ima-evm-rootfs.bbclass
@@ -69,10 +69,10 @@ ima_evm_sign_rootfs () {
     find ${IMA_EVM_ROOTFS_HASHED} | xargs -d "\n" --no-run-if-empty --verbose evmctl ima_hash
 
     # Optionally install custom policy for loading by systemd.
-    if [ "${IMA_EVM_POLICY_SYSTEMD}" ]; then
+    if [ "${IMA_EVM_POLICY}" ]; then
         install -d ./${sysconfdir}/ima
         rm -f ./${sysconfdir}/ima/ima-policy
-        install "${IMA_EVM_POLICY_SYSTEMD}" ./${sysconfdir}/ima/ima-policy
+        install "${IMA_EVM_POLICY}" ./${sysconfdir}/ima/ima-policy
     fi
 }
 
-- 
2.34.1


