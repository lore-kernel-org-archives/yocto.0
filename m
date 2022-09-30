Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 025C5C433F5
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 16:34:09 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.1160.1664555642432610932
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 09:34:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C14FE1474;
	Fri, 30 Sep 2022 09:34:08 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.80.219])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 433173F792;
	Fri, 30 Sep 2022 09:34:01 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: diego.sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 1/2] zephyr-core/zephyr-kernel: Refactor
 zephyr-image and zephyr-sample
Date: Fri, 30 Sep 2022 17:34:36 +0100
Message-Id: <20220930163437.875793-1-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 16:34:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58234

From: Peter Hoyes <Peter.Hoyes@arm.com>

At the moment:
 * zephyr-image.inc depends on zephyr-sample.inc, which doesn't really
   make sense.
 * zephyr-image.inc inherits testimage, even though it may not be
   required.
 * Out-of-tree Zephyr apps have to include zephyr-sample.inc in order to
   deploy the binaries, which is confusingly named if your application
   isn't a "sample".

Do some minor refactoring to untangle the above. Now:
 * zephyr-sample.inc depends on zephyr-image.inc
 * zephyrtest.bbclass inherits testimage.
 * Out-of-tree Zephyr apps can include zephyr-image.inc

Additionally, remove QEMU_BIN_PATH, as recent Zephyr versions now pick
up the QEMU binary automatically from PATH.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 meta-zephyr-core/classes/zephyrtest.bbclass   |  4 ++--
 .../zephyr-kernel/zephyr-image.inc            | 23 +++++++++++++++----
 .../zephyr-kernel/zephyr-sample.inc           | 23 +------------------
 3 files changed, 21 insertions(+), 29 deletions(-)

diff --git a/meta-zephyr-core/classes/zephyrtest.bbclass b/meta-zephyr-co=
re/classes/zephyrtest.bbclass
index aa48e6c..d4fc75e 100644
--- a/meta-zephyr-core/classes/zephyrtest.bbclass
+++ b/meta-zephyr-core/classes/zephyrtest.bbclass
@@ -1,4 +1,4 @@
-inherit rootfs-postcommands
+inherit rootfs-postcommands testimage
=20
 python zephyrtest_virtclass_handler () {
     variant =3D e.data.getVar("BBEXTENDVARIANT", True)
@@ -14,7 +14,7 @@ python zephyrtest_virtclass_handler () {
     e.data.setVar("ZEPHYR_IMAGENAME", pn + ".elf")
=20
     # Most tests for Zephyr 1.6 are in the "legacy" folder
-    e.data.setVar("ZEPHYR_SRC_DIR", "tests/kernel/" + variant)
+    e.data.setVar("ZEPHYR_SRC_DIR", "${ZEPHYR_BASE}/tests/kernel/" + var=
iant)
     e.data.setVar("ZEPHYR_MAKE_OUTPUT", "zephyr.elf")
=20
     # Allow to build using both foo-some_test form as well as foo-some-t=
est
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.i=
nc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
index f4c9db1..fc8c077 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
@@ -1,9 +1,22 @@
-require zephyr-sample.inc
-inherit testimage
+require zephyr-kernel-src.inc
+require zephyr-kernel-common.inc
+inherit deploy
=20
-QEMU_BIN_PATH =3D "${STAGING_BINDIR_NATIVE}"
+OECMAKE_SOURCEPATH =3D "${ZEPHYR_SRC_DIR}"
=20
-OECMAKE_SOURCEPATH =3D "${ZEPHYR_BASE}/${ZEPHYR_SRC_DIR}"
+do_install[noexec] =3D "1"
+
+do_deploy() {
+    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
=20
+    if [ -f ${B}/zephyr/${ZEPHYR_MAKE_BIN_OUTPUT} ]
+    then
+      install -D ${B}/zephyr/${ZEPHYR_MAKE_BIN_OUTPUT} ${DEPLOYDIR}/${PN=
}.bin
+    fi
+
+    if [ -f ${B}/zephyr/${ZEPHYR_MAKE_EFI_OUTPUT} ]
+    then
+      install -D ${B}/zephyr/${ZEPHYR_MAKE_EFI_OUTPUT} ${DEPLOYDIR}/${PN=
}.efi
+    fi
+}
 addtask deploy after do_compile
-do_install[noexec] =3D "1"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-sample.=
inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-sample.inc
index 10c25c5..5f6dea9 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-sample.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-sample.inc
@@ -1,22 +1 @@
-require zephyr-kernel-src.inc
-require zephyr-kernel-common.inc
-inherit deploy
-
-OECMAKE_SOURCEPATH =3D "${ZEPHYR_SRC_DIR}"
-
-do_install[noexec] =3D "1"
-
-do_deploy () {
-    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
-
-    if [ -f ${B}/zephyr/${ZEPHYR_MAKE_BIN_OUTPUT} ]
-    then
-      install -D ${B}/zephyr/${ZEPHYR_MAKE_BIN_OUTPUT} ${DEPLOYDIR}/${PN=
}.bin
-    fi
-
-    if [ -f ${B}/zephyr/${ZEPHYR_MAKE_EFI_OUTPUT} ]
-    then
-      install -D ${B}/zephyr/${ZEPHYR_MAKE_EFI_OUTPUT} ${DEPLOYDIR}/${PN=
}.efi
-    fi
-}
-addtask deploy after do_compile
+require zephyr-image.inc
--=20
2.25.1


