Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web09.10033.1620151923837092572
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 11:12:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gTuN+EGj;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id x188so6615187pfd.7
        for <yocto@lists.yoctoproject.org>; Tue, 04 May 2021 11:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xcukupmzDuMVC4bpT9SZ9FMDI0xmBn421uyQi7C32G8=;
        b=gTuN+EGjbe7juejEIuiZXXUJ8P3mkxgy0p+LhUD6gW6o7z0MmxiIgITdNWv32LwERC
         lTJegc8yhAclKHSMFxwvUuFS/beLv4kSECwjSlghkQpMGRVu4M9wpUraQ0aIa0kDZP/U
         cW8y6ICGGYxv+cj+/jtxBjISNom9hGdbRudxeip177InC47yR4KzC+W1s0xNbNspciVZ
         Fl9EEtabN0jU77M8Pg9XrmWx/qAdxSiK8ORCSD9vCxU3Zp3HNvEg8M8+ZniBl1UiPkP7
         0LNSdvfhbYsmAiJA4Y0/s6EBH++jBS8Hm8bNzGdqcgNJwXP0yBHK1zLsMWFcUNT5Dso4
         ViYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xcukupmzDuMVC4bpT9SZ9FMDI0xmBn421uyQi7C32G8=;
        b=Z/mqQ/2UBJlBY/SHPGnL4geCPj6Cay5ryFlwMj4pedMBcZ+CZavixW5zL/4oMRHLcJ
         tJ7vCVyKGvszaMIlzhlKA4VYbG6rNiO4kdA9mDtgWkKmgNKdl+MOEaaCyNvCW+vDf7kL
         PSJXONdXqYOucosAusf0CBrYqmHwTLO7vIlJSdBVCRYwzGAv3vcRSROGojAHKYUl+zhq
         i/VPL71IQvg00Y6oVvxjJuO0Ah3Aad/J8RpD4z160MIMvCv5OHtgVhtQfn7MtEJ6jCQW
         MyNsKowFv50F5ZGJCpFInwXV2uSe+xOHP58gpykj4HBX1zv/E4TaTWyFm6PDTg70CvDp
         P5GA==
X-Gm-Message-State: AOAM530iMu6MNE1RAAVKJmC7BaPZxoVkk19lUbKdxTeBh32XG09Hpukw
	SXnAfbg+k1ODOBkpueQxqRbQqzM7V2Cz1w==
X-Google-Smtp-Source: ABdhPJwe9sQw55rnygW0M0LvDlmiEfto5oPwSq/ZjhcxVuPmHgnajAuhbxjqb81Gj+H6XKhqKmxPOA==
X-Received: by 2002:a17:90a:bd13:: with SMTP id y19mr6919437pjr.181.1620151922765;
        Tue, 04 May 2021 11:12:02 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::a7ac])
        by smtp.gmail.com with ESMTPSA id y1sm4002914pgl.88.2021.05.04.11.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 11:12:02 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH v2] mingw-libgnurx: Add recipe
Date: Tue,  4 May 2021 11:11:58 -0700
Message-Id: <20210504181158.2745659-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This implements glibc regex and will be used by many
packages e.g. flex, therefore add recipe

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
v2: Remove redundant comment

 ...onor-DESTDIR-variable-during-install.patch |  39 ++++++
 .../0002-Add-autotool-files.patch             | 125 ++++++++++++++++++
 .../mingw-libgnurx/mingw-libgnurx_2.5.1.bb    |  17 +++
 3 files changed, 181 insertions(+)
 create mode 100644 recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch
 create mode 100644 recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch
 create mode 100644 recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb

diff --git a/recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch b/recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch
new file mode 100644
index 0000000..ea8d9ed
--- /dev/null
+++ b/recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch
@@ -0,0 +1,39 @@
+From a9b7e07a8ba9c390d9774daae769748a09d409ce Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sat, 1 May 2021 14:41:21 -0700
+Subject: [PATCH] Honor DESTDIR variable during install
+
+Upstream-Status: Pending
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ Makefile.in | 14 +++++++-------
+ 1 file changed, 7 insertions(+), 7 deletions(-)
+
+diff --git a/Makefile.in b/Makefile.in
+index 6397bf1..8395d2f 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -78,16 +78,16 @@ gnurx.lib: libgnurx-$(DLLVERSION).dll
+ install: install-dll @install_dev@
+ 
+ install-dll:
+-	mkdir -p ${bindir}
+-	cp -p $(BINDIST_FILES) ${bindir}
++	mkdir -p $(DESTDIR)${bindir}
++	cp -p $(BINDIST_FILES) $(DESTDIR)${bindir}
+ 
+ install-dev:
+-	mkdir -p ${includedir} ${libdir}
+-	cp -p ${srcdir}/regex.h ${includedir}
+-	cp -p $(DEVDIST_FILES) ${libdir}
++	mkdir -p ${includedir} $(DESTDIR)${libdir}
++	cp -p ${srcdir}/regex.h $(DESTDIR)${includedir}
++	cp -p $(DEVDIST_FILES) $(DESTDIR)${libdir}
+ 	for s in 3 7; do \
+-	  mkdir -p ${mandir}/man$$s; \
+-	  gzip -c ${srcdir}/regex.$$s > ${mandir}/man$$s/regex.$$s.gz; \
++	  mkdir -p $(DESTDIR)${mandir}/man$$s; \
++	  gzip -c ${srcdir}/regex.$$s > $(DESTDIR)${mandir}/man$$s/regex.$$s.gz; \
+ 	done
+ 
+ dist:	 bindist devdist srcdist
diff --git a/recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch b/recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch
new file mode 100644
index 0000000..1365f24
--- /dev/null
+++ b/recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch
@@ -0,0 +1,125 @@
+From 0b74bbc32c4acf5b67d7568a5d1e776fe6578202 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sat, 1 May 2021 14:53:09 -0700
+Subject: [PATCH] Add autotool files
+
+This helps in reconfiguring the component with autotools on Linux
+
+Upstream-Status: Pending
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ Makefile.am  |  7 ++++
+ configure.ac | 90 ++++++----------------------------------------------
+ 2 files changed, 16 insertions(+), 81 deletions(-)
+ create mode 100644 Makefile.am
+
+diff --git a/Makefile.am b/Makefile.am
+new file mode 100644
+index 0000000..be0a797
+--- /dev/null
++++ b/Makefile.am
+@@ -0,0 +1,7 @@
++lib_LTLIBRARIES = libgnurx.la
++ 
++libgnurx_la_SOURCES = regex.c
++libgnurx_la_includedir = $(includedir)
++libgnurx_la_include_HEADERS = regex.h
++libgnurx_la_CFLAGS = -I$(top_srcdir)
++libgnurx_la_LDFLAGS = -no-undefined -version-info 0:0:0 -export-dynamic
+diff --git a/configure.ac b/configure.ac
+index c97738d..de64f75 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -1,83 +1,11 @@
+ # configure.ac  -*- Autoconf -*-
+ # Process this file with autoconf, to generate a configure script.
+-#
+-# $Id: configure.ac,v 1.2 2007/05/03 22:46:09 keithmarshall Exp $
+-#
+-# Copyright (C) 2007, MinGW Project
+-# Written by Keith Marshall <keithmarshall@users.sourceforge.net>
+-#
+-# Package identification.
+-#
+-# This is configure.ac for the MinGW `libgnurx' package.
+-# BASENAME, VERSION_MAJOR and VERSION_MINOR are required tags;
+-# complete `Value' fields as appropriate.
+-#
+-#                            Tag              Value
+-#                            ---------------  ----------
+-  MINGW_AC_DEFINE_PACKAGE_ID([BASENAME],      [libgnurx])
+-  MINGW_AC_DEFINE_PACKAGE_ID([VERSION_MAJOR], [2])
+-  MINGW_AC_DEFINE_PACKAGE_ID([VERSION_MINOR], [5])
+-#
+-# PATCHLEVEL is optional; comment/uncomment and adjust as required.
+-#
+-  MINGW_AC_DEFINE_PACKAGE_ID([PATCHLEVEL],    [1])
+-#
+-# DLL_VERSION is required; installed DLLs will be versioned, by
+-# appending a hyphen, the specified tag value, and then the `.dll'
+-# file name extension, to the base name of each generated DLL.
+-#
+-  MINGW_AC_DEFINE_PACKAGE_ID([DLL_VERSION],   [0])
+-#
+-#
+-# libgnurx is an adaptation of Tor Lillqvist's original port of the
+-# regex functions from GNU libc, for use on native Woe32 platforms.
+-#
+-# The original sources, on which this port is based, remain copyright
+-# of their respective authors, or of the Free Software Foundation Inc.,
+-# as indicated in individual file headers; all are redistributed with
+-# permission, as granted by the GNU Lesser General Public License.
+-#
+-# This is free software.  It is provided AS IS, in the hope that it may
+-# be useful, but WITHOUT WARRANTY OF ANY KIND, not even an IMPLIED WARRANTY
+-# of MERCHANTABILITY, nor of FITNESS FOR ANY PARTICULAR PURPOSE.
+-#
+-# Permission is granted to redistribute this software, either "as is" or
+-# in modified form, under the terms of the GNU Lesser General Public License,
+-# as published by the Free Software Foundation; either version 2.1, or (at
+-# your option) any later version.
+-#
+-# You should have received a copy of the GNU Lesser General Public License
+-# along with this software; see the file COPYING.LIB.  If not, write to the
+-# Free Software Foundation, 51 Franklin St - Fifth Floor, Boston,
+-# MA 02110-1301, USA.
+-
+-# Autoconf initialisation.
+-#
+-  AC_PREREQ([2.59])
+-  AC_INIT(__MINGW_AC_PACKAGE_IDENTIFICATION__)
+-
+-# Compiler and build tool checks.
+-#
+-  AC_PROG_CC
+-  MINGW_AC_PROG_CC_OPTIONS([CC_QUALIFIED], [-m], [threads tune=pentium3])
+-
+-# Set the release version for the resultant DLL.
+-#
+-  AC_SUBST([DLLVERSION], [__MINGW_AC_PACKAGE_DLL_VERSION__])
+-
+-# User configuration options.
+-#
+-  MINGW_AC_DISTRIBUTION_TYPE([tar])
+-  MINGW_AC_MSVC_IMPORT_LIBS([GNURX_LIB], [gnurx.lib])
+-  MINGW_AC_DEV_INSTALL_OPTION
+-
+-# Configuration output.
+-#
+-  AC_SUBST([GNURX_LIB])
+-  AC_SUBST([CC_QUALIFIED], ["$CC $CC_QUALIFIED"])
+-  LDFLAGS="$LDFLAGS -Wl,--enable-auto-image-base -Wl,--out-implib,libgnurx.dll.a"
+-  test -n "${GNURX_LIB}" && LDFLAGS="$LDFLAGS -Wl,--output-def,libgnurx.def"
+-  AC_CONFIG_FILES([Makefile])
+-  AC_OUTPUT
+-#
+-# $RCSfile: configure.ac,v $Revision: 1.2 $: end of file
++ 
++AC_INIT(libgnurx, 2.5.1)
++AM_INIT_AUTOMAKE(foreign)
++AC_PROG_INSTALL
++AC_LIBTOOL_DLOPEN
++AC_LIBTOOL_WIN32_DLL
++AC_PROG_LIBTOOL
++ 
++AC_OUTPUT([Makefile])
diff --git a/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb b/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
new file mode 100644
index 0000000..ca5bbf9
--- /dev/null
+++ b/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
@@ -0,0 +1,17 @@
+# Copyright (C) 2021 Khem Raj <raj.khem@gmail.com>
+# Released under the MIT license (see COPYING.MIT for the terms)
+LICENSE = "LGPLv2.1"
+LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=bbb461211a33b134d42ed5ee802b37ff"
+
+SRC_URI = "http://download.sourceforge.net/mingw/Other/UserContributed/regex/mingw-regex-${PV}/mingw-libgnurx-${PV}-src.tar.gz \
+           file://0001-Honor-DESTDIR-variable-during-install.patch \
+           file://0002-Add-autotool-files.patch \
+           "
+SRC_URI[sha256sum] = "7147b7f806ec3d007843b38e19f42a5b7c65894a57ffc297a76b0dcd5f675d76"
+
+inherit autotools
+
+# Specify any options you want to pass to the configure script using EXTRA_OECONF:
+EXTRA_OECONF = ""
+
+BBCLASSEXTEND = "nativesdk"
-- 
2.31.1

