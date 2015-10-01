Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0426E00CAD; Thu,  1 Oct 2015 11:15:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAAFAE00A93
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 11:15:05 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so2647192wic.0
	for <yocto@yoctoproject.org>; Thu, 01 Oct 2015 11:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=6QwkreNhePjll2Vek3N/O6Dr8x3kDB6VTyEO3MlssvM=;
	b=BzDu1RS/OBKWM7oeuksnk+ztol42JRW6p7tBRrKpsvaE8Hw4rpHp1rldzXwDv4ccT7
	KtHg/P/azQSWl5w6KgwkCM5q79cD/tcKkIcMDgNsjVA+lzzHG7iFZJ+cQpldIqDS4sHS
	UwWpVU8P73VPfrLFBTRaBXaR5YAU7F/lZqwcPef8vwAVPpTRJsRLLhH/TO+eti+uH4fB
	x5lgUuJrto4B5rGci9Cy3tPOg4CmIuujNlu0nB2VkTaA4BJD4o2IeikkgJvCijVq9Qey
	P5fcjwF4vZIsGqNj2WdfZ39LcYsLt3oqGBFDHL1GpuVgpbWw0yILe6eh2lI7ZtiXeqKj
	K6nA==
X-Received: by 10.180.186.98 with SMTP id fj2mr201930wic.58.1443723304590;
	Thu, 01 Oct 2015 11:15:04 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id fu5sm5368051wic.0.2015.10.01.11.15.03
	for <yocto@yoctoproject.org> (version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:15:04 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <4438A8C1-B3D7-4E39-B1DA-208EB68172D4@gmail.com>
Date: Thu, 1 Oct 2015 20:15:03 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 1/7][meta-openembedded] Update llvm to 3.5 to have a sane ARM JIT for OpenJDK-8
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 01 Oct 2015 18:15:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 meta-oe/recipes-core/llvm/llvm.inc                 |  7 +--
 ...r-output-from-configure-if-CFLAGS-is-set-.patch | 52 =
----------------------
 .../llvm/llvm3.3/arm_fenv_uclibc.patch             | 14 ------
 meta-oe/recipes-core/llvm/llvm3.3_3.3.bb           | 22 ---------
 .../llvm/llvm3.5/arm_fenv_uclibc.patch             | 14 ++++++
 meta-oe/recipes-core/llvm/llvm3.5_3.5.2.bb         | 25 +++++++++++
 6 files changed, 40 insertions(+), 94 deletions(-)
 delete mode 100644 =
meta-oe/recipes-core/llvm/llvm3.3/Remove-error-output-from-configure-if-CF=
LAGS-is-set-.patch
 delete mode 100644 =
meta-oe/recipes-core/llvm/llvm3.3/arm_fenv_uclibc.patch
 delete mode 100644 meta-oe/recipes-core/llvm/llvm3.3_3.3.bb
 create mode 100644 =
meta-oe/recipes-core/llvm/llvm3.5/arm_fenv_uclibc.patch
 create mode 100644 meta-oe/recipes-core/llvm/llvm3.5_3.5.2.bb

diff --git a/meta-oe/recipes-core/llvm/llvm.inc =
b/meta-oe/recipes-core/llvm/llvm.inc
index 0597be1..032fb47 100644
--- a/meta-oe/recipes-core/llvm/llvm.inc
+++ b/meta-oe/recipes-core/llvm/llvm.inc
@@ -20,11 +20,6 @@
 DESCRIPTION =3D "The Low Level Virtual Machine"
 HOMEPAGE =3D "http://llvm.org"
=20
-# 3-clause BSD-like
-# University of Illinois/NCSA Open Source License
-LICENSE =3D "NCSA"
-LIC_FILES_CHKSUM =3D =
"file://LICENSE.TXT;md5=3Dd0a3ef0d3e0e8f5cf59e5ffc273ab1f8"
-
 DEPENDS =3D "libffi libxml2-native llvm-common"
=20
 inherit perlnative pythonnative autotools
@@ -32,7 +27,7 @@ inherit perlnative pythonnative autotools
 LLVM_RELEASE =3D "${PV}"
 LLVM_DIR =3D "llvm${LLVM_RELEASE}"
=20
-SRC_URI =3D "http://llvm.org/releases/${PV}/llvm-${PV}.src.tar.gz"
+SRC_URI =3D "http://llvm.org/releases/${PV}/llvm-${PV}.src.tar.xz"
 S =3D "${WORKDIR}/llvm-${PV}.src"
=20
 LLVM_BUILD_DIR =3D "${WORKDIR}/llvm-${PV}.build"
diff --git =
a/meta-oe/recipes-core/llvm/llvm3.3/Remove-error-output-from-configure-if-=
CFLAGS-is-set-.patch =
b/meta-oe/recipes-core/llvm/llvm3.3/Remove-error-output-from-configure-if-=
CFLAGS-is-set-.patch
deleted file mode 100644
index 44387e8..0000000
--- =
a/meta-oe/recipes-core/llvm/llvm3.3/Remove-error-output-from-configure-if-=
CFLAGS-is-set-.patch
+++ /dev/null
@@ -1,52 +0,0 @@
-=46rom d4bf7a3853dab12c11cbfc8088fd76f548a8d017 Mon Sep 17 00:00:00 =
2001
-From: Patrik Hagglund <patrik.h.hagglund@ericsson.com>
-Date: Tue, 24 Sep 2013 11:38:45 +0000
-Subject: [PATCH] Remove error output from configure if CFLAGS is set =
(r174313).
-
-This fixes PR16724.
-
-git-svn-id: https://llvm.org/svn/llvm-project/llvm/trunk@191289 =
91177308-0d34-0410-b5e6-96231b3b80d8
-
=
-https://github.com/llvm-mirror/llvm/commit/d4bf7a3853dab12c11cbfc8088fd76=
f548a8d017
-
-Upstream-Status: Backport
-
-Signed-off-by: Andre McCurdy <armccurdy@gmail.com>
----
- autoconf/configure.ac | 4 ++--
- configure             | 4 ++--
- 2 files changed, 4 insertions(+), 4 deletions(-)
-
-diff --git a/autoconf/configure.ac b/autoconf/configure.ac
-index f9c365c..45f2fe4 100644
---- a/autoconf/configure.ac
-+++ b/autoconf/configure.ac
-@@ -61,8 +61,8 @@ fi
-=20
- dnl Default to empty (i.e. assigning the null string to) CFLAGS and =
CXXFLAGS,
- dnl instead of the autoconf default (for example, '-g -O2' for =
CC=3Dgcc).
--${CFLAGS=3D}
--${CXXFLAGS=3D}
-+: ${CFLAGS=3D}
-+: ${CXXFLAGS=3D}
-=20
- dnl We need to check for the compiler up here to avoid anything else
- dnl starting with a different one.
-diff --git a/configure b/configure
-index f3a6594..9090cda 100755
---- a/configure
-+++ b/configure
-@@ -1992,8 +1992,8 @@ echo "$as_me: error: Already configured in =
${srcdir}" >&2;}
-   fi
- fi
-=20
--${CFLAGS=3D}
--${CXXFLAGS=3D}
-+: ${CFLAGS=3D}
-+: ${CXXFLAGS=3D}
-=20
- ac_ext=3Dc
- ac_cpp=3D'$CPP $CPPFLAGS'
---=20
-1.9.1
-
diff --git a/meta-oe/recipes-core/llvm/llvm3.3/arm_fenv_uclibc.patch =
b/meta-oe/recipes-core/llvm/llvm3.3/arm_fenv_uclibc.patch
deleted file mode 100644
index c3ae494..0000000
--- a/meta-oe/recipes-core/llvm/llvm3.3/arm_fenv_uclibc.patch
+++ /dev/null
@@ -1,14 +0,0 @@
-Index: llvm-2.9/include/llvm/Support/FEnv.h
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
---- llvm-2.9.orig/include/llvm/Support/FEnv.h	2010-11-29 =
20:44:50.000000000 +0100
-+++ llvm-2.9/include/llvm/Support/FEnv.h	2011-11-18 =
18:42:22.580161297 +0100
-@@ -17,6 +17,9 @@
-=20
- #include "llvm/Config/config.h"
- #include <cerrno>
-+
-+#undef HAVE_FENV_H
-+
- #ifdef HAVE_FENV_H
- #include <fenv.h>
- #endif
diff --git a/meta-oe/recipes-core/llvm/llvm3.3_3.3.bb =
b/meta-oe/recipes-core/llvm/llvm3.3_3.3.bb
deleted file mode 100644
index 60a2221..0000000
--- a/meta-oe/recipes-core/llvm/llvm3.3_3.3.bb
+++ /dev/null
@@ -1,22 +0,0 @@
-require llvm.inc
-
-DEPENDS +=3D "zlib"
-EXTRA_OECONF +=3D "--enable-zlib"
-
-SRC_URI +=3D =
"file://Remove-error-output-from-configure-if-CFLAGS-is-set-.patch"
-
-SRC_URI_append_libc-uclibc =3D " file://arm_fenv_uclibc.patch "
-
-SRC_URI[md5sum] =3D "40564e1dc390f9844f1711c08b08e391"
-SRC_URI[sha256sum] =3D =
"68766b1e70d05a25e2f502e997a3cb3937187a3296595cf6e0977d5cd6727578"
-
-PACKAGECONFIG ??=3D ""
-PACKAGECONFIG[r600] =3D "--enable-experimental-targets=3DR600,,,"
-
-# Fails to build with thumb-1 (qemuarm)
-# | {standard input}: Assembler messages:
-# | {standard input}:22: Error: selected processor does not support =
Thumb mode `stmdb sp!,{r0,r1,r2,r3,lr}'
-# | {standard input}:31: Error: lo register required -- `ldmia =
sp!,{r0,r1,r2,r3,lr}'
-# | {standard input}:32: Error: lo register required -- `ldr =
pc,[sp],#4'
-# | make[3]: *** =
[/home/jenkins/oe/world/shr-core/tmp-glibc/work/armv5te-oe-linux-gnueabi/l=
lvm3.3/3.3-r0/llvm-3.3.build/lib/Target/ARM/Release/ARMJITInfo.o] Error =
1
-ARM_INSTRUCTION_SET =3D "arm"
diff --git a/meta-oe/recipes-core/llvm/llvm3.5/arm_fenv_uclibc.patch =
b/meta-oe/recipes-core/llvm/llvm3.5/arm_fenv_uclibc.patch
new file mode 100644
index 0000000..c3ae494
--- /dev/null
+++ b/meta-oe/recipes-core/llvm/llvm3.5/arm_fenv_uclibc.patch
@@ -0,0 +1,14 @@
+Index: llvm-2.9/include/llvm/Support/FEnv.h
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+--- llvm-2.9.orig/include/llvm/Support/FEnv.h	2010-11-29 =
20:44:50.000000000 +0100
++++ llvm-2.9/include/llvm/Support/FEnv.h	2011-11-18 =
18:42:22.580161297 +0100
+@@ -17,6 +17,9 @@
+=20
+ #include "llvm/Config/config.h"
+ #include <cerrno>
++
++#undef HAVE_FENV_H
++
+ #ifdef HAVE_FENV_H
+ #include <fenv.h>
+ #endif
diff --git a/meta-oe/recipes-core/llvm/llvm3.5_3.5.2.bb =
b/meta-oe/recipes-core/llvm/llvm3.5_3.5.2.bb
new file mode 100644
index 0000000..7289b81
--- /dev/null
+++ b/meta-oe/recipes-core/llvm/llvm3.5_3.5.2.bb
@@ -0,0 +1,25 @@
+require llvm.inc
+
+# 3-clause BSD-like
+# University of Illinois/NCSA Open Source License
+LICENSE =3D "NCSA"
+LIC_FILES_CHKSUM =3D =
"file://LICENSE.TXT;md5=3D47e311aa9caedd1b3abf098bd7814d1d"
+
+DEPENDS +=3D "zlib"
+EXTRA_OECONF +=3D "--enable-zlib"
+
+SRC_URI_append_libc-uclibc =3D " file://arm_fenv_uclibc.patch "
+
+SRC_URI[md5sum] =3D "f5a4dc595f7e8bd23397684d0906d014"
+SRC_URI[sha256sum] =3D =
"44196156d5749eb4b4224fe471a29cc3984df92570a4a89fa859f7394fc0c575"
+
+PACKAGECONFIG ??=3D ""
+PACKAGECONFIG[r600] =3D "--enable-experimental-targets=3DR600,,,"
+
+# Fails to build with thumb-1 (qemuarm)
+# | {standard input}: Assembler messages:
+# | {standard input}:22: Error: selected processor does not support =
Thumb mode `stmdb sp!,{r0,r1,r2,r3,lr}'
+# | {standard input}:31: Error: lo register required -- `ldmia =
sp!,{r0,r1,r2,r3,lr}'
+# | {standard input}:32: Error: lo register required -- `ldr =
pc,[sp],#4'
+# | make[3]: *** =
[/home/jenkins/oe/world/shr-core/tmp-glibc/work/armv5te-oe-linux-gnueabi/l=
lvm3.3/3.3-r0/llvm-3.3.build/lib/Target/ARM/Release/ARMJITInfo.o] Error =
1
+ARM_INSTRUCTION_SET =3D "arm"
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


