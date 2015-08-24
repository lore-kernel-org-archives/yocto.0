Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 190B8E00BBD; Mon, 24 Aug 2015 03:34:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 501E7E00ABE
	for <yocto@yoctoproject.org>; Mon, 24 Aug 2015 03:34:30 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.15,520,1432569600"; d="scan'208";a="99953983"
Received: from bogon (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 24 Aug 2015 18:37:31 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t7OAYEi0008475
	for <yocto@yoctoproject.org>; Mon, 24 Aug 2015 18:34:14 +0800
Received: from localhost.localdomain (10.167.226.92) by
	G08CNEXCHPEKD01.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Mon, 24 Aug 2015 18:34:19 +0800
From: Li xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 24 Aug 2015 18:34:13 +0800
Message-ID: <1440412453-1635-1-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <DDB0C57E45663A458C5CACB7B5688BC21D8DC6FD@SESTOEX04.enea.se>
References: <DDB0C57E45663A458C5CACB7B5688BC21D8DC6FD@SESTOEX04.enea.se>
MIME-Version: 1.0
X-Originating-IP: [10.167.226.92]
Subject: [meta-cgl][PATCH v2] cluster-glue: upgrade 1.0.5 -> 1.0.12
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
X-List-Received-Date: Mon, 24 Aug 2015 10:34:36 -0000
Content-Type: text/plain

* Add patch to aviod build Error and Warning.
  --0001-don-t-compile-doc-and-Error-Fix.patch
  --0001-ribcl.py.in-Warning-Fix.patch

* Dropped backported patch:
  --fix-const-cast.patch
  --glue-remove-getpid-check.patch
  --glue-repair-deprecated-glib-support.patch
  --glue-repair-libxml-support.patch

* Replace the hardcoded strings "/usr/lib" "/etc/" "/usr/sbin" "/usr/share"

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 .../0001-don-t-compile-doc-and-Error-Fix.patch     |  75 +++++++++++++++
 .../0001-ribcl.py.in-Warning-Fix.patch             |  34 +++++++
 .../cluster-glue/cluster-glue/fix-const-cast.patch | 103 ---------------------
 .../cluster-glue/glue-remove-getpid-check.patch    |  31 -------
 .../glue-repair-deprecated-glib-support.patch      |  12 ---
 .../cluster-glue/glue-repair-libxml-support.patch  |  14 ---
 ...luster-glue_1.0.5.bb => cluster-glue_1.0.12.bb} |  76 ++++++++-------
 7 files changed, 150 insertions(+), 195 deletions(-)
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-don-t-compile-doc-and-Error-Fix.patch
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-ribcl.py.in-Warning-Fix.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/fix-const-cast.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-remove-getpid-check.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-deprecated-glib-support.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-libxml-support.patch
 rename meta-cgl-common/recipes-cgl/cluster-glue/{cluster-glue_1.0.5.bb => cluster-glue_1.0.12.bb} (49%)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-don-t-compile-doc-and-Error-Fix.patch b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-don-t-compile-doc-and-Error-Fix.patch
new file mode 100644
index 0000000..dd762b8
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-don-t-compile-doc-and-Error-Fix.patch
@@ -0,0 +1,75 @@
+From 86924cbbd595cde81584d74f6c93bcc4a080fcdd Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Tue, 18 Aug 2015 17:43:29 +0900
+Subject: [PATCH] don't compile doc and Error Fix
+
+| help2man: can't get `--help' info from ../../lrm/admin/lrmadmin
+| make[2]: *** [lrmadmin.8] Error 1
+
+| make[2]: a2x: Command not found
+| /usr/bin/xsltproc \
+|       --xinclude \
+|       http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl ha_logd.xml
+| make[2]: *** [hb_report.8] Error 127
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ Makefile.am           |  2 +-
+ configure.ac          |  6 ++++++
+ lrm/admin/Makefile.am | 14 +++++++-------
+ 3 files changed, 14 insertions(+), 8 deletions(-)
+
+diff --git a/Makefile.am b/Makefile.am
+index 93dbaf6..2f4d03b 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -23,7 +23,7 @@ MAINTAINERCLEANFILES	= Makefile.in aclocal.m4 configure DRF/config-h.in \
+ 			  DRF/stamp-h.in libtool.m4 ltdl.m4 libltdl.tar
+ 
+ SUBDIRS			= include $(LIBLTDL_DIR) replace lib lrm logd \
+-			  hb_report doc config
++			  hb_report config
+ 
+ install-exec-local:
+ 	$(INSTALL) -d $(DESTDIR)/$(HA_COREDIR)
+diff --git a/configure.ac b/configure.ac
+index 36bcf12..809fae6 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -1437,3 +1437,9 @@ AC_MSG_RESULT([  CFLAGS                   = ${CFLAGS}])
+ AC_MSG_RESULT([  Libraries                = ${LIBS}])
+ AC_MSG_RESULT([  Stack Libraries          = ${CLUSTERLIBS}])
+ 
++if test "$TARGET_PYTHON"; then
++	TARGET_PYTHON=$TARGET_PYTHON
++else
++	TARGET_PYTHON=$PYTHON
++fi
++	AC_SUBST(TARGET_PYTHON)
+diff --git a/lrm/admin/Makefile.am b/lrm/admin/Makefile.am
+index a92cd72..de525ea 100644
+--- a/lrm/admin/Makefile.am
++++ b/lrm/admin/Makefile.am
+@@ -31,10 +31,10 @@ lrmadmin_LDFLAGS 	= 	$(COMMONLIBS)
+ lrmadmin_LDADD = $(top_builddir)/lib/$(LRM_DIR)/liblrm.la
+ lrmadmin_DEPENDENCIES = $(top_builddir)/lib/$(LRM_DIR)/liblrm.la
+ 
+-if BUILD_HELP
+-man8_MANS =	$(sbin_PROGRAMS:%=%.8)
+-%.8:	%
+-	echo Creating $@
+-	chmod a+x $<
+-	help2man --output $@ --no-info --section 8 --name "Part of the Linux-HA project" $(top_builddir)/lrm/admin/$<
+-endif
++#if BUILD_HELP
++#man8_MANS =	$(sbin_PROGRAMS:%=%.8)
++#%.8:	%
++#	echo Creating $@
++#	chmod a+x $<
++#	help2man --output $@ --no-info --section 8 --name "Part of the Linux-HA project" $(top_builddir)/lrm/admin/$<
++#endif
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-ribcl.py.in-Warning-Fix.patch b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-ribcl.py.in-Warning-Fix.patch
new file mode 100644
index 0000000..31010d4
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-ribcl.py.in-Warning-Fix.patch
@@ -0,0 +1,34 @@
+From a2c66927b75547cee1db1340a67449ded0812df3 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Wed, 19 Aug 2015 11:13:46 +0900
+Subject: [PATCH] ribcl.py.in: Warning Fix
+
+WARNING: QA Issue: /usr/lib/stonith/plugins/stonith2/ribcl.py_cluster-glue-plugin-stonith2-ribcl
+contained in package cluster-glue-plugin-stonith2-ribcl requires /usr/local/bin/python,
+but no providers found in its RDEPENDS [file-rdeps]
+
+Add target python handling
+Allow the build to specify a path for the python instead of reusing
+the PYTHON variable which can lead to inconsistencies if we are cross
+compiling.
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ lib/plugins/stonith/ribcl.py.in | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/lib/plugins/stonith/ribcl.py.in b/lib/plugins/stonith/ribcl.py.in
+index 14e070c..01205e3 100644
+--- a/lib/plugins/stonith/ribcl.py.in
++++ b/lib/plugins/stonith/ribcl.py.in
+@@ -1,4 +1,4 @@
+-#!@PYTHON@
++#!@TRAGET_PYTHON@
+ 
+ 
+ #
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/fix-const-cast.patch b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/fix-const-cast.patch
deleted file mode 100644
index 6de65bf..0000000
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/fix-const-cast.patch
+++ /dev/null
@@ -1,103 +0,0 @@
-This patch gets rid of new warning introduced with gcc 4.5
-Warning is explained here
-http://gcc.gnu.org/viewcvs/trunk/gcc/doc/invoke.texi?r1=148037&r2=148053&diff_format=h
-
--Khem
--updated by Alexandru Vaduva - patch needed redone
-
-diff -Naur a/lib/plugins/stonith/apcsmart.c b/lib/plugins/stonith/apcsmart.c
---- a/lib/plugins/stonith/apcsmart.c	2014-07-09 17:14:24.492455034 +0200
-+++ b/lib/plugins/stonith/apcsmart.c	2014-07-09 17:15:03.386817399 +0200
-@@ -719,7 +719,7 @@
- 	}
- 	ERRIFNOTCONFIGED(s,NULL);
- 
--	return OurImports->CopyHostList((const char **)ad->hostlist);
-+    return OurImports->CopyHostList(CONST_CAST(ad->hostlist));
- }
- 
- static gboolean
-diff -Naur a/lib/plugins/stonith/external.c b/lib/plugins/stonith/external.c
---- a/lib/plugins/stonith/external.c	2014-07-09 17:15:28.661753145 +0200
-+++ b/lib/plugins/stonith/external.c	2014-07-09 17:17:03.873743634 +0200
-@@ -540,7 +540,7 @@
- 		sd->confignames[dircount] = NULL;
- 	}
- 
--	return (const char **)sd->confignames;
-+    return CONST_CAST(sd->confignames);
- }
- 
- /*
-diff -Naur a/lib/plugins/stonith/meatware.c b/lib/plugins/stonith/meatware.c
---- a/lib/plugins/stonith/meatware.c	2014-07-09 17:18:47.597375001 +0200
-+++ b/lib/plugins/stonith/meatware.c	2014-07-09 17:19:35.943338541 +0200
-@@ -136,7 +136,7 @@
- 		return(NULL);
- 	}
- 
--	return OurImports->CopyHostList((const char **)nd->hostlist);
-+    return OurImports->CopyHostList(CONST_CAST(nd->hostlist));
- }
- 
- /*
-diff -Naur a/lib/plugins/stonith/null.c b/lib/plugins/stonith/null.c
---- a/lib/plugins/stonith/null.c	2014-07-09 17:20:12.389803230 +0200
-+++ b/lib/plugins/stonith/null.c	2014-07-09 17:20:55.156001606 +0200
-@@ -126,7 +126,7 @@
- 	struct pluginDevice*	nd = (struct pluginDevice*)s;
- 
- 	ERRIFWRONGDEV(s, NULL);
--	return OurImports->CopyHostList((const char**)nd->hostlist);
-+    return OurImports->CopyHostList(CONST_CAST(nd->hostlist));
- }
- 
- 
-diff -Naur a/lib/plugins/stonith/rcd_serial.c b/lib/plugins/stonith/rcd_serial.c
---- a/lib/plugins/stonith/rcd_serial.c	2014-07-09 17:21:12.603266573 +0200
-+++ b/lib/plugins/stonith/rcd_serial.c	2014-07-09 17:21:56.341423862 +0200
-@@ -347,7 +347,7 @@
- 		return(NULL);
- 	}
- 
--	return OurImports->CopyHostList((const char **)rcd->hostlist);
-+    return OurImports->CopyHostList(CONST_CAST(rcd->hostlist));
- }
- 
- /*
-diff -Naur a/lib/plugins/stonith/rhcs.c b/lib/plugins/stonith/rhcs.c
---- a/lib/plugins/stonith/rhcs.c	2014-07-09 17:17:27.652742171 +0200
-+++ b/lib/plugins/stonith/rhcs.c	2014-07-09 17:18:18.562597957 +0200
-@@ -703,7 +703,7 @@
- 		sd->confignames[dircount] = NULL;
- 	}
- 
--	return (const char **)sd->confignames;
-+    return CONST_CAST(sd->confignames);
- }
- 
- /*
-diff -Naur a/lib/plugins/stonith/ssh.c b/lib/plugins/stonith/ssh.c
---- a/lib/plugins/stonith/ssh.c	2014-07-09 17:22:15.320624229 +0200
-+++ b/lib/plugins/stonith/ssh.c	2014-07-09 17:22:53.499015642 +0200
-@@ -161,7 +161,7 @@
- 		return(NULL);
- 	}
- 
--	return OurImports->CopyHostList((const char **)sd->hostlist);
-+    return OurImports->CopyHostList(CONST_CAST(sd->hostlist));
- }
- 
- 
-diff -Naur a/lib/plugins/stonith/stonith_plugin_common.h b/lib/plugins/stonith/stonith_plugin_common.h
---- a/lib/plugins/stonith/stonith_plugin_common.h	2014-07-09 17:23:16.954027367 +0200
-+++ b/lib/plugins/stonith/stonith_plugin_common.h	2014-07-09 17:24:38.538609129 +0200
-@@ -123,5 +123,8 @@
-     return; \
-   }
- 
-+#define CONST_CAST(s) \
-+    (__extension__(union {char ** a; const char** b;})(s)).b
-+
- #endif
- 
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-remove-getpid-check.patch b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-remove-getpid-check.patch
deleted file mode 100644
index 30f422c..0000000
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-remove-getpid-check.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-diff -Naur a/configure.ac b/configure.ac
---- a/configure.ac	2014-07-09 17:05:51.602037193 +0200
-+++ b/configure.ac	2014-07-09 17:08:44.566761961 +0200
-@@ -441,24 +441,9 @@
- AC_MSG_RESULT($BUILD_VERSION)
- AC_SUBST(BUILD_VERSION)
- 
--
--dnl check if there are getpid() inconsistency
--dnl	Note: reduce LIBS; in particular, ltdl can cause confusion.
--dnl	Possibly better:  move 'LIBS="$LIBS -lltdl"' from above to beyond here.
--dnl
--AC_MSG_CHECKING(for getpid() consistency in multi-process/threads program)
--ac_save_LIBS=$LIBS
--LIBS="-lpthread"
--AC_TRY_RUN(`cat $srcdir/config/pidtest.c`, 
--AC_MSG_RESULT(ok), 
--[AC_MSG_RESULT(fail); AC_DEFINE(GETPID_INCONSISTENT, 1 , [pid inconsistent])],)
--LIBS=$ac_save_LIBS
--
--dnl check byte order
--AC_MSG_CHECKING(for byteorder)
--AC_TRY_RUN(`cat $srcdir/config/byteorder_test.c`,
--[AC_MSG_RESULT(little-endian); AC_DEFINE(CONFIG_LITTLE_ENDIAN, 1, [little-endian])],
--[AC_MSG_RESULT(big-endian); AC_DEFINE(CONFIG_BIG_ENDIAN, 1, [big-endian])],)
-+AC_C_BIGENDIAN(
-+  [AC_DEFINE(CONFIG_BIG_ENDIAN, 1, [big])],
-+  [AC_DEFINE(CONFIG_LITTLE_ENDIAN, 1, [little])])
- 
- 
- dnl ===============================================
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-deprecated-glib-support.patch b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-deprecated-glib-support.patch
deleted file mode 100644
index 16fc679..0000000
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-deprecated-glib-support.patch
+++ /dev/null
@@ -1,12 +0,0 @@
-diff -Naur a/include/clplumbing/cl_uuid.h b/include/clplumbing/cl_uuid.h
---- a/include/clplumbing/cl_uuid.h	2014-07-14 14:25:24.127378762 +0200
-+++ b/include/clplumbing/cl_uuid.h	2014-07-14 14:23:32.120193782 +0200
-@@ -16,7 +16,7 @@
- 
- #ifndef _CL_UUID_H_
- #define _CL_UUID_H_
--#include <glib/gtypes.h>
-+#include <glib.h>
- 
- typedef struct cl_uuid_s{	
- 	unsigned char	uuid[16];
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-libxml-support.patch b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-libxml-support.patch
deleted file mode 100644
index a436575..0000000
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-libxml-support.patch
+++ /dev/null
@@ -1,14 +0,0 @@
-diff -Naur a/configure.ac b/configure.ac
---- a/configure.ac	2014-07-14 13:02:42.016652860 +0200
-+++ b/configure.ac	2014-07-14 13:03:59.585322332 +0200
-@@ -679,8 +679,8 @@
- 
- CPPFLAGS="$CPPFLAGS $XML2HEAD"
- 
--AC_CHECK_HEADERS(libxml/xpath.h)
--if test "$ac_cv_header_libxml_xpath_h" != "yes"; then
-+AC_CHECK_HEADERS(libxml2/libxml/xpath.h)
-+if test x"$ac_cv_header_libxml2_libxml_xpath_h" != x"yes"; then
-    AC_MSG_ERROR(The libxml developement headers were not found)
- fi
- 
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
similarity index 49%
rename from meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
rename to meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
index f1b4a78..be04469 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
@@ -7,21 +7,20 @@ LICENSE = "GPLv2"
 DEPENDS = "libxml2 libtool glib-2.0 bzip2 util-linux net-snmp openhpi"
 
 SRC_URI = " \
-	http://hg.linux-ha.org/glue/archive/glue-${PV}.tar.bz2 \
-    file://glue-repair-libxml-support.patch \
-    file://glue-repair-deprecated-glib-support.patch \
-    file://glue-remove-getpid-check.patch \
-    file://fix-const-cast.patch \
+    http://hg.linux-ha.org/glue/archive/glue-${PV}.tar.bz2 \
+    file://0001-don-t-compile-doc-and-Error-Fix.patch \
+    file://0001-ribcl.py.in-Warning-Fix.patch \
     file://volatiles \
     file://tmpfiles \
-	"
+"
 SRC_URI_append_libc-uclibc = " file://kill-stack-protector.patch"
-SRC_URI[md5sum] = "d2b6f798e58ef2497526e404b8ad640a"
-SRC_URI[sha256sum] = "0e1922373aba1c3811f6ef61559a9c407c0bec71d2ebc451a4db5b940ded8ec0"
+
+SRC_URI[md5sum] = "ec620466d6f23affa3b074b72bca7870"
+SRC_URI[sha256sum] = "feba102fa1e24b6be2005089ebe362b82d6567af60005cf371679b1b44ec503f"
 
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.GPLv2;md5=751419260aa954499f7abaabaa882bbe"
 
-inherit autotools useradd
+inherit autotools useradd pkgconfig
 
 S = "${WORKDIR}/Reusable-Cluster-Components-glue--glue-${PV}"
 
@@ -70,43 +69,50 @@ PACKAGES += "\
 	 ${PN}-plugin-interfacemgr-dbg \
 	 ${PN}-plugin-interfacemgr-staticdev \
 	 ${PN}-lrmtest \
+         ${PN}-plugin-compress \
+         ${PN}-plugin-compress-dbg \
+         ${PN}-plugin-compress-staticdev \
 	 "
 
-FILES_${PN} = "/etc/ /var /usr/lib/lib*.so.* /usr/sbin /usr/share/cluster-glue/*sh /usr/share/cluster-glue/*pl\
-	/usr/lib/heartbeat/transient-test.sh \
-	/usr/lib/heartbeat/logtest \
-	/usr/lib/heartbeat/ipctransientserver \
-	/usr/lib/heartbeat/base64_md5_test \
-	/usr/lib/heartbeat/ipctest \
-	/usr/lib/heartbeat/ipctransientclient \
-	/usr/lib/heartbeat/ha_logd \
-	/usr/lib/heartbeat/lrmd \
+FILES_${PN} = "${sysconfdir} /var ${libdir}/lib*.so.* ${sbindir} ${datadir}/cluster-glue/*sh ${datadir}/cluster-glue/*pl\
+	${libdir}/heartbeat/transient-test.sh \
+	${libdir}/heartbeat/logtest \
+	${libdir}/heartbeat/ipctransientserver \
+	${libdir}/heartbeat/base64_md5_test \
+	${libdir}/heartbeat/ipctest \
+	${libdir}/heartbeat/ipctransientclient \
+	${libdir}/heartbeat/ha_logd \
+	${libdir}/heartbeat/lrmd \
 	"
 
-FILES_${PN}-dbg += "/usr/lib/heartbeat/.debug/"
+FILES_${PN}-dbg += "${libdir}/heartbeat/.debug/ \
+                   "
+FILES_${PN}-plugin-compress = "${libdir}/heartbeat/plugins/compress/*.so"
+FILES_${PN}-plugin-compress-staticdev = "${libdir}/heartbeat/plugins/compress/*.*a"
+FILES_${PN}-plugin-compress-dbg = "${libdir}/heartbeat/plugins/compress/.debug/"
 
-FILES_${PN}-plugin-test = "/usr/lib/heartbeat/plugins/test/test.so"
-FILES_${PN}-plugin-test-staticdev = "/usr/lib/heartbeat/plugins/test/test.*a"
-FILES_${PN}-plugin-test-dbg = "/usr/lib/heartbeat/plugins/test/.debug/"
+FILES_${PN}-plugin-test = "${libdir}/heartbeat/plugins/test/test.so"
+FILES_${PN}-plugin-test-staticdev = "${libdir}/heartbeat/plugins/test/test.*a"
+FILES_${PN}-plugin-test-dbg = "${libdir}/heartbeat/plugins/test/.debug/"
 FILES_${PN}-plugin-stonith2 = " \
-	/usr/lib/stonith/plugins/xen0-ha-dom0-stonith-helper \
-	/usr/lib/stonith/plugins/stonith2/*.so \
+	${libdir}/stonith/plugins/xen0-ha-dom0-stonith-helper \
+	${libdir}/stonith/plugins/stonith2/*.so \
 	"
-FILES_${PN}-plugin-stonith2-ribcl = "/usr/lib/stonith/plugins/stonith2/ribcl.py"
+FILES_${PN}-plugin-stonith2-ribcl = "${libdir}/stonith/plugins/stonith2/ribcl.py"
 
-FILES_${PN}-plugin-stonith2-dbg = "/usr/lib/stonith/plugins/stonith2/.debug/"
-FILES_${PN}-plugin-stonith2-staticdev = "/usr/lib/stonith/plugins/stonith2/*.*a"
+FILES_${PN}-plugin-stonith2-dbg = "${libdir}/stonith/plugins/stonith2/.debug/"
+FILES_${PN}-plugin-stonith2-staticdev = "${libdir}/stonith/plugins/stonith2/*.*a"
 
-FILES_${PN}-plugin-stonith-external = "/usr/lib/stonith/plugins/external/"
-FILES_${PN}-plugin-raexec = "/usr/lib/heartbeat/plugins/RAExec/*.so"
-FILES_${PN}-plugin-raexec-staticdev = "/usr/lib/heartbeat/plugins/RAExec/*.*a"
-FILES_${PN}-plugin-raexec-dbg = "/usr/lib/heartbeat/plugins/RAExec/.debug/"
+FILES_${PN}-plugin-stonith-external = "${libdir}/stonith/plugins/external/"
+FILES_${PN}-plugin-raexec = "${libdir}/heartbeat/plugins/RAExec/*.so"
+FILES_${PN}-plugin-raexec-staticdev = "${libdir}/heartbeat/plugins/RAExec/*.*a"
+FILES_${PN}-plugin-raexec-dbg = "${libdir}/heartbeat/plugins/RAExec/.debug/"
 
-FILES_${PN}-plugin-interfacemgr = "/usr/lib/heartbeat/plugins/InterfaceMgr/generic.so"
-FILES_${PN}-plugin-interfacemgr-staticdev = "/usr/lib/heartbeat/plugins/InterfaceMgr/generic.*a"
-FILES_${PN}-plugin-interfacemgr-dbg = "/usr/lib/heartbeat/plugins/InterfaceMgr/.debug/"
+FILES_${PN}-plugin-interfacemgr = "${libdir}/heartbeat/plugins/InterfaceMgr/generic.so"
+FILES_${PN}-plugin-interfacemgr-staticdev = "${libdir}/heartbeat/plugins/InterfaceMgr/generic.*a"
+FILES_${PN}-plugin-interfacemgr-dbg = "${libdir}/heartbeat/plugins/InterfaceMgr/.debug/"
 
-FILES_${PN}-lrmtest = "/usr/share/cluster-glue/lrmtest/"
+FILES_${PN}-lrmtest = "${datadir}/cluster-glue/lrmtest/"
 
 RDEPENDS_${PN} += "perl"
 RDEPENDS_${PN}-plugin-stonith2 += "bash"
-- 
1.8.4.2


