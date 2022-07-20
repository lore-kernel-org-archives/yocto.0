Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B26DC43334
	for <webhook@archiver.kernel.org>; Wed, 20 Jul 2022 11:01:26 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.52594.1658314876234559319
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Jul 2022 04:01:16 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F95D1042;
	Wed, 20 Jul 2022 04:01:16 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 415D83F73D;
	Wed, 20 Jul 2022 04:01:15 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper] config.json: add a PREEMPT_RT-rt
 test build
Date: Wed, 20 Jul 2022 12:01:10 +0100
Message-Id: <20220720110110.1475951-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Jul 2022 11:01:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57598

Build and test core-image-full-cmdline with the linux-yocto-rt kernel,
adding the new rt test to verify that the kernel is actually the
PREEMPT_RT version expected.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 5f37e77..e00b667 100644
--- a/config.json
+++ b/config.json
@@ -1128,7 +1128,15 @@
                 "extravars" : [
                     "PACKAGECONFIG:append:x86-64:pn-mesa =3D ' gallium-l=
lvm gallium r600'"
                 ]
-
+            },
+            "step8" : {
+                "shortname" : "preempt-rt",
+                "BBTARGETS" : "core-image-full-cmdline",
+                "SANITYTARGETS" : "core-image-full-cmdline:do_testimage"=
,
+                "extravars" : [
+                    "PREFERRED_PROVIDER_virtual/kernel =3D 'linux-yocto-=
rt'",
+                    "TEST_SUITES:append =3D ' rt'"
+                ]
             }
         },
         "eclipse-plugin-neon" : {
--=20
2.34.1


