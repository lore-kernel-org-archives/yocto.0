Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE642C4332F
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 17:13:28 +0000 (UTC)
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
 by mx.groups.io with SMTP id smtpd.web11.13388.1698858802393677384
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 10:13:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=D0yoUfXw;
 spf=pass (domain: linux.ibm.com, ip: 148.163.158.5, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353723.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A1HAM48026823
	for <yocto@lists.yoctoproject.org>; Wed, 1 Nov 2023 17:13:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=MPsTruZo1VQuSgnavnXKjszzqLTQfFxthmLxIvqhUHw=;
 b=D0yoUfXwzpZ2V8naqi0gevGX+SynaPDlFHP6oT1OYwDhh5kSWaUp3hy630ZwbuKcQTxq
 PSd28FGyPiMDDriSmFxMcKVeZ4LHule4PVqrGqrWoZ03VQDt4MiJJGosGUcXCc4n1Xmf
 MIjj0QERRU+JedrxcNyzNAVUSjpNzQ2dIvveF3QwuhXn8HsT5iYQbRog+IqKqpFAPOZl
 +58glJ+pDkCDbxCkMhYyJCuSqzKQg6HtbT6Le3KAZ2v2SREYbLB/4PPLKhSLXVYE6gIj
 5a9jhUTwpajQycYAM7678fudUEfGz0CUguJMG2IavXJX6m8QV/+VYHBXZcoIh1JB7uWQ aA== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3u3tub82g0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 17:13:21 +0000
Received: from m0353723.ppops.net (m0353723.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3A1HAtWc028193
	for <yocto@lists.yoctoproject.org>; Wed, 1 Nov 2023 17:13:20 GMT
Received: from ppma22.wdc07v.mail.ibm.com (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3u3tub82fc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 01 Nov 2023 17:13:20 +0000
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma22.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 3A1EtlD4020285;
	Wed, 1 Nov 2023 17:13:19 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([172.16.1.8])
	by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3u1d0ys4nx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 01 Nov 2023 17:13:19 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com [10.241.53.105])
	by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 3A1HDINn19989156
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 1 Nov 2023 17:13:19 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E29C2581A4;
	Wed,  1 Nov 2023 17:13:18 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A549F581A6;
	Wed,  1 Nov 2023 17:13:18 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Wed,  1 Nov 2023 17:13:18 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: akuster808@gmail.com, yocto@lists.yoctoproject.org
Cc: Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH] ima,evm: Add two variables to write filenames and signatures into
Date: Wed,  1 Nov 2023 13:13:17 -0400
Message-ID: <20231101171317.643420-1-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: mgpLQlRnUB2T8pqrVLNiGZ-eVPX9tbNR
X-Proofpoint-GUID: Vj9IiYfU6k4G5iYJg0iR0Gez6HDwhboj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-01_15,2023-11-01_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 mlxlogscore=999
 priorityscore=1501 clxscore=1011 impostorscore=0 mlxscore=0 bulkscore=0
 suspectscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2310240000 definitions=main-2311010133
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 17:13:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61560

Add two variables IMA_FILE_SIGNATURES_FILE and EVM_FILE_SIGNATURES_FILE
for filenames where the ima_evm_sign_rootfs script can write the names
of files and their IMA or EVM signatures into. Both variables are
optional. The content of the file with IMA signatures may look like
this:

/usr/bin/gpiodetect ima:0x0302046730eefd...
/usr/bin/pwscore ima:0x0302046730eefd004...

Having the filenames along with their signatures is useful for signing
files in the initrd when the initrd is running out of a tmpfs filesystem
that has support for xattrs. This allows to enable an IMA appraisal
policy already in the initrd where files must be signed as soon as the
policy becomes active.

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
---
 meta-integrity/classes/ima-evm-rootfs.bbclass | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/meta-integrity/classes/ima-evm-rootfs.bbclass b/meta-integrity/classes/ima-evm-rootfs.bbclass
index 98c4bc1..7b73373 100644
--- a/meta-integrity/classes/ima-evm-rootfs.bbclass
+++ b/meta-integrity/classes/ima-evm-rootfs.bbclass
@@ -89,6 +89,18 @@ ima_evm_sign_rootfs () {
         bbnote "IMA/EVM: Signing IMA policy with key ${IMA_EVM_PRIVKEY}"
         evmctl sign --imasig ${evmctl_param} --portable -a sha256 --key "${IMA_EVM_PRIVKEY}" "${IMAGE_ROOTFS}/etc/ima/ima-policy"
     fi
+
+    # Optionally write the file names and ima and evm signatures into files
+    if [ "${IMA_FILE_SIGNATURES_FILE}" ]; then
+        getfattr -R -m security.ima --e hex --dump ./ 2>/dev/null | \
+          sed -n -e 's|# file: |/|p' -e 's|security.ima=|ima:|p' | \
+          sed '$!N;s/\n/ /' > ./${IMA_FILE_SIGNATURES_FILE}
+    fi
+    if [ "${EVM_FILE_SIGNATURES_FILE}" ]; then
+        getfattr -R -m security.evm --e hex --dump ./ 2>/dev/null | \
+          sed -n -e 's|# file: |/|p' -e 's|security.evm=|evm:|p' | \
+          sed '$!N;s/\n/ /' > ./${EVM_FILE_SIGNATURES_FILE}
+    fi
 }
 
 # Signing must run as late as possible in the do_rootfs task.
-- 
2.34.1


