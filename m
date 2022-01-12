Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72D2C433F5
	for <webhook@archiver.kernel.org>; Wed, 12 Jan 2022 18:20:24 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.1068.1642011623441492349
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jan 2022 10:20:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B57C6D
	for <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 10:20:22 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C7D1E3F766
	for <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 10:20:21 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] Add qemuarm64-alt to the build
 matrix
Date: Wed, 12 Jan 2022 18:20:19 +0000
Message-Id: <20220112182019.4091490-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 18:20:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55816

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json               | 4 ++++
 scripts/publish-artefacts | 6 ++++++
 2 files changed, 10 insertions(+)

diff --git a/config.json b/config.json
index 1c4270f..a1b17a8 100644
--- a/config.json
+++ b/config.json
@@ -288,6 +288,10 @@
             "MACHINE" : "qemuarm64",
             "TEMPLATE" : "arch-qemu"
         },
+        "qemuarm64-alt" : {
+            "MACHINE" : "qemuarm64",
+            "TEMPLATE" : "altcfg-qemu"
+        },
         "qemuarm64-armhost" : {
             "MACHINE" : "qemuarm64",
             "BUILDINFO" : true,
diff --git a/scripts/publish-artefacts b/scripts/publish-artefacts
index 9795381..e4be8b6 100755
--- a/scripts/publish-artefacts
+++ b/scripts/publish-artefacts
@@ -50,6 +50,12 @@ case "$target" in
         cp -R --no-dereference --preserve=3Dlinks $TMPDIR/deploy/images/=
qemuarm64/*qemuarm64* $DEST/machines/qemu/qemuarm64
         cp -R --no-dereference --preserve=3Dlinks $TMPDIR/deploy/images/=
qemuarm64/*Image* $DEST/machines/qemu/qemuarm64
         ;;
+    "qemuarm64-alt")
+        mkdir -p $DEST/machines/qemu/qemuarm64-alt
+        sha256sums $TMPDIR/deploy/images/qemuarm64
+        cp -R --no-dereference --preserve=3Dlinks $TMPDIR/deploy/images/=
qemuarm64/*qemuarm64* $DEST/machines/qemu/qemuarm64-alt
+        cp -R --no-dereference --preserve=3Dlinks $TMPDIR/deploy/images/=
qemuarm64/*Image* $DEST/machines/qemu/qemuarm64-alt
+        ;;
     "qemuarm64-ptest")
         mkdir -p $DEST/machines/qemu/qemuarm64
         sha256sums $TMPDIR/deploy/images/qemuarm64
--=20
2.25.1


