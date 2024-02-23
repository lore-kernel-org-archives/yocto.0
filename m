Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28E3C5478C
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 15:29:18 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.15225.1708702153309577298
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 07:29:13 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4A507DA7
	for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 07:29:51 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 46C593F73F
	for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 07:29:12 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder2 v2] config.py: add meta-clang to a-full
Date: Fri, 23 Feb 2024 15:29:10 +0000
Message-Id: <20240223152910.4104822-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 15:29:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62584

From: Ross Burton <ross.burton@arm.com>

Now that meta-clang builds successfully on the autobuilder, we can ensure
that it doesn't regress by enabling it in a-full builds.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 652897e..ba0d854 100644
--- a/config.py
+++ b/config.py
@@ -119,7 +119,7 @@ trigger_builders_wait_quick_releases =3D {
 }
=20
 trigger_builders_wait_full_releases =3D {
-    "master" : trigger_builders_wait_full + ["qemuriscv64", "qemuriscv64=
-tc"],
+    "master" : trigger_builders_wait_full + ["qemuriscv64", "qemuriscv64=
-tc", "meta-clang"],
     "scarthgap" : trigger_builders_wait_full + ["qemuriscv64", "qemurisc=
v64-tc"],
     "zeus" : trigger_builders_wait_full + ["mpc8315e-rdb-alt"],
     "thud" : trigger_builders_wait_full + ["mpc8315e-rdb-alt"],
--=20
2.34.1


