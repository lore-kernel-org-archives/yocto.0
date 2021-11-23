Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99643C433F5
	for <webhook@archiver.kernel.org>; Tue, 23 Nov 2021 15:03:39 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.12380.1637679818640411740
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Nov 2021 07:03:39 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5FF881042
	for <yocto@lists.yoctoproject.org>; Tue, 23 Nov 2021 07:03:37 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D91413F66F
	for <yocto@lists.yoctoproject.org>; Tue, 23 Nov 2021 07:03:36 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] config.json: set ZSTD_THREADS like
 XZ_THREADS
Date: Tue, 23 Nov 2021 15:03:31 +0000
Message-Id: <20211123150331.2431516-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Nov 2021 15:03:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55396

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index 7203783..c0543d9 100644
--- a/config.json
+++ b/config.json
@@ -47,6 +47,7 @@
             "PARALLEL_MAKE =3D '-j 16 -l 52'",
             "XZ_MEMLIMIT =3D '5%'",
             "XZ_THREADS =3D '8'",
+            "ZSTD_THREADS =3D '8'",
             "BB_TASK_NICE_LEVEL =3D '5'",
             "BB_TASK_NICE_LEVEL:task-testimage =3D '0'",
             "BB_TASK_IONICE_LEVEL =3D '2.7'",
--=20
2.25.1


