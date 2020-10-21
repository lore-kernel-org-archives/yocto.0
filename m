Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web08.9066.1603271976108651849
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Oct 2020 02:19:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C929531B;
	Wed, 21 Oct 2020 02:19:34 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 58DA23F66E;
	Wed, 21 Oct 2020 02:19:34 -0700 (PDT)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com
Subject: [meta-zephyr][PATCH v2] zephyr: use TCLIBC=newlib directly
Date: Wed, 21 Oct 2020 10:19:30 +0100
Message-Id: <20201021091930.1053541-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Instead of setting TCLIBC=3Dbaremetal and then adding newlib in various p=
laces,
just set TCLIBC=3Dnewlib directly.

This also means we can use the standard DEPENDS instead of reinventing th=
em.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 conf/distro/zephyr.conf                               | 7 +------
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 5 +----
 2 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/conf/distro/zephyr.conf b/conf/distro/zephyr.conf
index 44448af..a98da32 100644
--- a/conf/distro/zephyr.conf
+++ b/conf/distro/zephyr.conf
@@ -5,16 +5,11 @@ DISTRO_VERSION =3D "1.0"
=20
 TARGET_VENDOR =3D "-yocto"
=20
-TCLIBC =3D "baremetal"
-TCLIBCAPPEND =3D ""
+TCLIBC =3D "newlib"
=20
 TEST_TARGET =3D "QemuTargetZephyr"
 TEST_SUITES =3D "zephyr"
=20
-PREFERRED_PROVIDER_virtual/libc =3D "newlib"
-PREFERRED_PROVIDER_virtual/libiconv =3D "newlib"
-
-TOOLCHAIN_TARGET_TASK +=3D " newlib"
 INHERIT +=3D "siteinfo-zephyr"
=20
 INHERIT +=3D "uninative"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/reci=
pes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index 7fa4b25..3f82c20 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -19,10 +19,7 @@ EXTRA_OECMAKE_append_arm =3D " -DZEPHYR_MODULES=3D${S}=
/modules/cmsis"
 export ZEPHYR_BASE=3D"${S}"
=20
=20
-# We always need a toolchain to cross-compile.
-INHIBIT_DEFAULT_DEPS =3D "1"
-DEPENDS +=3D "gcc-cross-${TARGET_ARCH} libgcc ${TOOLCHAIN_TARGET_TASK} g=
perf-native"
-DEPENDS +=3D " python3-pyelftools-native python3-pyyaml-native python3-p=
ykwalify-native"
+DEPENDS +=3D "gperf-native python3-pyelftools-native python3-pyyaml-nati=
ve python3-pykwalify-native"
 CROSS_COMPILE =3D "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
=20
 DEPENDS_append_qemuall =3D " qemu-native qemu-helper-native"
--=20
2.25.1

