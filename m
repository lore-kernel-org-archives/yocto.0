Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB3A6C4167B
	for <webhook@archiver.kernel.org>; Thu, 15 Dec 2022 12:39:11 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.131750.1671107949867519632
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Dec 2022 04:39:10 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E8461063;
	Thu, 15 Dec 2022 04:39:50 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E77573F73B;
	Thu, 15 Dec 2022 04:39:08 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder2] config.py: add knowledge of meta-clang
Date: Thu, 15 Dec 2022 12:39:06 +0000
Message-Id: <20221215123906.1545859-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Dec 2022 12:39:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58807

We'd like to start building meta-clang as part of the autobuilder matrix,
so add knowledge of meta-clang to builtbot.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 3c67351..b6609a7 100644
--- a/config.py
+++ b/config.py
@@ -20,6 +20,7 @@ buildertorepos =3D {
     "meta-arm": ["poky", "meta-arm"],
     "meta-agl-core": ["poky", "meta-agl"],
     "meta-aws": ["poky", "meta-aws", "meta-openembedded"],
+    "meta-clang": ["poky", "meta-clang"],
     "qemuarm-oecore": ["oecore", "bitbake"],
     "checkuri": ["poky"],
     "check-layer": ["poky", "meta-mingw", "meta-gplv2"],
@@ -54,7 +55,8 @@ repos =3D {
     "meta-gplv2": ["ssh://git@push.yoctoproject.org/meta-gplv2", "master=
"],
     "meta-openembedded": ["git://git.openembedded.org/meta-openembedded"=
, "master"],
     "meta-virtualization": ["ssh://git@push.yoctoproject.org/meta-virtua=
lization", "master"],
-    "yocto-docs": ["ssh://git@push.yoctoproject.org/yocto-docs", "master=
"]
+    "yocto-docs": ["ssh://git@push.yoctoproject.org/yocto-docs", "master=
"],
+    "meta-clang": ["https://github.com/kraj/meta-clang.git", "master"],
 }
=20
 trigger_builders_wait_shared =3D [
--=20
2.34.1


