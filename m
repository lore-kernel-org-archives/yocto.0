Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A0D1E00753; Mon,  5 Jan 2015 01:49:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id E67FCE003E3
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 01:48:51 -0800 (PST)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0158.001; Mon, 5 Jan 2015 10:48:46 +0100
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: Li xin <lixin.fnst@cn.fujitsu.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH 2/2] pacemaker: upgrade to version 1.1.4
Thread-Index: AQHQFc1CSaImDGJ6LEi2CjV3hecRXJyxbVSQ
Date: Mon, 5 Jan 2015 09:48:45 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D7565A0@SESTOEX04.enea.se>
References: <1418361910-6668-1-git-send-email-lixin.fnst@cn.fujitsu.com>
	<1418361910-6668-3-git-send-email-lixin.fnst@cn.fujitsu.com>
In-Reply-To: <1418361910-6668-3-git-send-email-lixin.fnst@cn.fujitsu.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.189]
MIME-Version: 1.0
Subject: Re: [meta-cgl][PATCH 2/2] pacemaker: upgrade to version 1.1.4
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
X-List-Received-Date: Mon, 05 Jan 2015 09:49:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Sorry for the delayed answer, but I was not able to build this recipe.=20
For me it stopped on do_configure task.

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Li xin
Sent: Friday, December 12, 2014 7:25 AM
To: yocto@yoctoproject.org
Subject: [yocto] [meta-cgl][PATCH 2/2] pacemaker: upgrade to version 1.1.4

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 .../pacemaker/files/kill-stack-protector.patch     |  12 --
 .../pacemaker-remove-ptest-functionality.patch     |  29 -----
 .../recipes-cgl/pacemaker/files/volatiles          |   5 -
 .../pacemaker-1.0.9.1/fix-header-defs-lookup.patch |  16 ---
 .../pacemaker-dont-use-help2man.patch              |  16 ---
 .../pacemaker-remove-native-includes.patch         |  22 ----
 .../pacemaker/0001-configure.ac-error-fix.patch    |  59 ++++++++++
 .../pacemaker/0002-Makefile.am-error-fix.patch     | 130 +++++++++++++++++=
++++
 .../recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb     |  83 -------------
 .../recipes-cgl/pacemaker/pacemaker_1.1.4.bb       |  84 +++++++++++++
 10 files changed, 273 insertions(+), 183 deletions(-)  delete mode 100644 =
meta-cgl-common/recipes-cgl/pacemaker/files/kill-stack-protector.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/files/pacemaker-r=
emove-ptest-functionality.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1=
/fix-header-defs-lookup.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1=
/pacemaker-dont-use-help2man.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1=
/pacemaker-remove-native-includes.patch
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-co=
nfigure.ac-error-fix.patch
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-Ma=
kefile.am-error-fix.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1=
.bb
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.4.b=
b

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/kill-stack-protect=
or.patch b/meta-cgl-common/recipes-cgl/pacemaker/files/kill-stack-protector=
.patch
deleted file mode 100644
index a9f5b83..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/files/kill-stack-protector.patc=
h
+++ /dev/null
@@ -1,12 +0,0 @@
-Index: Pacemaker-1-0-Pacemaker-1.0.8/configure.ac
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
---- Pacemaker-1-0-Pacemaker-1.0.8.orig/configure.ac	2010-05-06 13:43:17.00=
0000000 +0400
-+++ Pacemaker-1-0-Pacemaker-1.0.8/configure.ac	2010-05-06 13:43:20.0000000=
00 +0400
-@@ -1302,7 +1302,6 @@
-=20
- 	# We had to eliminate -Wnested-externs because of libtool changes
-         EXTRA_FLAGS=3D"-fgnu89-inline
--		-fstack-protector-all
- 		-Wall
- 		-Waggregate-return
- 		-Wbad-function-cast=20
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/pacemaker-remove-p=
test-functionality.patch b/meta-cgl-common/recipes-cgl/pacemaker/files/pace=
maker-remove-ptest-functionality.patch
deleted file mode 100644
index fee2e02..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/files/pacemaker-remove-ptest-fu=
nctionality.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-diff -Naur a/pengine/Makefile.am b/pengine/Makefile.am
---- a/pengine/Makefile.am	2014-07-23 13:24:08.887745910 +0200
-+++ b/pengine/Makefile.am	2014-07-23 13:28:22.704843745 +0200
-@@ -42,12 +42,9 @@
-
- ## binary progs
- halib_PROGRAMS	=3D pengine
--sbin_PROGRAMS	=3D ptest
-
- if BUILD_HELP
--man8_MANS =3D	ptest.8
--%.8:	%
--	help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker=
 cluster resource manager" $(top_builddir)/pengine/$<
-+## removed the ptest functionality
- endif
-
- ## SOURCES
-@@ -64,11 +61,6 @@
- # libcib for get_object_root()
- #		$(top_builddir)/lib/hbclient/libhbclient.la
-=20
--ptest_SOURCES	=3D ptest.c=20
--ptest_LDADD	=3D $(COMMONLIBS)						\
--		$(top_builddir)/lib/cib/libcib.la			\
--		$(top_builddir)/lib/transition/libtransitioner.la
--
- install-exec-local:
- 	$(mkinstalldirs) $(DESTDIR)/$(PE_STATE_DIR)
- 	-chown $(CRM_DAEMON_USER) $(DESTDIR)/$(PE_STATE_DIR)
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles b/meta-c=
gl-common/recipes-cgl/pacemaker/files/volatiles
deleted file mode 100644
index 9ad1434..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
+++ /dev/null
@@ -1,5 +0,0 @@
-d hacluster haclient 0750 /var/lib/heartbeat/crm none -d hacluster haclien=
t 0755 /var/lib/pengine none -d hacluster haclient 0755 /var/run/heartbeat =
none -d hacluster haclient 0755 /var/run/heartbeat/rsctmp none -d hacluster=
 haclient 0755 /var/run/crm none diff --git a/meta-cgl-common/recipes-cgl/p=
acemaker/pacemaker-1.0.9.1/fix-header-defs-lookup.patch b/meta-cgl-common/r=
ecipes-cgl/pacemaker/pacemaker-1.0.9.1/fix-header-defs-lookup.patch
deleted file mode 100644
index 02ce26e..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/fix-header-de=
fs-lookup.patch
+++ /dev/null
@@ -1,16 +0,0 @@
-Index: Pacemaker-1-0-Pacemaker-1.0.8/configure.ac
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
---- Pacemaker-1-0-Pacemaker-1.0.8.orig/configure.ac	2010-04-06 13:08:53.00=
0000000 +0400
-+++ Pacemaker-1-0-Pacemaker-1.0.8/configure.ac	2010-04-06 13:08:58.0000000=
00 +0400
-@@ -106,9 +106,8 @@
- 	  Cfile=3D/tmp/extract_define.$2.${$}
- 	  printf "#include <stdio.h>\n" > ${Cfile}.c
- 	  printf "#include <%s>\n" $1 >> ${Cfile}.c
--	  printf "int main(int argc, char **argv) { printf(\"%%s\", %s); return =
0; }\n" $2 >> ${Cfile}.c
--	  $CC $CFLAGS ${Cfile}.c -o ${Cfile}
--	  value=3D`${Cfile}`
-+	  printf "\"%s\":%s\n" $2 $2 >> ${Cfile}.c
-+	  value=3D`$CC $CFLAGS -E ${Cfile}.c | grep \"$2\" | cut -f 2 -d ':' |=20
-+sed 's,^",,' | sed 's,"$,,'`
- 	  AC_MSG_RESULT($value)
- 	  printf $value
- 	  rm -f ${Cfile}.c ${Cfile}
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacema=
ker-dont-use-help2man.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemak=
er-1.0.9.1/pacemaker-dont-use-help2man.patch
deleted file mode 100644
index da970d5..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-don=
t-use-help2man.patch
+++ /dev/null
@@ -1,16 +0,0 @@
-Index: Pacemaker-1-0-Pacemaker-1.0.8/configure.ac
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
---- Pacemaker-1-0-Pacemaker-1.0.8.orig/configure.ac	2010-03-23 12:03:29.00=
0000000 +0300
-+++ Pacemaker-1-0-Pacemaker-1.0.8/configure.ac	2010-03-23 12:06:43.0000000=
00 +0300
-@@ -504,10 +504,7 @@
-    AC_MSG_ERROR(You need (g)make installed in order to build ${PACKAGE})
- fi
-
--AM_CONDITIONAL(BUILD_HELP, test x"${HELP2MAN}" !=3D x"") --if test x"${HE=
LP2MAN}" !=3D x""; then
--   PKG_FEATURES=3D"$PKG_FEATURES manpages"
--fi
-+AM_CONDITIONAL(BUILD_HELP, test x"" !=3D x"")
-
- AM_CONDITIONAL(BUILD_ASCIIDOC, test x"${ASCIIDOC}" !=3D x"")
- if test x"${ASCIIDOC}" !=3D x""; then
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacema=
ker-remove-native-includes.patch b/meta-cgl-common/recipes-cgl/pacemaker/pa=
cemaker-1.0.9.1/pacemaker-remove-native-includes.patch
deleted file mode 100644
index a168540..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-rem=
ove-native-includes.patch
+++ /dev/null
@@ -1,22 +0,0 @@
-Index: Pacemaker-1-0-Pacemaker-1.0.8/configure.ac
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
---- Pacemaker-1-0-Pacemaker-1.0.8.orig/configure.ac	2010-03-16 22:46:38.00=
0000000 +0300
-+++ Pacemaker-1-0-Pacemaker-1.0.8/configure.ac	2010-03-23 00:06:28.0000000=
00 +0300
-@@ -325,7 +325,6 @@
- 		;;
- *linux*)=09
- 		AC_DEFINE_UNQUOTED(ON_LINUX, 1, Compiling for Linux platform)
--  		CFLAGS=3D"$CFLAGS -I${prefix}/include"
-  		;;
- darwin*)=09
- 		AC_DEFINE_UNQUOTED(ON_DARWIN, 1, Compiling for Darwin platform)
-@@ -334,9 +333,6 @@
- 		;;
- esac
-
--dnl Eventually remove this
--CFLAGS=3D"$CFLAGS -I${prefix}/include/heartbeat"
--
- AC_SUBST(INIT_EXT)
- AC_DEFINE_UNQUOTED(HA_LOG_FACILITY, LOG_DAEMON, Default logging facility)
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-configure=
.ac-error-fix.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-=
configure.ac-error-fix.patch
new file mode 100644
index 0000000..8e50dcf
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-configure.ac-
+++ error-fix.patch
@@ -0,0 +1,59 @@
+From dff3b2e34f6bfc654c9b8146146d1868129a6d0e Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Thu, 11 Dec 2014 16:28:01 +0900
+Subject: [PATCH 1/2] configure.ac: error fix
+
+this patch is modify the include directory to fix the error:
+'HA_LIBHBDIR' undeclared (first use in this function) and so on.
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ configure.ac | 8 ++++----
+ 1 file changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/configure.ac b/configure.ac index 5859cd6..3a0db25 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -107,7 +107,7 @@ extract_header_define() {
+ 	  printf "#include <stdio.h>\n" > ${Cfile}.c
+ 	  printf "#include <%s>\n" $1 >> ${Cfile}.c
+ 	  printf "int main(int argc, char **argv) { printf(\"%%s\", %s); return =
0; }\n" $2 >> ${Cfile}.c
+-	  $CC $CFLAGS ${Cfile}.c -o ${Cfile}
++	  gcc -I/usr/include/heartbeat/ ${Cfile}.c -o ${Cfile}
+ 	  value=3D`${Cfile}`
+ 	  AC_MSG_RESULT($value)
+ 	  printf $value
+@@ -359,7 +359,7 @@ case "$host_os" in
+ 		;;
+ *linux*)=09
+ 		AC_DEFINE_UNQUOTED(ON_LINUX, 1, Compiling for Linux platform)
+-  		CFLAGS=3D"$CFLAGS -I${prefix}/include"
++  		CFLAGS=3D"$CFLAGS -I${STAGING_DIR_TARGET}/${prefix}/include"
+  		;;
+ darwin*)=09
+ 		AC_DEFINE_UNQUOTED(ON_DARWIN, 1, Compiling for Darwin platform) @@=20
+-369,7 +369,7 @@ darwin*)  esac
+=20
+ dnl Eventually remove this
+-CFLAGS=3D"$CFLAGS -I${prefix}/include/heartbeat"
++CFLAGS=3D"$CFLAGS -I${STAGING_DIR_TARGET}/${prefix}/include/heartbeat"
+=20
+ AC_SUBST(INIT_EXT)
+ AC_DEFINE_UNQUOTED(HA_LOG_FACILITY, LOG_DAEMON, Default logging=20
+facility) @@ -757,7 +757,7 @@ AC_MSG_CHECKING(for special libxml2=20
+includes)  if test "x$XML2CONFIG" =3D "x"; then
+    AC_MSG_ERROR(libxml2 config not found)  else
+-   XML2HEAD=3D"`$XML2CONFIG --cflags`"
++   XML2HEAD=3D"-I${STAGING_INCDIR}/libxml2/"
+    AC_MSG_RESULT($XML2HEAD)
+    AC_CHECK_LIB(xml2, xmlReadMemory)
+    AC_CHECK_LIB(xslt, xsltApplyStylesheet)
+--
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-Makefile.=
am-error-fix.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-M=
akefile.am-error-fix.patch
new file mode 100644
index 0000000..476c17f
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-Makefile.am-e
+++ rror-fix.patch
@@ -0,0 +1,130 @@
+From ffb2459e5f24d4ec94e376cf0477cb27bdef6b03 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Thu, 11 Dec 2014 16:39:42 +0900
+Subject: [PATCH 2/2] Makefile.am: error fix
+
+ERROR: This autoconf log indicates errors, it looked at host include=20
+and/or library paths while determining system capabilities.
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
+@@ -23,7 +23,7 @@ EXTRA_DIST              =3D autogen.sh ConfigureMe READM=
E.in libltdl.tar
+ MAINTAINERCLEANFILES    =3D Makefile.in aclocal.m4 configure DRF/config-h=
.in \
+                         DRF/stamp-h.in libtool.m4 ltdl.m4 libltdl.tar
+=20
+-SUBDIRS	=3D $(LIBLTDL_DIR) replace include lib mcp pengine cib crmd fenci=
ng tools shell xml cts extra doc
++SUBDIRS	=3D $(LIBLTDL_DIR) replace include lib mcp pengine cib crmd fenci=
ng shell xml cts extra doc
+=20
+ doc_DATA =3D AUTHORS COPYING COPYING.LIB
+=20
+diff --git a/cib/Makefile.am b/cib/Makefile.am index 3ab5133..091c395=20
+100644
+--- a/cib/Makefile.am
++++ b/cib/Makefile.am
+@@ -38,7 +38,7 @@ man8_MANS =3D	$(sbin_PROGRAMS:%=3D%.8)
+ %.8:	%
+ 	echo Creating $@
+ 	chmod a+x $<
+-	help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker=
 cluster resource manager" $(top_builddir)/cib/$<
++	help2man --output $@ --no-info --section 8 --name "Part of the=20
++Pacemaker cluster resource manager" /usr/sbin/$<
+ endif
+=20
+ ## SOURCES
+diff --git a/crmd/Makefile.am b/crmd/Makefile.am index 6c6419b..12e8f8c=20
+100644
+--- a/crmd/Makefile.am
++++ b/crmd/Makefile.am
+@@ -50,13 +50,6 @@ crmd_LDADD	=3D $(CLUSTERLIBS) -llrm					\
+ 		$(top_builddir)/lib/common/libcrmcommon.la
+=20
+ if BUILD_XML_HELP
+-man8_MANS =3D	crmd.8
+-
+-%.xml:	%
+-	$(top_builddir)/crmd/$< metadata | $(XSLTPROC) --nonet --novalid --strin=
gparam man.name $< $(top_srcdir)/xml/ocf-meta2man.xsl - > $(top_builddir)/c=
rmd/$@
+-
+-%.8:	%.xml
+-	$(XSLTPROC) $(MANPAGE_XSLT) $(top_builddir)/crmd/$<
+ endif
+=20
+ clean-generic:
+diff --git a/fencing/Makefile.am b/fencing/Makefile.am index=20
+6bb6426..b8058e7 100644
+--- a/fencing/Makefile.am
++++ b/fencing/Makefile.am
+@@ -31,7 +31,7 @@ man8_MANS =3D	$(sbin_PROGRAMS:%=3D%.8) fence_legacy.8
+ %.8:	%
+ 	echo Creating $@
+ 	chmod a+x $<
+-	help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker=
 cluster resource manager" $(top_builddir)/fencing/$<
++	help2man --output $@ --no-info --section 8 --name "Part of the=20
++Pacemaker cluster resource manager" /usr/sbin/$<
+ endif
+=20
+ stonith_test_SOURCES	=3D test.c
+diff --git a/mcp/Makefile.am b/mcp/Makefile.am index 535087e..37207ea=20
+100644
+--- a/mcp/Makefile.am
++++ b/mcp/Makefile.am
+@@ -39,7 +39,7 @@ pacemakerd_LDADD	=3D $(CLUSTERLIBS) $(top_builddir)/lib/=
common/libcrmcommon.la -lc
+ %.8:	%
+ 	echo Creating $@
+ 	chmod a+x $(top_builddir)/mcp/$<
+-	help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker=
 cluster resource manager" $(top_builddir)/mcp/$<
++	help2man --output $@ --no-info --section 8 --name "Part of the=20
++Pacemaker cluster resource manager" /usr/sbin/$<
+=20
+ clean-generic:
+ 	rm -f *.log *.debug *.xml *~
+diff --git a/pengine/Makefile.am b/pengine/Makefile.am index=20
+3d4e898..9bc63f0 100644
+--- a/pengine/Makefile.am
++++ b/pengine/Makefile.am
+@@ -49,17 +49,11 @@ man8_MANS =3D
+ if BUILD_HELP
+ man8_MANS +=3D	ptest.8
+ ptest.8:	ptest
+-	help2man --output $@ --no-info --section 8 --name "Part of the Pacemaker=
 cluster resource manager" $(top_builddir)/pengine/$<
++	help2man --output $@ --no-info --section 8 --name "Part of the=20
++Pacemaker cluster resource manager" /usr/sbin/$<
+ endif
+=20
+ if BUILD_XML_HELP
+-man8_MANS +=3D	pengine.8
+=20
+-pengine.xml:	pengine
+-	$(top_builddir)/pengine/$< metadata | $(XSLTPROC) --nonet --novalid --st=
ringparam man.name $< $(top_srcdir)/xml/ocf-meta2man.xsl - > $(top_builddir=
)/pengine/$@
+-
+-pengine.8:	pengine.xml
+-	$(XSLTPROC) $(MANPAGE_XSLT) $(top_builddir)/pengine/$<
+ endif
+=20
+ ## SOURCES
+diff --git a/tools/Makefile.am b/tools/Makefile.am index=20
+8fdc4df..8fba4a7 100644
+--- a/tools/Makefile.am
++++ b/tools/Makefile.am
+@@ -136,7 +136,7 @@ endif
+ %.8:	% crm_attribute
+ 	echo Creating $@
+ 	chmod a+x $(top_builddir)/tools/$<
+-	PATH=3D$$PATH:$(top_builddir)/tools help2man --output $@ --no-info --sec=
tion 8 --name "Part of the Pacemaker cluster resource manager" $(top_buildd=
ir)/tools/$<
++	PATH=3D$$PATH:$(top_builddir)/tools help2man --output $@ --no-info=20
++--section 8 --name "Part of the Pacemaker cluster resource manager"=20
++/usr/sbin/$<
+=20
+ clean-generic:
+ 	rm -f *.log *.debug *.xml *~
+--
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb b/m=
eta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
deleted file mode 100644
index e492102..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
+++ /dev/null
@@ -1,83 +0,0 @@
-DESCRIPTION =3D "Scalable High-Availability cluster resource manager"
-LICENSE =3D "GPLv2"
-LIC_FILES_CHKSUM=3D"file://COPYING;md5=3D751419260aa954499f7abaabaa882bbe"
-DEPENDS =3D " \
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
-RDEPENDS_${PN} +=3D "openais"
-
-#PR =3D "r2"
-
-SRC_URI =3D " \
-    https://github.com/ClusterLabs/pacemaker-1.0/archive/Pacemaker-${PV}.t=
ar.gz \
-    file://pacemaker-remove-native-includes.patch \
-    file://pacemaker-dont-use-help2man.patch \
-    file://fix-header-defs-lookup.patch \
-    file://pacemaker-remove-ptest-functionality.patch \
-	file://volatiles \
-	"
-SRC_URI_append_libc-uclibc =3D " file://kill-stack-protector.patch"
-SRC_URI[md5sum] =3D "103fb2e804be3f8ace17021c5d9ad15d"
-SRC_URI[sha256sum] =3D "aabfc9ee1c66804151d973d0ed0323798ffebe49e1c2219fa8=
04dc6898a69a1e"
-inherit autotools-brokensep python-dir
-
-S =3D "${WORKDIR}/pacemaker-1.0-Pacemaker-${PV}"
-
-EXTRA_OECONF =3D "--with-ais --without-heartbeat --disable-fatal-warnings =
--disable-pretty"
-
-CFLAGS +=3D "-I${STAGING_INCDIR}/heartbeat -lncurses"
-
-do_install_append() {
-	install -d ${D}${sysconfdir}/default/volatiles
-	install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/=
06_pacemaker
-	find ${D} -name "*.pyo" -exec rm {} \;
-	find ${D} -name "*.pyc" -exec rm {} \;
-	find ${D} -name "*.py" | xargs sed -i -e "s:${STAGING_BINDIR_NATIVE}:${bi=
ndir}:g"
-}
-
-pkg_postinst_${PN} () {
-	set -e
-	grep haclient /etc/group || addgroup haclient
-	grep hacluster /etc/passwd || adduser --disabled-password --home=3D${loca=
lstatedir}/lib/heartbeat --ingroup haclient -g "HA cluster" hacluster
-	/etc/init.d/populate-volatile.sh update
-}
-FILES_${PN}-doc +=3D "${datadir}/pacemaker/crm_cli.txt ${datadir}/pacemake=
r/templates/"
-FILES_${PN} +=3D " \
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
-FILES_${PN}-dbg +=3D "${libdir}/heartbeat/.debug ${libdir}/heartbeat/plugi=
ns/RAExec/.debug/ ${libdir}/heartbeat/stonithdtest/.debug/ ${libexecdir}/lc=
rso/.debug ${libdir}/corosync/lcrso/.debug"
-FILES_${PN}-dev +=3D "${libdir}/heartbeat/plugins/RAExec/*.la"
-FILES_${PN}-staticdev +=3D "${libdir}/heartbeat/plugins/RAExec/*.a"
-
-PACKAGES =3D+ "${PN}-crm ${PN}-hb2openais ${PN}-haresources2cib ${PN}-test=
s ${PN}-snmp"
-FILES_${PN}-crm =3D "${sbindir}/crm ${PYTHON_SITEPACKAGES_DIR} ${libdir}/h=
eartbeat/crm_primitive.py "
-RDEPENDS_${PN}-crm +=3D "python-core"
-FILES_${PN}-hb2openais =3D "${libdir}/heartbeat/hb2openais.sh ${libdir}/he=
artbeat/hb2openais-helper.py"
-RDEPENDS_${PN}-hb2openais +=3D "python-core"
-FILES_${PN}-haresources2cib =3D "${libdir}/heartbeat/haresources2cib.py"
-RDEPENDS_${PN}-haresources2cib +=3D "python-core"
-FILES_${PN}-tests =3D "${datadir}/pacemaker/tests ${datadir}/pacemaker/sto=
nithdtest ${libdir}/heartbeat/atest ${libdir}/heartbeat/stonithdtest/*"
-RDEPENDS_${PN}-test +=3D "python-core"
-FILES_${PN}-snmp =3D "${datadir}/snmp/mibs/PCMK-MIB.txt"
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.4.bb b/met=
a-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.4.bb
new file mode 100644
index 0000000..7d9127b
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.4.bb
@@ -0,0 +1,84 @@
+SUMMARY =3D "Scalable High-Availability cluster resource manager"
+DESCRIPTION =3D "Pacemaker is an advanced, scalable High-Availability=20
+cluster resource \ manager for Linux-HA (Heartbeat) and/or OpenAIS. \=20
+It supports n-node clusters with significant capabilities for \=20
+managing resources and dependencies. \ It will run scripts at=20
+initialization, when machines go up or down, \ when related resources=20
+fail and can be configured to periodically check \ resource health."
+HOMEPAGE =3D "http://www.clusterlabs.org"
+SECTION =3D "System Environment/Daemons"
+
+inherit autotools-brokensep
+SRC_URI =3D " \
+    https://github.com/ClusterLabs/${PN}/archive/Pacemaker-${PV}.zip \
+    file://0001-configure.ac-error-fix.patch \
+    file://0002-Makefile.am-error-fix.patch \ "
+SRC_URI[md5sum] =3D "d58ff8b56a9943ab1d3a1b82632f4ace"
+SRC_URI[sha256sum] =3D "375309a8a0c1ddee3657eeeb5d2535737886d8cf971af226b7=
e83063ddfd5e0d"
+
+LICENSE =3D "GPLv2+ LGPLv2+"
+LIC_FILES_CHKSUM =3D " \
+    file://COPYING;md5=3D751419260aa954499f7abaabaa882bbe \
+    file://COPYING.LIB;md5=3D243b725d71bb5df4a1e5920b344b86ad \ "
+S =3D "${WORKDIR}/pacemaker-Pacemaker-1.1.4"
+DEPENDS =3D "heartbeat libxslt openais libxml2 cryptodev-linux nettle gnut=
ls gmp openssl"
+
+CFLAGS_append +=3D "-DGLIB_COMPILATION"
+CPPFLAGS_append +=3D "-DGLIB_COMPILATION"
+EXTRA_OECONF =3D ' \
+    STAGING_DIR_TARGET=3D${STAGING_DIR_TARGET} \
+    STAGING_INCDIR=3D${STAGING_INCDIR} \
+    --docdir=3D/usr/share/doc/pacemaker \
+    --localstatedir=3D/var \
+    --with-initdir=3D/etc/init.d \
+    --enable-fatal-warnings=3Dno \
+    --disable-ansi \
+    --disable-python \
+'
+do_configure_prepend () {
+    sed -i -e 's@\$SNMPCONFIG --agent-libs@${STAGING_DIR_HOST}/\$SNMPCONFI=
G  \
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
+    oe_runmake DESTDIR=3D${D} install
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
+ASNEEDED_pn-${PN} =3D ""
+FILES_${PN} +=3D " \
+    ${datadir}/pacemaker \
+    ${datadir}/snmp \
+    ${libdir}/ocf \
+    ${libdir}/heartbeat \
+    ${libdir}/corosync/lcrso/pacemaker.lcrso \
+    run/crm \
+"
+FILES_${PN}-dbg +=3D " \
+    ${libdir}/heartbeat/plugins/RAExec/.debug \
+    ${libexecdir}/lcrso/.debug \
+    ${libdir}/corosync/lcrso/.debug \
+"
--
1.8.4.2

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

