Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67EFFE006EE; Tue, 15 Jul 2014 19:02:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16697E006C4
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 19:02:47 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id rl12so228922iec.1
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 19:02:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:subject:date:message-id;
	bh=yBKqZ4uLVZOO/Wj7s0MSnjsRN1JTbCWE78ru/JhnTxY=;
	b=X9ujnH+Qq7WOJLcrLXuLZljtoD9HqAjS/ICCiXek7UDJQJPr+QABxwPANab0KnZ5wP
	cTAl9jw9ReGY7zZ1EMMCYFn+ALrTFPpm8ystk4tKZNHbrZssx2xJhhXEP0C1DEJUvF3+
	OmXbii3QN72fU7epdfeJwaPJeW1GQLfnMnbgQgqCL0zV2BwvKDh9QH01Z+3idf3saUaH
	HnQnNKxJEXSOmwWlwQ3lQzKqkeB22ZPXuutWULuBtXpORyHEMS0VDyXfguDo1DBGNorG
	jDlTp/nsjKUiOS6evk/SV59AAA4JYr/AmjyO2QJ/bfF/wVGvk6LfTCTT65eI9u1ybIPi
	EJPg==
X-Gm-Message-State: ALoCoQkaVw24x2bWxiBtaPSUqCHRGozQub/2SMqBUcefuWiicV6Ix71VToMp7ziP6I7Sc1rvRJj9
X-Received: by 10.42.214.207 with SMTP id hb15mr34251375icb.30.1405476166925; 
	Tue, 15 Jul 2014 19:02:46 -0700 (PDT)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250]) by mx.google.com with ESMTPSA id
	ro10sm2386470igb.18.2014.07.15.19.02.45 for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 15 Jul 2014 19:02:46 -0700 (PDT)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Tue, 15 Jul 2014 22:03:19 -0400
Message-Id: <1405476199-7759-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-selinux][PATCH] swig: use pkg-config for pcre detection.
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
X-List-Received-Date: Wed, 16 Jul 2014 02:02:56 -0000

Adapted from the original patch submitted to meta-oe for swig 2.0.12.

   OE-core commit 5870bd272b0b077d0826fb900b251884c1c05061 sabotaged the
   binconfig way.

Signed-off-by: Koen Kooi <koen.kooi@linaro.org>
Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---

Building swig-native has been broken for about the last month, the medium-term
corrective action would probably be to update swig, but that involves more
testing than I have time for right now.  The long-term corrective action is
probably to drop swig from meta-selinux, since the one in meta-oe is more
actively maintained.  This is the immediate, tactical solution, port Koen's
patch from meta-oe.  core-image-selinux builds happily for me again.

 ...nfigure-use-pkg-config-for-pcre-detection.patch |   68 ++++++++++++++++++++
 recipes-devtools/swig/swig_2.0.10.bb               |    4 +-
 2 files changed, 71 insertions(+), 1 deletion(-)
 create mode 100644 recipes-devtools/swig/swig/0001-configure-use-pkg-config-for-pcre-detection.patch

diff --git a/recipes-devtools/swig/swig/0001-configure-use-pkg-config-for-pcre-detection.patch b/recipes-devtools/swig/swig/0001-configure-use-pkg-config-for-pcre-detection.patch
new file mode 100644
index 0000000..158be36
--- /dev/null
+++ b/recipes-devtools/swig/swig/0001-configure-use-pkg-config-for-pcre-detection.patch
@@ -0,0 +1,68 @@
+From 35cf4ae2fea9a5b4638f7ea4de8044cea53ce302 Mon Sep 17 00:00:00 2001
+From: Joe MacDonald <joe_macdonald@mentor.com>
+Date: Tue, 15 Jul 2014 21:38:57 -0400
+Subject: [PATCH] configure: use pkg-config for pcre detection
+
+Based on the meta-oe swig patch by Koen Kooi, simple backport to the swig
+version in meta-selinux.
+
+Upstream-Status: Backport
+
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ configure.ac |   38 +++++++-------------------------------
+ 1 file changed, 7 insertions(+), 31 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index c94c2e9..40fe0d0 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -70,38 +70,14 @@ AC_MSG_RESULT([$with_pcre])
+ 
+ dnl To make configuring easier, check for a locally built PCRE using the Tools/pcre-build.sh script
+ if test x"${with_pcre}" = xyes ; then 
+-  AC_MSG_CHECKING([whether to use local PCRE])
+-  local_pcre_config=no
+-  if test -z $PCRE_CONFIG; then
+-    if test -f `pwd`/pcre/pcre-swig-install/bin/pcre-config; then
+-      PCRE_CONFIG=`pwd`/pcre/pcre-swig-install/bin/pcre-config
+-      local_pcre_config=$PCRE_CONFIG
+-    fi
+-  fi
+-  AC_MSG_RESULT([$local_pcre_config])
+-fi
+-AS_IF([test "x$with_pcre" != xno],
+-  [AX_PATH_GENERIC([pcre],
+-    [], dnl Minimal version of PCRE we need -- accept any
+-    [], dnl custom sed script for version parsing is not needed
+-    [AC_DEFINE([HAVE_PCRE], [1], [Define if you have PCRE library])
+-     LIBS="$LIBS $PCRE_LIBS"
+-     CPPFLAGS="$CPPFLAGS $PCRE_CFLAGS"
+-    ],
+-    [AC_MSG_FAILURE([
+-        Cannot find pcre-config script from PCRE (Perl Compatible Regular Expressions)
+-        library package. This dependency is needed for configure to complete,
+-        Either:
+-        - Install the PCRE developer package on your system (preferred approach).
+-        - Download the PCRE source tarball, build and install on your system
+-          as you would for any package built from source distribution.
+-        - Use the Tools/pcre-build.sh script to build PCRE just for SWIG to statically
+-          link against. Run 'Tools/pcre-build.sh --help' for instructions.
+-          (quite easy and does not require privileges to install PCRE on your system)
+-        - Use configure --without-pcre to disable regular expressions support in SWIG
+-          (not recommended).])
+-    ])
++  PKG_CHECK_MODULES([PCRE], [libpcre], [
++    AC_DEFINE([HAVE_PCRE], [1], [Define if you have PCRE library])
++    LIBS="$LIBS $PCRE_LIBS"
++    CPPFLAGS="$CPPFLAGS $PCRE_CFLAGS"
++  ], [
++    AC_MSG_WARN([$PCRE_PKG_ERRORS])
+   ])
++fi
+ 
+ 
+ dnl CCache
+-- 
+1.7.9.5
+
diff --git a/recipes-devtools/swig/swig_2.0.10.bb b/recipes-devtools/swig/swig_2.0.10.bb
index 312ce11..5f1ff59 100644
--- a/recipes-devtools/swig/swig_2.0.10.bb
+++ b/recipes-devtools/swig/swig_2.0.10.bb
@@ -2,7 +2,9 @@ require ${BPN}.inc
 
 PR = "${INC_PR}.0"
 
-SRC_URI += "file://0001-Use-proc-self-exe-for-swig-swiglib-on-non-Win32-plat.patch"
+SRC_URI += "file://0001-Use-proc-self-exe-for-swig-swiglib-on-non-Win32-plat.patch \
+            file://0001-configure-use-pkg-config-for-pcre-detection.patch \
+           "
 
 SRC_URI[md5sum] = "6d5e7ad05b4a404e5e85db9befb70c9a"
 SRC_URI[sha256sum] = "d1eef329e867124ce60838b5ad07c763146b6c8f250dd22a861ead7406f78e63"
-- 
1.7.9.5


