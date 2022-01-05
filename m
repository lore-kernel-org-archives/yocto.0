Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CBC4C433EF
	for <webhook@archiver.kernel.org>; Wed,  5 Jan 2022 12:25:21 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.6101.1641385519251227116
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 04:25:19 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E15401FB
	for <yocto@lists.yoctoproject.org>; Wed,  5 Jan 2022 04:25:18 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8BBD93F5A1
	for <yocto@lists.yoctoproject.org>; Wed,  5 Jan 2022 04:25:18 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] Add a oe-selftest for Arm
 host/target
Date: Wed,  5 Jan 2022 12:25:13 +0000
Message-Id: <20220105122513.1041591-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jan 2022 12:25:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55741

This runs with MACHINE=3Dqemuarm64, and yocto-autobuilder2's config.py en=
sure
that it only runs on the Arm-based workers.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/config.json b/config.json
index c0543d9..53ebab8 100644
--- a/config.json
+++ b/config.json
@@ -826,6 +826,10 @@
         "oe-selftest-centos" : {
             "TEMPLATE" : "selftest"
         },
+        "oe-selftest-arm" : {
+            "MACHINE": "qemuarm64",
+            "TEMPLATE" : "selftest"
+        },
         "reproducible" : {
             "TEMPLATE" : "reproducible"
         },
--=20
2.25.1


