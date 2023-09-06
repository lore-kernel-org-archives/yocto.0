Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8592EE14A3
	for <webhook@archiver.kernel.org>; Wed,  6 Sep 2023 15:03:30 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.660.1694012601411616110
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Sep 2023 08:03:22 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6542106F;
	Wed,  6 Sep 2023 08:03:58 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 417B83F7B4;
	Wed,  6 Sep 2023 08:03:20 -0700 (PDT)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper] config.json: add generic-arm64/poky-altcfg build
Date: Wed,  6 Sep 2023 16:03:17 +0100
Message-Id: <20230906150317.311607-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Sep 2023 15:03:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60930

From: Ross Burton <ross.burton@arm.com>

We want to promote generic-arm64 to meta-yocto-bsp in the future, so
start testing this more comprehensively.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 7542dc7..05c6794 100644
--- a/config.json
+++ b/config.json
@@ -429,7 +429,14 @@
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
                 },
             "step2": {
-                "shortname": "Build for generic-arm64",
+                "shortname": "Build for generic-arm64 (poky)",
+                "MACHINE": "generic-arm64",
+                "BBTARGETS": "core-image-minimal core-image-sato core-im=
age-sato:do_populate_sdk",
+                "SANITYTARGETS" : "core-image-sato:do_testsdk"
+            },
+            "step3": {
+                "shortname": "Build for generic-arm64 (poky-altcfg)",
+                "DISTRO": "poky-altcfg",
                 "MACHINE": "generic-arm64",
                 "BBTARGETS": "core-image-minimal core-image-sato core-im=
age-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
--=20
2.34.1


