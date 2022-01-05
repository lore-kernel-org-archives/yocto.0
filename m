Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E834C433FE
	for <webhook@archiver.kernel.org>; Wed,  5 Jan 2022 14:14:47 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.841.1641392083097473663
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 06:14:43 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C20211D4
	for <yocto@lists.yoctoproject.org>; Wed,  5 Jan 2022 06:14:42 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BAE373F5A1
	for <yocto@lists.yoctoproject.org>; Wed,  5 Jan 2022 06:14:41 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder2 v2] Run oe-selftest-armhost jobs on the Arm
 workers only
Date: Wed,  5 Jan 2022 14:14:39 +0000
Message-Id: <20220105141439.1045463-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jan 2022 14:14:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55744

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/config.py b/config.py
index ea042c6..6da8d58 100644
--- a/config.py
+++ b/config.py
@@ -112,6 +112,8 @@ builders_others =3D [
     "bringup",
     "qemuarm-armhost",
     "check-layer-nightly",
+    "oe-selftest-arm",
+    "oe-selftest-armhost",
     "auh"
 ]
=20
@@ -172,6 +174,7 @@ builder_to_workers =3D {
     "oe-selftest-fedora": workers_fedora,
     "oe-selftest-opensuse": workers_opensuse,
     "oe-selftest-centos": workers_centos,
+    "oe-selftest-armhost": workers_arm,
     "reproducible-ubuntu": workers_ubuntu,
     "reproducible-debian": workers_debian,
     "reproducible-fedora": workers_fedora,
--=20
2.25.1


