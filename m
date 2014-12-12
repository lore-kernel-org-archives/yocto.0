Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D36A2E0099B; Thu, 11 Dec 2014 21:26:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B61DE00993
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 21:26:30 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="44928343"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 12 Dec 2014 13:23:11 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id sBC5Q7uc018082
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 13:26:07 +0800
Received: from localhost.localdomain (10.167.226.35) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Fri, 12 Dec 2014 13:26:30 +0800
From: Li xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Fri, 12 Dec 2014 13:25:10 +0800
Message-ID: <1418361910-6668-3-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1418361910-6668-1-git-send-email-lixin.fnst@cn.fujitsu.com>
References: <1418361910-6668-1-git-send-email-lixin.fnst@cn.fujitsu.com>
MIME-Version: 1.0
X-Originating-IP: [10.167.226.35]
Subject: [meta-cgl][PATCH 2/2] pacemaker: upgrade to version 1.1.4
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
X-List-Received-Date: Fri, 12 Dec 2014 05:26:35 -0000
Content-Type: text/plain

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 .../pacemaker/files/kill-stack-protector.patch     |  12 --
 .../pacemaker-remove-ptest-functionality.patch     |  29 -----
 .../recipes-cgl/pacemaker/files/volatiles          |   5 -
 .../pacemaker-1.0.9.1/fix-header-defs-lookup.patch |  16 ---
 .../pacemaker-dont-use-help2man.patch              |  16 ---
 .../pacemaker-remove-native-includes.patch         |  22 ----
 .../pacemaker/0001-configure.ac-error-fix.patch    |  59 ++++++++++
 .../pacemaker/0002-Makefile.am-error-fix.patch     | 130 +++++++++++++++++++++
 .../recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb     |  83 -------------
 .../recipes-cgl/pacemaker/pacemaker_1.1.4.bb       |  84 +++++++++++++
 10 files changed, 273 insertions(+), 183 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/files/kill-stack-protector.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/files/pacemaker-remove-ptest-functionality.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/fix-header-defs-lookup.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-dont-use-help2man.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-remove-native-includes.patch
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-configure.ac-error-fix.patch
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-Makefile.am-error-fix.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.4.bb

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
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
deleted file mode 100644
index 9ad1434..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
+++ /dev/null
@@ -1,5 +0,0 @@
-d hacluster haclient 0750 /var/lib/heartbeat/crm none
-d hacluster haclient 0755 /var/lib/pengine none
-d hacluster haclient 0755 /var/run/heartbeat none
-d hacluster haclient 0755 /var/run/heartbeat/rsctmp none
-d hacluster haclient 0755 /var/run/crm none
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
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-configure.ac-error-fix.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-configure.ac-error-fix.patch
new file mode 100644
index 0000000..8e50dcf
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-configure.ac-error-fix.patch
@@ -0,0 +1,59 @@
+From dff3b2e34f6bfc654c9b8146146d1868129a6d0e Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Thu, 11 Dec 2014 16:28:01 +0900
+Subject: [PATCH 1/2] configure.ac: error fix
+
+this patch is modify the include directory to fix the error:
+'HA_LIBHBDIR' undeclared (first use in this function)
+and so on.
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ configure.ac | 8 ++++----
+ 1 file changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index 5859cd6..3a0db25 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -107,7 +107,7 @@ extract_header_define() {
+ 	  printf "#include <stdio.h>\n" > ${Cfile}.c
+ 	  printf "#include <%s>\n" $1 >> ${Cfile}.c
+ 	  printf "int main(int argc, char **argv) { printf(\"%%s\", %s); return 0; }\n" $2 >> ${Cfile}.c
+-	  $CC $CFLAGS ${Cfile}.c -o ${Cfile}
++	  gcc -I/usr/include/heartbeat/ ${Cfile}.c -o ${Cfile}
+ 	  value=`${Cfile}`
+ 	  AC_MSG_RESULT($value)
+ 	  printf $value
+@@ -359,7 +359,7 @@ case "$host_os" in
+ 		;;
+ *linux*)	
+ 		AC_DEFINE_UNQUOTED(ON_LINUX, 1, Compiling for Linux platform)
+-  		CFLAGS="$CFLAGS -I${prefix}/include"
++  		CFLAGS="$CFLAGS -I${STAGING_DIR_TARGET}/${prefix}/include"
+  		;;
+ darwin*)	
+ 		AC_DEFINE_UNQUOTED(ON_DARWIN, 1, Compiling for Darwin platform)
+@@ -369,7 +369,7 @@ darwin*)
+ esac
+ 
+ dnl Eventually remove this 
+-CFLAGS="$CFLAGS -I${prefix}/include/heartbeat"
++CFLAGS="$CFLAGS -I${STAGING_DIR_TARGET}/${prefix}/include/heartbeat"
+ 
+ AC_SUBST(INIT_EXT)
+ AC_DEFINE_UNQUOTED(HA_LOG_FACILITY, LOG_DAEMON, Default logging facility)
+@@ -757,7 +757,7 @@ AC_MSG_CHECKING(for special libxml2 includes)
+ if test "x$XML2CONFIG" = "x"; then
+    AC_MSG_ERROR(libxml2 config not found)
+ else
+-   XML2HEAD="`$XML2CONFIG --cflags`"
++   XML2HEAD="-I${STAGING_INCDIR}/libxml2/"
+    AC_MSG_RESULT($XML2HEAD)
+    AC_CHECK_LIB(xml2, xmlReadMemory)
+    AC_CHECK_LIB(xslt, xsltApplyStylesheet)
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-Makefile.am-error-fix.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-Makefile.am-error-fix.patch
new file mode 100644
index 0000000..476c17f
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-Makefile.am-error-fix.patch
@@ -0,0 +1,130 @@
+From ffb2459e5f24d4ec94e376cf0477cb27bdef6b03 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Thu, 11 Dec 2014 16:39:42 +0900
+Subject: [PATCH 2/2] Makefile.am: error fix
+
+ERROR: This autoconf log indicates errors, it looked at host
+include and/or library paths while determining system capabilities.
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ Makefile.am         | 2 +-
+ cib/Makefile.am     | 2 +-
+ crmd/Makefile.am    | 7 -------
+ fencing/Makefile.am | 2 +-
+ mcp/Makefile.am     | 2 +-
+ pengine/Makefile.am | 8 +-------
+ tools/Makefile.am   | 2 +-
+ 7 files changed, 6 insertions(+), 19 deletions(-)
+
+diff --git a/Makefile.am b/Makefile.am
+index 5be06ea..b364159 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -23,7 +23,7 @@ EXTRA_DIST              = autogen.sh ConfigureMe README.in libltdl.tar
+ MAINTAINERCLEANFILES    = Makefile.in aclocal.m4 configure DRF/config-h.in \
+                         DRF/stamp-h.in libtool.m4 ltdl.m4 libltdl.tar
+ 
+-SUBDIRS	= $(LIBLTDL_DIR) replace include lib mcp pengine cib crmd fencing tools shell xml cts extra doc
++SUBDIRS	= $(LIBLTDL_DIR) replace include lib mcp pengine cib crmd fencing shell xml cts extra doc
+ 
+ doc_DATA = AUTHORS COPYING COPYING.LIB
+ 
+diff --git a/cib/Makefile.am b/cib/Makefile.am
+index 3ab5133..091c395 100644
+--- a/cib/Makefile.am
++++ b/cib/Makefile.am
+@@ -38,7 +38,7 @@ man8_MANS =	$(sbin_PROGRAMS:%=%.8)
+ %.8:	%
+ 	echo Creating $@
+ 	chmod a+x $<
+-	help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker cluster resource manager" $(top_builddir)/cib/$<
++	help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker cluster resource manager" /usr/sbin/$<
+ endif
+ 
+ ## SOURCES
+diff --git a/crmd/Makefile.am b/crmd/Makefile.am
+index 6c6419b..12e8f8c 100644
+--- a/crmd/Makefile.am
++++ b/crmd/Makefile.am
+@@ -50,13 +50,6 @@ crmd_LDADD	= $(CLUSTERLIBS) -llrm					\
+ 		$(top_builddir)/lib/common/libcrmcommon.la
+ 
+ if BUILD_XML_HELP
+-man8_MANS =	crmd.8
+-
+-%.xml:	%
+-	$(top_builddir)/crmd/$< metadata | $(XSLTPROC) --nonet --novalid --stringparam man.name $< $(top_srcdir)/xml/ocf-meta2man.xsl - > $(top_builddir)/crmd/$@
+-
+-%.8:	%.xml
+-	$(XSLTPROC) $(MANPAGE_XSLT) $(top_builddir)/crmd/$<
+ endif
+ 
+ clean-generic:
+diff --git a/fencing/Makefile.am b/fencing/Makefile.am
+index 6bb6426..b8058e7 100644
+--- a/fencing/Makefile.am
++++ b/fencing/Makefile.am
+@@ -31,7 +31,7 @@ man8_MANS =	$(sbin_PROGRAMS:%=%.8) fence_legacy.8
+ %.8:	%
+ 	echo Creating $@
+ 	chmod a+x $<
+-	help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker cluster resource manager" $(top_builddir)/fencing/$<
++	help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker cluster resource manager" /usr/sbin/$<
+ endif
+ 
+ stonith_test_SOURCES	= test.c
+diff --git a/mcp/Makefile.am b/mcp/Makefile.am
+index 535087e..37207ea 100644
+--- a/mcp/Makefile.am
++++ b/mcp/Makefile.am
+@@ -39,7 +39,7 @@ pacemakerd_LDADD	= $(CLUSTERLIBS) $(top_builddir)/lib/common/libcrmcommon.la -lc
+ %.8:	%
+ 	echo Creating $@
+ 	chmod a+x $(top_builddir)/mcp/$<
+-	help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker cluster resource manager" $(top_builddir)/mcp/$<
++	help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker cluster resource manager" /usr/sbin/$<
+ 
+ clean-generic:
+ 	rm -f *.log *.debug *.xml *~
+diff --git a/pengine/Makefile.am b/pengine/Makefile.am
+index 3d4e898..9bc63f0 100644
+--- a/pengine/Makefile.am
++++ b/pengine/Makefile.am
+@@ -49,17 +49,11 @@ man8_MANS =
+ if BUILD_HELP
+ man8_MANS +=	ptest.8
+ ptest.8:	ptest
+-	help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker cluster resource manager" $(top_builddir)/pengine/$<
++	help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker cluster resource manager" /usr/sbin/$<
+ endif
+ 
+ if BUILD_XML_HELP
+-man8_MANS +=	pengine.8
+ 
+-pengine.xml:	pengine
+-	$(top_builddir)/pengine/$< metadata | $(XSLTPROC) --nonet --novalid --stringparam man.name $< $(top_srcdir)/xml/ocf-meta2man.xsl - > $(top_builddir)/pengine/$@
+-
+-pengine.8:	pengine.xml
+-	$(XSLTPROC) $(MANPAGE_XSLT) $(top_builddir)/pengine/$<
+ endif
+ 
+ ## SOURCES
+diff --git a/tools/Makefile.am b/tools/Makefile.am
+index 8fdc4df..8fba4a7 100644
+--- a/tools/Makefile.am
++++ b/tools/Makefile.am
+@@ -136,7 +136,7 @@ endif
+ %.8:	% crm_attribute
+ 	echo Creating $@
+ 	chmod a+x $(top_builddir)/tools/$<
+-	PATH=$$PATH:$(top_builddir)/tools help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker cluster resource manager" $(top_builddir)/tools/$<
++	PATH=$$PATH:$(top_builddir)/tools help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker cluster resource manager" /usr/sbin/$<
+ 
+ clean-generic:
+ 	rm -f *.log *.debug *.xml *~
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
deleted file mode 100644
index e492102..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
+++ /dev/null
@@ -1,83 +0,0 @@
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
-	file://volatiles \
-	"
-SRC_URI_append_libc-uclibc = " file://kill-stack-protector.patch"
-SRC_URI[md5sum] = "103fb2e804be3f8ace17021c5d9ad15d"
-SRC_URI[sha256sum] = "aabfc9ee1c66804151d973d0ed0323798ffebe49e1c2219fa804dc6898a69a1e"
-inherit autotools-brokensep python-dir
-
-S = "${WORKDIR}/pacemaker-1.0-Pacemaker-${PV}"
-
-EXTRA_OECONF = "--with-ais --without-heartbeat --disable-fatal-warnings --disable-pretty"
-
-CFLAGS += "-I${STAGING_INCDIR}/heartbeat -lncurses"
-
-do_install_append() {
-	install -d ${D}${sysconfdir}/default/volatiles
-	install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/06_pacemaker
-	find ${D} -name "*.pyo" -exec rm {} \;
-	find ${D} -name "*.pyc" -exec rm {} \;
-	find ${D} -name "*.py" | xargs sed -i -e "s:${STAGING_BINDIR_NATIVE}:${bindir}:g"
-}
-
-pkg_postinst_${PN} () {
-	set -e
-	grep haclient /etc/group || addgroup haclient
-	grep hacluster /etc/passwd || adduser --disabled-password --home=${localstatedir}/lib/heartbeat --ingroup haclient -g "HA cluster" hacluster
-	/etc/init.d/populate-volatile.sh update
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
-RDEPENDS_${PN}-test += "python-core"
-FILES_${PN}-snmp = "${datadir}/snmp/mibs/PCMK-MIB.txt"
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.4.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.4.bb
new file mode 100644
index 0000000..7d9127b
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.4.bb
@@ -0,0 +1,84 @@
+SUMMARY = "Scalable High-Availability cluster resource manager"
+DESCRIPTION = "Pacemaker is an advanced, scalable High-Availability cluster resource \
+manager for Linux-HA (Heartbeat) and/or OpenAIS. \
+It supports n-node clusters with significant capabilities for \
+managing resources and dependencies. \
+It will run scripts at initialization, when machines go up or down, \
+when related resources fail and can be configured to periodically check \
+resource health."
+HOMEPAGE = "http://www.clusterlabs.org"
+SECTION = "System Environment/Daemons"
+
+inherit autotools-brokensep
+SRC_URI = " \
+    https://github.com/ClusterLabs/${PN}/archive/Pacemaker-${PV}.zip \
+    file://0001-configure.ac-error-fix.patch \
+    file://0002-Makefile.am-error-fix.patch \
+"
+SRC_URI[md5sum] = "d58ff8b56a9943ab1d3a1b82632f4ace"
+SRC_URI[sha256sum] = "375309a8a0c1ddee3657eeeb5d2535737886d8cf971af226b7e83063ddfd5e0d"
+
+LICENSE = "GPLv2+ LGPLv2+"
+LIC_FILES_CHKSUM = " \
+    file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
+    file://COPYING.LIB;md5=243b725d71bb5df4a1e5920b344b86ad \
+"
+S = "${WORKDIR}/pacemaker-Pacemaker-1.1.4"
+DEPENDS = "heartbeat libxslt openais libxml2 cryptodev-linux nettle gnutls gmp openssl"
+
+CFLAGS_append += "-DGLIB_COMPILATION"
+CPPFLAGS_append += "-DGLIB_COMPILATION"
+EXTRA_OECONF = ' \
+    STAGING_DIR_TARGET=${STAGING_DIR_TARGET} \
+    STAGING_INCDIR=${STAGING_INCDIR} \
+    --docdir=/usr/share/doc/pacemaker \
+    --localstatedir=/var \
+    --with-initdir=/etc/init.d \
+    --enable-fatal-warnings=no \
+    --disable-ansi \
+    --disable-python \
+'
+do_configure_prepend () {
+    sed -i -e 's@\$SNMPCONFIG --agent-libs@${STAGING_DIR_HOST}/\$SNMPCONFIG  \
+        --agent-libs@g' ./configure.ac
+}
+
+do_compile_prepend() {
+    for m in `find ${S} -name "Makefile"` ; do
+        sed -i -e 's:help2man:/usr/bin/help2man:g' ${m}
+    done
+}
+
+do_install() {
+    oe_runmake DESTDIR=${D} install
+    find ${D} -name '*.xml' -type f -print0 | xargs -0 chmod a-x
+    find ${D} -name '*.xsl' -type f -print0 | xargs -0 chmod a-x
+    find ${D} -name '*.rng' -type f -print0 | xargs -0 chmod a-x
+    find ${D} -name '*.dtd' -type f -print0 | xargs -0 chmod a-x
+    # Dont package static libs or compiled python
+    find ${D} -name '*.a' -type f -print0 | xargs -0 rm -f
+    find ${D} -name '*.la' -type f -print0 | xargs -0 rm -f
+    # Don't package these either
+    rm -f ${D}/${libdir}/heartbeat/hb2openais-helper.*
+    rm -f ${D}/${libdir}/heartbeat/crm_primitive.*
+    rm -f ${D}/${libdir}/service_crm.so
+    rm -f ${D}/${libdir}/ocf/resource.d/pacemaker/pingd
+    rm -rf ${D}/${libdir}/python*
+    rm -fr ${D}/usr/lib64/python*
+    rm -fr ${D}/usr/lib64
+}
+
+ASNEEDED_pn-${PN} = ""
+FILES_${PN} += " \
+    ${datadir}/pacemaker \
+    ${datadir}/snmp \
+    ${libdir}/ocf \
+    ${libdir}/heartbeat \
+    ${libdir}/corosync/lcrso/pacemaker.lcrso \
+    run/crm \
+"
+FILES_${PN}-dbg += " \
+    ${libdir}/heartbeat/plugins/RAExec/.debug \
+    ${libexecdir}/lcrso/.debug \
+    ${libdir}/corosync/lcrso/.debug \
+"
-- 
1.8.4.2


