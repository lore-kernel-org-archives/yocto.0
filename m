Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC559C77B7C
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 13:31:52 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web11.32494.1683639105664114506
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 06:31:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=Fd2tbZm9;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353726.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349D8od6003447
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 13:31:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=h1SLIqgOGg2aXlfz6C2p6oVWCs387TjVc1bE9wYLQUw=;
 b=Fd2tbZm9QakHdFXc+pqF8OmC5eXBzlMRlqkm6udgyvsnkIrs7DZ7P7KNpEEQNUyjf2k3
 yYwPIlS9xrsvaoCCX75HD2qSFLuhtCifkI1Dzg6xs7GKN1u9xmaRI3jTWlV/RVAFj3X8
 8gQv0E5ZNST/EP7zs15RJh2gm19J/jERihgTd2/EeqEh5hgVcHH5hvBA4oUi5zsmLi/s
 Z9oG7feHvqcNtd8snpka45CZO8DdKVeK78W1iWsGrxmbWcrvTqqbKI8WOH59wPhrHBWb
 T2C0ijEqHEpnljK1UeH4LF3XEv69ytgfJ3HMk3KnP6Va+SJKj/1qyCM40M45zlsJ+7B8 jA== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfjnhh4vs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 13:31:44 +0000
Received: from m0353726.ppops.net (m0353726.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349D99EM006037
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 13:31:39 GMT
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com [169.53.41.122])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfjnhh44h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 13:31:38 +0000
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
	by ppma04dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 349DBVLd032593;
	Tue, 9 May 2023 13:31:02 GMT
Received: from smtprelay03.wdc07v.mail.ibm.com ([9.208.129.113])
	by ppma04dal.us.ibm.com (PPS) with ESMTPS id 3qf7s6mg40-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 13:31:02 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com [10.241.53.100])
	by smtprelay03.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349DV0Fl62325238
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 13:31:00 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E43F05805D;
	Tue,  9 May 2023 13:30:59 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 9A0A458065;
	Tue,  9 May 2023 13:30:59 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 13:30:59 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH v2 5/8] ima: Sign all executables and the ima-policy in the root filesystem
Date: Tue,  9 May 2023 09:30:50 -0400
Message-Id: <20230509133053.1032476-6-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230509133053.1032476-1-stefanb@linux.ibm.com>
References: <20230509133053.1032476-1-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: n10YKi2L8qvuUjeDLAyYoA7Qo8ldzHPA
X-Proofpoint-ORIG-GUID: 1nAxTvl9hqIh9xrrVjZSW7YnRVF5uVuF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_08,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 clxscore=1015 adultscore=0 mlxlogscore=999 suspectscore=0 phishscore=0
 priorityscore=1501 lowpriorityscore=0 mlxscore=0 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305090111
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 13:31:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59924

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


