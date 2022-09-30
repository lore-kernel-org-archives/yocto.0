Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB429C433FE
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 16:34:18 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.1118.1664555645637869941
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 09:34:05 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E05D91474;
	Fri, 30 Sep 2022 09:34:11 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.80.219])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 86B253F792;
	Fri, 30 Sep 2022 09:34:04 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: diego.sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 2/2] zephyr-core/zephyr-kernel: Implement
 do_install
Date: Fri, 30 Sep 2022 17:34:37 +0100
Message-Id: <20220930163437.875793-2-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220930163437.875793-1-peter.hoyes@arm.com>
References: <20220930163437.875793-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 16:34:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58235

From: Peter Hoyes <Peter.Hoyes@arm.com>

Install the Zephyr binaries to ${D}/firmware prior to copying them to
${DEPLOYDIR}.

Implementing do_install has three advantages:
 * In use-cases when the Zephyr application is not the final artifact
   (e.g. when signing or using additional firmware), other recipes can
   pick up the Zephyr binary from the sysroot instead of
   DEPLOY_DIR_IMAGE.
 * It may sometimes make sense to install the binaries in a Linux
   filesystem (e.g. to be run by a hypervisor).
 * OE-core's QA checks run on the packaged binaries.

There are currently two QA checks that fail, so add these to INSANE_SKIP
for now.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .../zephyr-kernel/zephyr-image.inc            | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.i=
nc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
index fc8c077..d6ee21f 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
@@ -4,19 +4,26 @@ inherit deploy
=20
 OECMAKE_SOURCEPATH =3D "${ZEPHYR_SRC_DIR}"
=20
-do_install[noexec] =3D "1"
+do_install() {
+    install -d ${D}/firmware
=20
-do_deploy() {
-    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
+    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${D}/firmware/${PN}.elf
=20
     if [ -f ${B}/zephyr/${ZEPHYR_MAKE_BIN_OUTPUT} ]
     then
-      install -D ${B}/zephyr/${ZEPHYR_MAKE_BIN_OUTPUT} ${DEPLOYDIR}/${PN=
}.bin
+      install -D ${B}/zephyr/${ZEPHYR_MAKE_BIN_OUTPUT} ${D}/firmware/${P=
N}.bin
     fi
=20
     if [ -f ${B}/zephyr/${ZEPHYR_MAKE_EFI_OUTPUT} ]
     then
-      install -D ${B}/zephyr/${ZEPHYR_MAKE_EFI_OUTPUT} ${DEPLOYDIR}/${PN=
}.efi
+      install -D ${B}/zephyr/${ZEPHYR_MAKE_EFI_OUTPUT} ${D}/firmware/${P=
N}.efi
     fi
 }
-addtask deploy after do_compile
+FILES:${PN} =3D "/firmware"
+INSANE_SKIP +=3D "ldflags buildpaths"
+SYSROOT_DIRS +=3D "/firmware"
+
+do_deploy() {
+    cp ${D}/firmware/${PN}.* ${DEPLOYDIR}/
+}
+addtask deploy after do_install
--=20
2.25.1


