Return-Path: <mingli.yu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DBF4C63717
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:47 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web12.7953.1648867870723720568
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 19:51:10 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid
 domain name (domain: windriver.com, ip: 147.11.3.146,
 mailfrom: mingli.yu@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 2322pAFp010390
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 1 Apr 2022 19:51:10 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 2322pAG4023756
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 1 Apr 2022 19:51:10 -0700 (PDT)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 1 Apr 2022 19:51:09 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 19:51:09 -0700
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Fri, 1 Apr 2022 19:51:09 -0700
From: <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 11/11] checkpolicy: Update LICENSE variable
Date: Sat, 2 Apr 2022 10:50:57 +0800
Message-ID: <20220402025057.1774389-11-mingli.yu@windriver.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56639

From: Mingli Yu <mingli.yu@windriver.com>

Update LICENSE variable to use SPDX license identifiers.

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 recipes-security/selinux/checkpolicy_3.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/checkpolicy_3.3.bb b/recipes-security/selinux/checkpolicy_3.3.bb
index 99ac470..ad90cc2 100644
--- a/recipes-security/selinux/checkpolicy_3.3.bb
+++ b/recipes-security/selinux/checkpolicy_3.3.bb
@@ -6,7 +6,7 @@ binary policy. checkpolicy uses the static libsepol since it deals \
 with low level details of the policy that have not been \
 encapsulated/abstracted by a proper shared library interface."
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
-- 
2.25.1


