Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0247DE0099A; Thu, 11 Dec 2014 21:26:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61077E00992
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 21:26:24 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="44928333"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 12 Dec 2014 13:23:03 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id sBC5Pwn0018062
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 13:25:58 +0800
Received: from localhost.localdomain (10.167.226.35) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Fri, 12 Dec 2014 13:26:22 +0800
From: Li xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Fri, 12 Dec 2014 13:25:09 +0800
Message-ID: <1418361910-6668-2-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1418361910-6668-1-git-send-email-lixin.fnst@cn.fujitsu.com>
References: <1418361910-6668-1-git-send-email-lixin.fnst@cn.fujitsu.com>
MIME-Version: 1.0
X-Originating-IP: [10.167.226.35]
Subject: [meta-cgl][PATCH 1/2] heartbeat: add new recipe
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
X-List-Received-Date: Fri, 12 Dec 2014 05:26:30 -0000
Content-Type: text/plain

Messaging and membership subsystem for High-Availability Linux.

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 .../Makefile.am-not-chgrp-in-cross-compile.patch   |  41 ++++++
 .../configure.in-Error-and-warning-fix.patch       | 157 +++++++++++++++++++++
 ...beat-init.d-heartbeat.in-modify-parameter.patch |  27 ++++
 .../heartbeat/heartbeat/heartbeat.service          |  10 ++
 .../membership-ccm-Makefile.am-fix-warning.patch   |  30 ++++
 .../heartbeat/ucast.c-fix-compile-errors.patch     |  26 ++++
 .../recipes-cgl/heartbeat/heartbeat_3.0.5.bb       | 123 ++++++++++++++++
 7 files changed, 414 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/Makefile.am-not-chgrp-in-cross-compile.patch
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/configure.in-Error-and-warning-fix.patch
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat-init.d-heartbeat.in-modify-parameter.patch
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat.service
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/membership-ccm-Makefile.am-fix-warning.patch
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/ucast.c-fix-compile-errors.patch
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb

diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/Makefile.am-not-chgrp-in-cross-compile.patch b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/Makefile.am-not-chgrp-in-cross-compile.patch
new file mode 100644
index 0000000..4980c18
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/Makefile.am-not-chgrp-in-cross-compile.patch
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
+diff --git a/membership/ccm/Makefile.am b/membership/ccm/Makefile.am
+index 2a89de1..1b69c9c 100644
+--- a/membership/ccm/Makefile.am
++++ b/membership/ccm/Makefile.am
+@@ -108,8 +108,6 @@ clmtest_LDADD		= libclm.la libccmclient.la \
+ # additional installations not covered normally
+ install-exec-local:
+ 	$(mkinstalldirs) $(DESTDIR)$(ccmdir)
+-	-chgrp $(apigid) $(DESTDIR)/$(ccmdir)
+-	-chown $(ccmuid) $(DESTDIR)/$(ccmdir)
+ 	chmod 750 $(DESTDIR)/$(ccmdir)
+ 
+ 
+diff --git a/tools/Makefile.am b/tools/Makefile.am
+index 4e57de7..05d1253 100644
+--- a/tools/Makefile.am
++++ b/tools/Makefile.am
+@@ -47,7 +47,6 @@ cl_respawn_LDADD	= -lplumb	\
+ 			  $(top_builddir)/replace/libreplace.la
+ 
+ install-data-hook:    # install-exec-hook doesn't work (!)
+-	-chgrp $(apigid) $(DESTDIR)/$(habindir)/cl_status
+ 	-chmod g+s,a-w $(DESTDIR)/$(habindir)/cl_status
+ 
+ .PHONY: install-exec-hook
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/configure.in-Error-and-warning-fix.patch b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/configure.in-Error-and-warning-fix.patch
new file mode 100644
index 0000000..f133d2b
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/configure.in-Error-and-warning-fix.patch
@@ -0,0 +1,157 @@
+From e7c7e6abcfce50732a2d87b362b7bc797801ade7 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Tue, 9 Dec 2014 17:56:50 +0900
+Subject: [PATCH] configure.in: Error and warning fix
+
+the error is "fatal error: ac_nonexistent.h: No such file or directory"
+the warning is "The compile log indicates that host include and/or
+library paths were used"
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ configure.in | 58 +++++++++++++++++-----------------------------------------
+ 1 file changed, 17 insertions(+), 41 deletions(-)
+
+diff --git a/configure.in b/configure.in
+index 22cfda0..92c06de 100644
+--- a/configure.in
++++ b/configure.in
+@@ -328,14 +328,12 @@ AC_MSG_RESULT($LibDirSuffix)
+ case $libdir in
+   */*${LibDirSuffix})	: Cool ;;
+   *)			: Uh Oh... 
+-	libdir=`dirname $libdir`/$LibDirSuffix
+-	AC_MSG_WARN([Overriding libdir to: $libdir]);;
++	AC_MSG_WARN([Prevent overriding]);;
+ esac
+ case $libexecdir in
+   */$LibDirSuffix)	: Cool ;;
+   *)			: Uh Oh... 
+-	libexecdir=`dirname $libexecdir`/$LibDirSuffix
+-	AC_MSG_WARN([Overriding libexecdir to: $libexecdir]);;
++	AC_MSG_WARN([Prevent overriding]);;
+ esac
+ 
+ for j in exec_prefix bindir sbindir datadir sysconfdir localstatedir \
+@@ -385,15 +383,8 @@ then
+ 	sleep $SNOOZING
+ fi
+ 
+-AC_CHECK_HEADERS(heartbeat/glue_config.h)
+-GLUE_HEADER=none
+-if test "$ac_cv_header_heartbeat_glue_config_h" = "yes";  then
+-   GLUE_HEADER=heartbeat/glue_config.h
+-else
+-   AC_MSG_FAILURE(Core development headers were not found)
+-fi
+-
+-CFLAGS="$CFLAGS -I${prefix}/include/heartbeat"
++GLUE_HEADER=heartbeat/glue_config.h
++CFLAGS="$CFLAGS -I${STAGING_DIR_TARGET}${prefix}/include/heartbeat"
+ AC_CHECK_HEADERS(glue_config.h)
+ if test "$ac_cv_header_glue_config_h" != "yes";  then
+    AC_MSG_FAILURE(Core development headers were not found)
+@@ -417,10 +408,10 @@ HA_NOARCHDATAHBDIR="$HA_DATADIR/${HB_PKG}"
+ AC_SUBST(HA_NOARCHDATAHBDIR)
+ AC_DEFINE_UNQUOTED(HA_NOARCHDATAHBDIR,"$HA_NOARCHDATAHBDIR", $HB_PKG noarch data directory)
+ 
+-HA_LIBHBDIR=`extract_header_define $GLUE_HEADER HA_LIBHBDIR`
++HA_LIBHBDIR='/usr/lib/heartbeat'
+ AC_SUBST(HA_LIBHBDIR)
+ 
+-HA_VARRUNDIR=`extract_header_define $GLUE_HEADER HA_VARRUNDIR`
++HA_VARRUNDIR='/var/run'
+ AC_SUBST(HA_VARRUNDIR)
+ 
+ HA_VARRUNHBDIR="$HA_VARRUNDIR/${HB_PKG}"
+@@ -432,10 +423,10 @@ AC_SUBST(HA_VARRUNHBRSCDIR)
+ HA_VARLIBDIR="${localstatedir}/lib"
+ AC_SUBST(HA_VARLIBDIR)
+ 
+-HA_VARLIBHBDIR=`extract_header_define $GLUE_HEADER HA_VARLIBHBDIR`
++HA_VARLIBHBDIR='/var/lib/heartbeat'
+ AC_SUBST(HA_VARLIBHBDIR)
+ 
+-HA_COREDIR=`extract_header_define $GLUE_HEADER HA_COREDIR`
++HA_COREDIR='/var/lib/heartbeat/cores'
+ AC_SUBST(HA_COREDIR)
+ 
+ base_includedir="${includedir}"
+@@ -1740,10 +1731,10 @@ then
+   IP2UTIL=/sbin/ip
+ fi
+ 
+-HA_CCMUSER=`extract_header_define $GLUE_HEADER HA_CCMUSER`
++HA_CCMUSER='hacluster'
+ AC_SUBST(HA_CCMUSER)
+ 
+-HA_APIGROUP=`extract_header_define $GLUE_HEADER HA_APIGROUP`
++HA_APIGROUP='haclient'
+ AC_SUBST(HA_APIGROUP)
+ 
+ if
+@@ -1988,24 +1979,9 @@ AC_CHECK_HEADERS(evs.h, , [openais_installed="no"],)
+ AC_CHECK_LIB(evs, evs_initialize , , [openais_installed="no"])
+ AM_CONDITIONAL(BUILD_OPENAIS_MODULE, test "x${openais_installed}" = "xyes")
+ 
+-dnl check if there are getpid() inconsistency
+-dnl	Note: reduce LIBS; in particular, ltdl can cause confusion.
+-dnl	Possibly better:  move 'LIBS="$LIBS -lltdl"' from above to beyond here.
+-dnl
+-AC_MSG_CHECKING(for getpid() consistency in multi-process/threads program)
+-ac_save_LIBS=$LIBS
+-LIBS="-lpthread"
+-AC_TRY_RUN(`cat $srcdir/config/pidtest.c`, 
+-AC_MSG_RESULT(ok), 
+-[AC_MSG_RESULT(fail); AC_DEFINE(GETPID_INCONSISTENT, 1 , [pid inconsistent])],)
+-LIBS=$ac_save_LIBS
+-
+ dnl check byte order
+ AC_MSG_CHECKING(for byteorder)
+-AC_TRY_RUN(`cat $srcdir/config/byteorder_test.c`,
+-[AC_MSG_RESULT(little-endian); AC_DEFINE(CONFIG_LITTLE_ENDIAN, 1, [little-endian])],
+-[AC_MSG_RESULT(big-endian); AC_DEFINE(CONFIG_BIG_ENDIAN, 1, [big-endian])],)
+-
++CROSS_ENDIAN_INFO
+ 
+ dnl
+ dnl Lex and yacc can't be trusted to produce code that won't produce
+@@ -2158,19 +2134,19 @@ AM_CONDITIONAL(BUILD_DRBD_OUTDATE_PEER, test "x${enable_dopd}" != "xno")
+ hb_libdir="${libdir}/${HB_PKG}"
+ AC_SUBST(hb_libdir)
+ 
+-HA_PLUGIN_DIR=`extract_header_define $GLUE_HEADER HA_PLUGIN_DIR`
++HA_PLUGIN_DIR='CROSS_LIBDIR/heartbeat/plugins'
+ AC_SUBST(HA_PLUGIN_DIR)
+ 
+-HB_RA_DIR=`extract_header_define $GLUE_HEADER HB_RA_DIR`
++HB_RA_DIR='/etc/ha.d/resource.d/'
+ AC_SUBST(HB_RA_DIR)
+ 
+-OCF_ROOT_DIR=`extract_header_define $GLUE_HEADER OCF_ROOT_DIR`
++OCF_ROOT_DIR='CROSS_LIBDIR/ocf'
+ AC_SUBST(OCF_ROOT_DIR)
+ 
+-OCF_RA_DIR=`extract_header_define $GLUE_HEADER OCF_RA_DIR`
++OCF_RA_DIR='CROSS_LIBDIR/ocf/resource.d/'
+ AC_SUBST(OCF_RA_DIR)
+ 
+-LSB_RA_DIR=`extract_header_define $GLUE_HEADER LSB_RA_DIR`
++LSB_RA_DIR='/etc/init.d'
+ AC_SUBST(LSB_RA_DIR)
+ 
+ AC_ARG_ENABLE([valgrind],
+@@ -2452,7 +2428,7 @@ AC_MSG_RESULT([  Mangled CFLAGS           = "${CFLAGS}"])
+ AC_MSG_RESULT([  Libraries                = "${LIBS}"])
+ AC_MSG_RESULT([  RPATH enabled            = "${enable_rpath}"])
+ AC_MSG_RESULT([  Distro-style RPMs        = "${enable_distro_rpm}"])
+-
++AC_SUBST(lt_sysroot)
+ AC_MSG_RESULT([  ])
+ AC_MSG_RESULT([Note: If you use the 'make install' method for installation you])
+ AC_MSG_RESULT([also need to adjust '/etc/passwd' and '/etc/group' manually.])
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat-init.d-heartbeat.in-modify-parameter.patch b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat-init.d-heartbeat.in-modify-parameter.patch
new file mode 100644
index 0000000..de9fb64
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat-init.d-heartbeat.in-modify-parameter.patch
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
+diff --git a/heartbeat/init.d/heartbeat.in b/heartbeat/init.d/heartbeat.in
+index 6e7c675..bed87a2 100755
+--- a/heartbeat/init.d/heartbeat.in
++++ b/heartbeat/init.d/heartbeat.in
+@@ -51,6 +51,7 @@
+ HA_DIR=@sysconfdir@/ha.d; export HA_DIR
+ CONFIG=$HA_DIR/ha.cf
+ . $HA_DIR/shellfuncs
++HA_NOARCHBIN=@HA_NOARCHDATAHBDIR@
+ 
+ LOCKDIR=@localstatedir@/lock/subsys
+ RUNDIR=@localstatedir@/run
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat.service b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat.service
new file mode 100644
index 0000000..fc8ef9a
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat.service
@@ -0,0 +1,10 @@
+[Unit]
+Description=High-availability services.
+
+[Service]
+Type=forking
+PIDFile=/var/run/heartbeat.pid
+ExecStart=/usr/lib/heartbeat/heartbeat.init start
+
+[Install]
+WantedBy=multi-user.target
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/membership-ccm-Makefile.am-fix-warning.patch b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/membership-ccm-Makefile.am-fix-warning.patch
new file mode 100644
index 0000000..19691db
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/membership-ccm-Makefile.am-fix-warning.patch
@@ -0,0 +1,30 @@
+From 30ee44e75da1bc86901b546ea14233d288ce2309 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Tue, 9 Dec 2014 18:15:51 +0900
+Subject: [PATCH] membership/ccm/Makefile.am: fix warning
+
+The compile log indicates that host include and/or library paths were used
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ membership/ccm/Makefile.am | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/membership/ccm/Makefile.am b/membership/ccm/Makefile.am
+index 105069a..2a89de1 100644
+--- a/membership/ccm/Makefile.am
++++ b/membership/ccm/Makefile.am
+@@ -22,7 +22,7 @@ MAINTAINERCLEANFILES    = Makefile.in
+ INCLUDES                = -I$(top_builddir)/include -I$(top_srcdir)/include \
+ 			-I$(top_builddir)/linux-ha -I$(top_srcdir)/linux-ha \
+ 			-I$(top_builddir)/libltdl -I$(top_srcdir)/libltdl \
+-                        -I$(includedir)/clplumbing
++                        -I$(lt_sysroot)$(includedir)/clplumbing
+ 
+ hadir			= $(sysconfdir)/ha.d
+ halibdir		= $(libdir)/@HB_PKG@
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/ucast.c-fix-compile-errors.patch b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/ucast.c-fix-compile-errors.patch
new file mode 100644
index 0000000..6340a55
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/ucast.c-fix-compile-errors.patch
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
+diff --git a/lib/plugins/HBcomm/ucast.c b/lib/plugins/HBcomm/ucast.c
+index 4c1651a..d0a59dd 100644
+--- a/lib/plugins/HBcomm/ucast.c
++++ b/lib/plugins/HBcomm/ucast.c
+@@ -463,7 +463,7 @@ static int HB_make_send_sock(struct hb_media *mp)
+ 	struct ifreq i;
+ #endif
+ #if defined(SO_REUSEPORT)
+-	int i = 1;
++	//int i = 1;
+ #endif
+ 
+ 	UCASTASSERT(mp);
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
new file mode 100644
index 0000000..a866f0f
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
@@ -0,0 +1,123 @@
+SUMMARY = "Messaging and membership subsystem for High-Availability Linux"
+DESCRIPTION = "heartbeat is a basic high-availability subsystem for Linux-HA. \
+It will run scripts at initialization, and when machines go up or down. \
+This version will also perform IP address takeover using gratuitous ARPs. \
+ \
+Heartbeat contains a cluster membership layer, fencing, and local and \
+clusterwide resource management functionality. \
+ \
+When used with Pacemaker, it supports n-node clusters with significant \
+capabilities for managing resources and dependencies. \
+ \
+In addition it continues to support the older release 1 style of \
+2-node clustering. \
+ \
+It implements the following kinds of heartbeats: \
+- Serial ports \
+- UDP/IP multicast (ethernet, etc) \
+- UDP/IP broadcast (ethernet, etc) \
+- UDP/IP heartbeats \
+- ping heartbeats (for routers, switches, etc.) \
+(to be used for breaking ties in 2-node systems) \
+"
+HOMEPAGE = "http://linux-ha.org/"
+SECTION = "System Environment/Daemons"
+LICENSE = "GPLv2 LGPLv2+"
+LIC_FILES_CHKSUM = " \
+    file://doc/COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b \
+    file://doc/COPYING.LGPL;md5=d8045f3b8f929c1cb29a1e3fd737b499 \
+"
+SRC_URI = " \
+    http://hg.linux-ha.org/heartbeat-STABLE_3_0/archive/7e3a82377fa8.tar.bz2 \
+    file://membership-ccm-Makefile.am-fix-warning.patch \
+    file://Makefile.am-not-chgrp-in-cross-compile.patch \
+    file://ucast.c-fix-compile-errors.patch \
+    file://configure.in-Error-and-warning-fix.patch \
+    file://heartbeat-init.d-heartbeat.in-modify-parameter.patch \
+    file://heartbeat.service \
+"
+SRC_URI[md5sum] = "396510e3c143a9c2288bc52cfc9caa3c"
+SRC_URI[sha256sum] = "085013154511f3c270b5e9a3281732dbbb9812924ae24d9c3c6db1af4dd260d0"
+S = "${WORKDIR}/Heartbeat-3-0-7e3a82377fa8/"
+DEPENDS = "cluster-glue corosync"
+inherit autotools-brokensep pkgconfig useradd
+EXTRA_OECONF = " \
+    STAGING_DIR_TARGET=${STAGING_DIR_TARGET} \
+    --disable-fatal-warnings \
+    --disable-static \
+"
+SOURCE1 = "heartbeat/init.d/heartbeat"
+CFLAGS_append += "-DGLIB_COMPILATION"
+
+do_configure() {
+    ./bootstrap
+    isbigendian=`echo ${TUNE_FEATURES} | grep bigendian` || true
+    if [ $isbigendian"x" = "x" ] ; then
+        CPU_ENDIAN="little"
+    else
+        CPU_ENDIAN="big"
+    fi
+    cp -a ./configure ./configure.orig
+    if [ ${CPU_ENDIAN} == "little" ]; then
+        sed -e "s@CROSS_ENDIAN_INFO@\$as_echo \"#define CONFIG_LITTLE_ENDIAN 1\" >>confdefs.h@g" \
+            -e "s@CROSS_LIBDIR@${_LIBDIR}@g" \
+        ./configure.orig > ./configure
+    else
+    sed -e "s@CROSS_ENDIAN_INFO@\$as_echo \"#define CONFIG_BIG_ENDIAN 1\" >>confdefs.h@g" \
+        -e "s@CROSS_LIBDIR@${_LIBDIR}@g" \
+        ./configure.orig > ./configure
+    fi
+    oe_runconf ${EXTRA_OECONF}
+}
+do_compile_prepend() {
+    sed -i 's|^hardcode_libdir_flag_spec=.*|hardcode_libdir_flag_spec=""|g' ${HOST_PREFIX}libtool
+    sed -i 's|^runpath_var=LD_RUN_PATH|runpath_var=DIE_RPATH_DIE|g' ${HOST_PREFIX}libtool
+    make clean
+}
+do_install_append () {
+    sed -i -e 's,/usr/lib/,${libdir}/,' ${WORKDIR}/heartbeat.service
+    if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+        install -d ${D}${libexecdir}
+        install -m 0755 ${S}/${SOURCE1} ${D}${libexecdir}/heartbeat.init
+        install -d ${D}${systemd_unitdir}/system
+        install -m 0644 ${WORKDIR}/heartbeat.service ${D}${systemd_unitdir}/system/
+    fi
+}
+
+do_install() {
+    sed -i -e 's:/etc/rc.d/init.d/functions:/etc/init.d/functions:g' \
+        ${S}/${SOURCE1}
+    oe_runmake DESTDIR=${D} install
+    # cleanup
+    [ -d ${D}/usr/man ] && rm -rf ${D}/usr/man
+    [ -d ${D}/usr/share/libtool ] && rm -rf ${D}/usr/share/libtool
+    find ${D} -type f -name *.la -exec rm -f {} ';'
+    rm -rf ${D}/usr/share/heartbeat/cts
+    rm -rf ${D}/usr/share/doc/packages
+    rm -rf ${D}/usr/share/heartbeat/ha_propagate
+    install -m 0755 ${S}/doc/ha.cf    ${D}/etc/ha.d/ha.cf
+    install -m 0600 ${S}/doc/authkeys ${D}/etc/ha.d/authkeys
+}
+
+inherit ${@base_contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','',d)}
+SYSTEMD_PACKAGES = "${PN}"
+SYSTEMD_SERVICE_${PN} = "heartbeat.service"
+SYSTEMD_AUTO_ENABLE = "disable"
+
+USERADD_PACKAGES = "${PN}"
+GROUPADD_PARAM_${PN} = "-r haclient"
+USERADD_PARAM_${PN} = " \
+    -r -g haclient -d /var/lib/heartbeat/cores/hacluster -M \
+    -s /sbin/nologin -c \"heartbeat user\" hacluster \
+"
+FILES_${PN}-dbg += " \
+    ${libdir}/heartbeat/plugins/quorum/.debug \
+    ${libdir}/heartbeat/plugins/HBauth/.debug \
+    ${libdir}/heartbeat/plugins/tiebreaker/.debug \
+    ${libdir}/heartbeat/plugins/HBcomm/.debug \
+    ${libdir}/heartbeat/plugins/HBcompress/.debug \
+"
+FILES_${PN} += " \
+    run/heartbeat/ccm \
+    run/heartbeat/dopd \
+"
-- 
1.8.4.2


