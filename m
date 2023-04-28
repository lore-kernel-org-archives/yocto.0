Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97383C7EE24
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 12:23:28 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web10.18038.1682684605473189075
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 05:23:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=VDyatbr4;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353726.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33SCLfTC019318
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=UDGr255lc5+HFNbFxLptWvW0Ucz1U8jN9vXUjU7t44M=;
 b=VDyatbr4wFe7VKKay0VPa96vnYrcl9kvPanqpvN772BwRfaA3H0MHw6/J4wqq5qmCAr+
 Iudy2ZMgRXkj1MvGH38Q8wpvPqnwL66ax5phZ78Wws7rkM7b2X+35AuJ+9rd2H2aTKoK
 KeZRDeQaNMRufFXs2Zi77ZJoZ7cmuRRt71M4U5jzLpAi03gLE+ZrqoZVurM/yzF61XFy
 Sooj2JBtXWDMCEBoIKUx0KpOvnhYuzFwwfBMVWcBEIawkNNyB4MEoYdchMG4RZZhxs99
 MvgW+NiIji8pCn7GdvQA7dMN2Kw/XNSAKG+na9IBbyuzunfu03UdOy5q9OlW+Bvxh+Br 2A== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q89qnfxp7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:24 +0000
Received: from m0353726.ppops.net (m0353726.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 33SCLnvP019722
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:24 GMT
Received: from ppma04wdc.us.ibm.com (1a.90.2fa9.ip4.static.sl-reverse.com [169.47.144.26])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q89qnfxnj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:23:24 +0000
Received: from pps.filterd (ppma04wdc.us.ibm.com [127.0.0.1])
	by ppma04wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 33SA05xk032076;
	Fri, 28 Apr 2023 12:23:22 GMT
Received: from smtprelay07.wdc07v.mail.ibm.com ([9.208.129.116])
	by ppma04wdc.us.ibm.com (PPS) with ESMTPS id 3q47787hks-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:23:22 +0000
Received: from smtpav03.dal12v.mail.ibm.com (smtpav03.dal12v.mail.ibm.com [10.241.53.102])
	by smtprelay07.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 33SCNKhB53346722
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 28 Apr 2023 12:23:21 GMT
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C93775803F;
	Fri, 28 Apr 2023 12:23:20 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 8547758056;
	Fri, 28 Apr 2023 12:23:20 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav03.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 28 Apr 2023 12:23:20 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH 6/8] integrity: Update the README for IMA support
Date: Fri, 28 Apr 2023 08:23:14 -0400
Message-Id: <20230428122316.521800-7-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230428122316.521800-1-stefanb@linux.ibm.com>
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: 7nPc5rV4ZIVRAo1RtMMs0v3fwpYNB5Ob
X-Proofpoint-GUID: Kx1gF72EdPOqF1mqtVJZN9H7Etv8EtHF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-28_04,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=824 lowpriorityscore=0 malwarescore=0 phishscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 mlxscore=0 spamscore=0
 clxscore=1015 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304280098
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59803

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


