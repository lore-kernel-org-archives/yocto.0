Return-Path: <ajlennon@gmail.com>
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3407E00902
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 10:50:00 -0800 (PST)
Received: by mail-wi0-f172.google.com with SMTP id e4so4928001wiv.11
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 10:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=28YyRgM76rQhCqyHc6aLVLx94RbNpAe+FFlWOMDnnog=;
	b=Q8F5Mt9J4AZHEUOy/92aXw/ALyBGj3Qc6aZ0t+VLRgmAKoRZtt+QS30PVixmyYWvjr
	FyOATBAU0SIMMM/cDvmkOs47zxMc68WKHtCfLBuShQr1LTqTFFM8LaWXj7RGkVwUCFQQ
	B2dOYt3si0JfuPdXNM/4SvxuYsSKRA3pUqhw0nBRs2eWrhLV6tGaJvh8WL8z1ifIg02d
	ffA1uM/VpW+zJ6+LHayCU3WEtrNsZypQ5ABjDxHLPnr0DIOyJqIr5mnuVC+ZfNy8Re2A
	Lg8pXm0jnL9QJo5XuFhqFxpzCs+Kiuz428tLy1aFMum4B9O/o57y1pFBQ7so6lYf81tb
	7h1w==
X-Received: by 10.180.72.195 with SMTP id f3mr4347013wiv.61.1393354199816;
	Tue, 25 Feb 2014 10:49:59 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id p1sm2648706wie.1.2014.02.25.10.49.58
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 25 Feb 2014 10:49:59 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org, paul.eggleton@linux.intel.com, raj.khem@gmail.com
Date: Tue, 25 Feb 2014 18:48:18 +0000
Message-Id: <25464441a52f1c0161990285d080d980886a425a.1393353739.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1393353739.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393353739.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1393353739.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393353739.git.ajlennon@dynamicdevices.co.uk>
Subject: [PATCH 2/2] mono: Update Mono to 3.2.8
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
X-List-Received-Date: Tue, 25 Feb 2014 18:50:04 -0000

- Mono 3.2.8 is a bug-fix only release based on 3.2.7 (19/02/2014)
- Mono 3.2.7 was a major forward release (17/01/2014)

Mono 3.2.7+ is particularly interesting because it has initial support
for ARM hardfp whereas until now we have had to build with vfp in order
to use Mono on ARM based boards.

Further release notes can be found here:

http://www.mono-project.com/Release_Notes_Mono_3.2

I have tested that Mono 3.2.8 builds and runs with a standard qemux86
target and with a vfp tuned i.MX6 target. hardfp remains to be tested.

I have also modified the maintainer list in the README to include myself.

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 README                                             |   74 +++++++++-----------
 .../mono/files/mono-2.11/data/config.in.diff       |   11 ---
 .../mono/files/patch-mono-atomic-armv6.patch       |   66 -----------------
 .../files/patch-mono-native-atomic-armv6.patch     |   66 -----------------
 recipes-mono/mono/mono-2.10.8.1.inc                |   18 -----
 recipes-mono/mono/mono-2.10.8.1/Makefile.am.diff   |   15 ----
 .../mono/mono-2.10.8.1/mcs/class/Makefile.diff     |   13 ----
 .../mono/{mono-2.11.inc => mono-3.2.8.inc}         |   15 ++--
 .../mono-2.11 => mono-3.2.8}/Makefile.am.diff      |    0
 .../dllmap-config.in.diff}                         |   13 +++-
 recipes-mono/mono/mono-native_2.10.8.1.bb          |   17 -----
 recipes-mono/mono/mono-native_2.11.bb              |   21 ------
 recipes-mono/mono/mono-native_3.2.8.bb             |   16 +++++
 recipes-mono/mono/mono_2.10.8.1.bb                 |   30 --------
 recipes-mono/mono/{mono_2.11.bb => mono_3.2.8.bb}  |   22 +++---
 15 files changed, 82 insertions(+), 315 deletions(-)
 delete mode 100644 recipes-mono/mono/files/mono-2.11/data/config.in.diff
 delete mode 100644 recipes-mono/mono/files/patch-mono-atomic-armv6.patch
 delete mode 100644 recipes-mono/mono/files/patch-mono-native-atomic-armv6.patch
 delete mode 100644 recipes-mono/mono/mono-2.10.8.1.inc
 delete mode 100644 recipes-mono/mono/mono-2.10.8.1/Makefile.am.diff
 delete mode 100644 recipes-mono/mono/mono-2.10.8.1/mcs/class/Makefile.diff
 rename recipes-mono/mono/{mono-2.11.inc => mono-3.2.8.inc} (58%)
 rename recipes-mono/mono/{files/mono-2.11 => mono-3.2.8}/Makefile.am.diff (100%)
 rename recipes-mono/mono/{mono-2.10.8.1/data/config.in.diff => mono-3.2.8/dllmap-config.in.diff} (43%)
 delete mode 100644 recipes-mono/mono/mono-native_2.10.8.1.bb
 delete mode 100644 recipes-mono/mono/mono-native_2.11.bb
 create mode 100644 recipes-mono/mono/mono-native_3.2.8.bb
 delete mode 100644 recipes-mono/mono/mono_2.10.8.1.bb
 rename recipes-mono/mono/{mono_2.11.bb => mono_3.2.8.bb} (59%)

diff --git a/README b/README
index dc8cc0a..c3a8faf 100644
--- a/README
+++ b/README
@@ -3,13 +3,12 @@
 3) Maintainer(s) & Patch policy
 4) Copyright
 5) Current State - x86
-6) Current State - ARM
-7) Current State - MIPS
-8) Current State - PPC
-9) Current State - alpha, amd64, hppa, ia64, s390 & sparc
-10) TODO
-
-
+6) Current State - ARM vfp
+7) Current State - ARM hardfp
+8) Current State - MIPS
+9) Current State - PPC
+10) Current State - alpha, amd64, hppa, ia64, s390 & sparc
+11) TODO
 
 1) Intro
 
@@ -18,7 +17,14 @@ libraries to allow users to run .NET applications under linux built
 using OE. For more info about mono, see mono project's website. For
 more info on OpenEmbedded, see OE's website.
 
+This README pertains to meta-mono layer support for Mono 3.2.8 
+
+For Mono release notes please see:
 
+http://www.mono-project.com/Release_Notes_Mono_3.2
+
+NOTE: That as of Mono 3.2.7 there is initial support for the ARM hardfp ABI
+      which should enable us to use hardfp builds of e.g. Yocto/Poky
 
 2) Dependencies
 
@@ -34,69 +40,59 @@ Mono does not require Sato, it does require X if you want to run
 Windows Forms applications. While mono can run w/o X, that recipe
 is not supported currently. It is unlikely to be supported.
 
-
-
 3) Maintainer(s) & Patch policy
 
+Alex J Lennon (ajlennon@dynamicdevices.co.uk)
+
 Autif Khan (autif.mlist@gmail.com)
 autif on #yocto on freenode
 
-Send a patch or tar.gz file as attachment to the maintainer.
+Follow Yocto change submission policy, detailed here
 
+http://www.yoctoproject.org/docs/1.4.2/dev-manual/dev-manual.html#how-to-submit-a-change
 
+Use the create-pull-request and send-pull-request scripts details in 3.9.1. Send 
+to the maintainer and to yocto@yoctoproject.org
 
 4) Copyright
 
 MIT/GPLv2 - following the lead of libgdiplus and mono
 
-
-
 5) Current State - x86: Works
 
-Maintainer uses Yocto/OE/Poky as his build environment. He has built
-core-image-mono and core-image-mono-sdk for qemux86 and crownbay. The
-maintainer has also tested mono using all the runtime tests and
-few library tests that come with mono. The maintainer has also tested
-one Windows Forms application.
-
+25/02/2014
 
+Alex J Lennon (ajlennon@dynamicdevices.co.uk) has tested a Poky 
+build on a qemux86 platform, with a simple console application 
+and a simple Windows Forms application. 
 
-6) Current State - ARM: Works
+6) Current State - ARM vfp: Works
 
-Maintainer uses Yocto/OE/Poky as his build environment. He has built
-core-image-mono for qemuarm. The maintainer has tested one Windows
-Forms application.
+25/02/2014
 
-Alex J Lennon (ajlennon@dynamicdevices.co.uk) has tested a Yocto/OE/Poky 
-build on the Raspberry Pi Model B, with a simple console application 
-and a simple Windows Forms application. He has also tested that remote 
-debugging of applications is possible from Visual Studio 2010 using 
-monotools-server.
+Alex J Lennon (ajlennon@dynamicdevices.co.uk) has tested a Poky 
+build on a Freescale i.MX6 platform, with a simple console application 
+and a simple Windows Forms application. 
 
-7) Current State - MIPS: Minor issues need to be resolved
+7) Current State - ARM hardfp: Builds
 
-Maintainer uses Yocto/OE/Poky as his build environment. He has built
-core-image-mono for qemumips. A Windows Forms application fails to
-execute. More investigation is needed, if there is an interest in getting
-mono to work perfectly on MIPS, please contact the maintainer.
+Builds for i.MX6 platform with hardfp enabled. Needs testing.
 
+7) Current State - MIPS: Unknown
 
+More investigation is needed, if there is an interest in getting
+mono to work perfectly on MIPS, please contact the maintainer.
 
-8) Current State - PPC: Does not build
+8) Current State - PPC
 
-Maintainer uses Yocto/OE/Poky as his build environment. The build for
-core-image-mono for qemuppc fails. If there is an interest in getting
+More investigation is needed, if there is an interest in getting
 mono to work perfectly on PPC, please contact the maintainer.
 
-
-
 9) Current State - alpha, amd64, hppa, ia64, s390 & sparc: Unknown
 
 When qemu provided by Yocto supports one of these machines, the
 maintainer will support these architectures.
 
-
-
 10) TODO
 
 10.1) see if mono works for amd64, seems like qemux86-64 is available
diff --git a/recipes-mono/mono/files/mono-2.11/data/config.in.diff b/recipes-mono/mono/files/mono-2.11/data/config.in.diff
deleted file mode 100644
index 1c921df..0000000
--- a/recipes-mono/mono/files/mono-2.11/data/config.in.diff
+++ /dev/null
@@ -1,11 +0,0 @@
---- mono-2.10.8.1.orig/data/config.in	2012-01-27 09:29:07.072001924 -0500
-+++ mono-2.10.8.1/data/config.in	2012-01-27 09:30:59.740001933 -0500
-@@ -15,7 +15,7 @@
- 	<dllmap dll="i:msvcrt.dll" target="@LIBC@" os="!windows"/>
- 	<dllmap dll="sqlite" target="@SQLITE@" os="!windows"/>
- 	<dllmap dll="sqlite3" target="@SQLITE3@" os="!windows"/>
--	<dllmap dll="libX11" target="@X11@" os="!windows" />
-+	<dllmap dll="libX11" target="libX11.so.6" os="!windows" />
- 	<dllmap dll="libcairo-2.dll" target="libcairo.so.2" os="!windows"/>
- 	<dllmap dll="libcairo-2.dll" target="libcairo.2.dylib" os="osx"/>
- 	<dllmap dll="libcups" target="libcups.so.2" os="!windows"/>
diff --git a/recipes-mono/mono/files/patch-mono-atomic-armv6.patch b/recipes-mono/mono/files/patch-mono-atomic-armv6.patch
deleted file mode 100644
index 151ae9d..0000000
--- a/recipes-mono/mono/files/patch-mono-atomic-armv6.patch
+++ /dev/null
@@ -1,66 +0,0 @@
-diff -ru mono-2.11.org/mono/io-layer/atomic.h mono-2.11/mono/io-layer/atomic.h
---- mono-2.11.org/mono/io-layer/atomic.h	2012-03-21 17:39:19.000000000 +0000
-+++ mono-2.11/mono/io-layer/atomic.h	2012-12-23 19:48:18.680623763 +0000
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
deleted file mode 100644
index 79f1b3e..0000000
--- a/recipes-mono/mono/mono-2.10.8.1.inc
+++ /dev/null
@@ -1,18 +0,0 @@
-SUMMARY = "An Open Source implementation of the Microsoft's .NET Framework"
-DESCRIPTION = "This is part of the Mono project - http://mono-project.com"
-HOMEPAGE = "http://mono-project.com"
-BUGTRACKER = "http://bugzilla.xamarin.com/"
-SECTION = "devel"
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=80862f3fd0e11a5fa0318070c54461ce"
-
-SRC_URI = "http://download.mono-project.com/sources/mono/mono-${PV}.tar.gz \
-           file://mono-2.10.8.1/Makefile.am.diff \
-           file://mono-2.10.8.1/data/config.in.diff \
-           file://mono-2.10.8.1/mcs/class/Makefile.diff"
-
-SRC_URI[md5sum] = "c7fd34d59f67e2a13e5421ba2441bc9d"
-SRC_URI[sha256sum] = "1dfc666f8b6e90079d9b290d7f9cf63c15bdbce23f0223cad3163c9c926c9040"
-
-CFLAGS_append += " -DARM_FPU_NONE=1 "
-
diff --git a/recipes-mono/mono/mono-2.10.8.1/Makefile.am.diff b/recipes-mono/mono/mono-2.10.8.1/Makefile.am.diff
deleted file mode 100644
index 04b30f9..0000000
--- a/recipes-mono/mono/mono-2.10.8.1/Makefile.am.diff
+++ /dev/null
@@ -1,15 +0,0 @@
---- mono-2.10.8.1.orig/Makefile.am	2012-01-25 14:24:43.564002232 -0500
-+++ mono-2.10.8.1/Makefile.am	2012-01-25 14:25:02.036002218 -0500
-@@ -4,10 +4,10 @@
- MOONLIGHT_SUBDIRS = $(libgc_dir) eglib/src mono
- 
- if CROSS_COMPILING
--SUBDIRS = po $(libgc_dir) eglib mono $(ikvm_native_dir) data runtime scripts man samples msvc $(docs_dir)
-+SUBDIRS = po $(libgc_dir) eglib mono $(ikvm_native_dir) support data runtime scripts man samples msvc $(docs_dir)
- # Keep in sync with SUBDIRS
- ## 'tools' is not normally built
--DIST_SUBDIRS = po libgc eglib mono ikvm-native         data runtime scripts man samples tools msvc docs
-+DIST_SUBDIRS = po libgc eglib mono ikvm-native support data runtime scripts man samples tools msvc docs
- else
- if ONLY_MOONLIGHT
- SUBDIRS = $(MOONLIGHT_SUBDIRS) runtime
diff --git a/recipes-mono/mono/mono-2.10.8.1/mcs/class/Makefile.diff b/recipes-mono/mono/mono-2.10.8.1/mcs/class/Makefile.diff
deleted file mode 100644
index c7a641b..0000000
--- a/recipes-mono/mono/mono-2.10.8.1/mcs/class/Makefile.diff
+++ /dev/null
@@ -1,13 +0,0 @@
---- mono-2.10.8.1.orig/mcs/class/Makefile	2012-01-27 16:20:36.319297999 -0500
-+++ mono-2.10.8.1/mcs/class/Makefile	2012-01-27 20:37:30.867593825 -0500
-@@ -55,10 +55,8 @@
- 	Novell.Directory.Ldap		\
- 	Mono.Security.Win32		\
- 	System.DirectoryServices	\
--	RabbitMQ.Client			\
- 	Mono.Messaging			\
- 	System.Messaging	        \
--	Mono.Messaging.RabbitMQ		\
- 	System.ServiceProcess           \
- 	System.Drawing.Design		\
- 	System.Design			\
diff --git a/recipes-mono/mono/mono-2.11.inc b/recipes-mono/mono/mono-3.2.8.inc
similarity index 58%
rename from recipes-mono/mono/mono-2.11.inc
rename to recipes-mono/mono/mono-3.2.8.inc
index 6d7578c..b7a3576 100644
--- a/recipes-mono/mono/mono-2.11.inc
+++ b/recipes-mono/mono/mono-3.2.8.inc
@@ -4,14 +4,17 @@ HOMEPAGE = "http://mono-project.com"
 BUGTRACKER = "http://bugzilla.xamarin.com/"
 SECTION = "devel"
 LICENSE = "GPLv2"
+
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=80862f3fd0e11a5fa0318070c54461ce"
 
-SRC_URI = "http://download.mono-project.com/sources/mono/mono-${PV}.0.tar.bz2 \
-           file://mono-2.11/Makefile.am.diff \
-           file://mono-2.11/data/config.in.diff"
+inherit autotools 
 
-SRC_URI[md5sum] = "8f31f366da9f7e4b69ee23e8bf5b6b3d"
-SRC_URI[sha256sum] = "de6515a4e1f73229711eaa5557009ec59a676554f8d48c45fc88944afd720f85"
+SRC_URI = "http://download.mono-project.com/sources/mono/mono-${PV}.tar.bz2 \
+	   file://dllmap-config.in.diff \
+	   file://Makefile.am.diff \
+	  "
 
-CFLAGS_append += " -DARM_FPU_NONE=1 "
+SRC_URI[md5sum] = "1075f99bd8a69890af9e30309728e684"
+SRC_URI[sha256sum] = "fdb48cad26149288dcb99a3d9b4ec89735706000242c50bdc21ce657af201a40"
 
+FILESPATH =. "${FILE_DIRNAME}/mono-${PV}:"
diff --git a/recipes-mono/mono/files/mono-2.11/Makefile.am.diff b/recipes-mono/mono/mono-3.2.8/Makefile.am.diff
similarity index 100%
rename from recipes-mono/mono/files/mono-2.11/Makefile.am.diff
rename to recipes-mono/mono/mono-3.2.8/Makefile.am.diff
diff --git a/recipes-mono/mono/mono-2.10.8.1/data/config.in.diff b/recipes-mono/mono/mono-3.2.8/dllmap-config.in.diff
similarity index 43%
rename from recipes-mono/mono/mono-2.10.8.1/data/config.in.diff
rename to recipes-mono/mono/mono-3.2.8/dllmap-config.in.diff
index 1c921df..4c2107a 100644
--- a/recipes-mono/mono/mono-2.10.8.1/data/config.in.diff
+++ b/recipes-mono/mono/mono-3.2.8/dllmap-config.in.diff
@@ -1,5 +1,5 @@
---- mono-2.10.8.1.orig/data/config.in	2012-01-27 09:29:07.072001924 -0500
-+++ mono-2.10.8.1/data/config.in	2012-01-27 09:30:59.740001933 -0500
+--- git/data/config.in	2014-02-08 19:32:47.411898398 +0000
++++ git/data/config.in.new	2014-02-08 19:33:59.247898582 +0000
 @@ -15,7 +15,7 @@
  	<dllmap dll="i:msvcrt.dll" target="@LIBC@" os="!windows"/>
  	<dllmap dll="sqlite" target="@SQLITE@" os="!windows"/>
@@ -9,3 +9,12 @@
  	<dllmap dll="libcairo-2.dll" target="libcairo.so.2" os="!windows"/>
  	<dllmap dll="libcairo-2.dll" target="libcairo.2.dylib" os="osx"/>
  	<dllmap dll="libcups" target="libcups.so.2" os="!windows"/>
+@@ -26,6 +26,6 @@
+ 		<dllentry dll="__Internal" name="MoveMemory" target="mono_win32_compat_MoveMemory"/>
+ 		<dllentry dll="__Internal" name="ZeroMemory" target="mono_win32_compat_ZeroMemory"/>
+ 	</dllmap>
+-	<dllmap dll="gdiplus" target="@prefix@/lib/libgdiplus@libsuffix@" os="!windows"/>
+-	<dllmap dll="gdiplus.dll" target="@prefix@/lib/libgdiplus@libsuffix@"  os="!windows"/>
++	<dllmap dll="gdiplus" target="libgdiplus@libsuffix@" os="!windows"/>
++	<dllmap dll="gdiplus.dll" target="libgdiplus@libsuffix@"  os="!windows"/>
+ </configuration>
diff --git a/recipes-mono/mono/mono-native_2.10.8.1.bb b/recipes-mono/mono/mono-native_2.10.8.1.bb
deleted file mode 100644
index a73152f..0000000
--- a/recipes-mono/mono/mono-native_2.10.8.1.bb
+++ /dev/null
@@ -1,17 +0,0 @@
-require mono-2.10.8.1.inc
-
-inherit native autotools
-
-PR = "r1"
-
-EXTRA_OECONF += "mono_cv_uscore=no --with-tls=pthread --with-sigaltstack=no --with-mcs-docs=no"
-
-do_configure_prepend() {
-    autoreconf -Wcross --verbose --install --force || bbnote "mono-native failed to autoreconf"
-    sed -e "s/libtool/${BUILD_SYS}-libtool/" -i runtime/monodis-wrapper.in
-    sed -e "s/libtool/${BUILD_SYS}-libtool/" -i runtime/mono-wrapper.in
-	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i acinclude.m4
-	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i libgc/acinclude.m4
-	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i eglib/acinclude.m4
-}
-
diff --git a/recipes-mono/mono/mono-native_2.11.bb b/recipes-mono/mono/mono-native_2.11.bb
deleted file mode 100644
index 8b4f9f6..0000000
--- a/recipes-mono/mono/mono-native_2.11.bb
+++ /dev/null
@@ -1,21 +0,0 @@
-require mono-2.11.inc
-
-inherit native autotools
-
-PR = "r1"
-
-EXTRA_OECONF += "mono_cv_uscore=no --with-tls=pthread --with-sigaltstack=no --with-mcs-docs=no"
-
-do_configure_prepend() {
-    autoreconf -Wcross --verbose --install --force || bbnote "mono-native failed to autoreconf"
-    sed -e "s/libtool/${BUILD_SYS}-libtool/" -i runtime/monodis-wrapper.in
-    sed -e "s/libtool/${BUILD_SYS}-libtool/" -i runtime/mono-wrapper.in
-	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i acinclude.m4
-	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i libgc/acinclude.m4
-	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i eglib/acinclude.m4
-}
-
-#
-# Add patch to remove armv6 define() in atomic.h (breaks compiler for armv6)
-#
-SRC_URI += "file://patch-mono-native-atomic-armv6.patch"
diff --git a/recipes-mono/mono/mono-native_3.2.8.bb b/recipes-mono/mono/mono-native_3.2.8.bb
new file mode 100644
index 0000000..50d085d
--- /dev/null
+++ b/recipes-mono/mono/mono-native_3.2.8.bb
@@ -0,0 +1,16 @@
+require mono-${PV}.inc
+
+inherit native
+
+PR = "r1"
+
+EXTRA_OECONF += "mono_cv_uscore=no --with-sigaltstack=no --with-mcs-docs=no"
+
+do_configure_prepend() {
+    ${S}/autogen.sh --verbose || bbnote "mono-native failed to autogen.sh"
+}
+
+do_compile() {
+    make get-monolite-latest
+    make EXTERNAL_MCS="${S}/mcs/class/lib/monolite/basic.exe"
+}
diff --git a/recipes-mono/mono/mono_2.10.8.1.bb b/recipes-mono/mono/mono_2.10.8.1.bb
deleted file mode 100644
index 394d9ff..0000000
--- a/recipes-mono/mono/mono_2.10.8.1.bb
+++ /dev/null
@@ -1,30 +0,0 @@
-require mono-2.10.8.1.inc
-
-inherit autotools pkgconfig
-
-DEPENDS =+ "mono-native libgdiplus"
-
-PR = "r0"
-
-EXTRA_OECONF += "--disable-mcs-build mono_cv_uscore=no --with-tls=pthread --with-sigaltstack=no --with-mcs-docs=no"
-
-do_configure_prepend() {
-	autoreconf -Wcross --verbose --install --force || bbnote "mono failed to autoreconf"
-	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i acinclude.m4
-	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i libgc/acinclude.m4
-	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i eglib/acinclude.m4
-}
-
-do_install_append() {
-	mkdir -p ${D}/etc/
-	mkdir -p ${D}/usr/lib/
-	cp -af ${STAGING_DIR_NATIVE}/etc/mono ${D}/etc/
-	cp -af ${STAGING_DIR_NATIVE}/usr/lib/mono ${D}/usr/lib/
-}
-
-FILES_${PN} += "${libdir}/libikvm-native.so"
-FILES_${PN} += "${libdir}/libMonoPosixHelper.so"
-FILES_${PN} += "${libdir}/libMonoSupportW.so"
-
-INSANE_SKIP_${PN} = "arch dev-so debug-files"
-
diff --git a/recipes-mono/mono/mono_2.11.bb b/recipes-mono/mono/mono_3.2.8.bb
similarity index 59%
rename from recipes-mono/mono/mono_2.11.bb
rename to recipes-mono/mono/mono_3.2.8.bb
index fa55e1b..9c15864 100644
--- a/recipes-mono/mono/mono_2.11.bb
+++ b/recipes-mono/mono/mono_3.2.8.bb
@@ -1,18 +1,19 @@
-require mono-2.11.inc
+require mono-${PV}.inc
 
-inherit autotools pkgconfig
+inherit pkgconfig
 
 DEPENDS =+ "mono-native libgdiplus"
 
-PR = "r0"
+PR = "r1"
 
-EXTRA_OECONF += "--disable-mcs-build mono_cv_clang=no mono_cv_uscore=no --with-tls=pthread --with-sigaltstack=no --with-mcs-docs=no"
+EXTRA_OECONF += "--disable-mcs-build mono_cv_clang=no mono_cv_uscore=no --with-sigaltstack=no --with-mcs-docs=no"
 
 do_configure_prepend() {
-	autoreconf -Wcross --verbose --install --force || bbnote "mono failed to autoreconf"
+	${S}/autogen.sh --verbose || bbnote "mono-native failed to autogen.sh"
+
 	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i acinclude.m4
-	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i libgc/acinclude.m4
-	sed -e "s/slash\}libtool/slash\}${HOST_SYS}-libtool/" -i eglib/acinclude.m4
+	sed -e "s/slash\}libtool/slash\}..\/${HOST_SYS}-libtool/" -i libgc/acinclude.m4
+    	sed -e "s/slash\}libtool/slash\}..\/${HOST_SYS}-libtool/" -i eglib/acinclude.m4
 }
 
 do_install_append() {
@@ -22,6 +23,9 @@ do_install_append() {
 	cp -af ${STAGING_DIR_NATIVE}/usr/lib/mono  ${D}/usr/lib/
 	# AJL - Remove mscorlib.dll.so and mcs.exe.so files copied from mono-native to the mono destination
 	find ${D}/usr/lib/ -name *.dll.so -o -name *.exe.so | xargs -i rm {} 
+        # AJL - Remove extraneous files (might want to package these elsewhere in future?)
+        rm -Rf ${D}/usr/share/mono-2.0
+        rm -Rf ${D}/usr/share/libgc-mono
 }
 
 FILES_${PN} += "${libdir}/libikvm-native.so"
@@ -30,8 +34,4 @@ FILES_${PN} += "${libdir}/libMonoSupportW.so"
 
 INSANE_SKIP_${PN} = "arch dev-so debug-files"
 
-#
-# Add patch to remove armv6 define() in atomic.h (breaks compiler for armv6)
-#
-SRC_URI += " file://patch-mono-atomic-armv6.patch"
 
-- 
1.7.9.5


