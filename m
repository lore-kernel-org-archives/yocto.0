Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B92AC00140
	for <webhook@archiver.kernel.org>; Mon,  8 Aug 2022 07:43:27 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.22931.1659944598656191193
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Aug 2022 00:43:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E288D6E;
	Mon,  8 Aug 2022 00:43:18 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.84.163])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F0B013F70D;
	Mon,  8 Aug 2022 00:43:16 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: diego.sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 1/3] zephyr-kernel: Remove redundant ZEPHYR_BASE
 definitions
Date: Mon,  8 Aug 2022 08:42:54 +0100
Message-Id: <20220808074256.3081464-1-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Aug 2022 07:43:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57794

From: Peter Hoyes <Peter.Hoyes@arm.com>

zephyr-image.inc and zephyr-sample.inc both include
zephyr-kernel-common.inc, which already defines ZEPHYR_BASE. Remove the
redundant definitions.

Also, pass -DZEPHYR_BASE=3D${ZEPHYR_BASE} instead of ${S} in
EXTRA_OECMAKE.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc  | 1 -
 .../recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc       | 2 +-
 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-sample.inc | 1 -
 3 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.i=
nc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
index 2d4c6ff..d4127d6 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
@@ -3,7 +3,6 @@ inherit testimage
=20
 QEMU_BIN_PATH =3D "${STAGING_BINDIR_NATIVE}"
=20
-ZEPHYR_BASE =3D "${S}"
 OECMAKE_SOURCEPATH =3D "${S}/${ZEPHYR_SRC_DIR}"
=20
 addtask deploy after do_compile
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
common.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
common.inc
index e69ba3c..1c80fe0 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-common.=
inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-common.=
inc
@@ -15,7 +15,7 @@ ZEPHYR_MAKE_BIN_OUTPUT =3D "zephyr.bin"
 ZEPHYR_MAKE_EFI_OUTPUT =3D "zephyr.efi"
=20
 EXTRA_OECMAKE =3D "\
-    -DZEPHYR_BASE=3D${S} \
+    -DZEPHYR_BASE=3D${ZEPHYR_BASE} \
     -DZEPHYR_GCC_VARIANT=3Dyocto \
     -DBOARD=3D${BOARD} \
     -DARCH=3D${ARCH} \
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-sample.=
inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-sample.inc
index 77fa5ad..10c25c5 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-sample.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-sample.inc
@@ -2,7 +2,6 @@ require zephyr-kernel-src.inc
 require zephyr-kernel-common.inc
 inherit deploy
=20
-ZEPHYR_BASE =3D "${S}"
 OECMAKE_SOURCEPATH =3D "${ZEPHYR_SRC_DIR}"
=20
 do_install[noexec] =3D "1"
--=20
2.25.1


