Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68209C5478C
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 12:35:57 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.9493.1708691749794020660
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 04:35:50 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA1E9DA7
	for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 04:36:27 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E74063F73F
	for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 04:35:48 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder2] config.py: add meta-clang to a-full
Date: Fri, 23 Feb 2024 12:35:43 +0000
Message-Id: <20240223123543.2475465-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 12:35:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62580

From: Ross Burton <ross.burton@arm.com>

Now that meta-clang builds successfully on the autobuilder, we can ensure
that it doesn't regress by enabling it in a-full builds.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 652897e..89158f2 100644
--- a/config.py
+++ b/config.py
@@ -106,7 +106,7 @@ trigger_builders_wait_quick =3D trigger_builders_wait=
_shared + [
 trigger_builders_wait_full =3D trigger_builders_wait_shared + [
     "qemumips-alt", "edgerouter-alt", "qemuppc-alt", "qemux86-world-alt"=
,
     "oe-selftest-ubuntu", "oe-selftest-debian", "oe-selftest-fedora", "o=
e-selftest-centos",
-    "qemux86-64-ptest", "qemux86-64-ltp", "qemuarm64-ptest", "qemuarm64-=
ltp",
+    "qemux86-64-ptest", "qemux86-64-ltp", "qemuarm64-ptest", "qemuarm64-=
ltp", "meta-clang",
     "meta-intel", "meta-arm", "meta-aws", "meta-agl-core", "meta-virt", =
"qemuarmv5"
 ]
=20
--=20
2.34.1


