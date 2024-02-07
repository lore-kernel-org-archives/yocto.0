Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6801C4828F
	for <webhook@archiver.kernel.org>; Wed,  7 Feb 2024 12:15:51 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.19032.1707308144649894742
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Feb 2024 04:15:44 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B0F10DA7
	for <yocto@lists.yoctoproject.org>; Wed,  7 Feb 2024 04:16:26 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EF15B3F5A1
	for <yocto@lists.yoctoproject.org>; Wed,  7 Feb 2024 04:15:43 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper 2/2] run-config: log the contents of bblayers.conf after edits
Date: Wed,  7 Feb 2024 12:15:41 +0000
Message-Id: <20240207121541.1720874-2-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240207121541.1720874-1-ross.burton@arm.com>
References: <20240207121541.1720874-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 12:15:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62417

From: Ross Burton <ross.burton@arm.com>

This is useful when using large sets of layers to
verify that the right layers have been added in
the right order.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 scripts/run-config | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/run-config b/scripts/run-config
index 1c3fb45..a9bb667 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -253,6 +253,7 @@ def handle_stepnum(stepnum):
     elif args.stepname =3D=3D "add-layers":
         for layer in layers:
             bitbakecmd(args.builddir, "bitbake-layers add-layer %s" % la=
yer, report, stepnum, args.stepname)
+        log_file_contents(args.builddir + "/conf/bblayers.conf", args.bu=
ilddir, stepnum, args.stepname)
=20
     flush()
=20
@@ -308,6 +309,7 @@ def handle_stepnum(stepnum):
         # Remove any layers we added in a reverse order
         for layer in reversed(layers):
             bitbakecmd(args.builddir, "bitbake-layers remove-layer %s" %=
 layer, report, stepnum, args.stepname)
+        log_file_contents(args.builddir + "/conf/bblayers.conf", args.bu=
ilddir, stepnum, args.stepname)
=20
     if not jcfg:
         sys.exit(finalret)
--=20
2.34.1


