Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
 by mx.groups.io with SMTP id smtpd.web10.9890.1620151598696438520
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 11:06:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oasCE52j;
 spf=pass (domain: gmail.com, ip: 209.85.210.53, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f53.google.com with SMTP id g7-20020a9d5f870000b02902a5831ad705so9018889oti.10
        for <yocto@lists.yoctoproject.org>; Tue, 04 May 2021 11:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=DfZjz/9x9QOpnGjDsCjLb1XLhkeIpp7NKqV4/efwQSY=;
        b=oasCE52jrzEuJTyOtY9/R8vUfXYCwJ5FZDmcymX/FrDgrFbjgfgsPHjTnHOODBj+5h
         547J1O6rFbGA5lenZRcSRCapRPm0Zwg/x7gdNKW/8Iz/JEJBO9pdjXbrCjvWInomhNqL
         3+qHt5UJ6DL/X4kS9A0pVjw8yTqrQPnccCZ57Jg7oc1oAiumzJN+jeyo5Gnk6km0KG2W
         +7A116eBmRaNFMviqYGxA0PeyXzQD0WzD5yB/UO1UJyLW/r/JJEuXGFY1nmBB6JwFx10
         TVXMnhOQknhJicMU3iYDNEQ8TJoyxE6ZNAu2b28dA8BzWqyzHwi33UjqOfabbe+/p5yI
         gjzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=DfZjz/9x9QOpnGjDsCjLb1XLhkeIpp7NKqV4/efwQSY=;
        b=GvFwQCTfYbXmlR1V2mXpIXZ/F9XBosTNAuAxHRyOmexbwtJLTTgH5fBFpRZf0esuKX
         0/vYxEvMu3nZeD8v+Sdm8jvtxqM/RsnPBpXGkCgBLllnCXE9aZNKwaS3GrmeZ88LzK1m
         xMl3EkPVVwilEyXgMe81ALKZ1qtesTTWd+ecJrxmKf0/u2AwJM5S58dqlMFq4WyIieV/
         votAtBHuDKQqvE3CLIJ2T41oBM201kay8vWPOOLKarMXioPq30P3hMildAtCuQRe+niJ
         Zskg3Jyk0oTDjAn9W0pL+FIBfro+QPVuUh5O5Uba/RbU79CLGH6wSrhUBm8/POIiGSSa
         DMlw==
X-Gm-Message-State: AOAM531W2ySIcKZebpPfXyIMcpi1A6qDdtMbbW6cVtclG8rc7Eub/pDU
	1VKKnpYTNMWS432AcIVG1ghu7hta7rU=
X-Google-Smtp-Source: ABdhPJxenDpPqs3rGld/rY3t5a2DpbyeKzA0pOhyvez3AD90CMG4dY5vRkt11Ijlif7xNLzLwXC/Bg==
X-Received: by 2002:a05:6830:925:: with SMTP id v37mr20134630ott.259.1620151597582;
        Tue, 04 May 2021 11:06:37 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id p1sm957855otk.58.2021.05.04.11.06.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 11:06:37 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [meta-mingw] [PATCH] mingw-libgnurx: Add recipe
To: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
References: <20210504175946.2741568-1-raj.khem@gmail.com>
Message-ID: <3a67e08e-59e1-db4d-b57b-5ebdfa814676@gmail.com>
Date: Tue, 4 May 2021 13:06:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210504175946.2741568-1-raj.khem@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 5/4/21 12:59 PM, Khem Raj wrote:
> This implements glibc regex and will be used by many
> packages e.g. flex, therefore add recipe
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>   ...onor-DESTDIR-variable-during-install.patch |  39 ++++++
>   .../0002-Add-autotool-files.patch             | 125 ++++++++++++++++++
>   .../mingw-libgnurx/mingw-libgnurx_2.5.1.bb    |  20 +++
>   3 files changed, 184 insertions(+)
>   create mode 100644 recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch
>   create mode 100644 recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch
>   create mode 100644 recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
>
> diff --git a/recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch b/recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch
> new file mode 100644
> index 0000000..ea8d9ed
> --- /dev/null
> +++ b/recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch
> @@ -0,0 +1,39 @@
> +From a9b7e07a8ba9c390d9774daae769748a09d409ce Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Sat, 1 May 2021 14:41:21 -0700
> +Subject: [PATCH] Honor DESTDIR variable during install
> +
> +Upstream-Status: Pending
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> + Makefile.in | 14 +++++++-------
> + 1 file changed, 7 insertions(+), 7 deletions(-)
> +
> +diff --git a/Makefile.in b/Makefile.in
> +index 6397bf1..8395d2f 100644
> +--- a/Makefile.in
> ++++ b/Makefile.in
> +@@ -78,16 +78,16 @@ gnurx.lib: libgnurx-$(DLLVERSION).dll
> + install: install-dll @install_dev@
> +
> + install-dll:
> +-	mkdir -p ${bindir}
> +-	cp -p $(BINDIST_FILES) ${bindir}
> ++	mkdir -p $(DESTDIR)${bindir}
> ++	cp -p $(BINDIST_FILES) $(DESTDIR)${bindir}
> +
> + install-dev:
> +-	mkdir -p ${includedir} ${libdir}
> +-	cp -p ${srcdir}/regex.h ${includedir}
> +-	cp -p $(DEVDIST_FILES) ${libdir}
> ++	mkdir -p ${includedir} $(DESTDIR)${libdir}
> ++	cp -p ${srcdir}/regex.h $(DESTDIR)${includedir}
> ++	cp -p $(DEVDIST_FILES) $(DESTDIR)${libdir}
> + 	for s in 3 7; do \
> +-	  mkdir -p ${mandir}/man$$s; \
> +-	  gzip -c ${srcdir}/regex.$$s > ${mandir}/man$$s/regex.$$s.gz; \
> ++	  mkdir -p $(DESTDIR)${mandir}/man$$s; \
> ++	  gzip -c ${srcdir}/regex.$$s > $(DESTDIR)${mandir}/man$$s/regex.$$s.gz; \
> + 	done
> +
> + dist:	 bindist devdist srcdist
> diff --git a/recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch b/recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch
> new file mode 100644
> index 0000000..1365f24
> --- /dev/null
> +++ b/recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch
> @@ -0,0 +1,125 @@
> +From 0b74bbc32c4acf5b67d7568a5d1e776fe6578202 Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Sat, 1 May 2021 14:53:09 -0700
> +Subject: [PATCH] Add autotool files
> +
> +This helps in reconfiguring the component with autotools on Linux
> +
> +Upstream-Status: Pending
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> + Makefile.am  |  7 ++++
> + configure.ac | 90 ++++++----------------------------------------------
> + 2 files changed, 16 insertions(+), 81 deletions(-)
> + create mode 100644 Makefile.am
> +
> +diff --git a/Makefile.am b/Makefile.am
> +new file mode 100644
> +index 0000000..be0a797
> +--- /dev/null
> ++++ b/Makefile.am
> +@@ -0,0 +1,7 @@
> ++lib_LTLIBRARIES = libgnurx.la
> ++
> ++libgnurx_la_SOURCES = regex.c
> ++libgnurx_la_includedir = $(includedir)
> ++libgnurx_la_include_HEADERS = regex.h
> ++libgnurx_la_CFLAGS = -I$(top_srcdir)
> ++libgnurx_la_LDFLAGS = -no-undefined -version-info 0:0:0 -export-dynamic
> +diff --git a/configure.ac b/configure.ac
> +index c97738d..de64f75 100644
> +--- a/configure.ac
> ++++ b/configure.ac
> +@@ -1,83 +1,11 @@
> + # configure.ac  -*- Autoconf -*-
> + # Process this file with autoconf, to generate a configure script.
> +-#
> +-# $Id: configure.ac,v 1.2 2007/05/03 22:46:09 keithmarshall Exp $
> +-#
> +-# Copyright (C) 2007, MinGW Project
> +-# Written by Keith Marshall <keithmarshall@users.sourceforge.net>
> +-#
> +-# Package identification.
> +-#
> +-# This is configure.ac for the MinGW `libgnurx' package.
> +-# BASENAME, VERSION_MAJOR and VERSION_MINOR are required tags;
> +-# complete `Value' fields as appropriate.
> +-#
> +-#                            Tag              Value
> +-#                            ---------------  ----------
> +-  MINGW_AC_DEFINE_PACKAGE_ID([BASENAME],      [libgnurx])
> +-  MINGW_AC_DEFINE_PACKAGE_ID([VERSION_MAJOR], [2])
> +-  MINGW_AC_DEFINE_PACKAGE_ID([VERSION_MINOR], [5])
> +-#
> +-# PATCHLEVEL is optional; comment/uncomment and adjust as required.
> +-#
> +-  MINGW_AC_DEFINE_PACKAGE_ID([PATCHLEVEL],    [1])
> +-#
> +-# DLL_VERSION is required; installed DLLs will be versioned, by
> +-# appending a hyphen, the specified tag value, and then the `.dll'
> +-# file name extension, to the base name of each generated DLL.
> +-#
> +-  MINGW_AC_DEFINE_PACKAGE_ID([DLL_VERSION],   [0])
> +-#
> +-#
> +-# libgnurx is an adaptation of Tor Lillqvist's original port of the
> +-# regex functions from GNU libc, for use on native Woe32 platforms.
> +-#
> +-# The original sources, on which this port is based, remain copyright
> +-# of their respective authors, or of the Free Software Foundation Inc.,
> +-# as indicated in individual file headers; all are redistributed with
> +-# permission, as granted by the GNU Lesser General Public License.
> +-#
> +-# This is free software.  It is provided AS IS, in the hope that it may
> +-# be useful, but WITHOUT WARRANTY OF ANY KIND, not even an IMPLIED WARRANTY
> +-# of MERCHANTABILITY, nor of FITNESS FOR ANY PARTICULAR PURPOSE.
> +-#
> +-# Permission is granted to redistribute this software, either "as is" or
> +-# in modified form, under the terms of the GNU Lesser General Public License,
> +-# as published by the Free Software Foundation; either version 2.1, or (at
> +-# your option) any later version.
> +-#
> +-# You should have received a copy of the GNU Lesser General Public License
> +-# along with this software; see the file COPYING.LIB.  If not, write to the
> +-# Free Software Foundation, 51 Franklin St - Fifth Floor, Boston,
> +-# MA 02110-1301, USA.
> +-
> +-# Autoconf initialisation.
> +-#
> +-  AC_PREREQ([2.59])
> +-  AC_INIT(__MINGW_AC_PACKAGE_IDENTIFICATION__)
> +-
> +-# Compiler and build tool checks.
> +-#
> +-  AC_PROG_CC
> +-  MINGW_AC_PROG_CC_OPTIONS([CC_QUALIFIED], [-m], [threads tune=pentium3])
> +-
> +-# Set the release version for the resultant DLL.
> +-#
> +-  AC_SUBST([DLLVERSION], [__MINGW_AC_PACKAGE_DLL_VERSION__])
> +-
> +-# User configuration options.
> +-#
> +-  MINGW_AC_DISTRIBUTION_TYPE([tar])
> +-  MINGW_AC_MSVC_IMPORT_LIBS([GNURX_LIB], [gnurx.lib])
> +-  MINGW_AC_DEV_INSTALL_OPTION
> +-
> +-# Configuration output.
> +-#
> +-  AC_SUBST([GNURX_LIB])
> +-  AC_SUBST([CC_QUALIFIED], ["$CC $CC_QUALIFIED"])
> +-  LDFLAGS="$LDFLAGS -Wl,--enable-auto-image-base -Wl,--out-implib,libgnurx.dll.a"
> +-  test -n "${GNURX_LIB}" && LDFLAGS="$LDFLAGS -Wl,--output-def,libgnurx.def"
> +-  AC_CONFIG_FILES([Makefile])
> +-  AC_OUTPUT
> +-#
> +-# $RCSfile: configure.ac,v $Revision: 1.2 $: end of file
> ++
> ++AC_INIT(libgnurx, 2.5.1)
> ++AM_INIT_AUTOMAKE(foreign)
> ++AC_PROG_INSTALL
> ++AC_LIBTOOL_DLOPEN
> ++AC_LIBTOOL_WIN32_DLL
> ++AC_PROG_LIBTOOL
> ++
> ++AC_OUTPUT([Makefile])
> diff --git a/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb b/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
> new file mode 100644
> index 0000000..cb5cd7f
> --- /dev/null
> +++ b/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
> @@ -0,0 +1,20 @@
> +# Copyright (C) 2021 Khem Raj <raj.khem@gmail.com>
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +LICENSE = "LGPLv2.1"
> +LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=bbb461211a33b134d42ed5ee802b37ff"
> +
Is there some PROVIDES that this should have? How will recipes pull it 
in as a dependency?
> +SRC_URI = "http://download.sourceforge.net/mingw/Other/UserContributed/regex/mingw-regex-${PV}/mingw-libgnurx-${PV}-src.tar.gz \
> +           file://0001-Honor-DESTDIR-variable-during-install.patch \
> +           file://0002-Add-autotool-files.patch \
> +           "
> +SRC_URI[sha256sum] = "7147b7f806ec3d007843b38e19f42a5b7c65894a57ffc297a76b0dcd5f675d76"
> +
> +# NOTE: if this software is not capable of being built in a separate build directory
> +# from the source, you should replace autotools with autotools-brokensep in the
> +# inherit line

Probably don't need this comment?

> +inherit autotools
> +
> +# Specify any options you want to pass to the configure script using EXTRA_OECONF:
> +EXTRA_OECONF = ""
> +
> +BBCLASSEXTEND = "nativesdk"
