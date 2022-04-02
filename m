Return-Path: <mingli.yu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F3DC5AC78
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:45 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web09.7851.1648867155661449024
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 19:39:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid
 domain name (domain: windriver.com, ip: 147.11.3.146,
 mailfrom: mingli.yu@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 2322dFav008946
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 1 Apr 2022 19:39:15 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 2322dE7C022659
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 1 Apr 2022 19:39:15 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 1 Apr 2022 19:39:14 -0700
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Fri, 1 Apr 2022 19:39:14 -0700
From: <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-cgl-common][PATCH 7/8] resource-agents: Update LICENSE variable
Date: Sat, 2 Apr 2022 10:39:06 +0800
Message-ID: <20220402023907.1765138-7-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220402023907.1765138-1-mingli.yu@windriver.com>
References: <20220402023907.1765138-1-mingli.yu@windriver.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56627

From: Mingli Yu <mingli.yu@windriver.com>

Update LICENSE variable to use SPDX license identifiers.

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 .../resource-agents_4.5.0.bb                   | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
index c8b2fbd..9349ab9 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
@@ -4,15 +4,15 @@ to operate in a High Availability environment for both Pacemaker and \
 rgmanager service managers."
 HOMEPAGE = "http://sources.redhat.com/cluster/wiki/"
 
-LICENSE = "GPLv2+ & LGPLv2+ & GPLv3"
-LICENSE:${PN} = "GPLv2+ & LGPLv2+"
-LICENSE:${PN}-dev = "GPLv2+ & LGPLv2+"
-LICENSE:${PN}-staticdev = "GPLv2+ & LGPLv2+"
-LICENSE:${PN}-dbg = "GPLv2+ & LGPLv2+"
-LICENSE:${PN}-doc = "GPLv2+ & LGPLv2+"
-LICENSE:${PN}-extra = "GPLv3"
-LICENSE:${PN}-extra-dbg = "GPLv3"
-LICENSE:ldirectord = "GPLv2+"
+LICENSE = "GPL-2.0-or-later & LGPL-2.0-or-later & GPL-3.0-only"
+LICENSE:${PN} = "GPL-2.0-or-later & LGPL-2.0-or-later"
+LICENSE:${PN}-dev = "GPL-2.0-or-later & LGPL-2.0-or-later"
+LICENSE:${PN}-staticdev = "GPL-2.0-or-later & LGPL-2.0-or-later"
+LICENSE:${PN}-dbg = "GPL-2.0-or-later & LGPL-2.0-or-later"
+LICENSE:${PN}-doc = "GPL-2.0-or-later & LGPL-2.0-or-later"
+LICENSE:${PN}-extra = "GPL-3.0-only"
+LICENSE:${PN}-extra-dbg = "GPL-3.0-only"
+LICENSE:ldirectord = "GPL-2.0-or-later"
 
 SRC_URI = "git://github.com/ClusterLabs/resource-agents;branch=main;protocol=https \
            file://01-disable-doc-build.patch \
-- 
2.25.1


