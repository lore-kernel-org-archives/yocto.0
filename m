Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93547C77B60
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 12:23:28 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web11.18023.1682684605310091152
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 05:23:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=j4mFLvD9;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353727.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33SCHFgX007453
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=h1SLIqgOGg2aXlfz6C2p6oVWCs387TjVc1bE9wYLQUw=;
 b=j4mFLvD9j9PtnWiBBFcvFgOI7mh/uzdDKtldFnI0h7EkyXo7sElawmOtbVeuC4Hm6bHS
 IeBy16ghmo4tA/N51pL1qa+UyRJRibU/7lSOh8btmLN1VD9XY08fXOQtTt1DiycTQLIP
 2ppAerpXevd4KOuNsUqH9nADzt5ZE25JPssfIw8O+Yx2Xjeq/kpgwY79NpnQYpxmdkk+
 UaRkGtWKjSWnl/3w8eq+/t/Em7t8mzXC1XnAN84fvOOHaK6V1EKCWuwnpEQI5UkXttUZ
 BDxBlaFjIQN8xeif6SkdJ9XIOQz3qsgc0CcBPbmIUAPMAGaIOtwwcv9Gr88L81NTeS9W IA== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q8cde377t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:24 +0000
Received: from m0353727.ppops.net (m0353727.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 33SCMgik028741
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:23 GMT
Received: from ppma01wdc.us.ibm.com (fd.55.37a9.ip4.static.sl-reverse.com [169.55.85.253])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q8cde3779-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:23:23 +0000
Received: from pps.filterd (ppma01wdc.us.ibm.com [127.0.0.1])
	by ppma01wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 33SA0NQU012999;
	Fri, 28 Apr 2023 12:23:22 GMT
Received: from smtprelay07.wdc07v.mail.ibm.com ([9.208.129.116])
	by ppma01wdc.us.ibm.com (PPS) with ESMTPS id 3q4778fgpu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:23:22 +0000
Received: from smtpav03.dal12v.mail.ibm.com (smtpav03.dal12v.mail.ibm.com [10.241.53.102])
	by smtprelay07.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 33SCNKa816515594
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 28 Apr 2023 12:23:21 GMT
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 6D5625805A;
	Fri, 28 Apr 2023 12:23:20 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 29CC858056;
	Fri, 28 Apr 2023 12:23:20 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav03.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 28 Apr 2023 12:23:20 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH 5/8] ima: Sign all executables and the ima-policy in the root filesystem
Date: Fri, 28 Apr 2023 08:23:13 -0400
Message-Id: <20230428122316.521800-6-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230428122316.521800-1-stefanb@linux.ibm.com>
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: 3Mwmvv07Fs8-eGGiLuVjF7XOAwivLCa7
X-Proofpoint-GUID: _oz4muPmEIrjKbjy5zkUOYDl6cqzvVXr
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59802

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
---
 meta-integrity/classes/ima-evm-rootfs.bbclass | 25 +++++++++++++++----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/meta-integrity/classes/ima-evm-rootfs.bbclass b/meta-integrity/classes/ima-evm-rootfs.bbclass
index 6902d69..98c4bc1 100644
--- a/meta-integrity/classes/ima-evm-rootfs.bbclass
+++ b/meta-integrity/classes/ima-evm-rootfs.bbclass
@@ -62,17 +62,32 @@ ima_evm_sign_rootfs () {
        perl -pi -e 's;(\S+)(\s+)(${@"|".join((d.getVar("IMA_EVM_ROOTFS_IVERSION", True) or "no-such-mount-point").split())})(\s+)(\S+)(\s+)(\S+);\1\2\3\4\5\6\7,iversion;; s/(,iversion)+/,iversion/;' etc/fstab
     fi
 
-    # Sign file with private IMA key. EVM not supported at the moment.
-    bbnote "IMA/EVM: signing files 'find ${IMA_EVM_ROOTFS_SIGNED}' with private key '${IMA_EVM_PRIVKEY}'"
-    find ${IMA_EVM_ROOTFS_SIGNED} | xargs -d "\n" --no-run-if-empty --verbose evmctl ima_sign --key ${IMA_EVM_PRIVKEY}
-    bbnote "IMA/EVM: hashing files 'find ${IMA_EVM_ROOTFS_HASHED}'"
-    find ${IMA_EVM_ROOTFS_HASHED} | xargs -d "\n" --no-run-if-empty --verbose evmctl ima_hash
+    # Detect 32bit target to pass --m32 to evmctl by looking at libc
+    tmp="$(file "${IMAGE_ROOTFS}/lib/libc.so.6" | grep -o 'ELF .*-bit')"
+    if [ "${tmp}" = "ELF 32-bit" ]; then
+        evmctl_param="--m32"
+    elif [ "${tmp}" = "ELF 64-bit" ]; then
+        evmctl_param=""
+    else
+        bberror "Unknown target architecture bitness: '${tmp}'" >&2
+        exit 1
+    fi
+
+    bbnote "IMA/EVM: Signing root filesystem at ${IMAGE_ROOTFS} with key ${IMA_EVM_PRIVKEY}"
+    evmctl sign --imasig ${evmctl_param} --portable -a sha256 --key ${IMA_EVM_PRIVKEY} -r "${IMAGE_ROOTFS}"
+
+    # check signing key and signature verification key
+    evmctl ima_verify ${evmctl_param} --key "${IMA_EVM_X509}" "${IMAGE_ROOTFS}/lib/libc.so.6" || exit 1
+    evmctl verify     ${evmctl_param} --key "${IMA_EVM_X509}" "${IMAGE_ROOTFS}/lib/libc.so.6" || exit 1
 
     # Optionally install custom policy for loading by systemd.
     if [ "${IMA_EVM_POLICY}" ]; then
         install -d ./${sysconfdir}/ima
         rm -f ./${sysconfdir}/ima/ima-policy
         install "${IMA_EVM_POLICY}" ./${sysconfdir}/ima/ima-policy
+
+        bbnote "IMA/EVM: Signing IMA policy with key ${IMA_EVM_PRIVKEY}"
+        evmctl sign --imasig ${evmctl_param} --portable -a sha256 --key "${IMA_EVM_PRIVKEY}" "${IMAGE_ROOTFS}/etc/ima/ima-policy"
     fi
 }
 
-- 
2.34.1


