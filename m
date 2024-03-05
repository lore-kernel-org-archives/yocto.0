Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E47C54E41
	for <webhook@archiver.kernel.org>; Tue,  5 Mar 2024 15:35:05 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.25965.1709652902686164253
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Mar 2024 07:35:03 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE4CE1FB
	for <yocto@lists.yoctoproject.org>; Tue,  5 Mar 2024 07:35:38 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B3FC33F738
	for <yocto@lists.yoctoproject.org>; Tue,  5 Mar 2024 07:35:01 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] publish-artefacts: publish genericarm64 images
Date: Tue,  5 Mar 2024 15:34:59 +0000
Message-Id: <20240305153459.3736013-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Mar 2024 15:35:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62686

From: Ross Burton <ross.burton@arm.com>

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 scripts/publish-artefacts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/scripts/publish-artefacts b/scripts/publish-artefacts
index f6c3d4c9..3b4e3704 100755
--- a/scripts/publish-artefacts
+++ b/scripts/publish-artefacts
@@ -143,6 +143,16 @@ case "$target" in
         sha256sums $TMPDIR/deploy/images/qemux86-64
         cp -R --no-dereference --preserve=3Dlinks $TMPDIR/deploy/images/=
qemux86-64/*qemux86-64* $DEST/machines/qemu/qemux86-64
         ;;
+    "genericarm64")
+        mkdir -p $DEST/machines/genericarm64
+        sha256sums $TMPDIR/deploy/images/genericarm64
+        cp -R --no-dereference --preserve=3Dlinks $TMPDIR/deploy/images/=
genericarm64/*genericarm64* $DEST/machines/genericarm64
+        ;;
+    "genericarm64-alt")
+        mkdir -p $DEST/machines/genericarm64-alt
+        sha256sums $TMPDIR/deploy/images/genericarm64
+        cp -R --no-dereference --preserve=3Dlinks $TMPDIR/deploy/images/=
genericarm64/*genericarm64* $DEST/machines/genericarm64-alt
+        ;;
     "genericx86-64")
         mkdir -p $DEST/machines/genericx86-64
         sha256sums $TMPDIR/deploy/images/genericx86-64
--=20
2.34.1


