Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29B83E004CF
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2011 16:15:51 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Sep 2011 16:15:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,383,1312182000"; d="scan'208";a="53491064"
Received: from unknown (HELO localhost) ([10.255.14.200])
	by fmsmga002.fm.intel.com with ESMTP; 14 Sep 2011 16:15:50 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Wed, 14 Sep 2011 18:15:37 -0500
Message-Id: <c081ed51d8ba76c293bcd2afdad8cbfef556cf49.1316041909.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1316041909.git.tom.zanussi@intel.com>
References: <cover.1316041909.git.tom.zanussi@intel.com>
Subject: [PATCH 1/4] meta-intel/common: remove grub-1.98
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Sep 2011 04:05:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This has been moved into oe-core, so remove it from meta-intel.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 common/recipes-bsp/grub/grub-1.98/40_custom        |    9 ---
 .../grub/grub-1.98/gentrigtables-compile-fix.patch |   52 --------------------
 .../grub/grub-1.98/grub-install.in.patch           |   13 -----
 .../grub/grub-1.98/uninit-shdr-fix.patch           |   31 ------------
 common/recipes-bsp/grub/grub_1.98.bb               |   46 -----------------
 5 files changed, 0 insertions(+), 151 deletions(-)
 delete mode 100755 common/recipes-bsp/grub/grub-1.98/40_custom
 delete mode 100644 common/recipes-bsp/grub/grub-1.98/gentrigtables-compile-fix.patch
 delete mode 100644 common/recipes-bsp/grub/grub-1.98/grub-install.in.patch
 delete mode 100644 common/recipes-bsp/grub/grub-1.98/uninit-shdr-fix.patch
 delete mode 100644 common/recipes-bsp/grub/grub_1.98.bb

diff --git a/common/recipes-bsp/grub/grub-1.98/40_custom b/common/recipes-bsp/grub/grub-1.98/40_custom
deleted file mode 100755
index 30dad39..0000000
--- a/common/recipes-bsp/grub/grub-1.98/40_custom
+++ /dev/null
@@ -1,9 +0,0 @@
-#!/bin/sh
-exec tail -n +3 $0
-# This file provides an easy way to add custom menu entries.  Simply type the
-# menu entries you want to add after this comment.  Be careful not to change
-# the 'exec tail' line above.
-menuentry "Yocto Linux" {
-    set root=(hd0,1)
-    linux /boot/vmlinuz root=__ROOTFS__ rw __VIDEO_MODE__ __VGA_MODE__ quiet
-}
diff --git a/common/recipes-bsp/grub/grub-1.98/gentrigtables-compile-fix.patch b/common/recipes-bsp/grub/grub-1.98/gentrigtables-compile-fix.patch
deleted file mode 100644
index d09ecf5..0000000
--- a/common/recipes-bsp/grub/grub-1.98/gentrigtables-compile-fix.patch
+++ /dev/null
@@ -1,52 +0,0 @@
-Index: grub-1.98/conf/any-emu.mk
-===================================================================
---- grub-1.98.orig/conf/any-emu.mk	2011-02-24 00:54:20.825116207 -0600
-+++ grub-1.98/conf/any-emu.mk	2011-02-24 00:55:55.465116194 -0600
-@@ -820,7 +820,7 @@
- 	./gentrigtables > $@
- DISTCLEANFILES += trigtables.c
- gentrigtables: gentrigtables.c
--	$(CC) -o $@ $^ $(CPPFLAGS) -lm
-+	$(BUILD_CC) -o $@ $^ $(BUILD_CPPFLAGS) -I${top_srcdir}/include -lm
- DISTCLEANFILES += gentrigtables
- 
- # For grub-mkfont.
-Index: grub-1.98/conf/any-emu.rmk
-===================================================================
---- grub-1.98.orig/conf/any-emu.rmk	2011-02-24 00:54:24.565116208 -0600
-+++ grub-1.98/conf/any-emu.rmk	2011-02-24 00:56:40.665116186 -0600
-@@ -110,7 +110,7 @@
- 	./gentrigtables > $@
- DISTCLEANFILES += trigtables.c
- gentrigtables: gentrigtables.c
--	$(CC) -o $@ $^ $(CPPFLAGS) -lm
-+	$(BUILD_CC) -o $@ $^ $(BUILD_CPPFLAGS) -I${top_srcdir}/include -lm
- DISTCLEANFILES += gentrigtables
- 
- # For grub-mkfont.
-Index: grub-1.98/conf/common.mk
-===================================================================
---- grub-1.98.orig/conf/common.mk	2011-02-24 00:54:30.345116207 -0600
-+++ grub-1.98/conf/common.mk	2011-02-24 00:57:08.415116181 -0600
-@@ -11159,7 +11159,7 @@
- 	./gentrigtables > $@
- DISTCLEANFILES += trigtables.c
- gentrigtables: gentrigtables.c
--	$(CC) -o $@ $^ $(CPPFLAGS) -lm
-+	$(BUILD_CC) -o $@ $^ $(BUILD_CPPFLAGS) -I${top_srcdir}/include -lm
- DISTCLEANFILES += gentrigtables
- 
- pkglib_MODULES += setjmp.mod
-Index: grub-1.98/conf/common.rmk
-===================================================================
---- grub-1.98.orig/conf/common.rmk	2011-02-24 00:54:34.035116205 -0600
-+++ grub-1.98/conf/common.rmk	2011-02-24 00:57:31.045116179 -0600
-@@ -736,7 +736,7 @@
- 	./gentrigtables > $@
- DISTCLEANFILES += trigtables.c
- gentrigtables: gentrigtables.c
--	$(CC) -o $@ $^ $(CPPFLAGS) -lm
-+	$(BUILD_CC) -o $@ $^ $(BUILD_CPPFLAGS) -I${top_srcdir}/include -lm
- DISTCLEANFILES += gentrigtables
- 
- pkglib_MODULES += setjmp.mod
diff --git a/common/recipes-bsp/grub/grub-1.98/grub-install.in.patch b/common/recipes-bsp/grub/grub-1.98/grub-install.in.patch
deleted file mode 100644
index ac96419..0000000
--- a/common/recipes-bsp/grub/grub-1.98/grub-install.in.patch
+++ /dev/null
@@ -1,13 +0,0 @@
-Index: grub-1.98/util/grub-install.in
-===================================================================
---- grub-1.98.orig/util/grub-install.in	2011-01-25 23:47:05.587521825 -0600
-+++ grub-1.98/util/grub-install.in	2011-01-25 23:47:23.867521822 -0600
-@@ -306,7 +306,7 @@
- 
- if [ "x${devabstraction_module}" = "x" ] ; then
-     if [ x"${install_device}" != x ]; then
--      if echo "${install_device}" | grep -qx "(.*)" ; then
-+      if echo "${install_device}" | grep -q "(.*)" ; then
-         install_drive="${install_device}"
-       else
-         install_drive="`$grub_probe --target=drive --device ${install_device}`"
diff --git a/common/recipes-bsp/grub/grub-1.98/uninit-shdr-fix.patch b/common/recipes-bsp/grub/grub-1.98/uninit-shdr-fix.patch
deleted file mode 100644
index 67af594..0000000
--- a/common/recipes-bsp/grub/grub-1.98/uninit-shdr-fix.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-Index: grub-1.98/loader/i386/bsdXX.c
-===================================================================
---- grub-1.98.orig/loader/i386/bsdXX.c	2011-01-25 00:12:14.967535179 -0600
-+++ grub-1.98/loader/i386/bsdXX.c	2011-01-25 00:13:16.387535169 -0600
-@@ -80,7 +80,7 @@
- {
-   Elf_Ehdr e;
-   Elf_Shdr *s;
--  char *shdr;
-+  char *shdr = NULL;
-   grub_addr_t curload, module;
-   grub_err_t err;
- 
-@@ -148,7 +148,7 @@
- {
-   Elf_Ehdr e;
-   Elf_Shdr *s;
--  char *shdr;
-+  char *shdr = NULL;
-   grub_addr_t curload, module;
-   grub_err_t err;
- 
-@@ -223,7 +223,7 @@
-   grub_err_t err;
-   Elf_Ehdr e;
-   Elf_Shdr *s;
--  char *shdr;
-+  char *shdr = NULL;
-   unsigned symoff, stroff, symsize, strsize;
-   grub_addr_t curload;
-   grub_freebsd_addr_t symstart, symend, symentsize, dynamic;
diff --git a/common/recipes-bsp/grub/grub_1.98.bb b/common/recipes-bsp/grub/grub_1.98.bb
deleted file mode 100644
index 1b3040b..0000000
--- a/common/recipes-bsp/grub/grub_1.98.bb
+++ /dev/null
@@ -1,46 +0,0 @@
-SUMMARY = "GRUB2 is the next-generation GRand Unified Bootloader"
-
-DESCRIPTION = "GRUB2 is the next generaion of a GPLed bootloader \
-intended to unify bootloading across x86 operating systems. In \
-addition to loading the Linux kernel, it implements the Multiboot \
-standard, which allows for flexible loading of multiple boot images."
-
-HOMEPAGE = "http://www.gnu.org/software/grub/"
-SECTION = "bootloaders"
-PRIORITY = "optional"
-
-LICENSE = "GPLv3"
-LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
-
-RDEPENDS = "diffutils freetype"
-PR = "r1"
-
-SRC_URI = "ftp://alpha.gnu.org/gnu/grub/grub-${PV}.tar.gz \
-          file://uninit-shdr-fix.patch;apply=yes \
-          file://grub-install.in.patch;apply=yes \
-          file://gentrigtables-compile-fix.patch;apply=yes \
-          file://40_custom"
-
-inherit autotools
-inherit gettext
-
-EXTRA_OECONF = "--with-platform=pc --target=i386 --disable-grub-mkfont"
-
-do_configure() {
-    oe_runconf
-}
-
-python __anonymous () {
-    import re
-    host = bb.data.getVar('HOST_SYS', d, 1)
-    if not re.match('x86.64.*-linux', host):
-        raise bb.parse.SkipPackage("incompatible with host %s" % host)
-}
-
-do_install_append () {
-    install -m 0755 ${WORKDIR}/40_custom ${D}${sysconfdir}/grub.d/40_custom
-}
-
-FILES_${PN}-doc = "${datadir}"
-FILES_${PN} = "/usr /etc"
-
-- 
1.7.0.4


