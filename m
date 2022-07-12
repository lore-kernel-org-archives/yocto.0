Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10795C43334
	for <webhook@archiver.kernel.org>; Tue, 12 Jul 2022 10:45:59 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web08.7653.1657622755697341557
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 03:45:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B934B1515;
	Tue, 12 Jul 2022 03:45:55 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D730E3F792;
	Tue, 12 Jul 2022 03:45:54 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper] config.json: Set SDKMACHINE to
 aarch64 for oe-selftest-armhost
Date: Tue, 12 Jul 2022 11:45:51 +0100
Message-Id: <20220712104551.3859618-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Jul 2022 10:45:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57504

Although bitbake.conf sets the default SDKMACHINE to the build
architecture, config.json resets that to i686.

As oe-selftest assumes that the SDKs it builds are usable on the host
machine, we should set SDKMACHINE=3Daarch64 in the oe-selftest-armhost
build.

A follow-up more invasive patch to clean up the SDKMACHINE assignments
is in progress, once it has been verified to not cause regressions.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index 15adeb3..ce76056 100644
--- a/config.json
+++ b/config.json
@@ -881,6 +881,7 @@
             "TEMPLATE" : "selftest"
         },
         "oe-selftest-armhost" : {
+            "SDKMACHINE": "aarch64",
             "TEMPLATE" : "selftest"
         },
         "reproducible" : {
--=20
2.34.1


