Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7400E00B81; Mon, 12 Jun 2017 11:22:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAAFFE00B67
	for <yocto@lists.yoctoproject.org>;
	Mon, 12 Jun 2017 11:22:21 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id e23so23900018wre.3
	for <yocto@lists.yoctoproject.org>;
	Mon, 12 Jun 2017 11:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=o00xabUBK/FTP3pi73AJl85bvs1BBWNBW/oW2Q5L618=;
	b=BqXgbF0SkKraf4MSzg6MmGTWRQ2lIeU5934rcZ4u7dgU6yrzdkMa0sMkX3QtFFeuRk
	f59Jump4LBbClRnMxGWtgBuaInhomwdKhx3/Tq2u5rSOORYbKbsVSJaXt5kCcHV5XGac
	MUE6VkGMXffNlWYLDr6R4PNttuBuzG+/Jd2dz6u245k/UP79iYbL4D2JExJ+hzT59di2
	qgoR/a8hH/Zl4kGLG/lC5s2psbFoT4pkYkRQOZ0Uy5rzJ5kFT8JtB83Nusa8PFmUoHGr
	d0KqQ+XchGpJKcEmuOKajHNl2PhanFfk2OCdXCA47hJ061NCySjYWxR9l5R8Zb1eg8x9
	J66g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=o00xabUBK/FTP3pi73AJl85bvs1BBWNBW/oW2Q5L618=;
	b=UFeF9RRrCIxKdBNWxmFRzqTy7o1Xvn98+4CUu9g9EU9DPeL0H7Fq3ruXnsgMK7iPxL
	IvvF493NplDTA/oRjGPWmgBKMLNEWvVpgtG+3paOkgrp/kvcF+WFLW5DaaV6wSmHYD2b
	nwsbaadUkO1USsCWJG8+o/FDz7rlVI5vsRLiCkchfCofgrA8PYhi+8uHDsOqkB94PjoR
	nIMdnGgpVMcsr/NAq12TglaLSdV59XEJhDTUE4J21XtS1iVVogR6SA4dDIQ4ORn2hvbn
	3UvS7RllkSQPQgk7SOWH34o21tltKQEiKT+NG1xlBVOAyi/t+cUTEv8d2SBfKfcgm1FS
	CNCQ==
X-Gm-Message-State: AKS2vOz1LlZNATLbJeLKTPBkCL0VtpuDGd5wlnv3VMlOnAVL3hzADQ8X
	gvoydCpipdhbHmNJ
X-Received: by 10.223.151.219 with SMTP id t27mr178035wrb.90.1497291740123;
	Mon, 12 Jun 2017 11:22:20 -0700 (PDT)
Received: from localhost ([217.30.68.212])
	by smtp.gmail.com with ESMTPSA id 50sm5833903wrw.32.2017.06.12.11.22.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Jun 2017 11:22:19 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Mon, 12 Jun 2017 18:22:18 +0200
Message-Id: <20170612162218.11449-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.13.0
Subject: [PATCH][meta-gplv2] gnutls: add use-pkg-config-to-locate-zlib.patch
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
X-List-Received-Date: Mon, 12 Jun 2017 18:22:23 -0000

* it was modified in oe-core/master in this commit:
commit ba7e5f51327d9833776aa066f30c5e46606be374
Author: Fan Xin <fan.xin@jp.fujitsu.com>
Date:   Fri Jun 9 15:49:18 2017 +0900

    gnutls: Upgrade to 3.5.13

    1. Upgrade gnutls from 3.5.9 to 3.5.13

    2. Rebase the following patch file.
       use-pkg-config-to-locate-zlib.patch

    Signed-off-by: Fan Xin <fan.xin@jp.fujitsu.com>
    Signed-off-by: Ross Burton <ross.burton@intel.com>

and no longer applies for this version.

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 .../gnutls/use-pkg-config-to-locate-zlib.patch     | 67 ++++++++++++++++++++++
 recipes-support/gnutls/gnutls_3.3.27.bb            |  2 +-
 2 files changed, 68 insertions(+), 1 deletion(-)
 create mode 100644 recipes-support/gnutls/gnutls/use-pkg-config-to-locate-zlib.patch

diff --git a/recipes-support/gnutls/gnutls/use-pkg-config-to-locate-zlib.patch b/recipes-support/gnutls/gnutls/use-pkg-config-to-locate-zlib.patch
new file mode 100644
index 0000000..0e1b7c8
--- /dev/null
+++ b/recipes-support/gnutls/gnutls/use-pkg-config-to-locate-zlib.patch
@@ -0,0 +1,67 @@
+From cee80af1fe93f5b76765afeebfcc3b902768f5d6 Mon Sep 17 00:00:00 2001
+From: Andre McCurdy <armccurdy@gmail.com>
+Date: Tue, 26 May 2015 21:41:24 -0700
+Subject: [PATCH] use pkg-config to locate zlib
+
+AC_LIB_HAVE_LINKFLAGS can sometimes find host libs and is therefore not
+robust when cross-compiling. Remove it for zlib and use PKG_CHECK_MODULES
+instead.
+
+Removing AC_LIB_HAVE_LINKFLAGS for zlib also removes the --with-libz-prefix
+configure option. If zlib support is enabled, then failure to find zlib via
+pkg-config is now treated as a fatal error.
+
+Change based on ChromeOS gnutls 2.12.23 cross-compile fixes patch:
+
+  https://chromium-review.googlesource.com/#/c/271661/
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Andre McCurdy <armccurdy@gmail.com>
+---
+ configure.ac | 24 ++++++++++--------------
+ 1 file changed, 10 insertions(+), 14 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index 1b561d5..0c787dc 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -508,25 +508,21 @@ AC_ARG_WITH(zlib, AS_HELP_STRING([--without-zlib],
+ AC_MSG_CHECKING([whether to include zlib compression support])
+ if test x$ac_zlib != xno; then
+  AC_MSG_RESULT(yes)
+- AC_LIB_HAVE_LINKFLAGS(z,, [#include <zlib.h>], [compress (0, 0, 0, 0);])
+- if test x$ac_cv_libz != xyes; then
+-   AC_MSG_WARN(
+-*** 
+-*** ZLIB was not found. You will not be able to use ZLIB compression.)
+- fi
+ else
+  AC_MSG_RESULT(no)
+ fi
+ 
+-PKG_CHECK_EXISTS(zlib, ZLIB_HAS_PKGCONFIG=y, ZLIB_HAS_PKGCONFIG=n)
+-
+ if test x$ac_zlib != xno; then
+-  if test "$ZLIB_HAS_PKGCONFIG" = "y" ; then
+-    if test "x$GNUTLS_REQUIRES_PRIVATE" = x; then
+-      GNUTLS_REQUIRES_PRIVATE="Requires.private: zlib"
+-    else
+-      GNUTLS_REQUIRES_PRIVATE="$GNUTLS_REQUIRES_PRIVATE, zlib"
+-    fi
++  PKG_CHECK_MODULES(ZLIB, zlib)
++  HAVE_LIBZ=yes
++  AC_DEFINE([HAVE_LIBZ], [1], [zlib is enabled])
++  AC_SUBST(HAVE_LIBZ)
++  LTLIBZ=$ZLIB_LIBS
++  AC_SUBST(LTLIBZ)
++  if test "x$GNUTLS_REQUIRES_PRIVATE" = x; then
++    GNUTLS_REQUIRES_PRIVATE="Requires.private: zlib"
++  else
++    GNUTLS_REQUIRES_PRIVATE="$GNUTLS_REQUIRES_PRIVATE, zlib"
+   fi
+ fi
+ AC_SUBST(GNUTLS_REQUIRES_PRIVATE)
+-- 
+1.9.1
+
diff --git a/recipes-support/gnutls/gnutls_3.3.27.bb b/recipes-support/gnutls/gnutls_3.3.27.bb
index c98da34..9a8cd40 100644
--- a/recipes-support/gnutls/gnutls_3.3.27.bb
+++ b/recipes-support/gnutls/gnutls_3.3.27.bb
@@ -3,7 +3,7 @@ require recipes-support/gnutls/gnutls.inc
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
                     file://COPYING.LESSER;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
-FILESEXTRAPATHS_prepend = "${COREBASE}/meta/recipes-support/${BPN}/${BPN}:"
+FILESEXTRAPATHS_prepend = "${THISDIR}/${BPN}:${COREBASE}/meta/recipes-support/${BPN}/${BPN}:"
 
 SRC_URI += " \
     file://correct_rpl_gettimeofday_signature.patch \
-- 
2.13.0


