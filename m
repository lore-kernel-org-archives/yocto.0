Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6861E00AE9; Tue, 18 Aug 2015 20:24:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1E3AE00ADB
	for <yocto@yoctoproject.org>; Tue, 18 Aug 2015 20:24:34 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.15,520,1432569600"; d="scan'208";a="99790224"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 19 Aug 2015 11:27:49 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t7J3OTkq007025
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 11:24:29 +0800
Received: from localhost.localdomain (10.167.226.92) by
	G08CNEXCHPEKD01.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Wed, 19 Aug 2015 11:24:32 +0800
From: Li xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Wed, 19 Aug 2015 11:24:12 +0800
Message-ID: <1439954652-8570-1-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [10.167.226.92]
Subject: [meta-cgl][PATCH] heartbeat: upgrade 3.0.5 -> 3.0.6
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
X-List-Received-Date: Wed, 19 Aug 2015 03:24:38 -0000
Content-Type: text/plain

* Update configure.in-Error-and-warning-fix.patch,
  since the contents has been changed.

* Dropped ucast.c-fix-compile-errors.patch,it it not needed anymore.

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 .../configure.in-Error-and-warning-fix.patch       | 58 +++++++++++-----------
 .../heartbeat/ucast.c-fix-compile-errors.patch     | 26 ----------
 .../{heartbeat_3.0.5.bb => heartbeat_3.0.6.bb}     | 11 ++--
 3 files changed, 34 insertions(+), 61 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/ucast.c-fix-compile-errors.patch
 rename meta-cgl-common/recipes-cgl/heartbeat/{heartbeat_3.0.5.bb => heartbeat_3.0.6.bb} (93%)

diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/configure.in-Error-and-warning-fix.patch b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/configure.in-Error-and-warning-fix.patch
index f133d2b..5176b1f 100644
--- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/configure.in-Error-and-warning-fix.patch
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/configure.in-Error-and-warning-fix.patch
@@ -1,6 +1,6 @@
-From e7c7e6abcfce50732a2d87b362b7bc797801ade7 Mon Sep 17 00:00:00 2001
+From 94f1c2081c0c3c507f292ed386ed8ed107bccc80 Mon Sep 17 00:00:00 2001
 From: Li xin <lixin.fnst@cn.fujitsu.com>
-Date: Tue, 9 Dec 2014 17:56:50 +0900
+Date: Thu, 30 Jul 2015 21:25:33 +0900
 Subject: [PATCH] configure.in: Error and warning fix
 
 the error is "fatal error: ac_nonexistent.h: No such file or directory"
@@ -11,14 +11,14 @@ Upstream-Status: pending
 
 Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
 ---
- configure.in | 58 +++++++++++++++++-----------------------------------------
- 1 file changed, 17 insertions(+), 41 deletions(-)
+ configure.ac | 53 ++++++++++++++++-------------------------------------
+ 1 file changed, 16 insertions(+), 37 deletions(-)
 
-diff --git a/configure.in b/configure.in
-index 22cfda0..92c06de 100644
---- a/configure.in
-+++ b/configure.in
-@@ -328,14 +328,12 @@ AC_MSG_RESULT($LibDirSuffix)
+diff --git a/configure.ac b/configure.ac
+index ab09b45..6fdd3f2 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -328,8 +328,7 @@ AC_MSG_RESULT($LibDirSuffix)
  case $libdir in
    */*${LibDirSuffix})	: Cool ;;
    *)			: Uh Oh... 
@@ -26,16 +26,9 @@ index 22cfda0..92c06de 100644
 -	AC_MSG_WARN([Overriding libdir to: $libdir]);;
 +	AC_MSG_WARN([Prevent overriding]);;
  esac
- case $libexecdir in
-   */$LibDirSuffix)	: Cool ;;
-   *)			: Uh Oh... 
--	libexecdir=`dirname $libexecdir`/$LibDirSuffix
--	AC_MSG_WARN([Overriding libexecdir to: $libexecdir]);;
-+	AC_MSG_WARN([Prevent overriding]);;
- esac
- 
  for j in exec_prefix bindir sbindir datadir sysconfdir localstatedir \
-@@ -385,15 +383,8 @@ then
+ 	includedir oldincludedir mandir docdir stdocdir libdir noarchlibdir
+@@ -378,15 +377,8 @@ then
  	sleep $SNOOZING
  fi
  
@@ -47,26 +40,31 @@ index 22cfda0..92c06de 100644
 -   AC_MSG_FAILURE(Core development headers were not found)
 -fi
 -
--CFLAGS="$CFLAGS -I${prefix}/include/heartbeat"
+-CPPFLAGS="$CPPFLAGS -I${prefix}/include/heartbeat"
 +GLUE_HEADER=heartbeat/glue_config.h
 +CFLAGS="$CFLAGS -I${STAGING_DIR_TARGET}${prefix}/include/heartbeat"
  AC_CHECK_HEADERS(glue_config.h)
  if test "$ac_cv_header_glue_config_h" != "yes";  then
     AC_MSG_FAILURE(Core development headers were not found)
-@@ -417,10 +408,10 @@ HA_NOARCHDATAHBDIR="$HA_DATADIR/${HB_PKG}"
- AC_SUBST(HA_NOARCHDATAHBDIR)
+@@ -411,7 +403,7 @@ AC_SUBST(HA_NOARCHDATAHBDIR)
  AC_DEFINE_UNQUOTED(HA_NOARCHDATAHBDIR,"$HA_NOARCHDATAHBDIR", $HB_PKG noarch data directory)
  
+ 
 -HA_LIBHBDIR=`extract_header_define $GLUE_HEADER HA_LIBHBDIR`
 +HA_LIBHBDIR='/usr/lib/heartbeat'
  AC_SUBST(HA_LIBHBDIR)
+ if test x"$HA_LIBHBDIR" = x ; then
+ # see rhbz#805147 and
+@@ -430,7 +422,7 @@ AC_SUBST(CRM_DAEMON_DIR)
+ CRM_DAEMON_DIR="$libexecdir/pacemaker"
+ AC_DEFINE_UNQUOTED(CRM_DAEMON_DIR,"$CRM_DAEMON_DIR", pacemaker daemon directory)
  
 -HA_VARRUNDIR=`extract_header_define $GLUE_HEADER HA_VARRUNDIR`
 +HA_VARRUNDIR='/var/run'
  AC_SUBST(HA_VARRUNDIR)
  
  HA_VARRUNHBDIR="$HA_VARRUNDIR/${HB_PKG}"
-@@ -432,10 +423,10 @@ AC_SUBST(HA_VARRUNHBRSCDIR)
+@@ -442,10 +434,10 @@ AC_SUBST(HA_VARRUNHBRSCDIR)
  HA_VARLIBDIR="${localstatedir}/lib"
  AC_SUBST(HA_VARLIBDIR)
  
@@ -79,7 +77,7 @@ index 22cfda0..92c06de 100644
  AC_SUBST(HA_COREDIR)
  
  base_includedir="${includedir}"
-@@ -1740,10 +1731,10 @@ then
+@@ -1780,10 +1772,10 @@ then
    IP2UTIL=/sbin/ip
  fi
  
@@ -92,9 +90,9 @@ index 22cfda0..92c06de 100644
  AC_SUBST(HA_APIGROUP)
  
  if
-@@ -1988,24 +1979,9 @@ AC_CHECK_HEADERS(evs.h, , [openais_installed="no"],)
- AC_CHECK_LIB(evs, evs_initialize , , [openais_installed="no"])
- AM_CONDITIONAL(BUILD_OPENAIS_MODULE, test "x${openais_installed}" = "xyes")
+@@ -2022,24 +2014,11 @@ AC_CHECK_HEADERS(bzlib.h, , [bz2_installed="no"],)
+ AC_CHECK_LIB(bz2, BZ2_bzBuffToBuffCompress , , [bz2_installed="no"])
+ AM_CONDITIONAL(BUILD_BZ2_COMPRESS_MODULE, test "x${bz2_installed}" = "xyes")
  
 -dnl check if there are getpid() inconsistency
 -dnl	Note: reduce LIBS; in particular, ltdl can cause confusion.
@@ -107,18 +105,18 @@ index 22cfda0..92c06de 100644
 -AC_MSG_RESULT(ok), 
 -[AC_MSG_RESULT(fail); AC_DEFINE(GETPID_INCONSISTENT, 1 , [pid inconsistent])],)
 -LIBS=$ac_save_LIBS
--
+ 
  dnl check byte order
  AC_MSG_CHECKING(for byteorder)
 -AC_TRY_RUN(`cat $srcdir/config/byteorder_test.c`,
 -[AC_MSG_RESULT(little-endian); AC_DEFINE(CONFIG_LITTLE_ENDIAN, 1, [little-endian])],
 -[AC_MSG_RESULT(big-endian); AC_DEFINE(CONFIG_BIG_ENDIAN, 1, [big-endian])],)
--
+ 
 +CROSS_ENDIAN_INFO
  
  dnl
  dnl Lex and yacc can't be trusted to produce code that won't produce
-@@ -2158,19 +2134,19 @@ AM_CONDITIONAL(BUILD_DRBD_OUTDATE_PEER, test "x${enable_dopd}" != "xno")
+@@ -2192,19 +2171,19 @@ AM_CONDITIONAL(BUILD_DRBD_OUTDATE_PEER, test "x${enable_dopd}" != "xno")
  hb_libdir="${libdir}/${HB_PKG}"
  AC_SUBST(hb_libdir)
  
@@ -143,7 +141,7 @@ index 22cfda0..92c06de 100644
  AC_SUBST(LSB_RA_DIR)
  
  AC_ARG_ENABLE([valgrind],
-@@ -2452,7 +2428,7 @@ AC_MSG_RESULT([  Mangled CFLAGS           = "${CFLAGS}"])
+@@ -2487,7 +2466,7 @@ AC_MSG_RESULT([  Mangled CFLAGS           = "${CFLAGS}"])
  AC_MSG_RESULT([  Libraries                = "${LIBS}"])
  AC_MSG_RESULT([  RPATH enabled            = "${enable_rpath}"])
  AC_MSG_RESULT([  Distro-style RPMs        = "${enable_distro_rpm}"])
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/ucast.c-fix-compile-errors.patch b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/ucast.c-fix-compile-errors.patch
deleted file mode 100644
index 6340a55..0000000
--- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/ucast.c-fix-compile-errors.patch
+++ /dev/null
@@ -1,26 +0,0 @@
-From ff2fb853c8f8e302d3f2e265f3c9ef09fca8b73a Mon Sep 17 00:00:00 2001
-From: Li xin <lixin.fnst@cn.fujitsu.com>
-Date: Mon, 1 Dec 2014 09:43:37 +0900
-Subject: [PATCH] ucast.c : fix compile errors
-
-Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
----
- lib/plugins/HBcomm/ucast.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/lib/plugins/HBcomm/ucast.c b/lib/plugins/HBcomm/ucast.c
-index 4c1651a..d0a59dd 100644
---- a/lib/plugins/HBcomm/ucast.c
-+++ b/lib/plugins/HBcomm/ucast.c
-@@ -463,7 +463,7 @@ static int HB_make_send_sock(struct hb_media *mp)
- 	struct ifreq i;
- #endif
- #if defined(SO_REUSEPORT)
--	int i = 1;
-+	//int i = 1;
- #endif
- 
- 	UCASTASSERT(mp);
--- 
-1.8.4.2
-
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
similarity index 93%
rename from meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
rename to meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
index 3a02d35..af03843 100644
--- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
@@ -28,19 +28,19 @@ LIC_FILES_CHKSUM = " \
     file://doc/COPYING.LGPL;md5=d8045f3b8f929c1cb29a1e3fd737b499 \
 "
 SRC_URI = " \
-    http://hg.linux-ha.org/heartbeat-STABLE_3_0/archive/7e3a82377fa8.tar.bz2 \
+    http://hg.linux-ha.org/heartbeat-STABLE_3_0/archive/cceeb47a7d8f.tar.bz2 \
     file://membership-ccm-Makefile.am-fix-warning.patch \
     file://Makefile.am-not-chgrp-in-cross-compile.patch \
-    file://ucast.c-fix-compile-errors.patch \
     file://configure.in-Error-and-warning-fix.patch \
     file://heartbeat-init.d-heartbeat.in-modify-parameter.patch \
     file://heartbeat-bootstrap-libtool.patch \
     file://heartbeat.service \
 "
-SRC_URI[md5sum] = "396510e3c143a9c2288bc52cfc9caa3c"
-SRC_URI[sha256sum] = "085013154511f3c270b5e9a3281732dbbb9812924ae24d9c3c6db1af4dd260d0"
-S = "${WORKDIR}/Heartbeat-3-0-7e3a82377fa8/"
+SRC_URI[md5sum] = "3a98cf97842b8a557728be4fb94c8c5d"
+SRC_URI[sha256sum] = "a76ec86cd60428f89536c635a5109cf1e9c7f20283874041a4306960e69952f4"
+S = "${WORKDIR}/Heartbeat-3-0-cceeb47a7d8f/"
 DEPENDS = "cluster-glue corosync gnutls"
+RDEPENDS_${PN} += "python"
 inherit autotools-brokensep pkgconfig useradd
 EXTRA_OECONF = " \
     STAGING_DIR_TARGET=${STAGING_DIR_TARGET} \
@@ -119,4 +119,5 @@ FILES_${PN}-dbg += " \
 FILES_${PN} += " \
     run/heartbeat/ccm \
     run/heartbeat/dopd \
+    ${libdir}/tmpfiles.d \
 "
-- 
1.8.4.2


