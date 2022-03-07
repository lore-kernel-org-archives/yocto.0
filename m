Return-Path: <mingli.yu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F9B6C433EF
	for <webhook@archiver.kernel.org>; Mon,  7 Mar 2022 08:59:57 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web09.24446.1646643594068997662
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Mar 2022 00:59:54 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid
 domain name (domain: windriver.com, ip: 147.11.3.146,
 mailfrom: mingli.yu@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 2278xqCb018075
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 7 Mar 2022 00:59:52 -0800
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 7 Mar 2022 00:59:51 -0800
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Mon, 7 Mar 2022 00:59:51 -0800
From: <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>, <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH] libsocket6-perl: set precise BSD license
Date: Mon, 7 Mar 2022 16:59:50 +0800
Message-ID: <20220307085950.3157376-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Mar 2022 08:59:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56379

From: Mingli Yu <mingli.yu@windriver.com>

"BSD" is ambiguous, use the precise license BSD-3-Clause to fix
the below warning:
WARNING: libsocket6-perl-0.29-r2 do_populate_lic: QA Issue: libsocket6-perl: No generic license file exists for: BSD in any provider [license-exists]

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
index 9f38380..004efe2 100644
--- a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
+++ b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "Perl extensions for IPv6"
 HOMEPAGE = "https://metacpan.org/release/Socket6"
 SECTION = "libs"
-LICENSE = "BSD"
+LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://README;beginline=43;md5=b2bfcdf2de2e951c8e4ed544e942d8e1"
 PR = "r2"
 
-- 
2.25.1


