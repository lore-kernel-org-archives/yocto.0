Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.7372.1622035146879159487
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 May 2021 06:19:07 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B6C7F38C06EA
	for <yocto@yoctoproject.org>; Wed, 26 May 2021 13:19:05 +0000 (UTC)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 14QDJ4t9026698
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 26 May 2021 06:19:04 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 26 May 2021 06:19:03 -0700
Received: from vme.wrs.com (172.25.44.2) by ala-exchng01.corp.ad.wrs.com
 (147.11.82.252) with Microsoft SMTP Server id 15.1.2242.10 via Frontend
 Transport; Wed, 26 May 2021 06:19:03 -0700
From: "Randy MacLeod" <randy.macleod@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-parsec][PATCH] Correct typo: crago-bitbake
Date: Wed, 26 May 2021 09:19:02 -0400
Message-ID: <20210526131903.158963-1-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
---
 meta-parsec/README.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-parsec/README.md b/meta-parsec/README.md
index a2736b6..6d938a6 100644
--- a/meta-parsec/README.md
+++ b/meta-parsec/README.md
@@ -75,7 +75,7 @@ to ensure maximum reproducibility.
 versions of parsec recipes.
 https://github.com/meta-rust/cargo-bitbake
=20
-  When you have crago-bitbake built:
+  When you have cargo-bitbake built:
 1. Checkout the required version of parsec repository.
 2. Run cargo-bitbake inside the repository. It will produce a BB file.
 3. Create a new include file with SRC_URI and LIC_FILES_CHKSUM from the =
BB file.
--=20
2.27.0

