Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8679EC4332F
	for <webhook@archiver.kernel.org>; Tue,  7 Nov 2023 11:35:33 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.8198.1699356927985812089
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Nov 2023 03:35:28 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1B8E1007;
	Tue,  7 Nov 2023 03:36:11 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BF4713F766;
	Tue,  7 Nov 2023 03:35:26 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder2] Add builder for qemuarmv5
Date: Tue,  7 Nov 2023 11:35:23 +0000
Message-Id: <20231107113523.3405236-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Nov 2023 11:35:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61631

From: Ross Burton <ross.burton@arm.com>

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 8890f21..4f8bb30 100644
--- a/config.py
+++ b/config.py
@@ -101,7 +101,7 @@ trigger_builders_wait_full =3D trigger_builders_wait_=
shared + [
     "qemumips-alt", "edgerouter-alt", "qemuppc-alt", "qemux86-world-alt"=
,
     "oe-selftest-ubuntu", "oe-selftest-debian", "oe-selftest-fedora", "o=
e-selftest-centos",
     "qemux86-64-ptest", "qemux86-64-ltp", "qemuarm64-ptest", "qemuarm64-=
ltp",
-    "meta-intel", "meta-arm", "meta-aws", "meta-agl-core", "meta-virt"
+    "meta-intel", "meta-arm", "meta-aws", "meta-agl-core", "meta-virt", =
"qemuarmv5"
 ]
=20
 trigger_builders_wait_quick_releases =3D {
@@ -223,6 +223,7 @@ builder_to_workers =3D {
 builder_tags =3D {
     "qemuarm":  ["qemu"],
     "qemuarm64":  ["qemu"],
+    "qemuarmv5":  ["qemu"],
     "qemumips": ["qemu"],
     "qemumips64": ["qemu"],
     "qemuppc": ["qemu"],
--=20
2.34.1


