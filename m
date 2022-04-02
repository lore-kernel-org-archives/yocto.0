Return-Path: <mingli.yu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F00F6C63715
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:46 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web08.7759.1648867152809411820
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 19:39:12 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid
 domain name (domain: windriver.com, ip: 147.11.3.146,
 mailfrom: mingli.yu@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 2322dCQj008936
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 1 Apr 2022 19:39:12 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 1 Apr 2022 19:39:11 -0700
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Fri, 1 Apr 2022 19:39:11 -0700
From: <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-cgl-common][PATCH 4/8] libtest-pod-perl: Update LICENSE
 variable
Date: Sat, 2 Apr 2022 10:39:03 +0800
Message-ID: <20220402023907.1765138-4-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220402023907.1765138-1-mingli.yu@windriver.com>
References: <20220402023907.1765138-1-mingli.yu@windriver.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56624

From: Mingli Yu <mingli.yu@windriver.com>

Update LICENSE variable to use SPDX license identifiers.

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.52.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.52.bb b/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.52.bb
index c9f455a..968c628 100644
--- a/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.52.bb
+++ b/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.52.bb
@@ -1,6 +1,6 @@
 DESCRIPTION = "Test::Pod - check for POD errors in files"
 SECTION = "libs"
-LICENSE = "Artistic-1.0 | GPL-1.0+"
+LICENSE = "Artistic-1.0 | GPL-1.0-or-later"
 LIC_FILES_CHKSUM = "file://README;beginline=26;md5=ea81140c3f3b2937c6490fc732471cd0"
 HOMEPAGE = "https://github.com/perl-pod/test-pod/"
 BBCLASSEXTEND = "native"
-- 
2.25.1


