Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C376DC46CD2
	for <webhook@archiver.kernel.org>; Tue, 30 Jan 2024 13:29:16 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.17939.1706621355310393277
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jan 2024 05:29:15 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 074F9DA7
	for <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 05:29:58 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 037D63F762
	for <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 05:29:13 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder2] config.py: ping meta-qt6 to 6.5.2 branch
Date: Tue, 30 Jan 2024 13:29:12 +0000
Message-Id: <20240130132912.3176734-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 13:29:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62332

From: Ross Burton <ross.burton@arm.com>

This repository is currently only needed for building meta-webosose, so
simplify things and pin it to the branch that webosose requires.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 1c7f62f..e82472e 100644
--- a/config.py
+++ b/config.py
@@ -56,7 +56,7 @@ repos =3D {
                           "master"],
     "bitbake": ["ssh://git@push.openembedded.org/bitbake", "master"],
     "auto-upgrade-helper": ["ssh://git@push.yoctoproject.org/auto-upgrad=
e-helper", "master"],
-    "meta-qt6": ["http://code.qt.io/yocto/meta-qt6.git", "dev"],
+    "meta-qt6": ["http://code.qt.io/yocto/meta-qt6.git", "6.5.2"],
     "meta-qt4": ["ssh://git@push.yoctoproject.org/meta-qt4", "master"],
     "meta-qt3": ["ssh://git@push.yoctoproject.org/meta-qt3", "master"],
     "meta-mingw": ["ssh://git@push.yoctoproject.org/meta-mingw", "master=
"],
--=20
2.34.1


