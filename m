Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B008C433EF
	for <webhook@archiver.kernel.org>; Tue, 23 Nov 2021 12:47:37 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.10806.1637671656138742917
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Nov 2021 04:47:36 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6973C1FB
	for <yocto@lists.yoctoproject.org>; Tue, 23 Nov 2021 04:47:34 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 13ACF3F66F
	for <yocto@lists.yoctoproject.org>; Tue, 23 Nov 2021 04:47:33 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] config.json: build generic-arm64
 instead of Juno
Date: Tue, 23 Nov 2021 12:47:28 +0000
Message-Id: <20211123124728.654484-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Nov 2021 12:47:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55395

generic-arm64 is the recommeded generic BSP for modern Arm deployments,
so ensure it is exercised in the autobuilder.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index f152b47..7203783 100644
--- a/config.json
+++ b/config.json
@@ -330,8 +330,8 @@
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
                 },
             "step2": {
-                "shortname": "Build for juno",
-                "MACHINE": "juno",
+                "shortname": "Build for generic-arm64",
+                "MACHINE": "generic-arm64",
                 "BBTARGETS": "core-image-minimal core-image-sato core-im=
age-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
--=20
2.25.1


