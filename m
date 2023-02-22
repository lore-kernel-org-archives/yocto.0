Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B05AC61DA4
	for <webhook@archiver.kernel.org>; Wed, 22 Feb 2023 23:07:33 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.2298.1677107250283433243
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Feb 2023 15:07:30 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8CFA2F4;
	Wed, 22 Feb 2023 15:08:12 -0800 (PST)
Received: from e125920.arm.com (unknown [10.57.76.90])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 300BE3F587;
	Wed, 22 Feb 2023 15:07:29 -0800 (PST)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 1/2] zephyr-core/zephyr-kernel: Use the upstream "cross-compile" toolchain
Date: Wed, 22 Feb 2023 23:07:10 +0000
Message-Id: <20230222230711.689631-1-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 23:07:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59286

From: Peter Hoyes <Peter.Hoyes@arm.com>

Zephyr upstream contains CMake configuration for a "cross-compile"
toolchain for "other cross compilers" which works with the Yocto-built
toolchain out-of-the-box, so use this instead of the "yocto" toolchain,
which requires a downstream patch to be carried.

The Yocto-built toolchain does not support --print-sysroot so that
toolchains can be shared between multiple builds with different
sysroots, so manually set SYSROOT_DIR to the staging directory.

Use the "cross-compile" toolchain by default.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .../zephyr-kernel/zephyr-kernel-common.inc           |  2 +-
 .../zephyr-kernel/zephyr-toolchain-cross-compile.inc | 12 ++++++++++++
 2 files changed, 13 insertions(+), 1 deletion(-)
 create mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-=
toolchain-cross-compile.inc

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
common.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
common.inc
index 5c9d9e5..ba70a29 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-common.=
inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-common.=
inc
@@ -7,7 +7,7 @@ inherit ${ZEPHYR_INHERIT_CLASSES}
 # filesystem.
 IMAGE_NO_MANIFEST =3D "1"
=20
-ZEPHYR_TOOLCHAIN_VARIANT ?=3D "yocto"
+ZEPHYR_TOOLCHAIN_VARIANT ?=3D "cross-compile"
 require zephyr-toolchain-${ZEPHYR_TOOLCHAIN_VARIANT}.inc
=20
 ZEPHYR_MAKE_OUTPUT =3D "zephyr.elf"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-toolcha=
in-cross-compile.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zeph=
yr-toolchain-cross-compile.inc
new file mode 100644
index 0000000..2f1ea37
--- /dev/null
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-toolchain-cros=
s-compile.inc
@@ -0,0 +1,12 @@
+# Additional definitions to use the cross-compile toolchain
+
+CROSS_COMPILE =3D "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
+SYSROOT_DIR=3D"${STAGING_DIR_TARGET}"
+
+EXTRA_OECMAKE:append =3D " \
+    -DCROSS_COMPILE=3D${CROSS_COMPILE} \
+    -DSYSROOT_DIR=3D${SYSROOT_DIR} \
+    "
+
+OE_TERMINAL_EXPORTS +=3D "CROSS_COMPILE"
+OE_TERMINAL_EXPORTS +=3D "SYSROOT_DIR"
--=20
2.34.1


