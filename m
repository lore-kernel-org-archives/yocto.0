Return-Path: <mingli.yu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FDF3C6377C
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:47 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web11.7987.1648867869332383809
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 19:51:09 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid
 domain name (domain: windriver.com, ip: 147.11.3.146,
 mailfrom: mingli.yu@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 2322p8Wg010381
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 1 Apr 2022 19:51:08 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 2322p8qC023750
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 1 Apr 2022 19:51:08 -0700 (PDT)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 1 Apr 2022 19:51:08 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 19:51:07 -0700
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Fri, 1 Apr 2022 19:51:07 -0700
From: <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 09/11] setools: Update LICENSE variable
Date: Sat, 2 Apr 2022 10:50:55 +0800
Message-ID: <20220402025057.1774389-9-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220402025057.1774389-1-mingli.yu@windriver.com>
References: <20220402025057.1774389-1-mingli.yu@windriver.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56637

From: Mingli Yu <mingli.yu@windriver.com>

Update LICENSE variable to use SPDX license identifiers.

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 recipes-security/setools/setools_4.4.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/setools/setools_4.4.0.bb b/recipes-security/setools/setools_4.4.0.bb
index b78af36..f1557b1 100644
--- a/recipes-security/setools/setools_4.4.0.bb
+++ b/recipes-security/setools/setools_4.4.0.bb
@@ -6,7 +6,7 @@ libraries designed to facilitate SELinux policy analysis. \
 This meta-package depends upon the main packages necessary to run \
 SETools."
 SECTION = "base"
-LICENSE = "GPLv2 & LGPLv2.1"
+LICENSE = "GPL-2.0-only & LGPL-2.1-only"
 
 S = "${WORKDIR}/git"
 SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.4;protocol=https \
-- 
2.25.1


