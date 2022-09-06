Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63FA9ECAAD5
	for <webhook@archiver.kernel.org>; Tue,  6 Sep 2022 13:16:35 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web08.3996.1662470188309462777
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Sep 2022 06:16:28 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3873C139F;
	Tue,  6 Sep 2022 06:16:34 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.88.42])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E8A833F7B4;
	Tue,  6 Sep 2022 06:16:26 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: diego.sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 3/5] zephyr-kernel: Factor out Yocto toolchain
 specific variables
Date: Tue,  6 Sep 2022 14:17:00 +0100
Message-Id: <20220906131702.310027-3-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906131702.310027-1-peter.hoyes@arm.com>
References: <20220906131702.310027-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Sep 2022 13:16:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57989

From: Peter Hoyes <Peter.Hoyes@arm.com>

Create ZEPHYR_TOOLCHAIN_VARIANT variable with an unchanged default value
of 'yocto'.

To support providing different configuration for different toolchain
variants, require a toolchain-specific inc file.

Create zephyr-toolchain-yocto.inc, and factor out all variables that are
specific to building using the Yocto toolchain.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .../zephyr-kernel/zephyr-kernel-common.inc       | 15 +++------------
 .../zephyr-kernel/zephyr-toolchain-yocto.inc     | 16 ++++++++++++++++
 2 files changed, 19 insertions(+), 12 deletions(-)
 create mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-=
toolchain-yocto.inc

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
common.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
common.inc
index a970abf..5c9d9e5 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-common.=
inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-common.=
inc
@@ -7,8 +7,8 @@ inherit ${ZEPHYR_INHERIT_CLASSES}
 # filesystem.
 IMAGE_NO_MANIFEST =3D "1"
=20
-ZEPHYR_GCC_VARIANT=3D"yocto"
-ZEPHYR_SYSROOT=3D"${STAGING_DIR_TARGET}"
+ZEPHYR_TOOLCHAIN_VARIANT ?=3D "yocto"
+require zephyr-toolchain-${ZEPHYR_TOOLCHAIN_VARIANT}.inc
=20
 ZEPHYR_MAKE_OUTPUT =3D "zephyr.elf"
 ZEPHYR_MAKE_BIN_OUTPUT =3D "zephyr.bin"
@@ -16,13 +16,9 @@ ZEPHYR_MAKE_EFI_OUTPUT =3D "zephyr.efi"
=20
 EXTRA_OECMAKE =3D "\
     -DZEPHYR_BASE=3D${ZEPHYR_BASE} \
-    -DZEPHYR_GCC_VARIANT=3Dyocto \
     -DBOARD=3D${BOARD} \
     -DARCH=3D${ARCH} \
-    -DCROSS_COMPILE=3D${CROSS_COMPILE} \
-    -DZEPHYR_SYSROOT=3D${ZEPHYR_SYSROOT} \
-    -DZEPHYR_TOOLCHAIN_VARIANT=3Dyocto \
-    -DEXTRA_CPPFLAGS=3D${CPPFLAGS} \
+    -DZEPHYR_TOOLCHAIN_VARIANT=3D${ZEPHYR_TOOLCHAIN_VARIANT} \
     -DZEPHYR_MODULES=3D${ZEPHYR_MODULES} \
     "
=20
@@ -34,8 +30,6 @@ export ZEPHYR_BASE=3D"${S}/zephyr"
=20
 DEPENDS +=3D "gperf-native"
=20
-CROSS_COMPILE =3D "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
-
 DEPENDS:append:qemuall =3D " qemu-native qemu-helper-native"
=20
 # The makefiles are explicit about the flags they want, so don't unset
@@ -49,12 +43,9 @@ python () {
     d.delVar('LDFLAGS')
 }
=20
-OE_TERMINAL_EXPORTS +=3D "CROSS_COMPILE"
 OE_TERMINAL_EXPORTS +=3D "BOARD"
 OE_TERMINAL_EXPORTS +=3D "ZEPHYR_SRC_DIR"
 OE_TERMINAL_EXPORTS +=3D "ZEPHYR_BASE"
-OE_TERMINAL_EXPORTS +=3D "ZEPHYR_SYSROOT"
-OE_TERMINAL_EXPORTS +=3D "ZEPHYR_GCC_VARIANT"
=20
 IMAGE_FSTYPES =3D "elf bin"
=20
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-toolcha=
in-yocto.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-toolc=
hain-yocto.inc
new file mode 100644
index 0000000..b167695
--- /dev/null
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-toolchain-yoct=
o.inc
@@ -0,0 +1,16 @@
+# Additional definitions to use the Yocto toolchain
+
+ZEPHYR_GCC_VARIANT=3D"yocto"
+ZEPHYR_SYSROOT=3D"${STAGING_DIR_TARGET}"
+CROSS_COMPILE =3D "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
+
+EXTRA_OECMAKE:append =3D " \
+    -DZEPHYR_GCC_VARIANT=3D${ZEPHYR_GCC_VARIANT} \
+    -DCROSS_COMPILE=3D${CROSS_COMPILE} \
+    -DZEPHYR_SYSROOT=3D${ZEPHYR_SYSROOT} \
+    -DEXTRA_CPPFLAGS=3D${CPPFLAGS} \
+    "
+
+OE_TERMINAL_EXPORTS +=3D "CROSS_COMPILE"
+OE_TERMINAL_EXPORTS +=3D "ZEPHYR_SYSROOT"
+OE_TERMINAL_EXPORTS +=3D "ZEPHYR_GCC_VARIANT"
--=20
2.25.1


