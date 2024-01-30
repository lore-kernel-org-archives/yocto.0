Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF339C47DDF
	for <webhook@archiver.kernel.org>; Tue, 30 Jan 2024 14:03:56 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.18694.1706623432237485709
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jan 2024 06:03:52 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8FB31692
	for <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 06:04:34 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4A3193F762
	for <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 06:03:50 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder2 2/2] config.py: add new meta-webosose builder
Date: Tue, 30 Jan 2024 14:03:46 +0000
Message-Id: <20240130140346.3178154-2-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240130140346.3178154-1-ross.burton@arm.com>
References: <20240130140346.3178154-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 14:03:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62334

From: Ross Burton <ross.burton@arm.com>

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/config.py b/config.py
index a1b2bf7..e5921d1 100644
--- a/config.py
+++ b/config.py
@@ -142,7 +142,8 @@ builders_others =3D [
     "patchtest",
     "yocto-mirror",
     "meta-oe-mirror",
-    "auh", "auh-meta-oe"
+    "auh", "auh-meta-oe",
+    "meta-webosose"
 ]
=20
 subbuilders =3D list(set(trigger_builders_wait_quick + trigger_builders_=
wait_full + trigger_builders_wait_perf + builders_others))
--=20
2.34.1


