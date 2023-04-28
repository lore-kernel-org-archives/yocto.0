Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C4BC7EE22
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 12:23:28 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web10.18037.1682684605289151298
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 05:23:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=N8Exrt3j;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353726.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33SCLfTB019318
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : content-transfer-encoding
 : mime-version; s=pp1; bh=Ms6xe4vYkIsJhHIu4CP6qJMWXtqZ4Be6WNzGnQGOK1M=;
 b=N8Exrt3jzGo57VzeTUBCE1vIkBEYtTY4kaOmUkRiFMGp0rNcxlWosDXZVLqSYZrIe198
 yvIQiGTZz396KC3OFAd6tT4sKPi5Pfp+DuSKuhuTJM/HU6ywjDwqpD73HDmeXuNUEOE1
 DpNv5ocs63mIE2jTjkPhRVD5RXV2EefLzxSgatTHMtRFqI0OedJepkCYp2LomF0stUnm
 /keuB58xM9t3ZP+rIC8itrW40v8pbgAfsKrjIL8SIcb9KdSuj85BaDBlQPGWlAKIhVaS
 0/viJZ0OCf8KiBV4S+wzaAEuH9YE6yYQr4Mz/DeZatzk4T6GEOi08FrwZR24Tm1oZzLI pw== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q89qnfxp4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:24 +0000
Received: from m0353726.ppops.net (m0353726.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 33SCLnvN019722
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:24 GMT
Received: from ppma04wdc.us.ibm.com (1a.90.2fa9.ip4.static.sl-reverse.com [169.47.144.26])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q89qnfxng-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:23:24 +0000
Received: from pps.filterd (ppma04wdc.us.ibm.com [127.0.0.1])
	by ppma04wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 33S9cgWr032079;
	Fri, 28 Apr 2023 12:23:22 GMT
Received: from smtprelay03.dal12v.mail.ibm.com ([9.208.130.98])
	by ppma04wdc.us.ibm.com (PPS) with ESMTPS id 3q47787hkt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:23:22 +0000
Received: from smtpav03.dal12v.mail.ibm.com (smtpav03.dal12v.mail.ibm.com [10.241.53.102])
	by smtprelay03.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 33SCNLDC42271048
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 28 Apr 2023 12:23:21 GMT
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 8C92358060;
	Fri, 28 Apr 2023 12:23:21 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4815F5803F;
	Fri, 28 Apr 2023 12:23:21 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav03.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 28 Apr 2023 12:23:21 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH 8/8] ima-evm-utils: Update ima-evm-utils to v1.5 and add a patch
Date: Fri, 28 Apr 2023 08:23:16 -0400
Message-Id: <20230428122316.521800-9-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230428122316.521800-1-stefanb@linux.ibm.com>
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: iGLGAWRdX2o5EgCBa2faEI-6Yu1ua0T8
X-Proofpoint-GUID: 7BjtY5JzojkFV24UbSh6QaixrizaqUC5
Content-Transfer-Encoding: 8bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-28_04,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=999 lowpriorityscore=0 malwarescore=0 phishscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 mlxscore=0 spamscore=0
 clxscore=1015 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304280098
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59801

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
---
 ...ation-using-ioctl-when-evm_portable-.patch | 35 +++++++++++++++++++
 ...-evm-utils_1.4.bb => ima-evm-utils_1.5.bb} |  9 +++--
 2 files changed, 42 insertions(+), 2 deletions(-)
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
 rename meta-integrity/recipes-security/ima-evm-utils/{ima-evm-utils_1.4.bb => ima-evm-utils_1.5.bb} (71%)

diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
new file mode 100644
index 0000000..3624576
--- /dev/null
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
@@ -0,0 +1,35 @@
+From 00ace817c5134d9844db387cadb9517ebad43808 Mon Sep 17 00:00:00 2001
+From: Stefan Berger <stefanb@linux.ibm.com>
+Date: Tue, 18 Apr 2023 11:43:55 -0400
+Subject: [PATCH] Do not get generation using ioctl when evm_portable is true
+
+If a signatures is detected as being portable do not attempt to read the
+generation with the ioctl since in some cases this may not be supported
+by the filesystem and is also not needed for computing a portable
+signature.
+
+This avoids the current work-around of passing --generation 0 when the
+ioctl is not supported by the filesystem.
+
+Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
+---
+ src/evmctl.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/evmctl.c b/src/evmctl.c
+index 6d2bb67..c35a28c 100644
+--- a/src/evmctl.c
++++ b/src/evmctl.c
+@@ -376,7 +376,7 @@ static int calc_evm_hash(const char *file, unsigned char *hash)
+ 	if (mode_str)
+ 		st.st_mode = strtoul(mode_str, NULL, 10);
+ 
+-	if (!evm_immutable) {
++	if (!evm_immutable && !evm_portable) {
+ 		if (S_ISREG(st.st_mode) && !generation_str) {
+ 			int fd = open(file, 0);
+ 
+---
+2.39.2
+
+
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.5.bb
similarity index 71%
rename from meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb
rename to meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.5.bb
index 873aeeb..8ac080c 100644
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.5.bb
@@ -6,8 +6,13 @@ DEPENDS += "openssl attr keyutils"
 
 DEPENDS:class-native += "openssl-native keyutils-native"
 
-SRC_URI = "https://sourceforge.net/projects/linux-ima/files/${BPN}/${BP}.tar.gz"
-SRC_URI[sha256sum] = "fcf85b31d6292051b3679e5f17ffa7f89b6898957aad0f59aa4e9878884b27d1"
+FILESEXTRAPATHS:append := "${THISDIR}/${PN}:"
+
+SRC_URI = " \
+    https://github.com/mimizohar/ima-evm-utils/releases/download/v${PV}/${BP}.tar.gz \
+    file://0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch \
+"
+SRC_URI[sha256sum] = "45f1caa3ad59ec59a1d6a74ea5df38c413488cd952ab62d98cf893c15e6f246d"
 
 inherit pkgconfig autotools features_check
 
-- 
2.34.1


