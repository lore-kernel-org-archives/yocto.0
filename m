Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D50B4C43334
	for <webhook@archiver.kernel.org>; Wed,  6 Jul 2022 14:04:53 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.6655.1657116287608772501
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jul 2022 07:04:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9285C106F;
	Wed,  6 Jul 2022 07:04:47 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5E77C3F792;
	Wed,  6 Jul 2022 07:04:46 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper 1/2] config.json: remove meta-gplv2
 from the check-layer job
Date: Wed,  6 Jul 2022 15:04:36 +0100
Message-Id: <20220706140437.817618-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Jul 2022 14:04:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57462

The meta-gplv2 layer is deprecated in master, so remove it from the
check-layer job.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/config.json b/config.json
index afae5e9..7f7c2ad 100644
--- a/config.json
+++ b/config.json
@@ -857,7 +857,7 @@
             "TEMPLATE" : "reproducible"
         },
         "check-layer" : {
-            "NEEDREPOS" : ["poky", "meta-gplv2", "meta-mingw"],
+            "NEEDREPOS" : ["poky", "meta-mingw"],
             "step1" : {
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-poky"]
             },
@@ -866,9 +866,6 @@
             },
             "step3" : {
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-mingw"=
]
-            },
-            "step4" : {
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-gplv2"=
]
             }
         },
         "check-layer-nightly" : {
--=20
2.25.1


