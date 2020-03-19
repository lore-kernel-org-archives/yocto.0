Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3954.1584582816918851411
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=a6yHENle;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1202E01887; Wed, 18 Mar 2020 18:53:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C93FE01844
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:31 -0700 (PDT)
Received: by mail-pg1-f173.google.com with SMTP id t3so320505pgn.1
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uP+1PTof0hxySYT5KAe3NuJuGpz/z577AQxpC2CW8cw=;
        b=a6yHENle3WRjAnJ57cxQOg8Tl2P410+kFophaLMbFt2wFZiq7bH+lxRNjQP59LHppH
         w7FxbJZD4n2xUN4hfInJNrzTPCGZ3sXM4q7chUwPwdkN0OBNF/qA7ZO9O3LaGMAh7LVd
         kz9xhQEF4lpK+ISvEJukOMemTH8ycpi98jBDC0FzTrKiVPvBi8wcTmJMbWPcpcR3ey4P
         QlJDcsAl6pCzSV0eNTZpsvQh6n+pPxiM8SyTZdye2mkMQjBJSaHQPv1qn37syjgrVQCg
         LqJUD07wLaq8n7bUToqvEYN+7tLhgL3zjtNKveCqmq3stlv4anQ3wqQrtUgMvJUK1HtQ
         qEPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=uP+1PTof0hxySYT5KAe3NuJuGpz/z577AQxpC2CW8cw=;
        b=Oi47kcYWTn6cEzlnSnisBQmJ1Wn5Fj3ZOCR/Qw3HWTYuqtHmJublKgXoXyqDrSD9B3
         YvTrjutNuQVygIalDchzPT5J5VGriSR8JhCC39z0XpHtMUVXO855pZzX/IYTQ3Xz8/ri
         7n93z1rNCWDxJHvlfNCVYZbDYD8fhsm2VzA+tc/nZww5rBtZ79+z/PuFSE0nI8N1tjyG
         YLoGFT0i9oDiG8nQJu8kgCxe90qefWc1hfd+sd/lN7kPNmxOCgXfSjzjFuYOrHbe9d+h
         tulHmI9kbRDxyJ0Msz+1Q3E/2vv5h3AEc5MAjszm/FfSyCMhpHG2LYj7JkmYkTFfrjvN
         E/Uw==
X-Gm-Message-State: ANhLgQ0Z/c38gJsuypKVCNK4uj0JmK8HuXoXfJg81GTm2EnQC8VfnsXu
	H8X9wwyJ4OQPRkCm39sLhiulkl1A8kg=
X-Google-Smtp-Source: ADFU+vtGcmjKqcNFhdL1nK1rkiYVHSt+k/xcyNop8eVRyo1UsYy3MUZ19tbXQDgFs0ycOWgT63vxcA==
X-Received: by 2002:a62:16c4:: with SMTP id 187mr1268773pfw.325.1584582811033;
        Wed, 18 Mar 2020 18:53:31 -0700 (PDT)
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id l7sm259755pff.204.2020.03.18.18.53.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:30 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 7FC272A099A; Wed, 18 Mar 2020 18:53:29 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 08/20] resource-agents: Update to 4.5.0
Date: Wed, 18 Mar 2020 18:53:09 -0700
Message-Id: <20200319015321.15525-8-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

From: Jeremy Puhlman <jpuhlman@mvista.com>

Refesh patches.
Drop already encorperated

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 .../resource-agents/01-disable-doc-build.patch     | 12 ++++---
 .../02-set-OCF_ROOT_DIR-to-libdir-ocf.patch        |  4 +--
 .../03-fix-header-defs-lookup.patch                |  4 +--
 .../resource-agents/fix-install-sh-not-found.patch | 22 ++++++-------
 ...uilds-when-srcdir-and-builddir-are-sepera.patch | 37 ----------------------
 ...ce-agents_4.0.1.bb => resource-agents_4.5.0.bb} | 10 +++---
 6 files changed, 28 insertions(+), 61 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch
 rename meta-cgl-common/recipes-cgl/cluster-resource-agents/{resource-agents_4.0.1.bb => resource-agents_4.5.0.bb} (91%)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch
index 7c67ecc..f136ec8 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch
@@ -4,21 +4,23 @@ Date: Tue, 30 Jun 2015 16:42:48 +0800
 Subject: [PATCH] disable doc build
 
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
-
 ---
  Makefile.am | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/Makefile.am b/Makefile.am
-index 1769c6e..d66b2ae 100644
+index 0f2e5dcf..65619424 100644
 --- a/Makefile.am
 +++ b/Makefile.am
-@@ -37,7 +37,7 @@ RGMANAGER = with
+@@ -39,7 +39,7 @@ RGMANAGER = with
  endif
  
  if BUILD_LINUX_HA
--SUBDIRS	+= include heartbeat tools ldirectord doc
-+SUBDIRS	+= include heartbeat tools ldirectord
+-SUBDIRS	+= include heartbeat tools ldirectord doc systemd
++SUBDIRS	+= include heartbeat tools ldirectord systemd
  LINUX_HA = without
  else
  LINUX_HA = with
+-- 
+2.23.0
+
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch
index 683f3db..ca36bc6 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch
@@ -10,10 +10,10 @@ Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/configure.ac b/configure.ac
-index 3bb0b7d..ca30182 100644
+index 1eb65cf3..066d126f 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -405,7 +405,7 @@ dnl Variables needed for substitution
+@@ -425,7 +425,7 @@ dnl Variables needed for substitution
  AC_CHECK_HEADERS(heartbeat/glue_config.h)
  
  if test "$ac_cv_header_heartbeat_glue_config_h" = "yes"; then
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch
index 0ef2b45..fb578cb 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch
@@ -10,10 +10,10 @@ Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
  1 file changed, 2 insertions(+), 3 deletions(-)
 
 diff --git a/configure.ac b/configure.ac
-index ca30182..83a698d 100644
+index 066d126f..32a76169 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -140,9 +140,8 @@ extract_header_define() {
+@@ -160,9 +160,8 @@ extract_header_define() {
  	  Cfile=$srcdir/extract_define.$2.${$}
  	  printf "#include <stdio.h>\n" > ${Cfile}.c
  	  printf "#include <%s>\n" $1 >> ${Cfile}.c
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fix-install-sh-not-found.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fix-install-sh-not-found.patch
index fbded10..d5d0d8a 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fix-install-sh-not-found.patch
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fix-install-sh-not-found.patch
@@ -19,13 +19,13 @@ Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
  1 file changed, 8 insertions(+), 7 deletions(-)
 
 diff --git a/configure.ac b/configure.ac
-index 83a698d..2082d43 100644
+index 32a76169..d682ad78 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -23,13 +23,20 @@ AC_INIT([resource-agents],
+@@ -22,6 +22,13 @@ dnl     checks for system services
+ AC_INIT([resource-agents], 
  	m4_esyscmd([make/git-version-gen .tarball-version]),
- 	[to_be_defined@foobar.org])
- 
+ 	[developers@clusterlabs.org])
 +AC_CONFIG_AUX_DIR(.)
 +
 +dnl
@@ -33,20 +33,20 @@ index 83a698d..2082d43 100644
 +dnl
 +
 +AM_INIT_AUTOMAKE([1.10.1 foreign dist-bzip2])
-+
+ 
  AC_USE_SYSTEM_EXTENSIONS
  
- CRM_DTD_VERSION="1.0"
+@@ -29,7 +36,6 @@ CRM_DTD_VERSION="1.0"
  
  PKG_FEATURES=""
  
 -AC_CONFIG_AUX_DIR(.)
- AC_CANONICAL_HOST
+ AC_CONFIG_MACRO_DIR([m4])
  
- dnl Where #defines go (e.g. `AC_CHECK_HEADERS' below)
-@@ -76,12 +83,6 @@ AS_IF([test "x$with_systemdsystemunitdir" != "xno"],
-       [AC_SUBST([systemdsystemunitdir], [$with_systemdsystemunitdir])])
- AM_CONDITIONAL([HAVE_SYSTEMD], [test "x$with_systemdsystemunitdir" != "xno"])
+ AC_CANONICAL_HOST
+@@ -96,12 +102,6 @@ AC_ARG_WITH([systemdtmpfilesdir],
+      fi
+ AM_CONDITIONAL(HAVE_SYSTEMD, [test -n "$with_systemdtmpfilesdir" -a "x$with_systemdtmpfilesdir" != xno ])
  
 -dnl 
 -dnl AM_INIT_AUTOMAKE([1.11.1 foreign dist-bzip2 dist-xz])
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch
deleted file mode 100644
index dbafc68..0000000
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-From 40227e4ac8c95fb0175cbc4856103b5ca4c6824c Mon Sep 17 00:00:00 2001
-From: Jackie Huang <jackie.huang@windriver.com>
-Date: Thu, 1 Jun 2017 10:34:38 +0800
-Subject: [PATCH] fs.sh: fix builds when srcdir and builddir are seperated
-
-It fails to find fs.sh.in when srddir and builddir are not the same:
-
-make[5]: Entering directory '/path/to/builddir/rgmanager/src/resources'
-cat fs.sh.in | sed \
-    -e 's#@''LOGDIR@#/var/log/cluster#g' \
-    > fs.sh.out
-    cat: fs.sh.in: No such file or directorychmod +x fs.sh.out
-    mv fs.sh.out fs.sh
-
-Add abs_srcdir to fix this.
-
-Upstream-Status: Submitted [https://github.com/ClusterLabs/resource-agents/pull/986]
-
-Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
-
----
- rgmanager/src/resources/Makefile.am | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/rgmanager/src/resources/Makefile.am b/rgmanager/src/resources/Makefile.am
-index de88c69..30b3be9 100644
---- a/rgmanager/src/resources/Makefile.am
-+++ b/rgmanager/src/resources/Makefile.am
-@@ -68,7 +68,7 @@ rngdir			= ${CLUSTERDATA}/relaxng
- rng_DATA		= $(DTD) $(XSL) $(RESRNG)
- 
- $(TARGET):
--	cat $@.in | sed \
-+	cat $(abs_srcdir)/$@.in | sed \
- 		-e 's#@''LOGDIR@#${LOGDIR}#g' \
- 	> $@.out
- 	chmod +x $@.out
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
similarity index 91%
rename from meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb
rename to meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
index ba00a80..83ef913 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
@@ -14,16 +14,16 @@ LICENSE_${PN}-extra = "GPLv3"
 LICENSE_${PN}-extra-dbg = "GPLv3"
 LICENSE_ldirectord = "GPLv2+"
 
-SRC_URI = "https://codeload.github.com/ClusterLabs/resource-agents/tar.gz/v${PV};downloadfilename=${BPN}-${PV}.tar.gz \
+SRC_URI = "git://github.com/ClusterLabs/resource-agents \
            file://01-disable-doc-build.patch \
            file://02-set-OCF_ROOT_DIR-to-libdir-ocf.patch \
            file://03-fix-header-defs-lookup.patch \
            file://fix-install-sh-not-found.patch \
-           file://fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch \
           "
 
-SRC_URI[md5sum] = "8530431861e659d4ce2f04afcc4efc03"
-SRC_URI[sha256sum] = "863f83c724bad3a8bcff12b9c8712406c43e010041868826cad7b78fd8cfb9fb"
+SRCREV = "fee181320547365d7f8c88cca2b32801412b933d" 
+
+S="${WORKDIR}/git"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
                     file://COPYING.LGPL;md5=4fbd65380cdd255951079008b364516c \
@@ -47,6 +47,8 @@ inherit autotools systemd pkgconfig
 CACHED_CONFIGUREVARS += " \
     ac_cv_path_GREP=grep \
     ac_cv_path_TEST=test \
+    ac_cv_path_BASH_SHELL=/bin/bash \
+    ac_cv_path_PYTHON="/usr/bin/env python3" \
 "
 
 EXTRA_OECONF += "--disable-fatal-warnings \
-- 
2.13.3

