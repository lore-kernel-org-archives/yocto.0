Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web10.9993.1620152090816449242
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 11:14:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sPbHFPwB;
 spf=pass (domain: gmail.com, ip: 209.85.222.181, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f181.google.com with SMTP id i67so6392226qkc.4
        for <yocto@lists.yoctoproject.org>; Tue, 04 May 2021 11:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FphcMzQ0jbWl3vuQ0IAnsdeCztfogSczrq/83tZhf70=;
        b=sPbHFPwBfRvSbFuZJCQbWWqmqxgExIQb0OX+mR4uYJP9rbXkht7RbsPWJW3HrLbUf4
         OHfjC5YIp8P4JR/acvNEF8dFAbKc0LfGLsmB6iiEk2S7hHhBBt56VIzcgrqHyq4BcDW0
         OGSGVyCllPbHkoDc+gz0krZvbPMA6hmEEBh5UXXYbv7fnnlA7z3Pq4jhg8I87NcCNi1z
         ZmyvtmFs9j4tzuwL5iVcZepmH11LfsphVq5pK6iXNiDIooziKVzT20UsK1JNdhalUklh
         jmfkxKCUzUF0XGqZ5t5amRXU7TdMV6uanYJx1LCsQc2cf94qxrW0Y+bWhbxyGyxIoccV
         y1FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FphcMzQ0jbWl3vuQ0IAnsdeCztfogSczrq/83tZhf70=;
        b=THHbMjznWkLWb1Os+O+w5eEd5sKUrKlnA0k4wKmL27wTE0/vh+TYAg+cQaTcTa8H0b
         pEW4LWxYXtquVO2C5+8a6LzX+CS7FlgoZgetnEwKEhDhzD2A5Jp/vnZbN9CUkkCb/A38
         bhjBl131FDltwVNqAEoUvo7j9P27wr7ERdzSSV4FlEBqK5/1NORjKHWCvnj+6yqyt+Ov
         67SoifQRDZW9q1FUZxsvW32YosgID/BKceo+dyZBQoxDryG+WgO1o+rM6Yk5b8DZDTKB
         X7EnJgDll+Q6FeJnlErlnEZjtgs600jhkjUEIUsXFpnPrtBJu/RO6P3Z9eRI6m5znuu9
         uyyA==
X-Gm-Message-State: AOAM531Yxb/PdQ0Li0LGrcchw8fFGK1K7iZWUR/Up56rEW6zcvp9QXUA
	gm9TdjbLVqqQiLOIr8B77rYThPPSCj572tuPXxY=
X-Google-Smtp-Source: ABdhPJys0U0DriB6ePQnEP3XeoJhSRs8S0BU2ERX+2bDf7ZxLPmFa9Z5E+dkA07zlI++5B84VkEPMkAlGStlq2zR8FI=
X-Received: by 2002:a37:8ec4:: with SMTP id q187mr26211990qkd.381.1620152089825;
 Tue, 04 May 2021 11:14:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210504175946.2741568-1-raj.khem@gmail.com> <3a67e08e-59e1-db4d-b57b-5ebdfa814676@gmail.com>
In-Reply-To: <3a67e08e-59e1-db4d-b57b-5ebdfa814676@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 4 May 2021 11:14:23 -0700
Message-ID: <CAMKF1sqSgex_HbZVzdmFPxvoawGRHQzTJvunqLOzA9qnxhZ_dg@mail.gmail.com>
Subject: Re: [meta-mingw] [PATCH] mingw-libgnurx: Add recipe
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, May 4, 2021 at 11:06 AM Joshua Watt <jpewhacker@gmail.com> wrote:
>
>
> On 5/4/21 12:59 PM, Khem Raj wrote:
> > This implements glibc regex and will be used by many
> > packages e.g. flex, therefore add recipe
> >
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ---
> >   ...onor-DESTDIR-variable-during-install.patch |  39 ++++++
> >   .../0002-Add-autotool-files.patch             | 125 ++++++++++++++++++
> >   .../mingw-libgnurx/mingw-libgnurx_2.5.1.bb    |  20 +++
> >   3 files changed, 184 insertions(+)
> >   create mode 100644 recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch
> >   create mode 100644 recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch
> >   create mode 100644 recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
> >
> > diff --git a/recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch b/recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch
> > new file mode 100644
> > index 0000000..ea8d9ed
> > --- /dev/null
> > +++ b/recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch
> > @@ -0,0 +1,39 @@
> > +From a9b7e07a8ba9c390d9774daae769748a09d409ce Mon Sep 17 00:00:00 2001
> > +From: Khem Raj <raj.khem@gmail.com>
> > +Date: Sat, 1 May 2021 14:41:21 -0700
> > +Subject: [PATCH] Honor DESTDIR variable during install
> > +
> > +Upstream-Status: Pending
> > +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > +---
> > + Makefile.in | 14 +++++++-------
> > + 1 file changed, 7 insertions(+), 7 deletions(-)
> > +
> > +diff --git a/Makefile.in b/Makefile.in
> > +index 6397bf1..8395d2f 100644
> > +--- a/Makefile.in
> > ++++ b/Makefile.in
> > +@@ -78,16 +78,16 @@ gnurx.lib: libgnurx-$(DLLVERSION).dll
> > + install: install-dll @install_dev@
> > +
> > + install-dll:
> > +-    mkdir -p ${bindir}
> > +-    cp -p $(BINDIST_FILES) ${bindir}
> > ++    mkdir -p $(DESTDIR)${bindir}
> > ++    cp -p $(BINDIST_FILES) $(DESTDIR)${bindir}
> > +
> > + install-dev:
> > +-    mkdir -p ${includedir} ${libdir}
> > +-    cp -p ${srcdir}/regex.h ${includedir}
> > +-    cp -p $(DEVDIST_FILES) ${libdir}
> > ++    mkdir -p ${includedir} $(DESTDIR)${libdir}
> > ++    cp -p ${srcdir}/regex.h $(DESTDIR)${includedir}
> > ++    cp -p $(DEVDIST_FILES) $(DESTDIR)${libdir}
> > +     for s in 3 7; do \
> > +-      mkdir -p ${mandir}/man$$s; \
> > +-      gzip -c ${srcdir}/regex.$$s > ${mandir}/man$$s/regex.$$s.gz; \
> > ++      mkdir -p $(DESTDIR)${mandir}/man$$s; \
> > ++      gzip -c ${srcdir}/regex.$$s > $(DESTDIR)${mandir}/man$$s/regex.$$s.gz; \
> > +     done
> > +
> > + dist:        bindist devdist srcdist
> > diff --git a/recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch b/recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch
> > new file mode 100644
> > index 0000000..1365f24
> > --- /dev/null
> > +++ b/recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch
> > @@ -0,0 +1,125 @@
> > +From 0b74bbc32c4acf5b67d7568a5d1e776fe6578202 Mon Sep 17 00:00:00 2001
> > +From: Khem Raj <raj.khem@gmail.com>
> > +Date: Sat, 1 May 2021 14:53:09 -0700
> > +Subject: [PATCH] Add autotool files
> > +
> > +This helps in reconfiguring the component with autotools on Linux
> > +
> > +Upstream-Status: Pending
> > +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > +---
> > + Makefile.am  |  7 ++++
> > + configure.ac | 90 ++++++----------------------------------------------
> > + 2 files changed, 16 insertions(+), 81 deletions(-)
> > + create mode 100644 Makefile.am
> > +
> > +diff --git a/Makefile.am b/Makefile.am
> > +new file mode 100644
> > +index 0000000..be0a797
> > +--- /dev/null
> > ++++ b/Makefile.am
> > +@@ -0,0 +1,7 @@
> > ++lib_LTLIBRARIES = libgnurx.la
> > ++
> > ++libgnurx_la_SOURCES = regex.c
> > ++libgnurx_la_includedir = $(includedir)
> > ++libgnurx_la_include_HEADERS = regex.h
> > ++libgnurx_la_CFLAGS = -I$(top_srcdir)
> > ++libgnurx_la_LDFLAGS = -no-undefined -version-info 0:0:0 -export-dynamic
> > +diff --git a/configure.ac b/configure.ac
> > +index c97738d..de64f75 100644
> > +--- a/configure.ac
> > ++++ b/configure.ac
> > +@@ -1,83 +1,11 @@
> > + # configure.ac  -*- Autoconf -*-
> > + # Process this file with autoconf, to generate a configure script.
> > +-#
> > +-# $Id: configure.ac,v 1.2 2007/05/03 22:46:09 keithmarshall Exp $
> > +-#
> > +-# Copyright (C) 2007, MinGW Project
> > +-# Written by Keith Marshall <keithmarshall@users.sourceforge.net>
> > +-#
> > +-# Package identification.
> > +-#
> > +-# This is configure.ac for the MinGW `libgnurx' package.
> > +-# BASENAME, VERSION_MAJOR and VERSION_MINOR are required tags;
> > +-# complete `Value' fields as appropriate.
> > +-#
> > +-#                            Tag              Value
> > +-#                            ---------------  ----------
> > +-  MINGW_AC_DEFINE_PACKAGE_ID([BASENAME],      [libgnurx])
> > +-  MINGW_AC_DEFINE_PACKAGE_ID([VERSION_MAJOR], [2])
> > +-  MINGW_AC_DEFINE_PACKAGE_ID([VERSION_MINOR], [5])
> > +-#
> > +-# PATCHLEVEL is optional; comment/uncomment and adjust as required.
> > +-#
> > +-  MINGW_AC_DEFINE_PACKAGE_ID([PATCHLEVEL],    [1])
> > +-#
> > +-# DLL_VERSION is required; installed DLLs will be versioned, by
> > +-# appending a hyphen, the specified tag value, and then the `.dll'
> > +-# file name extension, to the base name of each generated DLL.
> > +-#
> > +-  MINGW_AC_DEFINE_PACKAGE_ID([DLL_VERSION],   [0])
> > +-#
> > +-#
> > +-# libgnurx is an adaptation of Tor Lillqvist's original port of the
> > +-# regex functions from GNU libc, for use on native Woe32 platforms.
> > +-#
> > +-# The original sources, on which this port is based, remain copyright
> > +-# of their respective authors, or of the Free Software Foundation Inc.,
> > +-# as indicated in individual file headers; all are redistributed with
> > +-# permission, as granted by the GNU Lesser General Public License.
> > +-#
> > +-# This is free software.  It is provided AS IS, in the hope that it may
> > +-# be useful, but WITHOUT WARRANTY OF ANY KIND, not even an IMPLIED WARRANTY
> > +-# of MERCHANTABILITY, nor of FITNESS FOR ANY PARTICULAR PURPOSE.
> > +-#
> > +-# Permission is granted to redistribute this software, either "as is" or
> > +-# in modified form, under the terms of the GNU Lesser General Public License,
> > +-# as published by the Free Software Foundation; either version 2.1, or (at
> > +-# your option) any later version.
> > +-#
> > +-# You should have received a copy of the GNU Lesser General Public License
> > +-# along with this software; see the file COPYING.LIB.  If not, write to the
> > +-# Free Software Foundation, 51 Franklin St - Fifth Floor, Boston,
> > +-# MA 02110-1301, USA.
> > +-
> > +-# Autoconf initialisation.
> > +-#
> > +-  AC_PREREQ([2.59])
> > +-  AC_INIT(__MINGW_AC_PACKAGE_IDENTIFICATION__)
> > +-
> > +-# Compiler and build tool checks.
> > +-#
> > +-  AC_PROG_CC
> > +-  MINGW_AC_PROG_CC_OPTIONS([CC_QUALIFIED], [-m], [threads tune=pentium3])
> > +-
> > +-# Set the release version for the resultant DLL.
> > +-#
> > +-  AC_SUBST([DLLVERSION], [__MINGW_AC_PACKAGE_DLL_VERSION__])
> > +-
> > +-# User configuration options.
> > +-#
> > +-  MINGW_AC_DISTRIBUTION_TYPE([tar])
> > +-  MINGW_AC_MSVC_IMPORT_LIBS([GNURX_LIB], [gnurx.lib])
> > +-  MINGW_AC_DEV_INSTALL_OPTION
> > +-
> > +-# Configuration output.
> > +-#
> > +-  AC_SUBST([GNURX_LIB])
> > +-  AC_SUBST([CC_QUALIFIED], ["$CC $CC_QUALIFIED"])
> > +-  LDFLAGS="$LDFLAGS -Wl,--enable-auto-image-base -Wl,--out-implib,libgnurx.dll.a"
> > +-  test -n "${GNURX_LIB}" && LDFLAGS="$LDFLAGS -Wl,--output-def,libgnurx.def"
> > +-  AC_CONFIG_FILES([Makefile])
> > +-  AC_OUTPUT
> > +-#
> > +-# $RCSfile: configure.ac,v $Revision: 1.2 $: end of file
> > ++
> > ++AC_INIT(libgnurx, 2.5.1)
> > ++AM_INIT_AUTOMAKE(foreign)
> > ++AC_PROG_INSTALL
> > ++AC_LIBTOOL_DLOPEN
> > ++AC_LIBTOOL_WIN32_DLL
> > ++AC_PROG_LIBTOOL
> > ++
> > ++AC_OUTPUT([Makefile])
> > diff --git a/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb b/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
> > new file mode 100644
> > index 0000000..cb5cd7f
> > --- /dev/null
> > +++ b/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
> > @@ -0,0 +1,20 @@
> > +# Copyright (C) 2021 Khem Raj <raj.khem@gmail.com>
> > +# Released under the MIT license (see COPYING.MIT for the terms)
> > +LICENSE = "LGPLv2.1"
> > +LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=bbb461211a33b134d42ed5ee802b37ff"
> > +
> Is there some PROVIDES that this should have? How will recipes pull it
> in as a dependency?

maybe nativesdk-mingw-w64-runtime package can use this as a
dependency, I did not specifically use it as I was trying to build
flex where it was needed

> > +SRC_URI = "http://download.sourceforge.net/mingw/Other/UserContributed/regex/mingw-regex-${PV}/mingw-libgnurx-${PV}-src.tar.gz \
> > +           file://0001-Honor-DESTDIR-variable-during-install.patch \
> > +           file://0002-Add-autotool-files.patch \
> > +           "
> > +SRC_URI[sha256sum] = "7147b7f806ec3d007843b38e19f42a5b7c65894a57ffc297a76b0dcd5f675d76"
> > +
> > +# NOTE: if this software is not capable of being built in a separate build directory
> > +# from the source, you should replace autotools with autotools-brokensep in the
> > +# inherit line
>
> Probably don't need this comment?

right sent a v2

>
> > +inherit autotools
> > +
> > +# Specify any options you want to pass to the configure script using EXTRA_OECONF:
> > +EXTRA_OECONF = ""
> > +
> > +BBCLASSEXTEND = "nativesdk"
