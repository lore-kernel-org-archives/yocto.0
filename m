Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50D3DE006B5
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2014 10:44:19 -0800 (PST)
Received: by mail-pd0-f176.google.com with SMTP id w10so8559336pde.7
	for <yocto@yoctoproject.org>; Tue, 04 Feb 2014 10:44:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Wn9j/iqcheJO74V2J5+dzius5nHEUSlBA4+tvGpamS4=;
	b=MOvfCaTLvVtYr1oJaQOPrB/hw74sPbqAvFJPefFG6z/7UlkQlFlJ6mE+vYeOhTWyIP
	saTegt/It2HBsXEr5z/CJINN0gJM3ijQk0363AUDJOPFaQbuw9b9xqVhrd5akRu7df96
	x0UNAT8z8GuOeosDvNb8Iqw7OEbmfmsx4E/KJNt2mX7ZUrbtH5xJfaoKU9FpdKyS110T
	Smj4ynMkNjdVeUcturNnRojgzb5RkgAh4akI07XBv7SxGAMvzgYOAXOcN7oCD0gLHLeK
	oYaCChAdMwWX8CQuJfxhidNIC8ij7icY0xiSyI8u8bu6VI1OBoVuYd1+gcH6EMQLRcr4
	FxJw==
X-Received: by 10.68.44.71 with SMTP id c7mr35568342pbm.24.1391539458657;
	Tue, 04 Feb 2014 10:44:18 -0800 (PST)
Received: from localhost.localdomain
	(99-57-140-30.lightspeed.sntcca.sbcglobal.net. [99.57.140.30])
	by mx.google.com with ESMTPSA id vf7sm68509238pbc.5.2014.02.04.10.44.17
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 04 Feb 2014 10:44:18 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: ajlennon@gmail.com,
	yocto@yoctoproject.org
Date: Tue,  4 Feb 2014 10:44:58 -0800
Message-Id: <1391539498-8620-2-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <1391539498-8620-1-git-send-email-raj.khem@gmail.com>
References: <1391539498-8620-1-git-send-email-raj.khem@gmail.com>
Subject: [PATCH 2/2] mono: Fix the recipes for patch paths
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
X-List-Received-Date: Tue, 04 Feb 2014 18:44:24 -0000

Remove redundant patches, use PV where possible and
remove hardcoding

Reorganise the patch directories

Fixes parse warnings like

WARNING: Unable to get checksum for mono SRC_URI entry Makefile.am.diff:
file could not be found
WARNING: Unable to get checksum for mono-native SRC_URI entry
Makefile.am.diff: file could not be found
WARNING: Unable to get checksum for mono SRC_URI entry config.in.diff:
file could not be found
WARNING: Unable to get checksum for mono-native SRC_URI entry
config.in.diff: file could not be found
WARNING: Unable to get checksum for mono-native SRC_URI entry
Makefile.diff: file could not be found
WARNING: Unable to get checksum for mono SRC_URI entry Makefile.diff:
file could not be found
done.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../files/patch-mono-native-atomic-armv6.patch     | 66 ----------------------
 recipes-mono/mono/mono-2.10.8.1.inc                |  6 +-
 recipes-mono/mono/mono-2.11.inc                    |  6 +-
 .../mono/{files => }/mono-2.11/Makefile.am.diff    |  0
 .../mono/{files => }/mono-2.11/data/config.in.diff |  0
 .../patch-mono-atomic-armv6.patch                  |  0
 recipes-mono/mono/mono-native_2.10.8.1.bb          | 10 ++--
 recipes-mono/mono/mono-native_2.11.bb              | 15 ++---
 recipes-mono/mono/mono_2.10.8.1.bb                 |  2 +-
 recipes-mono/mono/mono_2.11.bb                     |  8 +--
 10 files changed, 21 insertions(+), 92 deletions(-)
 delete mode 100644 recipes-mono/mono/files/patch-mono-native-atomic-armv6.patch
 rename recipes-mono/mono/{files => }/mono-2.11/Makefile.am.diff (100%)
 rename recipes-mono/mono/{files => }/mono-2.11/data/config.in.diff (100%)
 rename recipes-mono/mono/{files => mono-2.11}/patch-mono-atomic-armv6.patch (100%)

diff --git a/recipes-mono/mono/files/patch-mono-native-atomic-armv6.patch b/recipes-mono/mono/files/patch-mono-native-atomic-armv6.patch
deleted file mode 100644
index a825d68..0000000
--- a/recipes-mono/mono/files/patch-mono-native-atomic-armv6.patch
+++ /dev/null
@@ -1,66 +0,0 @@
-diff -ru mono-2.11.org/mono/io-layer/atomic.h mono-2.11/mono/io-layer/atomic.h
---- mono-2.11.org/mono/io-layer/atomic.h	2012-12-23 18:06:38.924514678 +0000
-+++ mono-2.11/mono/io-layer/atomic.h	2012-12-23 18:08:03.864516082 +0000
-@@ -752,7 +752,7 @@
- 
- static inline gint32 InterlockedCompareExchange(volatile gint32 *dest, gint32 exch, gint32 comp)
- {
--#if defined(__ARM_ARCH_6__) || defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__)
-+#if defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__)
- 	gint32 ret, tmp;
- 	__asm__ __volatile__ (	"1:\n"
- 				"dmb\n"
-@@ -792,7 +792,7 @@
- 
- static inline gpointer InterlockedCompareExchangePointer(volatile gpointer *dest, gpointer exch, gpointer comp)
- {
--#if defined(__ARM_ARCH_6__) || defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__)
-+#if defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__)
- 	gpointer ret, tmp;
- 	__asm__ __volatile__ (
- 				"dmb\n"
-@@ -833,7 +833,7 @@
- 
- static inline gint32 InterlockedIncrement(volatile gint32 *dest)
- {
--#if defined(__ARM_ARCH_6__) || defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__)
-+#if defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__)
- 	gint32 ret, flag;
- 	__asm__ __volatile__ (
- 				"dmb\n"
-@@ -869,7 +869,7 @@
- 
- static inline gint32 InterlockedDecrement(volatile gint32 *dest)
- {
--#if defined(__ARM_ARCH_6__) || defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__)
-+#if defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__)
- 	gint32 ret, flag;
- 	__asm__ __volatile__ (
- 				"dmb\n"
-@@ -905,7 +905,7 @@
- 
- static inline gint32 InterlockedExchange(volatile gint32 *dest, gint32 exch)
- {
--#if defined(__ARM_ARCH_6__) || defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__)
-+#if defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__)
- 	gint32 ret, flag;
- 	__asm__ __volatile__ (
- 				  "dmb\n"
-@@ -932,7 +932,7 @@
- 
- static inline gpointer InterlockedExchangePointer(volatile gpointer *dest, gpointer exch)
- {
--#if defined(__ARM_ARCH_6__) || defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__)
-+#if defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__)
- 	gpointer ret, flag;
- 	__asm__ __volatile__ (
- 				  "dmb\n"
-@@ -959,7 +959,7 @@
- 
- static inline gint32 InterlockedExchangeAdd(volatile gint32 *dest, gint32 add)
- {
--#if defined(__ARM_ARCH_6__) || defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__)
-+#if defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__)
- 	gint32 ret, tmp, flag;
- 	__asm__ __volatile__ (
- 				"dmb\n"
diff --git a/recipes-mono/mono/mono-2.10.8.1.inc b/recipes-mono/mono/mono-2.10.8.1.inc
index 79f1b3e..ad481fd 100644
--- a/recipes-mono/mono/mono-2.10.8.1.inc
+++ b/recipes-mono/mono/mono-2.10.8.1.inc
@@ -7,9 +7,9 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=80862f3fd0e11a5fa0318070c54461ce"
 
 SRC_URI = "http://download.mono-project.com/sources/mono/mono-${PV}.tar.gz \
-           file://mono-2.10.8.1/Makefile.am.diff \
-           file://mono-2.10.8.1/data/config.in.diff \
-           file://mono-2.10.8.1/mcs/class/Makefile.diff"
+           file://Makefile.am.diff \
+           file://data/config.in.diff \
+           file://mcs/class/Makefile.diff"
 
 SRC_URI[md5sum] = "c7fd34d59f67e2a13e5421ba2441bc9d"
 SRC_URI[sha256sum] = "1dfc666f8b6e90079d9b290d7f9cf63c15bdbce23f0223cad3163c9c926c9040"
diff --git a/recipes-mono/mono/mono-2.11.inc b/recipes-mono/mono/mono-2.11.inc
index 6d7578c..a618fa6 100644
--- a/recipes-mono/mono/mono-2.11.inc
+++ b/recipes-mono/mono/mono-2.11.inc
@@ -7,8 +7,10 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=80862f3fd0e11a5fa0318070c54461ce"
 
 SRC_URI = "http://download.mono-project.com/sources/mono/mono-${PV}.0.tar.bz2 \
-           file://mono-2.11/Makefile.am.diff \
-           file://mono-2.11/data/config.in.diff"
+           file://Makefile.am.diff \
+           file://patch-mono-atomic-armv6.patch \
+           file://data/config.in.diff \
+	   "
 
 SRC_URI[md5sum] = "8f31f366da9f7e4b69ee23e8bf5b6b3d"
 SRC_URI[sha256sum] = "de6515a4e1f73229711eaa5557009ec59a676554f8d48c45fc88944afd720f85"
diff --git a/recipes-mono/mono/files/mono-2.11/Makefile.am.diff b/recipes-mono/mono/mono-2.11/Makefile.am.diff
similarity index 100%
rename from recipes-mono/mono/files/mono-2.11/Makefile.am.diff
rename to recipes-mono/mono/mono-2.11/Makefile.am.diff
diff --git a/recipes-mono/mono/files/mono-2.11/data/config.in.diff b/recipes-mono/mono/mono-2.11/data/config.in.diff
similarity index 100%
rename from recipes-mono/mono/files/mono-2.11/data/config.in.diff
rename to recipes-mono/mono/mono-2.11/data/config.in.diff
diff --git a/recipes-mono/mono/files/patch-mono-atomic-armv6.patch b/recipes-mono/mono/mono-2.11/patch-mono-atomic-armv6.patch
similarity index 100%
rename from recipes-mono/mono/files/patch-mono-atomic-armv6.patch
rename to recipes-mono/mono/mono-2.11/patch-mono-atomic-armv6.patch
diff --git a/recipes-mono/mono/mono-native_2.10.8.1.bb b/recipes-mono/mono/mono-native_2.10.8.1.bb
index a73152f..f0c8df7 100644
--- a/recipes-mono/mono/mono-native_2.10.8.1.bb
+++ b/recipes-mono/mono/mono-native_2.10.8.1.bb
@@ -1,15 +1,17 @@
-require mono-2.10.8.1.inc
+require mono-${PV}.inc
 
 inherit native autotools
 
+FILESPATH =. "${FILE_DIRNAME}/mono-${PV}:"
+
 PR = "r1"
 
 EXTRA_OECONF += "mono_cv_uscore=no --with-tls=pthread --with-sigaltstack=no --with-mcs-docs=no"
 
 do_configure_prepend() {
-    autoreconf -Wcross --verbose --install --force || bbnote "mono-native failed to autoreconf"
-    sed -e "s/libtool/${BUILD_SYS}-libtool/" -i runtime/monodis-wrapper.in
-    sed -e "s/libtool/${BUILD_SYS}-libtool/" -i runtime/mono-wrapper.in
+	autoreconf -Wcross --verbose --install --force || bbnote "mono-native failed to autoreconf"
+	sed -e "s/libtool/${BUILD_SYS}-libtool/" -i runtime/monodis-wrapper.in
+	sed -e "s/libtool/${BUILD_SYS}-libtool/" -i runtime/mono-wrapper.in
 	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i acinclude.m4
 	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i libgc/acinclude.m4
 	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i eglib/acinclude.m4
diff --git a/recipes-mono/mono/mono-native_2.11.bb b/recipes-mono/mono/mono-native_2.11.bb
index 8b4f9f6..a64f9f8 100644
--- a/recipes-mono/mono/mono-native_2.11.bb
+++ b/recipes-mono/mono/mono-native_2.11.bb
@@ -1,21 +1,18 @@
-require mono-2.11.inc
+require mono-${PV}.inc
 
 inherit native autotools
 
+FILESPATH =. "${FILE_DIRNAME}/mono-${PV}:"
+
 PR = "r1"
 
 EXTRA_OECONF += "mono_cv_uscore=no --with-tls=pthread --with-sigaltstack=no --with-mcs-docs=no"
 
 do_configure_prepend() {
-    autoreconf -Wcross --verbose --install --force || bbnote "mono-native failed to autoreconf"
-    sed -e "s/libtool/${BUILD_SYS}-libtool/" -i runtime/monodis-wrapper.in
-    sed -e "s/libtool/${BUILD_SYS}-libtool/" -i runtime/mono-wrapper.in
+	autoreconf -Wcross --verbose --install --force || bbnote "mono-native failed to autoreconf"
+	sed -e "s/libtool/${BUILD_SYS}-libtool/" -i runtime/monodis-wrapper.in
+	sed -e "s/libtool/${BUILD_SYS}-libtool/" -i runtime/mono-wrapper.in
 	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i acinclude.m4
 	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i libgc/acinclude.m4
 	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i eglib/acinclude.m4
 }
-
-#
-# Add patch to remove armv6 define() in atomic.h (breaks compiler for armv6)
-#
-SRC_URI += "file://patch-mono-native-atomic-armv6.patch"
diff --git a/recipes-mono/mono/mono_2.10.8.1.bb b/recipes-mono/mono/mono_2.10.8.1.bb
index 394d9ff..59c1048 100644
--- a/recipes-mono/mono/mono_2.10.8.1.bb
+++ b/recipes-mono/mono/mono_2.10.8.1.bb
@@ -1,4 +1,4 @@
-require mono-2.10.8.1.inc
+require mono-${PV}.inc
 
 inherit autotools pkgconfig
 
diff --git a/recipes-mono/mono/mono_2.11.bb b/recipes-mono/mono/mono_2.11.bb
index fa55e1b..a5fdbcf 100644
--- a/recipes-mono/mono/mono_2.11.bb
+++ b/recipes-mono/mono/mono_2.11.bb
@@ -1,4 +1,4 @@
-require mono-2.11.inc
+require mono-${PV}.inc
 
 inherit autotools pkgconfig
 
@@ -29,9 +29,3 @@ FILES_${PN} += "${libdir}/libMonoPosixHelper.so"
 FILES_${PN} += "${libdir}/libMonoSupportW.so"
 
 INSANE_SKIP_${PN} = "arch dev-so debug-files"
-
-#
-# Add patch to remove armv6 define() in atomic.h (breaks compiler for armv6)
-#
-SRC_URI += " file://patch-mono-atomic-armv6.patch"
-
-- 
1.8.5.3


