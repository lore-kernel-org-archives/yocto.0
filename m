Return-Path: <changqing.li@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 324F9C433EF
	for <webhook@archiver.kernel.org>; Fri, 21 Jan 2022 06:10:45 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web12.8356.1642745443257794425
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jan 2022 22:10:44 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid
 domain name (domain: windriver.com, ip: 147.11.3.146,
 mailfrom: changqing.li@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 20L6AfZu002562
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 20 Jan 2022 22:10:42 -0800
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 20L6AfXa007536
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 20 Jan 2022 22:10:41 -0800 (PST)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 20 Jan 2022 22:10:40 -0800
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 22:10:40 -0800
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Thu, 20 Jan 2022 22:10:39 -0800
From: <changqing.li@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-anaconda][PATCH] Update SRC_URI git default branch
Date: Fri, 21 Jan 2022 14:10:39 +0800
Message-ID: <20220121061039.19785-1-changqing.li@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jan 2022 06:10:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55937

From: Changqing Li <changqing.li@windriver.com>

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 recipes-installer/python3-dasbus/python3-dasbus_1.6.bb         | 2 +-
 recipes-installer/python3-productmd/python3-productmd_1.21.bb  | 2 +-
 recipes-installer/python3-simpleline/python3-simpleline_1.3.bb | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-installer/python3-dasbus/python3-dasbus_1.6.bb b/recipes-installer/python3-dasbus/python3-dasbus_1.6.bb
index c42ab52..5b87391 100644
--- a/recipes-installer/python3-dasbus/python3-dasbus_1.6.bb
+++ b/recipes-installer/python3-dasbus/python3-dasbus_1.6.bb
@@ -4,7 +4,7 @@ SECTION = "devel"
 LICENSE = "LGPLv2.1"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=1803fa9c2c3ce8cb06b4861d75310742"
 
-SRC_URI = "git://github.com/rhinstaller/dasbus.git;protocol=https;"
+SRC_URI = "git://github.com/rhinstaller/dasbus.git;protocol=https;branch=master"
 SRCREV = "63b22fe4a7b2f98739279b2a4c6107eebd8d5a58"
 
 S = "${WORKDIR}/git"
diff --git a/recipes-installer/python3-productmd/python3-productmd_1.21.bb b/recipes-installer/python3-productmd/python3-productmd_1.21.bb
index 98fd0de..8dcd434 100644
--- a/recipes-installer/python3-productmd/python3-productmd_1.21.bb
+++ b/recipes-installer/python3-productmd/python3-productmd_1.21.bb
@@ -6,7 +6,7 @@ SECTION = "devel"
 LICENSE = "LGPLv2.1"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=768997ba510a952bef1775c50bc22b00"
 
-SRC_URI = "git://github.com/release-engineering/productmd;protocol=https; \
+SRC_URI = "git://github.com/release-engineering/productmd;protocol=https;branch=master \
            file://add-wrlinux-version-pattern.patch \
            "
 SRCREV = "a8268944c8a6064697ccb4d24e52dc666ab03ed4"
diff --git a/recipes-installer/python3-simpleline/python3-simpleline_1.3.bb b/recipes-installer/python3-simpleline/python3-simpleline_1.3.bb
index dcf7e1d..651b9d0 100644
--- a/recipes-installer/python3-simpleline/python3-simpleline_1.3.bb
+++ b/recipes-installer/python3-simpleline/python3-simpleline_1.3.bb
@@ -6,7 +6,7 @@ SECTION = "devel"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=5f4f48e95324081879552f19cd16c54a"
 
-SRC_URI = "git://github.com/rhinstaller/python-simpleline;protocol=https;"
+SRC_URI = "git://github.com/rhinstaller/python-simpleline;protocol=https;branch=master"
 SRCREV = "1c21ffdeda9eed27e5ad8ec16aee467f8daecd50"
 S = "${WORKDIR}/git"
 inherit setuptools3
-- 
2.17.1


