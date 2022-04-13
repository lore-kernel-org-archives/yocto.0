Return-Path: <joe.slater@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1961C38A05
	for <webhook@archiver.kernel.org>; Thu, 14 Apr 2022 16:03:53 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web12.3884.1649883567268136272
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Apr 2022 13:59:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid
 domain name (domain: windriver.com, ip: 147.11.3.146,
 mailfrom: joe.slater@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 23DKxLm6011122
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Wed, 13 Apr 2022 13:59:21 -0700
Received: from ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Apr 2022 13:59:21 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Apr 2022 13:59:20 -0700
Received: from ala-lpggp5.wrs.com (147.11.105.121) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Wed, 13 Apr 2022 13:59:20 -0700
From: Joe Slater <joe.slater@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: <joe.slater@windriver.com>, <randy.macleod@windriver.com>
Subject: [meta-cgl][PATCH 1/1] LICENSE: update to standard SPDX names
Date: Wed, 13 Apr 2022 13:59:20 -0700
Message-ID: <20220413205920.35055-1-joe.slater@windriver.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Apr 2022 16:03:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56768

Use convert-spdx-licenses.py to change LICENSE in two recipes.

Signed-off-by: Joe Slater <joe.slater@windriver.com>
---
 meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb     | 2 +-
 meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
index edaeb8b..a6076cc 100644
--- a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
@@ -10,7 +10,7 @@ SRC_URI = "https://releases.pagure.org/linux-cluster/cluster/${BP}.tar.xz \
 SRC_URI[md5sum] = "300d83dbbc525c3da21c2e961271c84b"
 SRC_URI[sha256sum] = "4d340338c2376d369cb223469fa1a3356cce9ab5b2a0a0a33256ade2dbbe02d1"
 
-LICENSE = "GPL-2.0 & LGPL-2.0"
+LICENSE = "GPL-2.0-only & LGPL-2.0-only"
 LIC_FILES_CHKSUM = "file://doc/README.licence;md5=ee8ae43af5ea09f12ca7f7a649764cb0"
 
 PR = "r1"
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
index b5dfad0..7b9e875 100644
--- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
@@ -22,7 +22,7 @@ It implements the following kinds of heartbeats: \
 "
 HOMEPAGE = "http://linux-ha.org/"
 SECTION = "System Environment/Daemons"
-LICENSE = "GPLv2 & LGPLv2+"
+LICENSE = "GPL-2.0-only & LGPL-2.0-or-later"
 LIC_FILES_CHKSUM = " \
     file://doc/COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b \
     file://doc/COPYING.LGPL;md5=d8045f3b8f929c1cb29a1e3fd737b499 \
-- 
2.35.1


