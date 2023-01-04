Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D8B5C46467
	for <webhook@archiver.kernel.org>; Wed,  4 Jan 2023 12:32:33 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.10828.1672835543905143129
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Jan 2023 04:32:24 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C63D1042;
	Wed,  4 Jan 2023 04:33:05 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0CE073F587;
	Wed,  4 Jan 2023 04:32:22 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder2 1/2] config.py: remove redundant oe-selftest-arm
Date: Wed,  4 Jan 2023 12:32:20 +0000
Message-Id: <20230104123221.3321427-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Jan 2023 12:32:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58925

The oe-selftest-armhost builder exercises oe-sefltest with qemuarm64,
so this builder is redundant.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 1 -
 1 file changed, 1 deletion(-)

diff --git a/config.py b/config.py
index b6609a7..f425057 100644
--- a/config.py
+++ b/config.py
@@ -116,7 +116,6 @@ builders_others =3D [
     "bringup", "bringup-fast",
     "qemuarm-armhost",
     "check-layer-nightly",
-    "oe-selftest-arm",
     "metrics",
     "qemuriscv32", "qemuriscv64", "qemuriscv64-ptest", "qemuppc64",
     "qemux86-ptest", "qemux86-ptest-fast",
--=20
2.34.1


