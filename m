Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37338C3F6B0
	for <webhook@archiver.kernel.org>; Mon,  8 Aug 2022 07:43:27 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web08.22599.1659944606425308946
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Aug 2022 00:43:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C533DD6E;
	Mon,  8 Aug 2022 00:43:26 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.84.163])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5E1B93F881;
	Mon,  8 Aug 2022 00:43:25 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: diego.sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 3/3] zephyr-kernel: Checkout zephyr in subdir to
 match West usage
Date: Mon,  8 Aug 2022 08:42:56 +0100
Message-Id: <20220808074256.3081464-3-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220808074256.3081464-1-peter.hoyes@arm.com>
References: <20220808074256.3081464-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Aug 2022 07:43:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57796

From: Peter Hoyes <Peter.Hoyes@arm.com>

When using West, Zephyr is checked out in a "zephyr" subdirectory of the
working directory. At the moment Zephyr is checked out at the root,
meaning a workaround is required to extract the module information.

In order to remove the workaround, change the Zephyr destsuffix in
SRC_URI and ZEPHYR_BASE. As a result of this change, modify patchdir for
the patches and the path to the LICENSE file.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 meta-zephyr-core/classes/zephyr.bbclass                   | 8 +-------
 .../recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 2 +-
 .../zephyr-kernel/zephyr-kernel-src-2.7.2.inc             | 6 +++---
 .../zephyr-kernel/zephyr-kernel-src-3.1.0.inc             | 4 ++--
 .../recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc    | 4 ++--
 5 files changed, 9 insertions(+), 15 deletions(-)

diff --git a/meta-zephyr-core/classes/zephyr.bbclass b/meta-zephyr-core/c=
lasses/zephyr.bbclass
index f3d16b7..8030456 100644
--- a/meta-zephyr-core/classes/zephyr.bbclass
+++ b/meta-zephyr-core/classes/zephyr.bbclass
@@ -34,16 +34,10 @@ do_get_zmods() {
     rm -rf .west; mkdir .west
     cat << EOF >> ${S}/.west/config
 [manifest]
-path =3D .
+path =3D zephyr
 file =3D west.yml
 EOF
=20
-    # Because of how we structure things, we need to either structure th=
is more like a west workspace or just tweak
-    # the manifest in order to get access to the west extentions like bu=
ild and whatnot. Tweaking the manifest is the
-    # easier path here and minimizes the amount of breakage that might o=
ccur.
-   =20
-    sed -i 's/path: zephyr/path: ./' west.yml
-
     # Get all available modules and add them to ZEPHYR_MODULES
     for i in $(west list|awk 'NR>1 {print $2}'); do
         ZEPHYR_MODULES=3D"${S}/$i\;${ZEPHYR_MODULES}"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
common.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
common.inc
index 1c80fe0..a970abf 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-common.=
inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-common.=
inc
@@ -30,7 +30,7 @@ ZEPHYR_EXTRA_MODULES =3D ""
=20
 EXTRA_OECMAKE:append =3D "  -DZEPHYR_EXTRA_MODULES=3D${ZEPHYR_EXTRA_MODU=
LES}"
=20
-export ZEPHYR_BASE=3D"${S}"
+export ZEPHYR_BASE=3D"${S}/zephyr"
=20
 DEPENDS +=3D "gperf-native"
=20
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src-2.7.2.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kern=
el-src-2.7.2.inc
index 537a565..cbe761f 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7=
.2.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7=
.2.inc
@@ -63,8 +63,8 @@ ZEPHYR_BRANCH =3D "v2.7-branch"
 PV =3D "2.7.2+git${SRCPV}"
=20
 SRC_URI:append =3D " \
-    file://dtc.patch \
-    file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.pat=
ch \
-    file://0001-2.7-cmake-add-yocto-toolchain.patch \
+    file://dtc.patch;patchdir=3Dzephyr \
+    file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.pat=
ch;patchdir=3Dzephyr \
+    file://0001-2.7-cmake-add-yocto-toolchain.patch;patchdir=3Dzephyr \
     git://github.com/zephyrproject-rtos/hal_cypress.git;protocol=3Dhttps=
;nobranch=3D1;destsuffix=3Dgit/modules/hal/cypress;name=3Dcypress \
 "
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src-3.1.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kern=
el-src-3.1.0.inc
index 612cfd7..c0fe5f2 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.1=
.0.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.1=
.0.inc
@@ -72,6 +72,6 @@ ZEPHYR_BRANCH =3D "v3.1-branch"
 PV =3D "3.1.0+git${SRCPV}"
=20
 SRC_URI +=3D " \
-    file://0001-3.1-cmake-add-yocto-toolchain.patch \
-    file://0001-3.1-x86-fix-efi-binary-generation-issue-in-cross-compila=
.patch \
+    file://0001-3.1-cmake-add-yocto-toolchain.patch;patchdir=3Dzephyr \
+    file://0001-3.1-x86-fix-efi-binary-generation-issue-in-cross-compila=
.patch;patchdir=3Dzephyr \
 "
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src=
.inc
index e9b35c9..a4bab22 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -1,5 +1,5 @@
 LICENSE =3D "Apache-2.0"
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dfa818a259cbed7ce8bc2a22d35a46=
4fc"
+LIC_FILES_CHKSUM =3D "file://zephyr/LICENSE;md5=3Dfa818a259cbed7ce8bc2a2=
2d35a464fc"
=20
 CVE_PRODUCT =3D "zephyr"
=20
@@ -11,7 +11,7 @@ inherit cmake
 FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
=20
 SRC_URI =3D "\
-    git://github.com/zephyrproject-rtos/zephyr.git;protocol=3Dhttps;bran=
ch=3D${ZEPHYR_BRANCH};name=3Ddefault \
+    git://github.com/zephyrproject-rtos/zephyr.git;protocol=3Dhttps;bran=
ch=3D${ZEPHYR_BRANCH};name=3Ddefault;destsuffix=3Dgit/zephyr \
     git://github.com/zephyrproject-rtos/canopennode.git;protocol=3Dhttps=
;nobranch=3D1;destsuffix=3Dgit/modules/lib/canopennode;name=3Dcanopennode=
 \
     git://github.com/zephyrproject-rtos/civetweb.git;protocol=3Dhttps;no=
branch=3D1;destsuffix=3Dgit/modules/lib/civetweb;name=3Dcivetweb \
     git://github.com/zephyrproject-rtos/cmsis.git;protocol=3Dhttps;nobra=
nch=3D1;destsuffix=3Dgit/modules/hal/cmsis;name=3Dcmsis \
--=20
2.25.1


