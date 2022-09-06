Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65716ECAAA1
	for <webhook@archiver.kernel.org>; Tue,  6 Sep 2022 13:16:35 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.3845.1662470192734991462
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Sep 2022 06:16:32 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4C75139F;
	Tue,  6 Sep 2022 06:16:38 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.88.42])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A2B4C3F7B4;
	Tue,  6 Sep 2022 06:16:31 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: diego.sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 5/5] zephyr-kernel: Add 'zephyr' toolchain
 variant
Date: Tue,  6 Sep 2022 14:17:02 +0100
Message-Id: <20220906131702.310027-5-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906131702.310027-1-peter.hoyes@arm.com>
References: <20220906131702.310027-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Sep 2022 13:16:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57991

From: Peter Hoyes <Peter.Hoyes@arm.com>

Add an option to build applications using the Zephyr SDK by specifying
ZEPHYR_TOOLCHAIN_VARIANT=3D"zephyr". This mode works with the zephyr or
poky distros (TCMODE is ignored), allowing Zephyr applications to be
built alongside a Linux stack.

Provide a toolchain-specific inc file for the Zephyr SDK, which
configures the dependencies and CMake appropriately.

Add Zephyr toolchain variant to CI configuration for qemu-cortex-a53,
qemu-cortex-m3 and qemu-x86. Update README.txt

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .gitlab-ci.yml                                    |  9 +++++++--
 README.txt                                        | 10 +++++++---
 ci/zephyr-toolchain.yml                           | 11 +++++++++++
 .../zephyr-kernel/zephyr-toolchain-zephyr.inc     | 15 +++++++++++++++
 4 files changed, 40 insertions(+), 5 deletions(-)
 create mode 100644 ci/zephyr-toolchain.yml
 create mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-=
toolchain-zephyr.inc

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index 22a8ef9..145aefd 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -79,6 +79,9 @@ nrf52840dk-nrf52840:
=20
 qemu-cortex-a53:
   extends: .build
+  parallel:
+    matrix:
+      - TOOLCHAIN: [default, zephyr-toolchain]
=20
 qemu-cortex-m0:
   extends: .build
@@ -90,7 +93,8 @@ qemu-cortex-m3:
   extends: .build
   parallel:
     matrix:
-      - TESTING: testimage
+      - TOOLCHAIN: [default, zephyr-toolchain]
+        TESTING: testimage
=20
 qemu-cortex-r5:
   extends: .build
@@ -102,7 +106,8 @@ qemu-x86:
   extends: .build
   parallel:
     matrix:
-      - TESTING: testimage
+      - TOOLCHAIN: [default, zephyr-toolchain]
+        TESTING: testimage
=20
 stm32mp157c-dk2:
   extends: .build
diff --git a/README.txt b/README.txt
index ec860fd..4776a8a 100644
--- a/README.txt
+++ b/README.txt
@@ -14,9 +14,6 @@ This layer depends on:
     Python layer (meta-openembedded/meta-python)
         git://git.openembedded.org/meta-openembedded
=20
-Modify local conf by adding:
-    DISTRO=3D"zephyr"
-
 Add "meta-openembedded/meta-oe" to BBLAYERS
 Add "meta-openembedded/meta-python" to BBLAYERS
 Add "meta-zephyr-core" and "meta-zephyr-bsp" to BBLAYERS
@@ -25,6 +22,13 @@ Building and Running Zephyr Samples
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
 You can build Zephyr samples. There are several sample recipes.
+
+To use the Yocto toolchain, modify local conf by adding:
+    DISTRO=3D"zephyr"
+
+To use the Zephyr pre-built toolchain, modify local conf by adding:
+    ZEPHYR_TOOLCHAIN_VARIANT =3D "zephyr"
+
 For example, to build the Zephyr "philosophers" sample:
    =20
     $ MACHINE=3Dqemu-x86 bitbake zephyr-philosophers
diff --git a/ci/zephyr-toolchain.yml b/ci/zephyr-toolchain.yml
new file mode 100644
index 0000000..ab8baa3
--- /dev/null
+++ b/ci/zephyr-toolchain.yml
@@ -0,0 +1,11 @@
+header:
+  version: 11
+
+# The Zephyr toolchain is standalone and does not depend on TCMODE or TC=
LIB, so
+# validate that it is possible to build Zephyr applications alongside a
+# poky-based Linux distro
+distro: poky
+
+local_conf_header:
+  zephyr-toolchain: |
+    ZEPHYR_TOOLCHAIN_VARIANT =3D "zephyr"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-toolcha=
in-zephyr.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-tool=
chain-zephyr.inc
new file mode 100644
index 0000000..9987e3c
--- /dev/null
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-toolchain-zeph=
yr.inc
@@ -0,0 +1,15 @@
+# Additional definitions to use the Zephyr SDK
+
+# Configure usage of the Zephyr SDK
+INHIBIT_DEFAULT_DEPS =3D "1"
+DEPENDS +=3D "zephyr-sdk-native"
+export ZEPHYR_SDK_INSTALL_DIR=3D"${STAGING_DIR_NATIVE}${prefix}/zephyr-s=
dk"
+OE_TERMINAL_EXPORTS +=3D "ZEPHYR_SDK_INSTALL_DIR"
+
+# The Zephyr SDK does not require a CMake toolchain file
+EXTRA_OECMAKE:append =3D " -DCMAKE_TOOLCHAIN_FILE=3D"
+deltask generate_toolchain_file
+
+# Provide a suitable location to store the toolchain capabilites cache
+ZEPHYR_USER_CACHE_DIR =3D "${B}/.cache"
+EXTRA_OECMAKE:append =3D " -DUSER_CACHE_DIR=3D${ZEPHYR_USER_CACHE_DIR}"
--=20
2.25.1


