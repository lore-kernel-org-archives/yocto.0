Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 144CCC6FD18
	for <webhook@archiver.kernel.org>; Wed, 19 Apr 2023 16:02:11 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.42168.1681920129157572047
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Apr 2023 09:02:09 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9B88416F8;
	Wed, 19 Apr 2023 09:02:52 -0700 (PDT)
Received: from e125920.cambridge.arm.com (unknown [10.1.199.64])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 66A283F5A1;
	Wed, 19 Apr 2023 09:02:08 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH] zephyr-core/zephyr-kernel: Fix arm32 binutils 2.40 incompatibility
Date: Wed, 19 Apr 2023 17:01:58 +0100
Message-Id: <20230419160158.457779-1-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Apr 2023 16:02:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59736

From: Peter Hoyes <Peter.Hoyes@arm.com>

Armv7 boards are currently failing with binutils 2.40 if certain
statements are combined on the same line without a semicolon. Introduce
a patch to fix this by inserting a semicolon.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 ...x-separator-between-directives-on-sa.patch | 44 +++++++++++++++++++
 .../zephyr-kernel/zephyr-kernel-src-3.3.0.inc |  1 +
 2 files changed, 45 insertions(+)
 create mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0=
002-3.3-toolchain-gcc-Fix-separator-between-directives-on-sa.patch

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0002-3.3=
-toolchain-gcc-Fix-separator-between-directives-on-sa.patch b/meta-zephyr=
-core/recipes-kernel/zephyr-kernel/files/0002-3.3-toolchain-gcc-Fix-separ=
ator-between-directives-on-sa.patch
new file mode 100644
index 0000000..84750b8
--- /dev/null
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0002-3.3-toolch=
ain-gcc-Fix-separator-between-directives-on-sa.patch
@@ -0,0 +1,44 @@
+From e709258cd766a7b4a3b02e6910f980d501ef1493 Mon Sep 17 00:00:00 2001
+From: Peter Hoyes <Peter.Hoyes@arm.com>
+Date: Sun, 26 Feb 2023 21:18:04 +0000
+Subject: [PATCH] toolchain: gcc: Fix separator between directives on sam=
e
+ line
+
+The Arm assembler in binutils 2.40 contains a change [1] which affects
+how multiple directives on the same line are parsed.
+
+Previously, the following combination of directives parsed successfully:
+
+    .code 32 .balign 4
+
+With binutils 2.40, the following error is now seen:
+
+    Error: junk at end of line, first unrecognised character is `.'
+
+To fix, insert a semicolon after '.code 32', as there already is after
+'.thumb'.
+
+[1] https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=3D=
a37854f9162fac592b669eda53f465fc190c9341
+
+Upstream-Status: Backport [https://github.com/zephyrproject-rtos/zephyr/=
commit/2f2f3edacdf13bb9bc0be1ce3b80726dce6fb1c0]
+Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
+---
+ include/zephyr/toolchain/gcc.h | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/include/zephyr/toolchain/gcc.h b/include/zephyr/toolchain/g=
cc.h
+index ede21a47fe..f81cb0a309 100644
+--- a/include/zephyr/toolchain/gcc.h
++++ b/include/zephyr/toolchain/gcc.h
+@@ -312,7 +312,7 @@ do {                                                =
                    \
+=20
+ #else
+=20
+-#define FUNC_CODE() .code 32
++#define FUNC_CODE() .code 32;
+ #define FUNC_INSTR(a)
+=20
+ #endif /* CONFIG_ASSEMBLER_ISA_THUMB2 */
+--=20
+2.34.1
+
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src-3.3.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kern=
el-src-3.3.0.inc
index 245ba81..035c8fa 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3=
.0.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3=
.0.inc
@@ -116,6 +116,7 @@ SRC_URI_ZEPHYR_THRIFT ?=3D "git://github.com/zephyrpr=
oject-rtos/thrift;protocol=3Dht
=20
 SRC_URI_PATCHES ?=3D "\
     file://0001-3.3-x86-fix-efi-binary-generation-issue-in-cross-compila=
.patch;patchdir=3Dzephyr \
+    file://0002-3.3-toolchain-gcc-Fix-separator-between-directives-on-sa=
.patch;patchdir=3Dzephyr \
 "
=20
 SRC_URI =3D "\
--=20
2.34.1


