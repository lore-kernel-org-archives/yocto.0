Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E33F1C32772
	for <webhook@archiver.kernel.org>; Tue, 23 Aug 2022 16:48:06 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.237.1661273282364168811
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Aug 2022 09:48:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D0DF113E;
	Tue, 23 Aug 2022 09:48:05 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 763023F718;
	Tue, 23 Aug 2022 09:48:01 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder2] config.py: add ubuntu2204-arm-1 (the
 Ampere Altra) to workers_arm
Date: Tue, 23 Aug 2022 17:47:57 +0100
Message-Id: <20220823164757.810836-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Aug 2022 16:48:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57887

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 00f7e70..5b4eccc 100644
--- a/config.py
+++ b/config.py
@@ -144,7 +144,7 @@ workers_bringup =3D []
 # workers with wine on them for meta-mingw
 workers_wine =3D ["ubuntu1804-ty-3"]
 workers_buildperf =3D ["perf-ubuntu1604", "perf-centos7", "perf-debian11=
"]
-workers_arm =3D ["ubuntu1804-arm-1", "ubuntu2004-arm-1"]
+workers_arm =3D ["ubuntu1804-arm-1", "ubuntu2004-arm-1", "ubuntu2204-arm=
-1"]
 # workers which don't need buildtools for AUH and are able to send email=
 to mailing lists
 workers_auh =3D ["alma8-ty-1", "alma8-ty-2"]
=20
--=20
2.34.1


