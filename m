Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FD30C6FA8B
	for <webhook@archiver.kernel.org>; Fri, 16 Sep 2022 09:03:48 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.3893.1663319022064433217
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Sep 2022 02:03:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A9931D34;
	Fri, 16 Sep 2022 02:03:48 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.88.114])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D44C93F73D;
	Fri, 16 Sep 2022 02:03:40 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: diego.sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 3/4] zephyr-core/classes: Remove West-based logic
 from zephyr.bbclass
Date: Fri, 16 Sep 2022 10:03:17 +0100
Message-Id: <20220916090318.1293922-4-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220916090318.1293922-1-peter.hoyes@arm.com>
References: <20220916090318.1293922-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Sep 2022 09:03:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58057

From: Peter Hoyes <Peter.Hoyes@arm.com>

For a given release tag, ZEPHYR_MODULES is constant. It is therefore now
populated by the generate-version.py script, the output of which is
stored in the repository, so the build-time logic to populate
ZEPHYR_MODULES is no longer needed.

Remove the do_get_zmods task, but retain the Python dependencies which
are still required by Python scripts in the Zephyr repository that are
trigerred by CMake.

The above means that West is now only required as a host dependency to
run generate-version.py, so remove the West Yocto recipe.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 meta-zephyr-core/classes/zephyr.bbclass       | 32 +------------------
 .../recipes-devtools/west/west_0.12.99.bb     | 22 -------------
 2 files changed, 1 insertion(+), 53 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-devtools/west/west_0.12.99.b=
b

diff --git a/meta-zephyr-core/classes/zephyr.bbclass b/meta-zephyr-core/c=
lasses/zephyr.bbclass
index 8030456..5b71bda 100644
--- a/meta-zephyr-core/classes/zephyr.bbclass
+++ b/meta-zephyr-core/classes/zephyr.bbclass
@@ -2,6 +2,7 @@ inherit terminal
 inherit python3native
=20
 PYTHONPATH=3D"${STAGING_DIR_HOST}${libdir}/${PYTHON_DIR}/site-packages"
+DEPENDS +=3D "python3-pyelftools-native python3-pyyaml-native python3-py=
kwalify-native"
=20
 OE_TERMINAL_EXPORTS +=3D "HOST_EXTRACFLAGS HOSTLDFLAGS TERMINFO CROSS_CU=
RSES_LIB CROSS_CURSES_INC"
 HOST_EXTRACFLAGS =3D "${BUILD_CFLAGS} ${BUILD_LDFLAGS}"
@@ -24,39 +25,8 @@ python () {
     d.setVar('BOARD',board)
 }
=20
-do_get_zmods() {
-
-    export PYTHONPATH=3D"${RECIPE_SYSROOT_NATIVE}/${libdir}/${PYTHON_DIR=
}/site-packages:${RECIPE_SYSROOT_NATIVE}/${libdir}/${PYTHON_DIR}"
-    cd ${S}
-   =20
-    # I really dislike how tied in this is to west, but without reimplem=
enting their script, this seems to be the
-    # easiest way to do this
-    rm -rf .west; mkdir .west
-    cat << EOF >> ${S}/.west/config
-[manifest]
-path =3D zephyr
-file =3D west.yml
-EOF
-
-    # Get all available modules and add them to ZEPHYR_MODULES
-    for i in $(west list|awk 'NR>1 {print $2}'); do
-        ZEPHYR_MODULES=3D"${S}/$i\;${ZEPHYR_MODULES}"
-    done
-    export ZEPHYR_MODULES
-}
-
-do_get_zmods[nostamp] =3D "1"
-do_get_zmods[dirs] =3D "${B}"
-
 EXTRA_OECMAKE:append =3D " -DZEPHYR_MODULES=3D${ZEPHYR_MODULES}"
=20
-addtask get_zmods after do_patch before do_configure
-do_get_zmods[depends] +=3D "west-native:do_populate_sysroot"
-do_get_zmods[depends] +=3D "python3-pyyaml-native:do_populate_sysroot"
-do_get_zmods[depends] +=3D "python3-pykwalify-native:do_populate_sysroot=
"
-do_get_zmods[depends] +=3D "python3-colorama-native:do_populate_sysroot"
-do_get_zmods[depends] +=3D "python3-pyelftools-native:do_populate_sysroo=
t"
-
 python do_menuconfig() {
     os.chdir(d.getVar('ZEPHYR_SRC_DIR', True))
     configdir =3D d.getVar('ZEPHYR_SRC_DIR', True) + '/outdir/' + d.getV=
ar('BOARD', True)
diff --git a/meta-zephyr-core/recipes-devtools/west/west_0.12.99.bb b/met=
a-zephyr-core/recipes-devtools/west/west_0.12.99.bb
deleted file mode 100644
index 6a9f8bc..0000000
--- a/meta-zephyr-core/recipes-devtools/west/west_0.12.99.bb
+++ /dev/null
@@ -1,22 +0,0 @@
-# SPDX-FileCopyrightText: Huawei Inc.
-# SPDX-License-Identifier: Apache-2.0
-
-SUMMARY =3D "Zephyr RTOS Project meta-tool"
-HOMEPAGE =3D "https://github.com/zephyrproject-rtos/west"
-LICENSE =3D "Apache-2.0"
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3De3fc50a88d0a364313df4b21ef20c=
29e"
-
-SRC_URI =3D "git://github.com/zephyrproject-rtos/west;protocol=3Dhttps;b=
ranch=3Dmain"
-
-PV =3D "0.12.99"
-SRCREV =3D "38e656b05ea8f4c8d80b953f6d88b1ed604d11f8"
-PROVIDES =3D "virtual/west"
-
-S =3D "${WORKDIR}/git"
-
-inherit setuptools3 python3native
-
-DEPENDS_${PN} +=3D "python3-pyyaml python3-core python3-packaging python=
3-colorama python3-pyparsing"
-RDEPENDS_${PN} +=3D "python3-pyyaml python3-core python3-packaging pytho=
n3-colorama python3-pyparsing"
-BBCLASSEXTEND =3D "native nativesdk"
-TOOLCHAIN_HOST_TASK:append =3D " nativesdk-west"
--=20
2.25.1


