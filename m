Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2706E00C19; Sun, 15 Apr 2018 22:55:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ADAFE00A0C
	for <yocto@yoctoproject.org>; Sun, 15 Apr 2018 22:55:46 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w3G5tVNi015702
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 15 Apr 2018 22:55:31 -0700 (PDT)
Received: from localhost (128.224.163.220) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Sun, 15 Apr 2018 22:55:30 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <mark.hatle@windriver.com>, <flihp@twobit.us>, 
	<yocto@yoctoproject.org>
Date: Mon, 16 Apr 2018 13:55:28 +0800
Message-ID: <1523858128-13276-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523843847-24868-2-git-send-email-yi.zhao@windriver.com>
References: <1523843847-24868-2-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.220]
Subject: [meta-cgl][PATCH 2/3 V2] pacemaker: refresh patches to fix QA warning
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
X-List-Received-Date: Mon, 16 Apr 2018 05:55:48 -0000
Content-Type: text/plain

Refresh patches with devtool command to fix do_patch warning.
Remove fix_missing_qb_array.patch since it had been fixed upstream.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../pacemaker/0001-pacemaker-fix-xml-config.patch  | 14 ++++++--------
 ...earch-header-from-STAGING_INCDIR-to-walka.patch | 10 ++++------
 .../0003-pacemaker-fix-header-defs-lookup.patch    | 12 +++++-------
 .../0004-pacemaker-do-not-build-help.patch         | 12 +++++-------
 ...o-not-execute-target-program-while-cross-.patch | 12 +++++-------
 ...006-pacemaker-do-not-use-libgnutls-config.patch | 22 +++++++++++++---------
 .../pacemaker/pacemaker/fix_missing_qb_array.patch | 21 ---------------------
 .../pacemaker/set-OCF_ROOT_DIR-to-libdir-ocf.patch |  6 ++----
 .../recipes-cgl/pacemaker/pacemaker_1.1.16.bb      |  1 -
 9 files changed, 40 insertions(+), 70 deletions(-)
 mode change 100755 => 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-config.patch
 mode change 100755 => 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-header-defs-lookup.patch
 mode change 100755 => 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not-build-help.patch
 mode change 100755 => 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program-while-cross-.patch
 mode change 100755 => 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not-use-libgnutls-config.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/fix_missing_qb_array.patch
 mode change 100755 => 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-config.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-config.patch
old mode 100755
new mode 100644
index ea9380e..c27052d
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-config.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-config.patch
@@ -1,18 +1,19 @@
-From a6b792b9abb26e810ad9ca11be31998c7e97db6c Mon Sep 17 00:00:00 2001
+From a55e235f56bc6e894e79fa200c39678e06ef985e Mon Sep 17 00:00:00 2001
 From: Bian Naimeng <biannm@cn.fujitsu.com>
 Date: Fri, 3 Jul 2015 15:48:58 +0900
-Subject: [PATCH 1/2] pacemaker: fix xml config
+Subject: [PATCH] pacemaker: fix xml config
 
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+
 ---
  configure.ac | 17 ++++++-----------
  1 file changed, 6 insertions(+), 11 deletions(-)
 
 diff --git a/configure.ac b/configure.ac
-index 03f543d..25af918 100644
+index 7195f9b..5e420f2 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -533,7 +533,6 @@ AC_PATH_PROGS(TAR, tar)
+@@ -557,7 +557,6 @@ AC_PATH_PROGS(TAR, tar)
  AC_PATH_PROGS(MD5, md5)
  AC_PATH_PROGS(TEST, test)
  AC_PATH_PROGS(PKGCONFIG, pkg-config)
@@ -20,7 +21,7 @@ index 03f543d..25af918 100644
  AC_PATH_PROGS(VALGRIND_BIN, valgrind, /usr/bin/valgrind)
  AC_DEFINE_UNQUOTED(VALGRIND_BIN, "$VALGRIND_BIN", Valgrind command)
  
-@@ -779,17 +778,13 @@ dnl AC_CHECK_HEADERS(netinet/icmp6.h)
+@@ -807,17 +806,13 @@ dnl AC_CHECK_HEADERS(netinet/icmp6.h)
  dnl AC_CHECK_HEADERS(netinet/ip6.h)
  dnl AC_CHECK_HEADERS(netinet/ip_icmp.h)
  
@@ -44,6 +45,3 @@ index 03f543d..25af918 100644
  
  AC_CHECK_HEADERS(libxml/xpath.h)
  AC_CHECK_HEADERS(libxslt/xslt.h)
--- 
-1.8.4.2
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
index ee3c722..83940d1 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
@@ -1,4 +1,4 @@
-From f2ab529af7ab31d265dd3e9a53e074317982dffd Mon Sep 17 00:00:00 2001
+From 844ec301031b0e6a3000c793906ba476f08a1e65 Mon Sep 17 00:00:00 2001
 From: Li xin <lixin.fnst@cn.fujitsu.com>
 Date: Wed, 27 Dec 2017 05:20:45 +0000
 Subject: [PATCH] pacemaker: search header from STAGING_INCDIR to walkaround
@@ -16,15 +16,16 @@ Upstream-Status: pending
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
 Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
 Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
+
 ---
  configure.ac | 3 +++
  1 file changed, 3 insertions(+)
 
 diff --git a/configure.ac b/configure.ac
-index 36ccb01..2eade3c 100644
+index 5e420f2..5d442a5 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -483,6 +483,9 @@ esac
+@@ -484,6 +484,9 @@ esac
  dnl Eventually remove this
  if test "$cross_compiling" != "yes"; then
     CPPFLAGS="$CPPFLAGS -I${prefix}/include/heartbeat"
@@ -34,6 +35,3 @@ index 36ccb01..2eade3c 100644
  fi
  
  AC_SUBST(INIT_EXT)
--- 
-2.11.0
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-header-defs-lookup.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-header-defs-lookup.patch
old mode 100755
new mode 100644
index 939ecab..6dc4663
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-header-defs-lookup.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-header-defs-lookup.patch
@@ -1,18 +1,19 @@
-From 1a84908d57291a82e35eaa9369144a398e2265bf Mon Sep 17 00:00:00 2001
+From 9236fa746d43adb098c2946e72e8b29ffbc78865 Mon Sep 17 00:00:00 2001
 From: Bian Naimeng <biannm@cn.fujitsu.com>
 Date: Fri, 3 Jul 2015 16:30:25 +0900
-Subject: [PATCH 4/4] pacemaker: fix header defs lookup
+Subject: [PATCH] pacemaker: fix header defs lookup
 
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+
 ---
  configure.ac | 5 ++---
  1 file changed, 2 insertions(+), 3 deletions(-)
 
 diff --git a/configure.ac b/configure.ac
-index cb47011..d37eccf 100644
+index 5d442a5..1429b01 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -141,9 +141,8 @@ extract_header_define() {
+@@ -147,9 +147,8 @@ extract_header_define() {
  	  Cfile=$srcdir/extract_define.$2.${$}
  	  printf "#include <stdio.h>\n" > ${Cfile}.c
  	  printf "#include <%s>\n" $1 >> ${Cfile}.c
@@ -24,6 +25,3 @@ index cb47011..d37eccf 100644
  	  AC_MSG_RESULT($value)
  	  printf $value
  	  rm -rf ${Cfile}.c ${Cfile} ${Cfile}.dSYM ${Cfile}.gcno
--- 
-1.8.4.2
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not-build-help.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not-build-help.patch
old mode 100755
new mode 100644
index 9a2db0a..4234fe5
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not-build-help.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not-build-help.patch
@@ -1,18 +1,19 @@
-From cba9add61c72c734af8a7a16ad33e62457413ed8 Mon Sep 17 00:00:00 2001
+From cda171512fc8dc0aa385290e1f7644ff222e5f18 Mon Sep 17 00:00:00 2001
 From: Bian Naimeng <biannm@cn.fujitsu.com>
 Date: Fri, 3 Jul 2015 17:27:52 +0900
-Subject: [PATCH 5/5] pacemaker: do not build help
+Subject: [PATCH] pacemaker: do not build help
 
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+
 ---
  configure.ac | 5 +----
  1 file changed, 1 insertion(+), 4 deletions(-)
 
 diff --git a/configure.ac b/configure.ac
-index d37eccf..3c08524 100644
+index 1429b01..e930e33 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -549,10 +549,7 @@ if test x"${MAKE}" = x""; then
+@@ -574,10 +574,7 @@ if test x"${MAKE}" = x""; then
     AC_MSG_ERROR(You need (g)make installed in order to build ${PACKAGE})
  fi
  
@@ -24,6 +25,3 @@ index d37eccf..3c08524 100644
  
  MANPAGE_XSLT=""
  if test x"${XSLTPROC}" != x""; then
--- 
-1.8.4.2
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program-while-cross-.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program-while-cross-.patch
old mode 100755
new mode 100644
index b1aa58f..e749f9a
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program-while-cross-.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program-while-cross-.patch
@@ -1,15 +1,16 @@
-From 9ad877d3f4294e5aa8b479cc81fa10250134ccc3 Mon Sep 17 00:00:00 2001
+From e8c4b9d98ef15aa7fb02a68b1d7fe9c008cc8bfd Mon Sep 17 00:00:00 2001
 From: Bian Naimeng <biannm@cn.fujitsu.com>
 Date: Mon, 6 Jul 2015 12:20:17 +0900
 Subject: [PATCH] pacemaker: do not execute target program while cross compile
 
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+
 ---
  Makefile.common | 8 +++++---
  1 file changed, 5 insertions(+), 3 deletions(-)
 
 diff --git a/Makefile.common b/Makefile.common
-index 5163261..630cab6 100644
+index d73ad04..8973f91 100644
 --- a/Makefile.common
 +++ b/Makefile.common
 @@ -36,6 +36,8 @@ if BUILD_HELP
@@ -20,9 +21,9 @@ index 5163261..630cab6 100644
 +
  %.8:	% $(MAN8DEPS)
  	chmod a+x $(abs_builddir)/$<
- 	$(PCMK_V) PATH=$$PATH:$(abs_builddir) $(abs_builddir)/$< --help
+ 	$(PCMK_V)  PATH=$(abs_builddir):$$PATH $(abs_builddir)/$< --help
 @@ -43,13 +45,13 @@ endif
- 	$(AM_V_MAN)PATH=$$PATH:$(abs_builddir) $(HELP2MAN) --output $@ --no-info --section 8 --name "Part of the Pacemaker cluster resource manager" $(abs_builddir)/$<
+ 	$(AM_V_MAN)PATH=$(abs_builddir):$$PATH $(HELP2MAN) --output $@ --no-info --section 8 --name "Part of the Pacemaker cluster resource manager" $(abs_builddir)/$<
  
  %.xml:  %
 -	$(AM_V_GEN)$(abs_builddir)/$< metadata > $@
@@ -38,6 +39,3 @@ index 5163261..630cab6 100644
  
  # Build docbook from asciidoc because XML is a PITA to edit
  #
--- 
-1.8.4.2
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not-use-libgnutls-config.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not-use-libgnutls-config.patch
old mode 100755
new mode 100644
index 433aa99..c1ffc86
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not-use-libgnutls-config.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not-use-libgnutls-config.patch
@@ -1,22 +1,26 @@
-commit bb26b7c290473af988aa9d4132ef55ca907091e6
-Author: Joe Slater <jslater@windriver.com>
-Date:   Mon Mar 11 15:47:54 2013 -0700
+From 5148e0a7e3cd4293416b969f2c563faa6aca27b2 Mon Sep 17 00:00:00 2001
+From: Joe Slater <jslater@windriver.com>
+Date: Mon, 11 Mar 2013 15:47:54 -0700
+Subject: [PATCH] pacemaker: do not use libgnutls-config
 
-    pacemaker: do not use libgnutls-config
-
-    Do not try to use libgnutls-config when configuring.
-    It has been deprecated and we do not supply it.  If a
-    host version is found, bad things can happen.
+Do not try to use libgnutls-config when configuring.
+It has been deprecated and we do not supply it.  If a
+host version is found, bad things can happen.
 
 Upstream-Status: Inappropriate [OE specific]
 
 Signed-off-by: Joe Slater <jslater@windriver.com>
 Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
 
+---
+ configure.ac | 6 +++---
+ 1 file changed, 3 insertions(+), 3 deletions(-)
 
+diff --git a/configure.ac b/configure.ac
+index e930e33..2eade3c 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -1427,9 +1427,9 @@ dnl ====================================
+@@ -1707,9 +1707,9 @@ dnl ========================================================================
  AC_CHECK_HEADERS(gnutls/gnutls.h)
  AC_CHECK_HEADERS(security/pam_appl.h pam/pam_appl.h)
  
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/fix_missing_qb_array.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/fix_missing_qb_array.patch
deleted file mode 100644
index 9f29ffa..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/fix_missing_qb_array.patch
+++ /dev/null
@@ -1,21 +0,0 @@
-fix missing header file
-
- mainloop.c:406:8: error: unknown type name 'qb_array_t'
-|  static qb_array_t *gio_map = NULL;
-
-Upstream-status: Pending
-
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
-Index: pacemaker-Pacemaker-1.1.15/lib/common/mainloop.c
-===================================================================
---- pacemaker-Pacemaker-1.1.15.orig/lib/common/mainloop.c
-+++ pacemaker-Pacemaker-1.1.15/lib/common/mainloop.c
-@@ -32,6 +32,7 @@
- #include <crm/common/xml.h>
- #include <crm/common/mainloop.h>
- #include <crm/common/ipcs.h>
-+#include <qb/qbarray.h>
- 
- struct mainloop_child_s {
-     pid_t pid;
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-libdir-ocf.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-libdir-ocf.patch
index 4898389..98c3475 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-libdir-ocf.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-libdir-ocf.patch
@@ -1,4 +1,4 @@
-From 24c1ddc572df59061c1f4fcec6e764dcb3edac80 Mon Sep 17 00:00:00 2001
+From 588800f0e2fe52a677a19b7c59636e9f391a6e75 Mon Sep 17 00:00:00 2001
 From: Mingli Yu <Mingli.Yu@windriver.com>
 Date: Wed, 27 Dec 2017 07:14:21 +0000
 Subject: [PATCH] pacemaker: set OCF_ROOT_DIR to $libdir/ocf
@@ -8,6 +8,7 @@ Subject: [PATCH] pacemaker: set OCF_ROOT_DIR to $libdir/ocf
   compatible
 
 Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
+
 ---
  configure.ac | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
@@ -25,6 +26,3 @@ index 2eade3c..ba290cc 100644
  if test "X$OCF_ROOT_DIR" = X; then
    AC_MSG_ERROR(Could not locate OCF directory)
  fi
--- 
-2.11.0
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
old mode 100755
new mode 100644
index 48f29fc..9aeb1fb
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
@@ -20,7 +20,6 @@ SRC_URI = "https://github.com/ClusterLabs/${BPN}/archive/Pacemaker-${PV}.zip \
            file://0004-pacemaker-do-not-build-help.patch \
            file://0005-pacemaker-do-not-execute-target-program-while-cross-.patch \
            file://0006-pacemaker-do-not-use-libgnutls-config.patch \
-           file://fix_missing_qb_array.patch \
            file://set-OCF_ROOT_DIR-to-libdir-ocf.patch \
            file://volatiles \
            file://tmpfiles \
-- 
2.7.4


