Return-Path: <mingli.yu@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D53A2E95A67
	for <webhook@archiver.kernel.org>; Sun,  8 Oct 2023 06:37:06 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.33571.1696747021386351565
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Oct 2023 23:37:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=ELTywWpC;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=8645fd0012=mingli.yu@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3986b0jB013616;
	Sun, 8 Oct 2023 06:37:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PPS06212021; bh=k2VDN
	GSN2t7c8z72G+rB8FwSskVRBa9ZDEzkOSckP+o=; b=ELTywWpCe3SojZg34OJvx
	1HBK2Z/x238iz+IosyUcDqUpFTCx9ikdxo1AnJblu8gX58msoWmmbXx6zyVH/90M
	S0nWPiRGbuQ0k2zEpi83pqBtx1gXDldFemBusdqinkKqVbMPnfC+CRm1UrSJrby9
	3th4lySwRC0HSaIjdWwZTkixZcOuGu2CdWczdUoipVIwzhjCS2sIKJSxVqdDuxc1
	vLgIClZ+qq44JdpbFxpawnq+CGCTVo50ZLJMdrhvHRhf0IzNgGnYWiSBAJRG9xVB
	Xirk3M1W7uFxSuvP5pitB9y7YO164TqqcCWWxwv9KDNOx6UERcsbhjIcB0FoyIsn
	w==
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3tjvhx0y02-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Sun, 08 Oct 2023 06:37:00 +0000 (GMT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sat, 7 Oct 2023 23:36:58 -0700
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.32 via Frontend Transport; Sat, 7 Oct 2023 23:36:58 -0700
From: <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] samhain: remove the buildpath
Date: Sun, 8 Oct 2023 14:36:57 +0800
Message-ID: <20231008063657.2880724-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: UcC15FhpxKqvPiRiuyv12dzlW5Ajgqxh
X-Proofpoint-ORIG-GUID: UcC15FhpxKqvPiRiuyv12dzlW5Ajgqxh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-08_03,2023-10-06_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 spamscore=0
 priorityscore=1501 suspectscore=0 impostorscore=0 mlxscore=0
 lowpriorityscore=0 mlxlogscore=601 phishscore=0 clxscore=1011 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2309180000 definitions=main-2310080059
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 08 Oct 2023 06:37:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61277

From: Mingli Yu <mingli.yu@windriver.com>

Fixes:
  WARNING: samhain-server-4.4.10-r0 do_package_qa: QA Issue: File /var/lib/samhain/samhain-install.sh in package samhain-server contains reference to TMPDIR [buildpaths]
  WARNING: samhain-server-4.4.10-r0 do_package_qa: QA Issue: File /usr/share/doc/samhain-server/scripts/samhain.ebuild-light in package samhain-server-doc contains reference to TMPDIR
  File /usr/share/doc/samhain-server/scripts/samhain.ebuild in package samhain-server-doc contains reference to TMPDIR [buildpaths]

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 recipes-ids/samhain/samhain.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index 2788bc3..f5bea1d 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -59,6 +59,7 @@ PACKAGECONFIG[acl] = " --enable-posix-acl , --disable-posix-acl, acl"
 PACKAGECONFIG[audit] = "ac_cv_header_auparse_h=yes,ac_cv_header_auparse_h=no,audit"
 PACKAGECONFIG[ps] = "--with-ps-path=${base_bindir}/ps,,,procps"
 
+EXTRA_OECONF += "INSTALL='install -p'"
 EXTRA_OEMAKE:append:aarch64 = " CPPFLAGS+=-DCONFIG_ARCH_AARCH64=1"
 EXTRA_OEMAKE:append:mips64 = " CPPFLAGS+=-DCONFIG_ARCH_MIPS64=1"
 
@@ -89,6 +90,9 @@ ssp_cv_lib=no
 sh_cv_va_copy=yes
 EOF
     export CONFIG_SITE=${S}/config-site.${BP}
+    # remove the buildpath
+    sed -i -e 's;mydefarg;mydefargholder;g' ${S}/scripts/samhain.ebuild.in
+    sed -i -e 's;mydefarg;mydefargholder;g' ${S}/scripts/samhain.ebuild-light.in
 }
 
 do_configure () {
-- 
2.25.1


