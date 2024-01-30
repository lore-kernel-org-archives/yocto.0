Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00873C46CD2
	for <webhook@archiver.kernel.org>; Tue, 30 Jan 2024 14:03:57 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.18692.1706623431225466747
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jan 2024 06:03:51 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E578139F
	for <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 06:04:33 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3CA903F762
	for <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 06:03:49 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder2 1/2] config.py: upgrade qt6 to 6.6.0
Date: Tue, 30 Jan 2024 14:03:45 +0000
Message-Id: <20240130140346.3178154-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 14:03:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62333

From: Ross Burton <ross.burton@arm.com>

meta-webosose upgraded to 6.6.0 since I first set up the autobuilder
configuration, so update the branch name.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index e82472e..a1b2bf7 100644
--- a/config.py
+++ b/config.py
@@ -56,7 +56,7 @@ repos =3D {
                           "master"],
     "bitbake": ["ssh://git@push.openembedded.org/bitbake", "master"],
     "auto-upgrade-helper": ["ssh://git@push.yoctoproject.org/auto-upgrad=
e-helper", "master"],
-    "meta-qt6": ["http://code.qt.io/yocto/meta-qt6.git", "6.5.2"],
+    "meta-qt6": ["http://code.qt.io/yocto/meta-qt6.git", "6.6.0"],
     "meta-qt4": ["ssh://git@push.yoctoproject.org/meta-qt4", "master"],
     "meta-qt3": ["ssh://git@push.yoctoproject.org/meta-qt3", "master"],
     "meta-mingw": ["ssh://git@push.yoctoproject.org/meta-mingw", "master=
"],
--=20
2.34.1


