Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08ED1C46CD2
	for <webhook@archiver.kernel.org>; Tue, 30 Jan 2024 14:17:17 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.19056.1706624231311390344
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jan 2024 06:17:11 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A0C7139F
	for <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 06:17:48 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3506F3F762
	for <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 06:17:04 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder2] config.py: add meta-webosose repository list
Date: Tue, 30 Jan 2024 14:17:01 +0000
Message-Id: <20240130141701.3178670-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 14:17:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62335

From: Ross Burton <ross.burton@arm.com>

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.py b/config.py
index e5921d1..a67ebad 100644
--- a/config.py
+++ b/config.py
@@ -32,6 +32,7 @@ buildertorepos =3D {
     "auh":  ["poky", "auto-upgrade-helper"],
     "auh-meta-oe":  ["poky", "meta-openembedded", "auto-upgrade-helper"]=
,
     "metrics":  ["poky", "meta-openembedded"],
+    "meta-webosose":  ["poky", "meta-clang", "meta-openembedded", "meta-=
qt6", "meta-webosose"],
     "default": ["poky"]
 }
=20
--=20
2.34.1


