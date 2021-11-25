Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 581A7C433EF
	for <webhook@archiver.kernel.org>; Thu, 25 Nov 2021 12:37:33 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.11389.1637843851630514088
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Nov 2021 04:37:32 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 02706113E
	for <yocto@lists.yoctoproject.org>; Thu, 25 Nov 2021 04:37:30 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C8493F66F
	for <yocto@lists.yoctoproject.org>; Thu, 25 Nov 2021 04:37:29 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] publish-artefacts: publish
 meta-arm/generic-arm64 binaries
Date: Thu, 25 Nov 2021 12:37:26 +0000
Message-Id: <20211125123726.1259952-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Nov 2021 12:37:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55421

Publish the generic-arm64 binaries in a dedicated meta-arm/ directory so
it is clear this isn't from the core layers.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 scripts/publish-artefacts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/scripts/publish-artefacts b/scripts/publish-artefacts
index 6ed922a..9795381 100755
--- a/scripts/publish-artefacts
+++ b/scripts/publish-artefacts
@@ -187,6 +187,11 @@ case "$target" in
         sha256sums $TMPDIR/deploy/images/genericx86
         cp -R --no-dereference --preserve=3Dlinks $TMPDIR/deploy/images/=
genericx86/*genericx86* $DEST/machines/genericx86-alt
         ;;
+    "meta-arm")
+        mkdir -p $DEST/machines/meta-arm/generic-arm64
+        sha256sums $TMPDIR/deploy/images/generic-arm64
+        cp -R --no-dereference --preserve=3Dlinks $TMPDIR/deploy/images/=
generic-arm64/*generic-arm64* $DEST/machines/meta-arm/generic-arm64
+        ;;
     "poky-tiny")
         mkdir -p $DEST/machines/qemu/qemu-tiny
         sha256sums $TMPDIR/deploy/images/qemux86
--=20
2.25.1


