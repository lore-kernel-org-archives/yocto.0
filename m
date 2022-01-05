Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA81C433F5
	for <webhook@archiver.kernel.org>; Wed,  5 Jan 2022 12:23:15 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.6074.1641385394045674473
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 04:23:14 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 991C41FB
	for <yocto@lists.yoctoproject.org>; Wed,  5 Jan 2022 04:23:13 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3AD183F5A1
	for <yocto@lists.yoctoproject.org>; Wed,  5 Jan 2022 04:23:13 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder2] Run oe-selftest-arm jobs on the Arm
 workers only
Date: Wed,  5 Jan 2022 12:23:06 +0000
Message-Id: <20220105122306.1041198-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jan 2022 12:23:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55740

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.py b/config.py
index ea042c6..5e3e7a5 100644
--- a/config.py
+++ b/config.py
@@ -172,6 +172,7 @@ builder_to_workers =3D {
     "oe-selftest-fedora": workers_fedora,
     "oe-selftest-opensuse": workers_opensuse,
     "oe-selftest-centos": workers_centos,
+    "oe-selftest-arm": workers_arm,
     "reproducible-ubuntu": workers_ubuntu,
     "reproducible-debian": workers_debian,
     "reproducible-fedora": workers_fedora,
--=20
2.25.1


