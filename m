Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1E4C02194
	for <webhook@archiver.kernel.org>; Thu,  6 Feb 2025 20:55:07 +0000 (UTC)
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
 by mx.groups.io with SMTP id smtpd.web11.53222.1738875298008650210
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Feb 2025 12:54:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=Rw57/gCr;
 spf=pass (domain: linux.ibm.com, ip: 148.163.158.5, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 516ESK2g027484
	for <yocto@lists.yoctoproject.org>; Thu, 6 Feb 2025 20:54:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=pp1; bh=K8T9+1TTwAHbUJ6wKyqsr7KMGHKhmDPJCiG7Mg4xE
	fI=; b=Rw57/gCrAWmlfuAkuFzsB7T4yLVgFWDZ0mUhwRveuf0kIzuqmWiMFFA5X
	C/y/SBymcrQ+51HCB46/7ASJfajfLGYO/jKJNZDjTcn5Ln73qQwlb47uZWsmh6SS
	g+vj0Y+ZufV9YjorK/BBnFPQVjEOSBrSI+OgB0e+ZkEkS4Vl7zbt9wDUz0xRadfj
	/p/nV7Pc9S0xVtDWTXpnOp3eF6pWX5VLnJCqxFBSvGS0xdA4obfcuefbEb5TrNLQ
	DUtprdcbxRPw4Owzylv8dPnRArrjxeU5LohZKOa9FOq8igfFZEppitO+wuZhr2ip
	cT/ani75QZjRkGCl3Ts4eMMbKVmYA==
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44mrsp413a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 20:54:57 +0000 (GMT)
Received: from m0360072.ppops.net (m0360072.ppops.net [127.0.0.1])
	by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 516KsuaH003413;
	Thu, 6 Feb 2025 20:54:56 GMT
Received: from ppma21.wdc07v.mail.ibm.com (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44mrsp4139-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 06 Feb 2025 20:54:56 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 516J6DKQ024492;
	Thu, 6 Feb 2025 20:54:56 GMT
Received: from smtprelay05.dal12v.mail.ibm.com ([172.16.1.7])
	by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 44hxxng98s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 06 Feb 2025 20:54:56 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com [10.241.53.105])
	by smtprelay05.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 516KssIw32572154
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 6 Feb 2025 20:54:55 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E029058055;
	Thu,  6 Feb 2025 20:54:54 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A5C9958043;
	Thu,  6 Feb 2025 20:54:54 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Thu,  6 Feb 2025 20:54:54 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: akuster808@gmail.com, yocto@lists.yoctoproject.org
Cc: Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH] meta-integrity: Enable choice of creating IMA signatures or hashes
Date: Thu,  6 Feb 2025 15:54:41 -0500
Message-ID: <20250206205441.691194-1-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: o2es-vD1iuxPK8Sr5csmKwYszgobTmpS
X-Proofpoint-ORIG-GUID: Ev_YBoOBLdXOj8SS-c0mgAiEgVNJI69p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-06_06,2025-02-05_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 adultscore=0
 spamscore=0 phishscore=0 priorityscore=1501 mlxlogscore=999 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502060162
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 20:55:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64734

When IMA and EVM are used for file appraisal then EVM verifies the
signature stored in security.evm. This signature covers file metadata
(uid, gid, mode bits, etc.) as well as the security.ima xattr.
Therefore, it is sufficient that only files' hashes are stored in
security.ima. This also leads to slight performance improvements
since IMA appraisal will then only verify that a file's hash matches
the expected hash stored in security.ima. EVM will ensure that the
signature over all the file metadata and security.ima xattr is
correct. Therefore, give the user control over whether to store file
signatures (--imasig) in ima.security or hashes (--imahash) by
setting the option in IMA_EVM_IMA_XATTR_OPT.

Only test-verify an IMA signature if --imasig is used as the option.

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
---
 meta-integrity/README.md                      |  1 +
 meta-integrity/classes/ima-evm-rootfs.bbclass | 10 ++++++++--
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/meta-integrity/README.md b/meta-integrity/README.md
index 6845c21..79635a0 100644
--- a/meta-integrity/README.md
+++ b/meta-integrity/README.md
@@ -97,6 +97,7 @@ the image, enable image signing in the local.conf like this:
     IMA_EVM_PRIVKEY = "${IMA_EVM_KEY_DIR}/privkey_ima.pem"
     IMA_EVM_EVMCTL_KEY_PASSWORD = "<optional private key password>"
     IMA_EVM_PRIVKEY_KEYID_OPT = "<options to use while signing>"
+    IMA_EVM_IMA_XATTR_OPT = "<whether to sign or hash for IMA>"
     IMA_EVM_X509 = "${IMA_EVM_KEY_DIR}/x509_ima.der"
     IMA_EVM_ROOT_CA = "${IMA_EVM_KEY_DIR}/ima-local-ca.pem"
 
diff --git a/meta-integrity/classes/ima-evm-rootfs.bbclass b/meta-integrity/classes/ima-evm-rootfs.bbclass
index d50a025..14639cf 100644
--- a/meta-integrity/classes/ima-evm-rootfs.bbclass
+++ b/meta-integrity/classes/ima-evm-rootfs.bbclass
@@ -15,6 +15,10 @@ IMA_EVM_PRIVKEY_KEYID_OPT ?= ""
 # Password for the private key
 IMA_EVM_EVMCTL_KEY_PASSWORD ?= ""
 
+# Whether to create IMA signatures (--imasig) or hashes (--imahash).
+# Hashes are sufficient for IMA when EVM uses signatures.
+IMA_EVM_IMA_XATTR_OPT ?= "--imasig"
+
 # Public part of certificates (used for both IMA and EVM).
 # The default is okay when using the example key directory.
 IMA_EVM_X509 ?= "${IMA_EVM_KEY_DIR}/x509_ima.der"
@@ -78,11 +82,13 @@ ima_evm_sign_rootfs () {
     export EVMCTL_KEY_PASSWORD=${IMA_EVM_EVMCTL_KEY_PASSWORD}
 
     bbnote "IMA/EVM: Signing root filesystem at ${IMAGE_ROOTFS} with key ${IMA_EVM_PRIVKEY}"
-    evmctl sign --imasig ${evmctl_param} --portable -a sha256 \
+    evmctl sign ${IMA_EVM_IMA_XATTR_OPT} ${evmctl_param} --portable -a sha256 \
         --key "${IMA_EVM_PRIVKEY}" ${IMA_EVM_PRIVKEY_KEYID_OPT} -r "${IMAGE_ROOTFS}"
 
     # check signing key and signature verification key
-    evmctl ima_verify ${evmctl_param} --key "${IMA_EVM_X509}" "${IMAGE_ROOTFS}/lib/libc.so.6" || exit 1
+    if [ "${IMA_EVM_IMA_XATTR_OPT}" = "--imasig" ]; then
+        evmctl ima_verify ${evmctl_param} --key "${IMA_EVM_X509}" "${IMAGE_ROOTFS}/lib/libc.so.6" || exit 1
+    fi
     evmctl verify     ${evmctl_param} --key "${IMA_EVM_X509}" "${IMAGE_ROOTFS}/lib/libc.so.6" || exit 1
 
     # Optionally install custom policy for loading by systemd.
-- 
2.34.1


