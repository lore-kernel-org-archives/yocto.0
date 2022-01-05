Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE038C433F5
	for <webhook@archiver.kernel.org>; Wed,  5 Jan 2022 14:12:53 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.821.1641391972858834924
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 06:12:53 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71FBE11D4
	for <yocto@lists.yoctoproject.org>; Wed,  5 Jan 2022 06:12:51 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1C9363F5A1
	for <yocto@lists.yoctoproject.org>; Wed,  5 Jan 2022 06:12:51 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper v2] Add a oe-selftest for Arm hosts
 and targets
Date: Wed,  5 Jan 2022 14:12:49 +0000
Message-Id: <20220105141249.1045266-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jan 2022 14:12:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55743

oe-selftest-arm to run oe-selftest with MACHINE=3Dqemuarm64, on any host.

oe-selftest-armhost to run oe-selftest with MACHINE=3Dqemux86-64, on an A=
rm
host (pinned by yocto-autobuilder2).

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/config.json b/config.json
index c0543d9..2378782 100644
--- a/config.json
+++ b/config.json
@@ -826,6 +826,13 @@
         "oe-selftest-centos" : {
             "TEMPLATE" : "selftest"
         },
+        "oe-selftest-arm" : {
+            "MACHINE": "qemuarm64",
+            "TEMPLATE" : "selftest"
+        },
+        "oe-selftest-armhost" : {
+            "TEMPLATE" : "selftest"
+        },
         "reproducible" : {
             "TEMPLATE" : "reproducible"
         },
--=20
2.25.1


