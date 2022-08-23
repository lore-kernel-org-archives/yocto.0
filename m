Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7BA9C32789
	for <webhook@archiver.kernel.org>; Tue, 23 Aug 2022 16:54:16 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.334.1661273651113364101
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Aug 2022 09:54:11 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5A22E113E;
	Tue, 23 Aug 2022 09:54:14 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 32A043F718;
	Tue, 23 Aug 2022 09:54:10 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder2] config.py: run oe-selftest-armhost in
 a-quick and a-full
Date: Tue, 23 Aug 2022 17:54:08 +0100
Message-Id: <20220823165408.811027-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Aug 2022 16:54:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57888

Now that the selftest passes on Arm hosts, add it to the shared worker
builder list so that it is executed by a-full and a-quick builds.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 5b4eccc..042a1ec 100644
--- a/config.py
+++ b/config.py
@@ -77,6 +77,7 @@ trigger_builders_wait_shared =3D [
     "qa-extras", "qa-extras2",
     "check-layer", "meta-mingw",
     "reproducible",
+    "oe-selftest-armhost",
     "qemuarm64-armhost"
 ]
=20
@@ -114,7 +115,6 @@ builders_others =3D [
     "qemuarm-armhost",
     "check-layer-nightly",
     "oe-selftest-arm",
-    "oe-selftest-armhost",
     "metrics",
     "qemuriscv32", "qemuriscv64", "qemuriscv64-ptest", "qemuppc64",
     "auh"
--=20
2.34.1


