Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D66C3C7EE2D
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 13:31:12 +0000 (UTC)
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
 by mx.groups.io with SMTP id smtpd.web11.32477.1683639063934250510
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 06:31:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=Db8mi4fU;
 spf=pass (domain: linux.ibm.com, ip: 148.163.158.5, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349DAWa1027234
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 13:31:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=UDGr255lc5+HFNbFxLptWvW0Ucz1U8jN9vXUjU7t44M=;
 b=Db8mi4fU0xj84oBg8rX9GWbOjavod+gnIqDyAKDFc8OfNwsWjcZ7tJPCbVCevJMroivk
 jqz6N/Y8yhKF6Tglqs9H3AzD9TOFux6AullQ21T0qLNchZskN/UIZJORHwJiqGEz1Jh7
 QAJxoBl0QiNjdWOH8Zi6iTzKTY2iwfGCFRARBW6eXRFJwsGniQqD7HpgVPhhrxAJpbUD
 3pVr4LGicLZ8+w1ZYemx4eubd7ui+znbsYs2uw+ZnCj4xfsbcquygVguroAWUKe2hQMG
 kJmQSZK2F7oh3jsr41nmKnGRmztvwq0vz/gsHDXbNnTQjvL71aCkW6Vd10AcVV6EeM8I uQ== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfjvs7rxy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 13:31:02 +0000
Received: from m0356516.ppops.net (m0356516.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349DU9WY022668
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 13:31:02 GMT
Received: from ppma02dal.us.ibm.com (a.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.10])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfjvs7rxg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 13:31:02 +0000
Received: from pps.filterd (ppma02dal.us.ibm.com [127.0.0.1])
	by ppma02dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 349DIfe0011460;
	Tue, 9 May 2023 13:31:01 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([9.208.130.97])
	by ppma02dal.us.ibm.com (PPS) with ESMTPS id 3qf7wdveh5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 13:31:01 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com [10.241.53.100])
	by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349DV0wE28967434
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 13:31:00 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5645A5806B;
	Tue,  9 May 2023 13:31:00 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 0B0E158062;
	Tue,  9 May 2023 13:31:00 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 13:30:59 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH v2 6/8] integrity: Update the README for IMA support
Date: Tue,  9 May 2023 09:30:51 -0400
Message-Id: <20230509133053.1032476-7-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230509133053.1032476-1-stefanb@linux.ibm.com>
References: <20230509133053.1032476-1-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 8ve1eNHNSei-XZTvOmGSESRPjp75axuX
X-Proofpoint-ORIG-GUID: zPYIePxKC9d1rlYsH3Y_qNwD-dk498z7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_08,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 mlxlogscore=819 phishscore=0 adultscore=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305090106
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 13:31:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59921

Update the README describing how IMA support can be used.

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
---
 meta-integrity/README.md | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/meta-integrity/README.md b/meta-integrity/README.md
index 816b40d..1a37280 100644
--- a/meta-integrity/README.md
+++ b/meta-integrity/README.md
@@ -76,7 +76,7 @@ other layers needed. e.g.:
 
 It has some dependencies on a suitable BSP; in particular the kernel
 must have a recent enough IMA/EVM subsystem. The layer was tested with
-Linux 3.19 and uses some features (like loading X509 certificates
+Linux 6.1 and uses some features (like loading X509 certificates
 directly from the kernel) which were added in that release. Your
 mileage may vary with older kernels.
 
@@ -89,10 +89,17 @@ Adding the layer only enables IMA (see below regarding EVM) during
 compilation of the Linux kernel. To also activate it when building
 the image, enable image signing in the local.conf like this:
 
+    DISTRO_FEATURES:append = " integrity ima"
+
     IMAGE_CLASSES += "ima-evm-rootfs"
+
     IMA_EVM_KEY_DIR = "${INTEGRITY_BASE}/data/debug-keys"
     IMA_EVM_PRIVKEY = "${IMA_EVM_KEY_DIR}/privkey_ima.pem"
     IMA_EVM_X509 = "${IMA_EVM_KEY_DIR}/x509_ima.der"
+    IMA_EVM_ROOT_CA = "${IMA_EVM_KEY_DIR}/ima-local-ca.pem"
+
+    # The following policy enforces IMA & EVM signatures
+    IMA_EVM_POLICY = "${INTEGRITY_BASE}/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all"
 
 This uses the default keys provided in the "data" directory of the layer.
 Because everyone has access to these private keys, such an image
@@ -113,10 +120,7 @@ for that are included in the layer. This is also how the
     cd $IMA_EVM_KEY_DIR
     # In that shell, create the keys. Several options exist:
 
-    # 1. Self-signed keys.
-    $INTEGRITY_BASE/scripts/ima-gen-self-signed.sh
-
-    # 2. Keys signed by a new CA.
+    # 1. Keys signed by a new CA.
     # When asked for a PEM passphrase, that will be for the root CA.
     # Signing images then will not require entering that passphrase,
     # only creating new certificates does. Most likely the default
@@ -125,13 +129,11 @@ for that are included in the layer. This is also how the
     # $INTEGRITY_BASE/scripts/ima-gen-local-ca.sh
     # $INTEGRITY_BASE/scripts/ima-gen-CA-signed.sh
 
-    # 3. Keys signed by an existing CA.
+    # 2. Keys signed by an existing CA.
     # $INTEGRITY_BASE/scripts/ima-gen-CA-signed.sh <CA.pem> <CA.priv>
     exit
 
-When using ``ima-self-signed.sh`` as described above, self-signed keys
-are created. Alternatively, one can also use keys signed by a CA.  The
-``ima-gen-local-ca.sh`` and ``ima-gen.sh`` scripts create a root CA
+The ``ima-gen-local-ca.sh`` and ``ima-gen.sh`` scripts create a root CA
 and sign the signing keys with it. The ``ima-evm-rootfs.bbclass`` then
 supports adding tha CA's public key to the kernel's system keyring by
 compiling it directly into the kernel. Because it is unknown whether
-- 
2.34.1


