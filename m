Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D194DC7EE25
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 19:28:16 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.7420.1686166095153034939
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 12:28:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D478B1042;
	Wed,  7 Jun 2023 12:28:59 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0E30D3F71E;
	Wed,  7 Jun 2023 12:28:13 -0700 (PDT)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper 2/3] config.json: remove redundant oe-selftest-arm builder
Date: Wed,  7 Jun 2023 20:28:10 +0100
Message-Id: <20230607192811.601343-2-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230607192811.601343-1-ross.burton@arm.com>
References: <20230607192811.601343-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 19:28:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60214

From: Ross Burton <ross.burton@arm.com>

This builder isn't run regularly, and is redundant now that
oe-selftest-armhost uses MACHINE=3Dqemuarm64.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/config.json b/config.json
index aaf9077..92c9443 100644
--- a/config.json
+++ b/config.json
@@ -875,10 +875,6 @@
         "oe-selftest-centos" : {
             "TEMPLATE" : "selftest"
         },
-        "oe-selftest-arm" : {
-            "MACHINE": "qemuarm64",
-            "TEMPLATE" : "selftest"
-        },
         "oe-selftest-armhost" : {
             "MACHINE": "qemuarm64",
             "SDKMACHINE": "aarch64",
--=20
2.34.1


