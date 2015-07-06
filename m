Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D41BE00A9B; Mon,  6 Jul 2015 03:11:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_00, RDNS_NONE,
	URIBL_BLACK autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.7 URIBL_BLACK Contains an URL listed in the URIBL
	blacklist *      [URIs: configure.ac]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1824E00AA8
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 03:11:12 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.13,665,1427731200"; d="scan'208";a="98120842"
Received: from bogon (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 06 Jul 2015 18:15:00 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t66A9OC9019464
	for <yocto@yoctoproject.org>; Mon, 6 Jul 2015 18:09:24 +0800
Received: from localhost.localdomain (10.167.226.31) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Mon, 6 Jul 2015 18:11:05 +0800
From: Bian Naimeng <biannm@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 6 Jul 2015 18:01:24 +0800
Message-ID: <1436176884-54443-1-git-send-email-biannm@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.31]
Subject: [meta-cgl][PATCH] pacemaker: upgrade to 1.1.12
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
X-List-Received-Date: Mon, 06 Jul 2015 10:11:27 -0000
Content-Type: text/plain

Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
---
 .../pacemaker/files/kill-stack-protector.patch     | 12 ---
 .../pacemaker-remove-ptest-functionality.patch     | 29 -------
 .../recipes-cgl/pacemaker/files/tmpfiles           | 11 +--
 .../recipes-cgl/pacemaker/files/volatiles          | 11 +--
 .../pacemaker-1.0.9.1/fix-header-defs-lookup.patch | 16 ----
 .../pacemaker-dont-use-help2man.patch              | 16 ----
 .../pacemaker-fix-xml-config.patch                 | 53 ------------
 .../pacemaker-1.0.9.1/pacemaker-no-bash.patch      | 40 ---------
 .../pacemaker-remove-native-includes.patch         | 22 -----
 .../pacemaker/0001-pacemaker-fix-xml-config.patch  | 49 +++++++++++
 ...earch-header-from-STAGING_INCDIR-to-walka.patch | 45 ++++++++++
 .../0003-pacemaker-fix-header-defs-lookup.patch    | 29 +++++++
 .../0004-pacemaker-do-not-build-help.patch         | 29 +++++++
 ...o-not-execute-target-program-while-cross-.patch | 43 ++++++++++
 .../recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb     | 95 ----------------------
 .../recipes-cgl/pacemaker/pacemaker_1.1.12.bb      | 92 +++++++++++++++++++++
 16 files changed, 299 insertions(+), 293 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/files/kill-stack-protector.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/files/pacemaker-remove-ptest-functionality.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/fix-header-defs-lookup.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-dont-use-help2man.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-fix-xml-config.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-no-bash.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-remove-native-includes.patch
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-config.patch
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-header-defs-lookup.patch
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not-build-help.patch
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program-while-cross-.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.12.bb

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/kill-stack-protector.patch b/meta-cgl-common/recipes-cgl/pacemaker/files/kill-stack-protector.patch
deleted file mode 100644
index a9f5b83..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/files/kill-stack-protector.patch
+++ /dev/null
@@ -1,12 +0,0 @@
-Index: Pacemaker-1-0-Pacemaker-1.0.8/configure.ac
-===================================================================
---- Pacemaker-1-0-Pacemaker-1.0.8.orig/configure.ac	2010-05-06 13:43:17.000000000 +0400
-+++ Pacemaker-1-0-Pacemaker-1.0.8/configure.ac	2010-05-06 13:43:20.000000000 +0400
-@@ -1302,7 +1302,6 @@
- 
- 	# We had to eliminate -Wnested-externs because of libtool changes
-         EXTRA_FLAGS="-fgnu89-inline
--		-fstack-protector-all
- 		-Wall
- 		-Waggregate-return
- 		-Wbad-function-cast 
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/pacemaker-remove-ptest-functionality.patch b/meta-cgl-common/recipes-cgl/pacemaker/files/pacemaker-remove-ptest-functionality.patch
deleted file mode 100644
index fee2e02..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/files/pacemaker-remove-ptest-functionality.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-diff -Naur a/pengine/Makefile.am b/pengine/Makefile.am
---- a/pengine/Makefile.am	2014-07-23 13:24:08.887745910 +0200
-+++ b/pengine/Makefile.am	2014-07-23 13:28:22.704843745 +0200
-@@ -42,12 +42,9 @@
- 
- ## binary progs
- halib_PROGRAMS	= pengine
--sbin_PROGRAMS	= ptest
- 
- if BUILD_HELP
--man8_MANS =	ptest.8
--%.8:	%
--	help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker cluster resource manager" $(top_builddir)/pengine/$<
-+## removed the ptest functionality
- endif
- 
- ## SOURCES
-@@ -64,11 +61,6 @@
- # libcib for get_object_root()
- #		$(top_builddir)/lib/hbclient/libhbclient.la
- 
--ptest_SOURCES	= ptest.c 
--ptest_LDADD	= $(COMMONLIBS)						\
--		$(top_builddir)/lib/cib/libcib.la			\
--		$(top_builddir)/lib/transition/libtransitioner.la
--
- install-exec-local:
- 	$(mkinstalldirs) $(DESTDIR)/$(PE_STATE_DIR)
- 	-chown $(CRM_DAEMON_USER) $(DESTDIR)/$(PE_STATE_DIR)
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles b/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
index 1d2b295..979db47 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
+++ b/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
@@ -1,5 +1,6 @@
-d /var/lib/heartbeat/crm 0750 hacluster haclient -
-d /var/lib/pengine 0755 hacluster haclient -
-d /var/run/heartbeat 0755 hacluster haclient -
-d /var/run/heartbeat/rsctmp 0755 hacluster haclient -
-d /var/run/crm 0755 hacluster haclient -
+d /var/lib/pacemaker 0750 hacluster haclient -
+d /var/lib/pacemaker/cib 0750 hacluster haclient -
+d /var/lib/pacemaker/cores 0750 hacluster haclient -
+d /var/lib/pacemaker/pengine 0750 hacluster haclient -
+d /var/lib/pacemaker/blackbox 0750 hacluster haclient -
+d /var/run/crm 0750 hacluster haclient -
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
index 9ad1434..1700a69 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
+++ b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
@@ -1,5 +1,6 @@
-d hacluster haclient 0750 /var/lib/heartbeat/crm none
-d hacluster haclient 0755 /var/lib/pengine none
-d hacluster haclient 0755 /var/run/heartbeat none
-d hacluster haclient 0755 /var/run/heartbeat/rsctmp none
-d hacluster haclient 0755 /var/run/crm none
+d hacluster haclient 0750 /var/lib/pacemaker/ none
+d hacluster haclient 0750 /var/lib/pacemaker/cib none
+d hacluster haclient 0750 /var/lib/pacemaker/cores none
+d hacluster haclient 0750 /var/lib/pacemaker/pengine none
+d hacluster haclient 0750 /var/lib/pacemaker/blackbox none
+d hacluster haclient 0750 /var/run/crm none
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/fix-header-defs-lookup.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/fix-header-defs-lookup.patch
deleted file mode 100644
index 02ce26e..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/fix-header-defs-lookup.patch
+++ /dev/null
@@ -1,16 +0,0 @@
-Index: Pacemaker-1-0-Pacemaker-1.0.8/configure.ac
-===================================================================
---- Pacemaker-1-0-Pacemaker-1.0.8.orig/configure.ac	2010-04-06 13:08:53.000000000 +0400
-+++ Pacemaker-1-0-Pacemaker-1.0.8/configure.ac	2010-04-06 13:08:58.000000000 +0400
-@@ -106,9 +106,8 @@
- 	  Cfile=/tmp/extract_define.$2.${$}
- 	  printf "#include <stdio.h>\n" > ${Cfile}.c
- 	  printf "#include <%s>\n" $1 >> ${Cfile}.c
--	  printf "int main(int argc, char **argv) { printf(\"%%s\", %s); return 0; }\n" $2 >> ${Cfile}.c
--	  $CC $CFLAGS ${Cfile}.c -o ${Cfile}
--	  value=`${Cfile}`
-+	  printf "\"%s\":%s\n" $2 $2 >> ${Cfile}.c
-+	  value=`$CC $CFLAGS -E ${Cfile}.c | grep \"$2\" | cut -f 2 -d ':' | sed 's,^",,' | sed 's,"$,,'`
- 	  AC_MSG_RESULT($value)
- 	  printf $value
- 	  rm -f ${Cfile}.c ${Cfile}
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-dont-use-help2man.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-dont-use-help2man.patch
deleted file mode 100644
index da970d5..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-dont-use-help2man.patch
+++ /dev/null
@@ -1,16 +0,0 @@
-Index: Pacemaker-1-0-Pacemaker-1.0.8/configure.ac
-===================================================================
---- Pacemaker-1-0-Pacemaker-1.0.8.orig/configure.ac	2010-03-23 12:03:29.000000000 +0300
-+++ Pacemaker-1-0-Pacemaker-1.0.8/configure.ac	2010-03-23 12:06:43.000000000 +0300
-@@ -504,10 +504,7 @@
-    AC_MSG_ERROR(You need (g)make installed in order to build ${PACKAGE})
- fi
- 
--AM_CONDITIONAL(BUILD_HELP, test x"${HELP2MAN}" != x"")
--if test x"${HELP2MAN}" != x""; then
--   PKG_FEATURES="$PKG_FEATURES manpages"
--fi
-+AM_CONDITIONAL(BUILD_HELP, test x"" != x"")
- 
- AM_CONDITIONAL(BUILD_ASCIIDOC, test x"${ASCIIDOC}" != x"")
- if test x"${ASCIIDOC}" != x""; then
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-fix-xml-config.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-fix-xml-config.patch
deleted file mode 100644
index 553c3f3..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-fix-xml-config.patch
+++ /dev/null
@@ -1,53 +0,0 @@
-Index: pacemaker-1.0-Pacemaker-1.0.9.1/configure.ac
-===================================================================
---- pacemaker-1.0-Pacemaker-1.0.9.1.orig/configure.ac
-+++ pacemaker-1.0-Pacemaker-1.0.9.1/configure.ac
-@@ -22,6 +22,7 @@ dnl     checks for system services
- AC_INIT(pacemaker, 1.0.9, pacemaker@oss.clusterlabs.org)
- CRM_DTD_VERSION="1.0"
- 
-+m4_pattern_allow([PKG_FEATURES])
- PKG_FEATURES=""
- HB_PKG=heartbeat
- 
-@@ -97,7 +98,7 @@ dnl ====================================
- cc_supports_flag() {
-          local CFLAGS="$@"
-          AC_MSG_CHECKING(whether $CC supports "$@")
--         AC_COMPILE_IFELSE([int main(){return 0;}] ,[RC=0; AC_MSG_RESULT(yes)],[RC=1; AC_MSG_RESULT(no)])
-+         AC_COMPILE_IFELSE([AC_LANG_SOURCE([int main(){return 0;}])] ,[RC=0; AC_MSG_RESULT(yes)],[RC=1; AC_MSG_RESULT(no)])
-          return $RC
- }
- 
-@@ -502,7 +503,6 @@ AC_PATH_PROGS(TAR, tar)
- AC_PATH_PROGS(MD5, md5)
- AC_PATH_PROGS(TEST, test)
- AC_PATH_PROGS(PKGCONFIG, pkg-config)
--AC_PATH_PROGS(XML2CONFIG, xml2-config)
- AC_PATH_PROGS(VALGRIND_BIN, valgrind, /usr/bin/valgrind)
- AC_DEFINE_UNQUOTED(VALGRIND_BIN, "$VALGRIND_BIN", Valgrind command)
- 
-@@ -671,17 +671,13 @@ dnl AC_CHECK_HEADERS(netinet/icmp6.h)
- dnl AC_CHECK_HEADERS(netinet/ip6.h)
- dnl AC_CHECK_HEADERS(netinet/ip_icmp.h)
- 
--AC_MSG_CHECKING(for special libxml2 includes)
--if test "x$XML2CONFIG" = "x"; then
--   AC_MSG_ERROR(libxml2 config not found)
--else
--   XML2HEAD="`$XML2CONFIG --cflags`"
--   AC_MSG_RESULT($XML2HEAD)
--   AC_CHECK_LIB(xml2, xmlReadMemory)
--   AC_CHECK_LIB(xslt, xsltApplyStylesheet)
--fi
-+PKG_CHECK_MODULES([XML], [libxml-2.0])
-+PKG_CHECK_MODULES([XSLT], [libxslt])
-+
-+AC_CHECK_LIB(xml2, xmlReadMemory)
-+AC_CHECK_LIB(xslt, xsltApplyStylesheet)
- 
--CPPFLAGS="$CPPFLAGS $XML2HEAD"
-+CPPFLAGS="$CPPFLAGS $XML_CFLAGS"
- 
- AC_CHECK_HEADERS(libxml/xpath.h)
- AC_CHECK_HEADERS(libxslt/xslt.h)
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-no-bash.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-no-bash.patch
deleted file mode 100644
index 6f9639d..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-no-bash.patch
+++ /dev/null
@@ -1,40 +0,0 @@
-Index: pacemaker-1.0-Pacemaker-1.0.9.1/tools/crm_failcount
-===================================================================
---- pacemaker-1.0-Pacemaker-1.0.9.1.orig/tools/crm_failcount
-+++ pacemaker-1.0-Pacemaker-1.0.9.1/tools/crm_failcount
-@@ -1,4 +1,4 @@
--#!/bin/bash
-+#!/bin/sh
- 
- options=""
- target=`uname -n`
-Index: pacemaker-1.0-Pacemaker-1.0.9.1/tools/crm_master
-===================================================================
---- pacemaker-1.0-Pacemaker-1.0.9.1.orig/tools/crm_master
-+++ pacemaker-1.0-Pacemaker-1.0.9.1/tools/crm_master
-@@ -1,4 +1,4 @@
--#!/bin/bash
-+#!/bin/sh
- 
- TEMP=`getopt -o DGQVN:U:v:i:l:r: --long resource:,node:,uname:,attr-value:,delete-attr,get-value,attr-id:,lifetime:,quiet \
-      -n 'crm_master' -- "$@"`
-Index: pacemaker-1.0-Pacemaker-1.0.9.1/tools/crm_standby
-===================================================================
---- pacemaker-1.0-Pacemaker-1.0.9.1.orig/tools/crm_standby
-+++ pacemaker-1.0-Pacemaker-1.0.9.1/tools/crm_standby
-@@ -1,4 +1,4 @@
--#!/bin/bash
-+#!/bin/sh
- 
- op=""
- options=""
-Index: pacemaker-1.0-Pacemaker-1.0.9.1/extra/resources/o2cb
-===================================================================
---- pacemaker-1.0-Pacemaker-1.0.9.1.orig/extra/resources/o2cb
-+++ pacemaker-1.0-Pacemaker-1.0.9.1/extra/resources/o2cb
-@@ -1,4 +1,4 @@
--#!/bin/bash
-+#!/bin/sh
- # Copyright (c) 2005,2008 Oracle 
- # Copyright (c) 2008 Andrew Beekhof
- #                    All Rights Reserved.
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-remove-native-includes.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-remove-native-includes.patch
deleted file mode 100644
index a168540..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-remove-native-includes.patch
+++ /dev/null
@@ -1,22 +0,0 @@
-Index: Pacemaker-1-0-Pacemaker-1.0.8/configure.ac
-===================================================================
---- Pacemaker-1-0-Pacemaker-1.0.8.orig/configure.ac	2010-03-16 22:46:38.000000000 +0300
-+++ Pacemaker-1-0-Pacemaker-1.0.8/configure.ac	2010-03-23 00:06:28.000000000 +0300
-@@ -325,7 +325,6 @@
- 		;;
- *linux*)	
- 		AC_DEFINE_UNQUOTED(ON_LINUX, 1, Compiling for Linux platform)
--  		CFLAGS="$CFLAGS -I${prefix}/include"
-  		;;
- darwin*)	
- 		AC_DEFINE_UNQUOTED(ON_DARWIN, 1, Compiling for Darwin platform)
-@@ -334,9 +333,6 @@
- 		;;
- esac
- 
--dnl Eventually remove this 
--CFLAGS="$CFLAGS -I${prefix}/include/heartbeat"
--
- AC_SUBST(INIT_EXT)
- AC_DEFINE_UNQUOTED(HA_LOG_FACILITY, LOG_DAEMON, Default logging facility)
- 
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-config.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-config.patch
new file mode 100644
index 0000000..ea9380e
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-config.patch
@@ -0,0 +1,49 @@
+From a6b792b9abb26e810ad9ca11be31998c7e97db6c Mon Sep 17 00:00:00 2001
+From: Bian Naimeng <biannm@cn.fujitsu.com>
+Date: Fri, 3 Jul 2015 15:48:58 +0900
+Subject: [PATCH 1/2] pacemaker: fix xml config
+
+Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+---
+ configure.ac | 17 ++++++-----------
+ 1 file changed, 6 insertions(+), 11 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index 03f543d..25af918 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -533,7 +533,6 @@ AC_PATH_PROGS(TAR, tar)
+ AC_PATH_PROGS(MD5, md5)
+ AC_PATH_PROGS(TEST, test)
+ AC_PATH_PROGS(PKGCONFIG, pkg-config)
+-AC_PATH_PROGS(XML2CONFIG, xml2-config)
+ AC_PATH_PROGS(VALGRIND_BIN, valgrind, /usr/bin/valgrind)
+ AC_DEFINE_UNQUOTED(VALGRIND_BIN, "$VALGRIND_BIN", Valgrind command)
+ 
+@@ -779,17 +778,13 @@ dnl AC_CHECK_HEADERS(netinet/icmp6.h)
+ dnl AC_CHECK_HEADERS(netinet/ip6.h)
+ dnl AC_CHECK_HEADERS(netinet/ip_icmp.h)
+ 
+-AC_MSG_CHECKING(for special libxml2 includes)
+-if test "x$XML2CONFIG" = "x"; then
+-   AC_MSG_ERROR(libxml2 config not found)
+-else
+-   XML2HEAD="`$XML2CONFIG --cflags`"
+-   AC_MSG_RESULT($XML2HEAD)
+-   AC_CHECK_LIB(xml2, xmlReadMemory)
+-   AC_CHECK_LIB(xslt, xsltApplyStylesheet)
+-fi
++PKG_CHECK_MODULES([XML], [libxml-2.0])
++PKG_CHECK_MODULES([XSLT], [libxslt])
++
++AC_CHECK_LIB(xml2, xmlReadMemory)
++AC_CHECK_LIB(xslt, xsltApplyStylesheet)
+ 
+-CPPFLAGS="$CPPFLAGS $XML2HEAD"
++CPPFLAGS="$CPPFLAGS $XML_CFLAGS"
+ 
+ AC_CHECK_HEADERS(libxml/xpath.h)
+ AC_CHECK_HEADERS(libxslt/xslt.h)
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
new file mode 100644
index 0000000..7e5f499
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
@@ -0,0 +1,45 @@
+From 1fef2f6adaef3c56649adce4aca1b0ef2214c13b Mon Sep 17 00:00:00 2001
+From: Bian Naimeng <biannm@cn.fujitsu.com>
+Date: Fri, 3 Jul 2015 15:55:52 +0900
+Subject: [PATCH 2/2] pacemaker: search header from STAGING_INCDIR to
+ walkaround error
+
+ ** -I/usr/include/ is unsafe for cross-compilation
+
+ ... ...
+
+ ** This autoconf log indicates errors, it looked at host include and/or library paths
+ ** while determining system capabilities
+
+Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+---
+ configure.ac | 6 ++++--
+ 1 file changed, 4 insertions(+), 2 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index 25af918..4dee123 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -451,7 +451,8 @@ case "$host_os" in
+ 		;;
+ *linux*)
+ 		AC_DEFINE_UNQUOTED(ON_LINUX, 1, Compiling for Linux platform)
+-  		CFLAGS="$CFLAGS -I${prefix}/include"
++		CFLAGS="$CFLAGS -I${STAGING_INCDIR}"
++		CPPFLAGS="$CPPFLAGS -I${STAGING_INCDIR}/heartbeat"
+  		;;
+ darwin*)
+ 		AC_DEFINE_UNQUOTED(ON_DARWIN, 1, Compiling for Darwin platform)
+@@ -461,7 +462,8 @@ darwin*)
+ esac
+ 
+ dnl Eventually remove this
+-CFLAGS="$CFLAGS -I${prefix}/include/heartbeat"
++CFLAGS="$CFLAGS -I${STAGING_INCDIR}/heartbeat"
++CPPFLAGS="$CPPFLAGS -I${STAGING_INCDIR}/heartbeat"
+ 
+ AC_SUBST(INIT_EXT)
+ AC_MSG_NOTICE(Host CPU: $host_cpu)
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-header-defs-lookup.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-header-defs-lookup.patch
new file mode 100644
index 0000000..939ecab
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-header-defs-lookup.patch
@@ -0,0 +1,29 @@
+From 1a84908d57291a82e35eaa9369144a398e2265bf Mon Sep 17 00:00:00 2001
+From: Bian Naimeng <biannm@cn.fujitsu.com>
+Date: Fri, 3 Jul 2015 16:30:25 +0900
+Subject: [PATCH 4/4] pacemaker: fix header defs lookup
+
+Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+---
+ configure.ac | 5 ++---
+ 1 file changed, 2 insertions(+), 3 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index cb47011..d37eccf 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -141,9 +141,8 @@ extract_header_define() {
+ 	  Cfile=$srcdir/extract_define.$2.${$}
+ 	  printf "#include <stdio.h>\n" > ${Cfile}.c
+ 	  printf "#include <%s>\n" $1 >> ${Cfile}.c
+-	  printf "int main(int argc, char **argv) { printf(\"%%s\", %s); return 0; }\n" $2 >> ${Cfile}.c
+-	  $CC $CFLAGS ${Cfile}.c -o ${Cfile}
+-	  value=`${Cfile}`
++	  printf "\"%s\":%s\n" $2 $2 >> ${Cfile}.c
++	  value=`$CC $CFLAGS -E ${Cfile}.c | grep \"$2\" | cut -f 2 -d ':' | sed 's,^",,' | sed 's,"$,,'`
+ 	  AC_MSG_RESULT($value)
+ 	  printf $value
+ 	  rm -rf ${Cfile}.c ${Cfile} ${Cfile}.dSYM ${Cfile}.gcno
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not-build-help.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not-build-help.patch
new file mode 100644
index 0000000..9a2db0a
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not-build-help.patch
@@ -0,0 +1,29 @@
+From cba9add61c72c734af8a7a16ad33e62457413ed8 Mon Sep 17 00:00:00 2001
+From: Bian Naimeng <biannm@cn.fujitsu.com>
+Date: Fri, 3 Jul 2015 17:27:52 +0900
+Subject: [PATCH 5/5] pacemaker: do not build help
+
+Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+---
+ configure.ac | 5 +----
+ 1 file changed, 1 insertion(+), 4 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index d37eccf..3c08524 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -549,10 +549,7 @@ if test x"${MAKE}" = x""; then
+    AC_MSG_ERROR(You need (g)make installed in order to build ${PACKAGE})
+ fi
+ 
+-AM_CONDITIONAL(BUILD_HELP, test x"${HELP2MAN}" != x"")
+-if test x"${HELP2MAN}" != x""; then
+-   PCMK_FEATURES="$PCMK_FEATURES generated-manpages"
+-fi
++AM_CONDITIONAL(BUILD_HELP, test x"Do not build help" = x"")
+ 
+ MANPAGE_XSLT=""
+ if test x"${XSLTPROC}" != x""; then
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program-while-cross-.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program-while-cross-.patch
new file mode 100644
index 0000000..b1aa58f
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program-while-cross-.patch
@@ -0,0 +1,43 @@
+From 9ad877d3f4294e5aa8b479cc81fa10250134ccc3 Mon Sep 17 00:00:00 2001
+From: Bian Naimeng <biannm@cn.fujitsu.com>
+Date: Mon, 6 Jul 2015 12:20:17 +0900
+Subject: [PATCH] pacemaker: do not execute target program while cross compile
+
+Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+---
+ Makefile.common | 8 +++++---
+ 1 file changed, 5 insertions(+), 3 deletions(-)
+
+diff --git a/Makefile.common b/Makefile.common
+index 5163261..630cab6 100644
+--- a/Makefile.common
++++ b/Makefile.common
+@@ -36,6 +36,8 @@ if BUILD_HELP
+ man8_MANS		= $(sbin_PROGRAMS:%=%.8) $(sbin_SCRIPTS:%=%.8)
+ endif
+ 
++man7_MANS		=
++
+ %.8:	% $(MAN8DEPS)
+ 	chmod a+x $(abs_builddir)/$<
+ 	$(PCMK_V) PATH=$$PATH:$(abs_builddir) $(abs_builddir)/$< --help
+@@ -43,13 +45,13 @@ endif
+ 	$(AM_V_MAN)PATH=$$PATH:$(abs_builddir) $(HELP2MAN) --output $@ --no-info --section 8 --name "Part of the Pacemaker cluster resource manager" $(abs_builddir)/$<
+ 
+ %.xml:  %
+-	$(AM_V_GEN)$(abs_builddir)/$< metadata > $@
++	@echo "xml for $<: Do not try to execute target program here"
+ 
+ %.dbook: %.xml
+-	$(AM_V_XSL)$(XSLTPROC) --nonet --novalid --stringparam man.name $* $(DBOOK_OPTS) $(top_srcdir)/xml/ocf-meta2man.xsl $(abs_builddir)/$< > $(abs_builddir)/$@
++	@echo "dbook for $<: Do not try to execute target program here"
+ 
+ %.7:	%.dbook
+-	$(AM_V_XSL)$(XSLTPROC) $(MANPAGE_XSLT) $(abs_builddir)/$< $(PCMK_quiet)
++	@echo "man7 for $<: Do not try to execute target program here"
+ 
+ # Build docbook from asciidoc because XML is a PITA to edit
+ #
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
deleted file mode 100644
index a5cd284..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
+++ /dev/null
@@ -1,95 +0,0 @@
-DESCRIPTION = "Scalable High-Availability cluster resource manager"
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM="file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
-DEPENDS = " \
-	bzip2 \
-	cluster-glue \
-	cluster-resource-agents \
-	glib-2.0 \
-	gnutls \
-	libxml2 \
-	libxslt \
-	ncurses \
-	openais \
-	python-native \
-	util-linux \
-	zlib \
-	"
-RDEPENDS_${PN} += "openais"
-
-#PR = "r2"
-
-SRC_URI = " \
-    https://github.com/ClusterLabs/pacemaker-1.0/archive/Pacemaker-${PV}.tar.gz \
-    file://pacemaker-remove-native-includes.patch \
-    file://pacemaker-dont-use-help2man.patch \
-    file://fix-header-defs-lookup.patch \
-    file://pacemaker-remove-ptest-functionality.patch \
-    file://pacemaker-fix-xml-config.patch \
-    file://pacemaker-no-bash.patch \
-	file://volatiles \
-	file://tmpfiles \
-	"
-SRC_URI_append_libc-uclibc = " file://kill-stack-protector.patch"
-SRC_URI[md5sum] = "103fb2e804be3f8ace17021c5d9ad15d"
-SRC_URI[sha256sum] = "aabfc9ee1c66804151d973d0ed0323798ffebe49e1c2219fa804dc6898a69a1e"
-inherit autotools-brokensep python-dir pkgconfig useradd
-
-S = "${WORKDIR}/pacemaker-1.0-Pacemaker-${PV}"
-
-EXTRA_OECONF = "--with-ais --without-heartbeat --disable-fatal-warnings --disable-pretty"
-
-CFLAGS += "-I${STAGING_INCDIR}/heartbeat -lncurses"
-
-USERADD_PACKAGES = "${PN}"
-USERADD_PARAM_${PN} = "--home-dir=${localstatedir}/lib/heartbeat -g haclient -r hacluster"
-GROUPADD_PARAM_${PN} = "-r haclient"
-
-do_install_append() {
-	install -d ${D}${sysconfdir}/default/volatiles
-	install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/06_pacemaker
-	install -d ${D}${sysconfdir}/tmpfiles.d
-	install -m 0644 ${WORKDIR}/tmpfiles ${D}${sysconfdir}/tmpfiles.d/${PN}.conf
-	find ${D} -name "*.pyo" -exec rm {} \;
-	find ${D} -name "*.pyc" -exec rm {} \;
-	find ${D} -name "*.py" | xargs sed -i -e "s:${STAGING_BINDIR_NATIVE}:${bindir}:g"
-}
-
-pkg_postinst_${PN} () {
-	if [ -z "$D" ]; then
-		if type systemd-tmpfiles >/dev/null; then
-			systemd-tmpfiles --create
-		elif [ -e ${sysconfdir}/init.d/populate-volatile.sh ]; then
-			${sysconfdir}/init.d/populate-volatile.sh update
-		fi
-	fi
-}
-FILES_${PN}-doc += "${datadir}/pacemaker/crm_cli.txt ${datadir}/pacemaker/templates/"
-FILES_${PN} += " \
-    /run \
-    ${libdir}/corosync \
-    ${libdir}/python2.7 \
-	${libdir}/service_crm.so \
-	${libdir}/ocf/resource.d/pacemaker \
-	${libdir}/heartbeat/attrd \
-	${libdir}/heartbeat/c* \
-	${libdir}/heartbeat/pengine \
-	${libdir}/heartbeat/pingd \
-	${libdir}/heartbeat/plugins/RAExec/stonith.so \
-	${libdir}/heartbeat/stonithd \
-	${datadir}/pacemaker/*.rng \
-	"
-FILES_${PN}-dbg += "${libdir}/heartbeat/.debug ${libdir}/heartbeat/plugins/RAExec/.debug/ ${libdir}/heartbeat/stonithdtest/.debug/ ${libexecdir}/lcrso/.debug ${libdir}/corosync/lcrso/.debug"
-FILES_${PN}-dev += "${libdir}/heartbeat/plugins/RAExec/*.la"
-FILES_${PN}-staticdev += "${libdir}/heartbeat/plugins/RAExec/*.a"
-
-PACKAGES =+ "${PN}-crm ${PN}-hb2openais ${PN}-haresources2cib ${PN}-tests ${PN}-snmp"
-FILES_${PN}-crm = "${sbindir}/crm ${PYTHON_SITEPACKAGES_DIR} ${libdir}/heartbeat/crm_primitive.py "
-RDEPENDS_${PN}-crm += "python-core"
-FILES_${PN}-hb2openais = "${libdir}/heartbeat/hb2openais.sh ${libdir}/heartbeat/hb2openais-helper.py"
-RDEPENDS_${PN}-hb2openais += "python-core"
-FILES_${PN}-haresources2cib = "${libdir}/heartbeat/haresources2cib.py"
-RDEPENDS_${PN}-haresources2cib += "python-core"
-FILES_${PN}-tests = "${datadir}/pacemaker/tests ${datadir}/pacemaker/stonithdtest ${libdir}/heartbeat/atest ${libdir}/heartbeat/stonithdtest/*"
-RDEPENDS_${PN}-tests += "python-core bash"
-FILES_${PN}-snmp = "${datadir}/snmp/mibs/PCMK-MIB.txt"
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.12.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.12.bb
new file mode 100644
index 0000000..a58f0b0
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.12.bb
@@ -0,0 +1,92 @@
+SUMMARY = "Scalable High-Availability cluster resource manager"
+DESCRIPTION = "Pacemaker is an advanced, scalable High-Availability \
+cluster resource manager for Linux-HA (Heartbeat) and/or OpenAIS. \
+It supports n-node clusters with significant capabilities for \
+managing resources and dependencies. \
+It will run scripts at initialization, when machines go up or down, \
+when related resources fail and can be configured to periodically \
+check resource health."
+HOMEPAGE = "http://www.clusterlabs.org"
+
+LICENSE = "GPLv2+ & LGPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=6adca3b36477cc77e04376f9a40df32c \
+                    file://COPYING.LIB;md5=243b725d71bb5df4a1e5920b344b86ad \
+                   "
+DEPENDS = "corosync libxslt openais libxml2 gnutls resource-agents python-native"
+
+SRC_URI = "https://codeload.github.com/ClusterLabs/${BPN}/tar.gz/Pacemaker-1.1.12;downloadfilename=${BPN}-${PV}.tar.gz \
+           file://0001-pacemaker-fix-xml-config.patch \
+           file://0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch \
+           file://0003-pacemaker-fix-header-defs-lookup.patch \
+           file://0004-pacemaker-do-not-build-help.patch \
+           file://0005-pacemaker-do-not-execute-target-program-while-cross-.patch \
+           file://volatiles \
+           file://tmpfiles \
+          "
+
+SRC_URI[md5sum] = "c5c28013efb08441ab74a12034d9e9b4"
+SRC_URI[sha256sum] = "f5c72b609fac18d362880d120f08f990e8afd9388e6ff86c55cd93900ba54d9c"
+
+inherit autotools-brokensep pkgconfig systemd python-dir
+
+S="${WORKDIR}/pacemaker-Pacemaker-${PV}"
+
+EXTRA_OECONF += "STAGING_INCDIR=${STAGING_INCDIR} \
+                 --disable-fatal-warnings \
+                 --with-ais \
+                 --without-heartbeat \
+                 --disable-pretty \
+                "
+
+do_install_append() {
+    install -d ${D}${sysconfdir}/default
+    install -d ${D}${sysconfdir}/default/volatiles
+    install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/06_${PN}
+    install -d ${D}${sysconfdir}/tmpfiles.d
+    install -m 0644 ${WORKDIR}/tmpfiles ${D}${sysconfdir}/tmpfiles.d/${PN}.conf
+
+    # Don't package some files
+    find ${D} -name "*.pyo" -exec rm {} \;
+    find ${D} -name "*.pyc" -exec rm {} \;
+    rm -rf ${D}/${libdir}/service_crm.so
+
+    rm -rf ${D}${localstatedir}/run
+}
+
+PACKAGES_prepend = "${PN}-cli-utils ${PN}-libs ${PN}-cluster-libs ${PN}-remote "
+
+FILES_${PN}-cli-utils = "${sbindir}/crm* ${sbindir}/iso8601"
+RDEPENDS_${PN}-cli-utils += "libqb bash"
+FILES_${PN}-libs = "${libdir}/libcib.so.* \
+                    ${libdir}/liblrmd.so.* \
+                    ${libdir}/libcrmservice.so.* \
+                    ${libdir}/libcrmcommon.so.* \
+                    ${libdir}/libpe_status.so.* \
+                    ${libdir}/libpe_rules.so.* \
+                    ${libdir}/libpengine.so.* \
+                    ${libdir}/libstonithd.so.* \
+                    ${libdir}/libtransitioner.so.* \
+                   "
+RDEPENDS_${PN}-libs += "libqb"
+FILES_${PN}-cluster-libs = "${libdir}/libcrmcluster.so.*"
+RDEPENDS_${PN}-cluster-libs += "libqb"
+FILES_${PN}-remote = "${sysconfdir}/init.d/pacemaker_remote \
+                      ${sbindir}/pacemaker_remoted \
+                      ${libdir}/ocf/resource.d/pacemaker/remote \
+                     "
+RDEPENDS_${PN}-remote += "libqb bash"
+FILES_${PN} += " ${datadir}/snmp                             \
+                 ${libdir}/corosync/lcrso/pacemaker.lcrso    \
+                 ${PYTHON_SITEPACKAGES_DIR} \
+                 ${libdir}/ocf/resource.d/ \
+               "
+FILES_${PN}-dbg += "${libdir}/corosync/lcrso/.debug"
+RDEPENDS_${PN} = "bash python libqb"
+
+SYSTEMD_PACKAGES += "${PN}-remote"
+SYSTEMD_SERVICE_${PN} += "pacemaker.service"
+SYSTEMD_SERVICE_${PN}-remote += "pacemaker_remote.service"
+
+USERADD_PACKAGES = "${PN}"
+USERADD_PARAM_${PN} = "-r -g haclient -s ${base_sbindir}/nologin hacluster"
+GROUPADD_PARAM_${PN} = "-r haclient"
-- 
1.8.4.2


