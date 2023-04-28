Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF42C7EE2A
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 12:23:28 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web10.18035.1682684604306667055
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 05:23:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=lusFCn9/;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353728.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33SCFSPd016467
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=fAeN74BRvp/a7hkOQyVdXqp+OG/BP1V/YJr3VX/5itc=;
 b=lusFCn9/vdtvK5ngBSVSwoFVCA1RCY0Z4Qj4Id9RH1qF3DuFA5utX28RIFosHurhIGP9
 Q1FcesiSGes0dsebSkBruFubBmH3U0xvoD6aNeP8LodjAreKmkZm5BPjiSQex+p/m80e
 FQPhEZM0jNoGC2CLllWdtX+U8adU4whlwA55K0m82gYQyRolnuSjLFZs1R3Ic8b3bPnz
 ZpMTJJ0Q1IwD1Y5EBsd7Q8Kt8UnkVkFKOZj09u1ewu0t0ROxSyurBJqWgKm+tlBiaYaV
 Og+pyO7L9VwEZF63+8DPqeRfsycx11bZN7c3rMNWC8I7PqGlY7KCMjCX8wFa26YEPtTy eg== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q8c9jb4bd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:23 +0000
Received: from m0353728.ppops.net (m0353728.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 33SCAEoA021942
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:23 GMT
Received: from ppma02dal.us.ibm.com (a.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.10])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q8c9jb4b2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:23:23 +0000
Received: from pps.filterd (ppma02dal.us.ibm.com [127.0.0.1])
	by ppma02dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 33SB05Hk015440;
	Fri, 28 Apr 2023 12:23:22 GMT
Received: from smtprelay07.wdc07v.mail.ibm.com ([9.208.129.116])
	by ppma02dal.us.ibm.com (PPS) with ESMTPS id 3q4778qajn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:23:22 +0000
Received: from smtpav03.dal12v.mail.ibm.com (smtpav03.dal12v.mail.ibm.com [10.241.53.102])
	by smtprelay07.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 33SCNKWv54460924
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 28 Apr 2023 12:23:20 GMT
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 123045806A;
	Fri, 28 Apr 2023 12:23:20 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C24CF5803F;
	Fri, 28 Apr 2023 12:23:19 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav03.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 28 Apr 2023 12:23:19 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH 4/8] ima: Rename IMA_EVM_POLICY_SYSTEMD to IMA_EVM_POLICY
Date: Fri, 28 Apr 2023 08:23:12 -0400
Message-Id: <20230428122316.521800-5-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230428122316.521800-1-stefanb@linux.ibm.com>
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: amGW8kzIkzAel6EGo8f85aDnlRTCsBma
X-Proofpoint-ORIG-GUID: ihh4aVR0R5rLz4rQN4FVvN-uED1n8BvU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-28_04,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=999
 malwarescore=0 phishscore=0 bulkscore=0 mlxscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304280098
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59799

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


