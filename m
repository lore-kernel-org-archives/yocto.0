Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2D0CC433F5
	for <webhook@archiver.kernel.org>; Fri, 29 Apr 2022 12:14:17 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.9154.1651234454610385372
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 05:14:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD5CB1063;
	Fri, 29 Apr 2022 05:14:13 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6C1E63F73B;
	Fri, 29 Apr 2022 05:14:13 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder2 v2] config.py: add meta-virtualization to
 a-full
Date: Fri, 29 Apr 2022 13:14:11 +0100
Message-Id: <20220429121411.2287536-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 12:14:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56955

The meta-virtualization builder is reliable and useful now, so add it to
a-full.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.py b/config.py
index 17ccd21..c1c8c7e 100644
--- a/config.py
+++ b/config.py
@@ -10,7 +10,7 @@ buildertorepos =3D {
     "a-quick": ["poky", "meta-intel", "oecore", "bitbake",
                 "meta-mingw", "meta-gplv2"],
     "a-full": ["poky", "meta-intel", "oecore", "bitbake",
-                "meta-mingw", "meta-gplv2", "meta-arm", "meta-aws", "met=
a-agl", "meta-openembedded"],
+                "meta-mingw", "meta-gplv2", "meta-arm", "meta-aws", "met=
a-agl", "meta-openembedded", "meta-virtualization"],
     "non-gpl3": ["poky", "meta-gplv2"],
     "meta-mingw": ["poky", "meta-mingw"],
     "qa-extras": ["poky", "meta-mingw"],
@@ -88,7 +88,7 @@ trigger_builders_wait_full =3D trigger_builders_wait_sh=
ared + [
     "qemumips-alt", "edgerouter-alt", "qemuppc-alt", "qemux86-world-alt"=
,
     "oe-selftest-ubuntu", "oe-selftest-debian", "oe-selftest-fedora", "o=
e-selftest-centos",
     "qemux86-64-ptest", "qemux86-64-ltp", "qemuarm64-ptest", "qemuarm64-=
ltp",=20
-    "meta-intel", "meta-arm", "meta-aws", "meta-agl-core"
+    "meta-intel", "meta-arm", "meta-aws", "meta-agl-core", "meta-virt"
 ]
=20
 trigger_builders_wait_quick_releases =3D {
--=20
2.25.1


