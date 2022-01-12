Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D55C433F5
	for <webhook@archiver.kernel.org>; Wed, 12 Jan 2022 18:20:36 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.1078.1642011635803715706
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jan 2022 10:20:36 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D3D1C6D
	for <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 10:20:34 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6E4563F766
	for <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 10:20:34 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder2] config.py: add qemuarm64-alt to a-quick
 and a-full
Date: Wed, 12 Jan 2022 18:20:31 +0000
Message-Id: <20220112182031.4091860-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 18:20:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55817

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 6da8d58..4c0b83b 100644
--- a/config.py
+++ b/config.py
@@ -58,7 +58,7 @@ repos =3D {
 }
=20
 trigger_builders_wait_shared =3D [
-    "qemuarm", "qemuarm-alt", "qemuarm64", "qemuarm-oecore",
+    "qemuarm", "qemuarm-alt", "qemuarm64", "qemuarm64-alt", "qemuarm-oec=
ore",
     "qemumips", "qemumips64",
     "multilib",
     "qemuppc",
--=20
2.25.1


