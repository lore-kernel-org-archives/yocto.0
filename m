Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DF6FE00957; Mon,  5 Jan 2015 05:52:28 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 856E5E00950
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 05:52:15 -0800 (PST)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0158.001; Mon, 5 Jan 2015 14:52:13 +0100
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: Li xin <lixin.fnst@cn.fujitsu.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH 1/2] heartbeat: add new recipe
Thread-Index: AQHQFc0Hgir06H40REa3ygWQULTrqZyxsdfw
Date: Mon, 5 Jan 2015 13:52:13 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D75698F@SESTOEX04.enea.se>
References: <1418361910-6668-1-git-send-email-lixin.fnst@cn.fujitsu.com>
	<1418361910-6668-2-git-send-email-lixin.fnst@cn.fujitsu.com>
In-Reply-To: <1418361910-6668-2-git-send-email-lixin.fnst@cn.fujitsu.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.189]
MIME-Version: 1.0
Subject: Re: [meta-cgl][PATCH 1/2] heartbeat: add new recipe
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
X-List-Received-Date: Mon, 05 Jan 2015 13:52:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged the patch upstream: 3b306b8f207a18e5cab86354c25f8039607f1ae8

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Li xin
Sent: Friday, December 12, 2014 7:25 AM
To: yocto@yoctoproject.org
Subject: [yocto] [meta-cgl][PATCH 1/2] heartbeat: add new recipe

Messaging and membership subsystem for High-Availability Linux.

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 .../Makefile.am-not-chgrp-in-cross-compile.patch   |  41 ++++++
 .../configure.in-Error-and-warning-fix.patch       | 157 +++++++++++++++++=
++++
 ...beat-init.d-heartbeat.in-modify-parameter.patch |  27 ++++
 .../heartbeat/heartbeat/heartbeat.service          |  10 ++
 .../membership-ccm-Makefile.am-fix-warning.patch   |  30 ++++
 .../heartbeat/ucast.c-fix-compile-errors.patch     |  26 ++++
 .../recipes-cgl/heartbeat/heartbeat_3.0.5.bb       | 123 ++++++++++++++++
 7 files changed, 414 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/Makefil=
e.am-not-chgrp-in-cross-compile.patch
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/configu=
re.in-Error-and-warning-fix.patch
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbe=
at-init.d-heartbeat.in-modify-parameter.patch
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbe=
at.service
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/members=
hip-ccm-Makefile.am-fix-warning.patch
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/ucast.c=
-fix-compile-errors.patch
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.b=
b

diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/Makefile.am-no=
t-chgrp-in-cross-compile.patch b/meta-cgl-common/recipes-cgl/heartbeat/hear=
tbeat/Makefile.am-not-chgrp-in-cross-compile.patch
new file mode 100644
index 0000000..4980c18
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/Makefile.am-not-ch
+++ grp-in-cross-compile.patch
@@ -0,0 +1,41 @@
+From 772da3c3bbb3eeca6f2ef92715c350f6bf0f8515 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Tue, 9 Dec 2014 18:36:16 +0900
+Subject: [PATCH 2/2] Makefile.am: not chgrp in cross compile
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ membership/ccm/Makefile.am | 2 --
+ tools/Makefile.am          | 1 -
+ 2 files changed, 3 deletions(-)
+
+diff --git a/membership/ccm/Makefile.am b/membership/ccm/Makefile.am=20
+index 2a89de1..1b69c9c 100644
+--- a/membership/ccm/Makefile.am
++++ b/membership/ccm/Makefile.am
+@@ -108,8 +108,6 @@ clmtest_LDADD		=3D libclm.la libccmclient.la \
+ # additional installations not covered normally
+ install-exec-local:
+ 	$(mkinstalldirs) $(DESTDIR)$(ccmdir)
+-	-chgrp $(apigid) $(DESTDIR)/$(ccmdir)
+-	-chown $(ccmuid) $(DESTDIR)/$(ccmdir)
+ 	chmod 750 $(DESTDIR)/$(ccmdir)
+=20
+=20
+diff --git a/tools/Makefile.am b/tools/Makefile.am index=20
+4e57de7..05d1253 100644
+--- a/tools/Makefile.am
++++ b/tools/Makefile.am
+@@ -47,7 +47,6 @@ cl_respawn_LDADD	=3D -lplumb	\
+ 			  $(top_builddir)/replace/libreplace.la
+=20
+ install-data-hook:    # install-exec-hook doesn't work (!)
+-	-chgrp $(apigid) $(DESTDIR)/$(habindir)/cl_status
+ 	-chmod g+s,a-w $(DESTDIR)/$(habindir)/cl_status
+=20
+ .PHONY: install-exec-hook
+--
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/configure.in-E=
rror-and-warning-fix.patch b/meta-cgl-common/recipes-cgl/heartbeat/heartbea=
t/configure.in-Error-and-warning-fix.patch
new file mode 100644
index 0000000..f133d2b
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/configure.in-Error
+++ -and-warning-fix.patch
@@ -0,0 +1,157 @@
+From e7c7e6abcfce50732a2d87b362b7bc797801ade7 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Tue, 9 Dec 2014 17:56:50 +0900
+Subject: [PATCH] configure.in: Error and warning fix
+
+the error is "fatal error: ac_nonexistent.h: No such file or directory"
+the warning is "The compile log indicates that host include and/or=20
+library paths were used"
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ configure.in | 58=20
++++++++++++++++++-----------------------------------------
+ 1 file changed, 17 insertions(+), 41 deletions(-)
+
+diff --git a/configure.in b/configure.in index 22cfda0..92c06de 100644
+--- a/configure.in
++++ b/configure.in
+@@ -328,14 +328,12 @@ AC_MSG_RESULT($LibDirSuffix)  case $libdir in
+   */*${LibDirSuffix})	: Cool ;;
+   *)			: Uh Oh...=20
+-	libdir=3D`dirname $libdir`/$LibDirSuffix
+-	AC_MSG_WARN([Overriding libdir to: $libdir]);;
++	AC_MSG_WARN([Prevent overriding]);;
+ esac
+ case $libexecdir in
+   */$LibDirSuffix)	: Cool ;;
+   *)			: Uh Oh...=20
+-	libexecdir=3D`dirname $libexecdir`/$LibDirSuffix
+-	AC_MSG_WARN([Overriding libexecdir to: $libexecdir]);;
++	AC_MSG_WARN([Prevent overriding]);;
+ esac
+=20
+ for j in exec_prefix bindir sbindir datadir sysconfdir localstatedir \=20
+@@ -385,15 +383,8 @@ then
+ 	sleep $SNOOZING
+ fi
+=20
+-AC_CHECK_HEADERS(heartbeat/glue_config.h)
+-GLUE_HEADER=3Dnone
+-if test "$ac_cv_header_heartbeat_glue_config_h" =3D "yes";  then
+-   GLUE_HEADER=3Dheartbeat/glue_config.h
+-else
+-   AC_MSG_FAILURE(Core development headers were not found)
+-fi
+-
+-CFLAGS=3D"$CFLAGS -I${prefix}/include/heartbeat"
++GLUE_HEADER=3Dheartbeat/glue_config.h
++CFLAGS=3D"$CFLAGS -I${STAGING_DIR_TARGET}${prefix}/include/heartbeat"
+ AC_CHECK_HEADERS(glue_config.h)
+ if test "$ac_cv_header_glue_config_h" !=3D "yes";  then
+    AC_MSG_FAILURE(Core development headers were not found) @@ -417,10=20
++408,10 @@ HA_NOARCHDATAHBDIR=3D"$HA_DATADIR/${HB_PKG}"
+ AC_SUBST(HA_NOARCHDATAHBDIR)
+ AC_DEFINE_UNQUOTED(HA_NOARCHDATAHBDIR,"$HA_NOARCHDATAHBDIR", $HB_PKG=20
+noarch data directory)
+=20
+-HA_LIBHBDIR=3D`extract_header_define $GLUE_HEADER HA_LIBHBDIR`
++HA_LIBHBDIR=3D'/usr/lib/heartbeat'
+ AC_SUBST(HA_LIBHBDIR)
+=20
+-HA_VARRUNDIR=3D`extract_header_define $GLUE_HEADER HA_VARRUNDIR`
++HA_VARRUNDIR=3D'/var/run'
+ AC_SUBST(HA_VARRUNDIR)
+=20
+ HA_VARRUNHBDIR=3D"$HA_VARRUNDIR/${HB_PKG}"
+@@ -432,10 +423,10 @@ AC_SUBST(HA_VARRUNHBRSCDIR) =20
+HA_VARLIBDIR=3D"${localstatedir}/lib"
+ AC_SUBST(HA_VARLIBDIR)
+=20
+-HA_VARLIBHBDIR=3D`extract_header_define $GLUE_HEADER HA_VARLIBHBDIR`
++HA_VARLIBHBDIR=3D'/var/lib/heartbeat'
+ AC_SUBST(HA_VARLIBHBDIR)
+=20
+-HA_COREDIR=3D`extract_header_define $GLUE_HEADER HA_COREDIR`
++HA_COREDIR=3D'/var/lib/heartbeat/cores'
+ AC_SUBST(HA_COREDIR)
+=20
+ base_includedir=3D"${includedir}"
+@@ -1740,10 +1731,10 @@ then
+   IP2UTIL=3D/sbin/ip
+ fi
+=20
+-HA_CCMUSER=3D`extract_header_define $GLUE_HEADER HA_CCMUSER`
++HA_CCMUSER=3D'hacluster'
+ AC_SUBST(HA_CCMUSER)
+=20
+-HA_APIGROUP=3D`extract_header_define $GLUE_HEADER HA_APIGROUP`
++HA_APIGROUP=3D'haclient'
+ AC_SUBST(HA_APIGROUP)
+=20
+ if
+@@ -1988,24 +1979,9 @@ AC_CHECK_HEADERS(evs.h, ,=20
+[openais_installed=3D"no"],)  AC_CHECK_LIB(evs, evs_initialize , ,=20
+[openais_installed=3D"no"])  AM_CONDITIONAL(BUILD_OPENAIS_MODULE, test=20
+"x${openais_installed}" =3D "xyes")
+=20
+-dnl check if there are getpid() inconsistency
+-dnl	Note: reduce LIBS; in particular, ltdl can cause confusion.
+-dnl	Possibly better:  move 'LIBS=3D"$LIBS -lltdl"' from above to beyond h=
ere.
+-dnl
+-AC_MSG_CHECKING(for getpid() consistency in multi-process/threads=20
+program) -ac_save_LIBS=3D$LIBS -LIBS=3D"-lpthread"
+-AC_TRY_RUN(`cat $srcdir/config/pidtest.c`, -AC_MSG_RESULT(ok),=20
+-[AC_MSG_RESULT(fail); AC_DEFINE(GETPID_INCONSISTENT, 1 , [pid=20
+inconsistent])],) -LIBS=3D$ac_save_LIBS
+-
+ dnl check byte order
+ AC_MSG_CHECKING(for byteorder)
+-AC_TRY_RUN(`cat $srcdir/config/byteorder_test.c`,=20
+-[AC_MSG_RESULT(little-endian); AC_DEFINE(CONFIG_LITTLE_ENDIAN, 1,=20
+[little-endian])], -[AC_MSG_RESULT(big-endian);=20
+AC_DEFINE(CONFIG_BIG_ENDIAN, 1, [big-endian])],)
+-
++CROSS_ENDIAN_INFO
+=20
+ dnl
+ dnl Lex and yacc can't be trusted to produce code that won't produce=20
+@@ -2158,19 +2134,19 @@ AM_CONDITIONAL(BUILD_DRBD_OUTDATE_PEER, test=20
+"x${enable_dopd}" !=3D "xno")  hb_libdir=3D"${libdir}/${HB_PKG}"
+ AC_SUBST(hb_libdir)
+=20
+-HA_PLUGIN_DIR=3D`extract_header_define $GLUE_HEADER HA_PLUGIN_DIR`
++HA_PLUGIN_DIR=3D'CROSS_LIBDIR/heartbeat/plugins'
+ AC_SUBST(HA_PLUGIN_DIR)
+=20
+-HB_RA_DIR=3D`extract_header_define $GLUE_HEADER HB_RA_DIR`
++HB_RA_DIR=3D'/etc/ha.d/resource.d/'
+ AC_SUBST(HB_RA_DIR)
+=20
+-OCF_ROOT_DIR=3D`extract_header_define $GLUE_HEADER OCF_ROOT_DIR`
++OCF_ROOT_DIR=3D'CROSS_LIBDIR/ocf'
+ AC_SUBST(OCF_ROOT_DIR)
+=20
+-OCF_RA_DIR=3D`extract_header_define $GLUE_HEADER OCF_RA_DIR`
++OCF_RA_DIR=3D'CROSS_LIBDIR/ocf/resource.d/'
+ AC_SUBST(OCF_RA_DIR)
+=20
+-LSB_RA_DIR=3D`extract_header_define $GLUE_HEADER LSB_RA_DIR`
++LSB_RA_DIR=3D'/etc/init.d'
+ AC_SUBST(LSB_RA_DIR)
+=20
+ AC_ARG_ENABLE([valgrind],
+@@ -2452,7 +2428,7 @@ AC_MSG_RESULT([  Mangled CFLAGS           =3D "${CFL=
AGS}"])
+ AC_MSG_RESULT([  Libraries                =3D "${LIBS}"])
+ AC_MSG_RESULT([  RPATH enabled            =3D "${enable_rpath}"])
+ AC_MSG_RESULT([  Distro-style RPMs        =3D "${enable_distro_rpm}"])
+-
++AC_SUBST(lt_sysroot)
+ AC_MSG_RESULT([  ])
+ AC_MSG_RESULT([Note: If you use the 'make install' method for=20
+installation you])  AC_MSG_RESULT([also need to adjust '/etc/passwd'=20
+and '/etc/group' manually.])
+--
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat-init=
.d-heartbeat.in-modify-parameter.patch b/meta-cgl-common/recipes-cgl/heartb=
eat/heartbeat/heartbeat-init.d-heartbeat.in-modify-parameter.patch
new file mode 100644
index 0000000..de9fb64
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat-init.d-h
+++ eartbeat.in-modify-parameter.patch
@@ -0,0 +1,27 @@
+From b28ecdd9939b2d2f5aef6aacd1ae12bcae34d209 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Tue, 9 Dec 2014 18:33:05 +0900
+Subject: [PATCH 1/2] heartbeat/init.d/heartbeat.in: modify parameter
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ heartbeat/init.d/heartbeat.in | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/heartbeat/init.d/heartbeat.in=20
+b/heartbeat/init.d/heartbeat.in index 6e7c675..bed87a2 100755
+--- a/heartbeat/init.d/heartbeat.in
++++ b/heartbeat/init.d/heartbeat.in
+@@ -51,6 +51,7 @@
+ HA_DIR=3D@sysconfdir@/ha.d; export HA_DIR  CONFIG=3D$HA_DIR/ha.cf  .=20
+$HA_DIR/shellfuncs
++HA_NOARCHBIN=3D@HA_NOARCHDATAHBDIR@
+=20
+ LOCKDIR=3D@localstatedir@/lock/subsys
+ RUNDIR=3D@localstatedir@/run
+--
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat.serv=
ice b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat.service
new file mode 100644
index 0000000..fc8ef9a
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat.service
@@ -0,0 +1,10 @@
+[Unit]
+Description=3DHigh-availability services.
+
+[Service]
+Type=3Dforking
+PIDFile=3D/var/run/heartbeat.pid
+ExecStart=3D/usr/lib/heartbeat/heartbeat.init start
+
+[Install]
+WantedBy=3Dmulti-user.target
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/membership-ccm=
-Makefile.am-fix-warning.patch b/meta-cgl-common/recipes-cgl/heartbeat/hear=
tbeat/membership-ccm-Makefile.am-fix-warning.patch
new file mode 100644
index 0000000..19691db
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/membership-ccm-Mak
+++ efile.am-fix-warning.patch
@@ -0,0 +1,30 @@
+From 30ee44e75da1bc86901b546ea14233d288ce2309 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Tue, 9 Dec 2014 18:15:51 +0900
+Subject: [PATCH] membership/ccm/Makefile.am: fix warning
+
+The compile log indicates that host include and/or library paths were=20
+used
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ membership/ccm/Makefile.am | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/membership/ccm/Makefile.am b/membership/ccm/Makefile.am=20
+index 105069a..2a89de1 100644
+--- a/membership/ccm/Makefile.am
++++ b/membership/ccm/Makefile.am
+@@ -22,7 +22,7 @@ MAINTAINERCLEANFILES    =3D Makefile.in
+ INCLUDES                =3D -I$(top_builddir)/include -I$(top_srcdir)/inc=
lude \
+ 			-I$(top_builddir)/linux-ha -I$(top_srcdir)/linux-ha \
+ 			-I$(top_builddir)/libltdl -I$(top_srcdir)/libltdl \
+-                        -I$(includedir)/clplumbing
++                        -I$(lt_sysroot)$(includedir)/clplumbing
+=20
+ hadir			=3D $(sysconfdir)/ha.d
+ halibdir		=3D $(libdir)/@HB_PKG@
+--
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/ucast.c-fix-co=
mpile-errors.patch b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/ucast.=
c-fix-compile-errors.patch
new file mode 100644
index 0000000..6340a55
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/ucast.c-fix-compil
+++ e-errors.patch
@@ -0,0 +1,26 @@
+From ff2fb853c8f8e302d3f2e265f3c9ef09fca8b73a Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Mon, 1 Dec 2014 09:43:37 +0900
+Subject: [PATCH] ucast.c : fix compile errors
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ lib/plugins/HBcomm/ucast.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/lib/plugins/HBcomm/ucast.c b/lib/plugins/HBcomm/ucast.c=20
+index 4c1651a..d0a59dd 100644
+--- a/lib/plugins/HBcomm/ucast.c
++++ b/lib/plugins/HBcomm/ucast.c
+@@ -463,7 +463,7 @@ static int HB_make_send_sock(struct hb_media *mp)
+ 	struct ifreq i;
+ #endif
+ #if defined(SO_REUSEPORT)
+-	int i =3D 1;
++	//int i =3D 1;
+ #endif
+=20
+ 	UCASTASSERT(mp);
+--
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb b/met=
a-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
new file mode 100644
index 0000000..a866f0f
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
@@ -0,0 +1,123 @@
+SUMMARY =3D "Messaging and membership subsystem for High-Availability Linu=
x"
+DESCRIPTION =3D "heartbeat is a basic high-availability subsystem for=20
+Linux-HA. \ It will run scripts at initialization, and when machines go=20
+up or down. \ This version will also perform IP address takeover using=20
+gratuitous ARPs. \  \ Heartbeat contains a cluster membership layer,=20
+fencing, and local and \ clusterwide resource management functionality.=20
+\  \ When used with Pacemaker, it supports n-node clusters with=20
+significant \ capabilities for managing resources and dependencies. \ =20
+\ In addition it continues to support the older release 1 style of \=20
+2-node clustering. \  \ It implements the following kinds of=20
+heartbeats: \
+- Serial ports \
+- UDP/IP multicast (ethernet, etc) \
+- UDP/IP broadcast (ethernet, etc) \
+- UDP/IP heartbeats \
+- ping heartbeats (for routers, switches, etc.) \ (to be used for=20
+breaking ties in 2-node systems) \ "
+HOMEPAGE =3D "http://linux-ha.org/"
+SECTION =3D "System Environment/Daemons"
+LICENSE =3D "GPLv2 LGPLv2+"
+LIC_FILES_CHKSUM =3D " \
+    file://doc/COPYING;md5=3Dc93c0550bd3173f4504b2cbd8991e50b \
+    file://doc/COPYING.LGPL;md5=3Dd8045f3b8f929c1cb29a1e3fd737b499 \ "
+SRC_URI =3D " \
+    http://hg.linux-ha.org/heartbeat-STABLE_3_0/archive/7e3a82377fa8.tar.b=
z2 \
+    file://membership-ccm-Makefile.am-fix-warning.patch \
+    file://Makefile.am-not-chgrp-in-cross-compile.patch \
+    file://ucast.c-fix-compile-errors.patch \
+    file://configure.in-Error-and-warning-fix.patch \
+    file://heartbeat-init.d-heartbeat.in-modify-parameter.patch \
+    file://heartbeat.service \
+"
+SRC_URI[md5sum] =3D "396510e3c143a9c2288bc52cfc9caa3c"
+SRC_URI[sha256sum] =3D "085013154511f3c270b5e9a3281732dbbb9812924ae24d9c3c=
6db1af4dd260d0"
+S =3D "${WORKDIR}/Heartbeat-3-0-7e3a82377fa8/"
+DEPENDS =3D "cluster-glue corosync"
+inherit autotools-brokensep pkgconfig useradd EXTRA_OECONF =3D " \
+    STAGING_DIR_TARGET=3D${STAGING_DIR_TARGET} \
+    --disable-fatal-warnings \
+    --disable-static \
+"
+SOURCE1 =3D "heartbeat/init.d/heartbeat"
+CFLAGS_append +=3D "-DGLIB_COMPILATION"
+
+do_configure() {
+    ./bootstrap
+    isbigendian=3D`echo ${TUNE_FEATURES} | grep bigendian` || true
+    if [ $isbigendian"x" =3D "x" ] ; then
+        CPU_ENDIAN=3D"little"
+    else
+        CPU_ENDIAN=3D"big"
+    fi
+    cp -a ./configure ./configure.orig
+    if [ ${CPU_ENDIAN} =3D=3D "little" ]; then
+        sed -e "s@CROSS_ENDIAN_INFO@\$as_echo \"#define CONFIG_LITTLE_ENDI=
AN 1\" >>confdefs.h@g" \
+            -e "s@CROSS_LIBDIR@${_LIBDIR}@g" \
+        ./configure.orig > ./configure
+    else
+    sed -e "s@CROSS_ENDIAN_INFO@\$as_echo \"#define CONFIG_BIG_ENDIAN 1\" =
>>confdefs.h@g" \
+        -e "s@CROSS_LIBDIR@${_LIBDIR}@g" \
+        ./configure.orig > ./configure
+    fi
+    oe_runconf ${EXTRA_OECONF}
+}
+do_compile_prepend() {
+    sed -i 's|^hardcode_libdir_flag_spec=3D.*|hardcode_libdir_flag_spec=3D=
""|g' ${HOST_PREFIX}libtool
+    sed -i 's|^runpath_var=3DLD_RUN_PATH|runpath_var=3DDIE_RPATH_DIE|g' ${=
HOST_PREFIX}libtool
+    make clean
+}
+do_install_append () {
+    sed -i -e 's,/usr/lib/,${libdir}/,' ${WORKDIR}/heartbeat.service
+    if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; th=
en
+        install -d ${D}${libexecdir}
+        install -m 0755 ${S}/${SOURCE1} ${D}${libexecdir}/heartbeat.init
+        install -d ${D}${systemd_unitdir}/system
+        install -m 0644 ${WORKDIR}/heartbeat.service ${D}${systemd_unitdir=
}/system/
+    fi
+}
+
+do_install() {
+    sed -i -e 's:/etc/rc.d/init.d/functions:/etc/init.d/functions:g' \
+        ${S}/${SOURCE1}
+    oe_runmake DESTDIR=3D${D} install
+    # cleanup
+    [ -d ${D}/usr/man ] && rm -rf ${D}/usr/man
+    [ -d ${D}/usr/share/libtool ] && rm -rf ${D}/usr/share/libtool
+    find ${D} -type f -name *.la -exec rm -f {} ';'
+    rm -rf ${D}/usr/share/heartbeat/cts
+    rm -rf ${D}/usr/share/doc/packages
+    rm -rf ${D}/usr/share/heartbeat/ha_propagate
+    install -m 0755 ${S}/doc/ha.cf    ${D}/etc/ha.d/ha.cf
+    install -m 0600 ${S}/doc/authkeys ${D}/etc/ha.d/authkeys }
+
+inherit=20
+${@base_contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','',
+d)}
+SYSTEMD_PACKAGES =3D "${PN}"
+SYSTEMD_SERVICE_${PN} =3D "heartbeat.service"
+SYSTEMD_AUTO_ENABLE =3D "disable"
+
+USERADD_PACKAGES =3D "${PN}"
+GROUPADD_PARAM_${PN} =3D "-r haclient"
+USERADD_PARAM_${PN} =3D " \
+    -r -g haclient -d /var/lib/heartbeat/cores/hacluster -M \
+    -s /sbin/nologin -c \"heartbeat user\" hacluster \ "
+FILES_${PN}-dbg +=3D " \
+    ${libdir}/heartbeat/plugins/quorum/.debug \
+    ${libdir}/heartbeat/plugins/HBauth/.debug \
+    ${libdir}/heartbeat/plugins/tiebreaker/.debug \
+    ${libdir}/heartbeat/plugins/HBcomm/.debug \
+    ${libdir}/heartbeat/plugins/HBcompress/.debug \ "
+FILES_${PN} +=3D " \
+    run/heartbeat/ccm \
+    run/heartbeat/dopd \
+"
--
1.8.4.2

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

