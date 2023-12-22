Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EE4CC41535
	for <webhook@archiver.kernel.org>; Fri, 22 Dec 2023 16:32:37 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.26809.1703262752138736989
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Dec 2023 08:32:32 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D10D91570
	for <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 08:33:16 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 02DB03F738
	for <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 08:32:30 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder2] config.py: add meta-qt6 and meta-webosose repositories
Date: Fri, 22 Dec 2023 16:32:29 +0000
Message-Id: <20231222163229.614267-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 16:32:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62029

From: Ross Burton <ross.burton@arm.com>

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/config.py b/config.py
index e7a04be..1c7f62f 100644
--- a/config.py
+++ b/config.py
@@ -56,6 +56,7 @@ repos =3D {
                           "master"],
     "bitbake": ["ssh://git@push.openembedded.org/bitbake", "master"],
     "auto-upgrade-helper": ["ssh://git@push.yoctoproject.org/auto-upgrad=
e-helper", "master"],
+    "meta-qt6": ["http://code.qt.io/yocto/meta-qt6.git", "dev"],
     "meta-qt4": ["ssh://git@push.yoctoproject.org/meta-qt4", "master"],
     "meta-qt3": ["ssh://git@push.yoctoproject.org/meta-qt3", "master"],
     "meta-mingw": ["ssh://git@push.yoctoproject.org/meta-mingw", "master=
"],
@@ -65,6 +66,7 @@ repos =3D {
     "meta-virtualization": ["ssh://git@push.yoctoproject.org/meta-virtua=
lization", "master"],
     "yocto-docs": ["ssh://git@push.yoctoproject.org/yocto-docs", "master=
"],
     "meta-clang": ["https://github.com/kraj/meta-clang.git", "master"],
+    "meta-webosose": ["https://github.com/webosose/meta-webosose.git", "=
master"],
 }
=20
 trigger_builders_wait_shared =3D [
--=20
2.34.1


