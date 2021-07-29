Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.16876.1627599969294475674
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jul 2021 16:06:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Tnv/UH3G;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id n12so8814744wrr.2
        for <yocto@lists.yoctoproject.org>; Thu, 29 Jul 2021 16:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/1aW27Y/InUoYe6HJlglwgLjKYNKfPHV3COhtXLaxnk=;
        b=Tnv/UH3G7E6nRag1jN6h/3Ca++0ZhKcZ/E2pqu5EtJj9H2qBR8XNb95xsIwmwAbZeo
         DEPnGs3E/WLoqXARcZd5RmYGM/5tt1J5TOqO6ZM913mDgG5rq+SSverA08Q24Sc1poiM
         2avsbg2elUMtior0xG0SUzkebB9yhyS3/EWSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/1aW27Y/InUoYe6HJlglwgLjKYNKfPHV3COhtXLaxnk=;
        b=GvjijM2q80kxxXtrjNbCMHO+zB4ZHhmgVz/YXG+gVnn3wKcN6Gz114/JdwgFyecLjn
         2ebBppg5GW8jecmIUzcBvkD6a7a4tTLCJPlUvdtUXSLGmv8anaaajkbxYomV4PChtHqb
         QRMm7+i9gjZGEcZ38GhPJ97FfdRQjqWFDy9Tk39rutI3ahCg3RBmhKPmCMljfUAIUsTF
         9Evg3DKIyAYoVtW3Fw6JvZhdTrCOLHHuaB4KUMcfBBhNjcp4LoEJ08IDZg5Bc9Eisvk9
         rQ5qy6kPWV8kQTIImKj0Su9NkzshQFfvd431hi2v0UJQI3mB1TJXDYc4yoG/e/J87poN
         nqOw==
X-Gm-Message-State: AOAM533o1BcguzYq1+s/+SvY6sPxyehkxhBmJmqt8QMY1jeg1/mYH2QT
	n2NYXgjZwwPRO+8/1dsT6SSUUmFq/UcGEw==
X-Google-Smtp-Source: ABdhPJyAlIbAaZrL1zlNVfbIyu5FcubjSqhZ/6wfaPXYXYflzo+A7iYC1cMBSMvUb1iRh9bOgAxb2w==
X-Received: by 2002:adf:a409:: with SMTP id d9mr7246668wra.237.1627599967522;
        Thu, 29 Jul 2021 16:06:07 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:47e7:2d3d:e4c2:218b])
        by smtp.gmail.com with ESMTPSA id j1sm5200411wrm.86.2021.07.29.16.06.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 16:06:07 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH 1/3] recipes: Drop libc-uclibc overrides and patch
Date: Fri, 30 Jul 2021 00:06:04 +0100
Message-Id: <20210729230606.3337718-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These haven't been used for a long time and can therefore be removed.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 recipes-core/gettext/gettext_0.16.1.bb        |  8 --
 .../uclibc-support-for-elfutils-0.148.patch   | 91 -------------------
 recipes-devtools/elfutils/elfutils_0.148.bb   |  9 +-
 recipes-devtools/m4/m4.inc                    |  1 -
 recipes-devtools/mtools/mtools_3.9.9.bb       |  2 -
 recipes-extended/findutils/findutils.inc      |  7 --
 recipes-support/gnutls/gnutls.inc             |  1 -
 7 files changed, 2 insertions(+), 117 deletions(-)
 delete mode 100644 recipes-devtools/elfutils/elfutils-0.148/uclibc-support-for-elfutils-0.148.patch

diff --git a/recipes-core/gettext/gettext_0.16.1.bb b/recipes-core/gettext/gettext_0.16.1.bb
index dacdfd3..1907ea5 100644
--- a/recipes-core/gettext/gettext_0.16.1.bb
+++ b/recipes-core/gettext/gettext_0.16.1.bb
@@ -27,8 +27,6 @@ SRC_URI[sha256sum] = "0bf850d1a079fb5a61f0a47b1a9efd35eb44032255375e1cedb0253bc2
 
 PARALLEL_MAKE = ""
 
-LDFLAGS_prepend_libc-uclibc = " -lrt -lpthread "
-
 inherit autotools texinfo
 
 EXTRA_OECONF += "--without-lispdir \
@@ -81,15 +79,9 @@ FILES_gettext-runtime = "${bindir}/gettext \
                          ${libdir}/libasprintf${SODEV} \
                          ${libdir}/GNU.Gettext.dll \
                         "
-FILES_gettext-runtime_append_libc-uclibc = " ${libdir}/libintl.so.* \
-                                             ${libdir}/charset.alias \
-                                           "
 FILES_gettext-runtime-staticdev += "${libdir}/libasprintf.a"
 FILES_gettext-runtime-dev += "${includedir}/autosprintf.h \
                               ${libdir}/libasprintf${SOLIBDEV}"
-FILES_gettext-runtime-dev_append_libc-uclibc = " ${libdir}/libintl.so \
-                                                 ${includedir}/libintl.h \
-                                               "
 FILES_gettext-runtime-doc = "${mandir}/man1/gettext.* \
                              ${mandir}/man1/ngettext.* \
                              ${mandir}/man1/envsubst.* \
diff --git a/recipes-devtools/elfutils/elfutils-0.148/uclibc-support-for-elfutils-0.148.patch b/recipes-devtools/elfutils/elfutils-0.148/uclibc-support-for-elfutils-0.148.patch
deleted file mode 100644
index 3cf16ac..0000000
--- a/recipes-devtools/elfutils/elfutils-0.148/uclibc-support-for-elfutils-0.148.patch
+++ /dev/null
@@ -1,91 +0,0 @@
-on uclibc systems libintl and libuargp are separate from libc.
-so they need to be specified on commandline when we use proxy-libintl
-then libintl is a static archive so it should be listed last since
-elfutils does not respect disable-nls we need to link in libintl
-
-We add a new option --enable-uclibc which will be used to control
-the uclibc specific configurations during build.
-
-Signed-off-by: Khem Raj <raj.khem>
-
-Upstream-Status: Inappropriate [uclibc specific]
-
-Index: elfutils-0.148/configure.ac
-===================================================================
---- elfutils-0.148.orig/configure.ac
-+++ elfutils-0.148/configure.ac
-@@ -55,9 +55,16 @@ AS_IF([test "$use_locks" = yes], [AC_DEF
- 
- AH_TEMPLATE([USE_LOCKS], [Defined if libraries should be thread-safe.])
- 
-+AC_ARG_ENABLE([uclibc],
-+AS_HELP_STRING([--enable-uclibc], [Use uclibc for system libraries]),
-+use_uclibc=yes, use_uclibc=no)
-+AM_CONDITIONAL(USE_UCLIBC, test "$use_uclibc" = yes)
-+AS_IF([test "$use_uclibc" = yes], [AC_DEFINE(USE_UCLIBC)])
-+
-+AH_TEMPLATE([USE_UCLIBC], [Defined if uclibc libraries are used.])
-+
- dnl Add all the languages for which translations are available.
- ALL_LINGUAS=
--
- AC_PROG_CC
- AC_PROG_RANLIB
- AC_PROG_YACC
-Index: elfutils-0.148/libelf/Makefile.am
-===================================================================
---- elfutils-0.148.orig/libelf/Makefile.am
-+++ elfutils-0.148/libelf/Makefile.am
-@@ -93,7 +93,12 @@ if !MUDFLAP
- libelf_pic_a_SOURCES =
- am_libelf_pic_a_OBJECTS = $(libelf_a_SOURCES:.c=.os)
- 
-+
- libelf_so_LDLIBS =
-+if USE_UCLIBC
-+libelf_so_LDLIBS += -lintl -luargp
-+endif
-+
- if USE_LOCKS
- libelf_so_LDLIBS += -lpthread
- endif
-Index: elfutils-0.148/libdw/Makefile.am
-===================================================================
---- elfutils-0.148.orig/libdw/Makefile.am
-+++ elfutils-0.148/libdw/Makefile.am
-@@ -98,6 +98,11 @@ if !MUDFLAP
- libdw_pic_a_SOURCES =
- am_libdw_pic_a_OBJECTS = $(libdw_a_SOURCES:.c=.os)
- 
-+libdw_so_LDLIBS =
-+if USE_UCLIBC
-+libdw_so_LDLIBS += -lintl -luargp
-+endif
-+
- libdw_so_SOURCES =
- libdw.so: $(srcdir)/libdw.map libdw_pic.a \
- 	  ../libdwfl/libdwfl_pic.a ../libebl/libebl.a \
-@@ -108,7 +113,7 @@ libdw.so: $(srcdir)/libdw.map libdw_pic.
- 		-Wl,--enable-new-dtags,-rpath,$(pkglibdir) \
- 		-Wl,--version-script,$<,--no-undefined \
- 		-Wl,--whole-archive $(filter-out $<,$^) -Wl,--no-whole-archive\
--		-ldl $(zip_LIBS)
-+		-ldl $(zip_LIBS) $(libdw_so_LDLIBS)
- 	if readelf -d $@ | fgrep -q TEXTREL; then exit 1; fi
- 	ln -fs $@ $@.$(VERSION)
- 
-Index: elfutils-0.148/libcpu/Makefile.am
-===================================================================
---- elfutils-0.148.orig/libcpu/Makefile.am
-+++ elfutils-0.148/libcpu/Makefile.am
-@@ -63,6 +63,10 @@ i386_parse_CFLAGS = -DNMNES="`wc -l < i3
- i386_lex.o: i386_parse.h
- i386_gendis_LDADD = $(libeu) -lm $(libmudflap)
- 
-+if USE_UCLIBC
-+i386_gendis_LDADD += -luargp -lintl
-+endif
-+
- i386_parse.h: i386_parse.c ;
- 
- noinst_HEADERS = memory-access.h i386_parse.h i386_data.h
diff --git a/recipes-devtools/elfutils/elfutils_0.148.bb b/recipes-devtools/elfutils/elfutils_0.148.bb
index 654a715..3c0f9f0 100644
--- a/recipes-devtools/elfutils/elfutils_0.148.bb
+++ b/recipes-devtools/elfutils/elfutils_0.148.bb
@@ -44,9 +44,6 @@ SRC_URI += "\
 # Only apply when building musl based target recipe
 SRC_URI_append_libc-musl = " file://musl-support-for-elfutils-0.148.patch"
 
-# Only apply when building uclibc based target recipe
-SRC_URI_append_libc-uclibc = " file://uclibc-support-for-elfutils-0.148.patch"
-
 # The buildsystem wants to generate 2 .h files from source using a binary it just built,
 # which can not pass the cross compiling, so let's work around it by adding 2 .h files
 # along with the do_configure_prepend()
@@ -71,7 +68,6 @@ CFLAGS += "-Wno-error=stringop-overflow="
 
 EXTRA_OECONF = "--program-prefix=eu- --without-lzma"
 EXTRA_OECONF_append_class-native = " --without-bzlib"
-EXTRA_OECONF_append_libc-uclibc = " --enable-uclibc"
 
 do_configure_prepend() {
     sed -i '/^i386_dis.h:/,+4 {/.*/d}' ${S}/libcpu/Makefile.am
@@ -79,12 +75,11 @@ do_configure_prepend() {
     cp ${WORKDIR}/*dis.h ${S}/libcpu
 }
 
-# we can not build complete elfutils when using uclibc or musl
+# we can not build complete elfutils when using musl
 # but some recipes e.g. gcc 4.5 depends on libelf so we
-# build only libelf for uclibc and musl cases
+# build only libelf for musl cases
 
 EXTRA_OEMAKE_libc-musl = "-C libelf"
-EXTRA_OEMAKE_libc-uclibc = "-C libelf"
 EXTRA_OEMAKE_class-native = ""
 EXTRA_OEMAKE_class-nativesdk = ""
 
diff --git a/recipes-devtools/m4/m4.inc b/recipes-devtools/m4/m4.inc
index 4a83929..75d8bbe 100644
--- a/recipes-devtools/m4/m4.inc
+++ b/recipes-devtools/m4/m4.inc
@@ -6,5 +6,4 @@ GNU M4 also has built-in functions for including files, running shell commands,
 inherit autotools texinfo
 
 EXTRA_OEMAKE += "'infodir=${infodir}'"
-LDFLAGS_prepend_libc-uclibc = " -lrt "
 SRC_URI = "${GNU_MIRROR}/m4/m4-${PV}.tar.gz"
diff --git a/recipes-devtools/mtools/mtools_3.9.9.bb b/recipes-devtools/mtools/mtools_3.9.9.bb
index 2904ff4..d28fc48 100644
--- a/recipes-devtools/mtools/mtools_3.9.9.bb
+++ b/recipes-devtools/mtools/mtools_3.9.9.bb
@@ -41,8 +41,6 @@ inherit autotools texinfo
 
 EXTRA_OECONF = "--without-x"
 
-LDFLAGS_append_libc-uclibc = " -liconv "
-
 BBCLASSEXTEND = "native nativesdk"
 
 PACKAGECONFIG ??= ""
diff --git a/recipes-extended/findutils/findutils.inc b/recipes-extended/findutils/findutils.inc
index bfedf87..ad36429 100644
--- a/recipes-extended/findutils/findutils.inc
+++ b/recipes-extended/findutils/findutils.inc
@@ -13,11 +13,4 @@ inherit autotools gettext texinfo update-alternatives upstream-version-is-even
 ALTERNATIVE_${PN} = "find xargs"
 ALTERNATIVE_PRIORITY = "100"
 
-# diffutils assumes non-glibc compilation with uclibc and
-# this causes it to generate its own implementations of
-# standard functionality.  regex.c actually breaks compilation
-# because it uses __mempcpy, there are other things (TBD:
-# see diffutils.mk in buildroot)
-EXTRA_OECONF_libc-uclibc = "--without-included-regex"
-
 BBCLASSEXTEND = "native nativesdk"
diff --git a/recipes-support/gnutls/gnutls.inc b/recipes-support/gnutls/gnutls.inc
index 428248f..6b46e54 100644
--- a/recipes-support/gnutls/gnutls.inc
+++ b/recipes-support/gnutls/gnutls.inc
@@ -39,7 +39,6 @@ EXTRA_OECONF = " \
 "
 
 LDFLAGS_append_libc-musl = " -largp"
-LDFLAGS_append_libc-uclibc = " -luargp -pthread"
 
 do_configure_prepend() {
 	for dir in . lib; do
-- 
2.30.2

