Return-Path: <changqing.li@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6225CCDB474
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 02:06:13 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.273276.1697594764971326159
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 19:06:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=nHtCANxv;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=8655852171=changqing.li@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39I1Gwqc022227
	for <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 19:06:04 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PPS06212021; bh=cstW7
	DM2OQgZ450kYQsv4RT1X9j8chrXRBy4gjFlJyc=; b=nHtCANxv+obDC4j0vxFZe
	xix91Ggy0dfLyYY5RmeX/gQ0ezcGwiMGC8IrBAflNEnf5l8V9aRBj/iXfvB1VhAg
	00EM2o9zjPfAN1HUjXaNiRTOmgkWD96cgkHf5ZBD6MlJ36VIwy5gkPjNwIbvgo/v
	xNRFp1Dy1FM3FMdBla8u7mHw7LYClsLBI3Uiyw2yi2w34tIVESzIPKE7e+k0UIiW
	HbVpmlYyxzGFvay+x+usGIVBpxyCs53slJ6U2wutYDNqYm65o5uBIqVzxPxC1IU+
	/miE/ztAiHutx2UsmeXbsmQnhqEIcxBAcIdOTkhtRKCeT2Ma07rZW/78ui2OBrHC
	w==
Received: from ala-exchng02.corp.ad.wrs.com (ala-exchng02.wrs.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3tt147g7sm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 19:06:04 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 19:06:01 -0700
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.32 via Frontend Transport; Tue, 17 Oct 2023 19:06:01 -0700
From: <changqing.li@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-anaconda][PATCH] anaconda_oe.py: correct image name
Date: Wed, 18 Oct 2023 10:06:02 +0800
Message-ID: <20231018020602.379476-1-changqing.li@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: -UXkc0C4DPQ6ybgl_zrNthP2iAf8rqfJ
X-Proofpoint-GUID: -UXkc0C4DPQ6ybgl_zrNthP2iAf8rqfJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-17_08,2023-10-17_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 mlxlogscore=901
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2309180000 definitions=main-2310180017
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 02:06:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61383

From: Changqing Li <changqing.li@windriver.com>

Since oe-core commit 26d97acc713 [image-artifact-names: include
${IMAGE_NAME_SUFFIX} directly in both ${IMAGE_NAME} and
${IMAGE_LINK_NAME}], image name has changed to
core-image-minimal-qemux86.rootfs.ext4, change accordingly to fix error:
INSTALLER_TARGET_BUILD does not exist

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 README                                 | 2 +-
 lib/oeqa/selftest/cases/anaconda_oe.py | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/README b/README
index 07b63fe..76e9665 100644
--- a/README
+++ b/README
@@ -162,7 +162,7 @@ Building the target installer
            Edit conf/local.conf to use:
            $ echo 'PACKAGE_CLASSES = "package_rpm"' >> conf/local.conf
            $ echo 'DISTRO = "anaconda"' >> conf/local.conf
-           $ echo 'INSTALLER_TARGET_BUILD = "<target_build>/tmp-glibc/deploy/images/qemux86/core-image-minimal-qemux86.ext4"' >> conf/local.conf
+           $ echo 'INSTALLER_TARGET_BUILD = "<target_build>/tmp-glibc/deploy/images/qemux86/core-image-minimal-qemux86.rootfs.ext4"' >> conf/local.conf
 
            Edit conf/bblayers.conf to include other layers
            BBLAYERS ?= " \
diff --git a/lib/oeqa/selftest/cases/anaconda_oe.py b/lib/oeqa/selftest/cases/anaconda_oe.py
index bf55308..20b8d5b 100644
--- a/lib/oeqa/selftest/cases/anaconda_oe.py
+++ b/lib/oeqa/selftest/cases/anaconda_oe.py
@@ -146,7 +146,7 @@ class TestAnacondaOE(OESelftestTestCase):
         ks_file = os.path.join(self.layer_path, 'example/ks-imagecopy.cfg')
         features = 'TMPDIR .= "_host"\n'
         features += 'DISTRO = "%s"\n' % self.anaconda_distro
-        features += 'INSTALLER_TARGET_BUILD = "%s/%s-%s.ext4"\n' % (self.target_deploy_dir_image, self.target_recipe, self.machine)
+        features += 'INSTALLER_TARGET_BUILD = "%s/%s-%s.rootfs.ext4"\n' % (self.target_deploy_dir_image, self.target_recipe, self.machine)
         features += 'KICKSTART_FILE = "%s"\n' % ks_file
         features += 'SYSLINUX_TIMEOUT = "10"\n'
         features += 'APPEND:append = " textinst"\n'
@@ -164,7 +164,7 @@ class TestAnacondaOE(OESelftestTestCase):
     def test_testanaconda_imagecopy_install(self):
         features = 'TMPDIR .= "_host"\n'
         features += 'DISTRO = "%s"\n' % self.anaconda_distro
-        features += 'INSTALLER_TARGET_BUILD = "%s/%s-%s.ext4"\n' % (self.target_deploy_dir_image, self.target_recipe, self.machine)
+        features += 'INSTALLER_TARGET_BUILD = "%s/%s-%s.rootfs.ext4"\n' % (self.target_deploy_dir_image, self.target_recipe, self.machine)
         self.logger.info('extra local.conf:\n%s' % features)
         self.append_config(features)
 
-- 
2.25.1


