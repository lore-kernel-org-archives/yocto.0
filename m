Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E55D4E0095C; Thu, 20 Aug 2015 07:50:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_BLACK autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.7 URIBL_BLACK Contains an URL listed in the URIBL
	blacklist *      [URIs: configure.ac]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 2E964E00707
	for <yocto@yoctoproject.org>; Thu, 20 Aug 2015 07:50:48 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0224.002; Thu, 20 Aug 2015 16:50:46 +0200
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: Li xin <lixin.fnst@cn.fujitsu.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH v2] cluster-glue: upgrade 1.0.5 ->
	1.0.12
Thread-Index: AQHQ2jy1vPbRQ/Rj8kC+0srLB9Fdyp4U+e6Q
Date: Thu, 20 Aug 2015 14:50:45 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D8DB4FD@SESTOEX04.enea.se>
References: <A8FC939F80655644A89BB21CCD3741E8011BCBAF60@G08CNEXMBPEKD03.g08.fujitsu.local>
	<1439960637-8744-1-git-send-email-lixin.fnst@cn.fujitsu.com>
In-Reply-To: <1439960637-8744-1-git-send-email-lixin.fnst@cn.fujitsu.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.168]
MIME-Version: 1.0
Subject: Re: [meta-cgl][PATCH v2] cluster-glue: upgrade 1.0.5 -> 1.0.12
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
X-List-Received-Date: Thu, 20 Aug 2015 14:50:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Could you please take one more look on this since for me the build is faili=
ng in the do_compile stage.
Due to this error I was not able to build the other two patches heardbleat =
and pacemaker. :D

Alex V.

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Li xin
Sent: Wednesday, August 19, 2015 8:04 AM
To: yocto@yoctoproject.org
Subject: [yocto] [meta-cgl][PATCH v2] cluster-glue: upgrade 1.0.5 -> 1.0.12

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
 .../0001-don-t-compile-doc-and-Error-Fix.patch     |  50 ++++++++++
 .../0001-ribcl.py.in-Warning-Fix.patch             |  34 +++++++
 .../cluster-glue/cluster-glue/fix-const-cast.patch | 103 -----------------=
----
 .../cluster-glue/glue-remove-getpid-check.patch    |  31 -------
 .../glue-repair-deprecated-glib-support.patch      |  12 ---
 .../cluster-glue/glue-repair-libxml-support.patch  |  14 ---  ...luster-gl=
ue_1.0.5.bb =3D> cluster-glue_1.0.12.bb} |  76 ++++++++-------
 7 files changed, 125 insertions(+), 195 deletions(-)  create mode 100644 m=
eta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-don-t-compile-doc=
-and-Error-Fix.patch
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0=
001-ribcl.py.in-Warning-Fix.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/f=
ix-const-cast.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/g=
lue-remove-getpid-check.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/g=
lue-repair-deprecated-glib-support.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/g=
lue-repair-libxml-support.patch
 rename meta-cgl-common/recipes-cgl/cluster-glue/{cluster-glue_1.0.5.bb =3D=
> cluster-glue_1.0.12.bb} (49%)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-don=
-t-compile-doc-and-Error-Fix.patch b/meta-cgl-common/recipes-cgl/cluster-gl=
ue/cluster-glue/0001-don-t-compile-doc-and-Error-Fix.patch
new file mode 100644
index 0000000..471b1e4
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-don-t-c
+++ ompile-doc-and-Error-Fix.patch
@@ -0,0 +1,50 @@
+From b64b676f7abf896ca714341eb330099f2ff04213 Mon Sep 17 00:00:00 2001
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
+|      =20
+| http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.x
+| sl ha_logd.xml
+| make[2]: *** [hb_report.8] Error 127
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ Makefile.am           | 2 +-
+ configure.ac          | 6 ++++++
+ lrm/admin/Makefile.am | 2 +-
+ 3 files changed, 8 insertions(+), 2 deletions(-)
+
+diff --git a/Makefile.am b/Makefile.am
+index 93dbaf6..2f4d03b 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -23,7 +23,7 @@ MAINTAINERCLEANFILES	=3D Makefile.in aclocal.m4 configur=
e DRF/config-h.in \
+ 			  DRF/stamp-h.in libtool.m4 ltdl.m4 libltdl.tar
+=20
+ SUBDIRS			=3D include $(LIBLTDL_DIR) replace lib lrm logd \
+-			  hb_report doc config
++			  hb_report config
+=20
+ install-exec-local:
+ 	$(INSTALL) -d $(DESTDIR)/$(HA_COREDIR) diff --git=20
+a/lrm/admin/Makefile.am b/lrm/admin/Makefile.am index a92cd72..ed938e0=20
+100644
+--- a/lrm/admin/Makefile.am
++++ b/lrm/admin/Makefile.am
+@@ -36,5 +36,5 @@ man8_MANS =3D	$(sbin_PROGRAMS:%=3D%.8)
+ %.8:	%
+ 	echo Creating $@
+ 	chmod a+x $<
+-	help2man --output $@ --no-info --section 8 --name "Part of the Linux-HA =
project" $(top_builddir)/lrm/admin/$<
++	help2man --output $@ --no-info --section 8 --name "Part of the=20
++Linux-HA project" /usr/sbin/$<
+ endif
+--
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-rib=
cl.py.in-Warning-Fix.patch b/meta-cgl-common/recipes-cgl/cluster-glue/clust=
er-glue/0001-ribcl.py.in-Warning-Fix.patch
new file mode 100644
index 0000000..31010d4
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-ribcl.p
+++ y.in-Warning-Fix.patch
@@ -0,0 +1,34 @@
+From a2c66927b75547cee1db1340a67449ded0812df3 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Wed, 19 Aug 2015 11:13:46 +0900
+Subject: [PATCH] ribcl.py.in: Warning Fix
+
+WARNING: QA Issue:=20
+/usr/lib/stonith/plugins/stonith2/ribcl.py_cluster-glue-plugin-stonith2
+-ribcl contained in package cluster-glue-plugin-stonith2-ribcl requires=20
+/usr/local/bin/python, but no providers found in its RDEPENDS=20
+[file-rdeps]
+
+Add target python handling
+Allow the build to specify a path for the python instead of reusing the=20
+PYTHON variable which can lead to inconsistencies if we are cross=20
+compiling.
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ lib/plugins/stonith/ribcl.py.in | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/lib/plugins/stonith/ribcl.py.in=20
+b/lib/plugins/stonith/ribcl.py.in index 14e070c..01205e3 100644
+--- a/lib/plugins/stonith/ribcl.py.in
++++ b/lib/plugins/stonith/ribcl.py.in
+@@ -1,4 +1,4 @@
+-#!@PYTHON@
++#!@TRAGET_PYTHON@
+=20
+=20
+ #
+--
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/fix-cons=
t-cast.patch b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/fix-co=
nst-cast.patch
deleted file mode 100644
index 6de65bf..0000000
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/fix-const-cast.=
patch
+++ /dev/null
@@ -1,103 +0,0 @@
-This patch gets rid of new warning introduced with gcc 4.5 -Warning is exp=
lained here -http://gcc.gnu.org/viewcvs/trunk/gcc/doc/invoke.texi?r1=3D1480=
37&r2=3D148053&diff_format=3Dh
-
--Khem
--updated by Alexandru Vaduva - patch needed redone
-
-diff -Naur a/lib/plugins/stonith/apcsmart.c b/lib/plugins/stonith/apcsmart=
.c
---- a/lib/plugins/stonith/apcsmart.c	2014-07-09 17:14:24.492455034 +0200
-+++ b/lib/plugins/stonith/apcsmart.c	2014-07-09 17:15:03.386817399 +0200
-@@ -719,7 +719,7 @@
- 	}
- 	ERRIFNOTCONFIGED(s,NULL);
-=20
--	return OurImports->CopyHostList((const char **)ad->hostlist);
-+    return OurImports->CopyHostList(CONST_CAST(ad->hostlist));
- }
-
- static gboolean
-diff -Naur a/lib/plugins/stonith/external.c b/lib/plugins/stonith/external=
.c
---- a/lib/plugins/stonith/external.c	2014-07-09 17:15:28.661753145 +0200
-+++ b/lib/plugins/stonith/external.c	2014-07-09 17:17:03.873743634 +0200
-@@ -540,7 +540,7 @@
- 		sd->confignames[dircount] =3D NULL;
- 	}
-=20
--	return (const char **)sd->confignames;
-+    return CONST_CAST(sd->confignames);
- }
-
- /*
-diff -Naur a/lib/plugins/stonith/meatware.c b/lib/plugins/stonith/meatware=
.c
---- a/lib/plugins/stonith/meatware.c	2014-07-09 17:18:47.597375001 +0200
-+++ b/lib/plugins/stonith/meatware.c	2014-07-09 17:19:35.943338541 +0200
-@@ -136,7 +136,7 @@
- 		return(NULL);
- 	}
-=20
--	return OurImports->CopyHostList((const char **)nd->hostlist);
-+    return OurImports->CopyHostList(CONST_CAST(nd->hostlist));
- }
-
- /*
-diff -Naur a/lib/plugins/stonith/null.c b/lib/plugins/stonith/null.c
---- a/lib/plugins/stonith/null.c	2014-07-09 17:20:12.389803230 +0200
-+++ b/lib/plugins/stonith/null.c	2014-07-09 17:20:55.156001606 +0200
-@@ -126,7 +126,7 @@
- 	struct pluginDevice*	nd =3D (struct pluginDevice*)s;
-=20
- 	ERRIFWRONGDEV(s, NULL);
--	return OurImports->CopyHostList((const char**)nd->hostlist);
-+    return OurImports->CopyHostList(CONST_CAST(nd->hostlist));
- }
-
-
-diff -Naur a/lib/plugins/stonith/rcd_serial.c b/lib/plugins/stonith/rcd_se=
rial.c
---- a/lib/plugins/stonith/rcd_serial.c	2014-07-09 17:21:12.603266573 +0200
-+++ b/lib/plugins/stonith/rcd_serial.c	2014-07-09 17:21:56.341423862 +0200
-@@ -347,7 +347,7 @@
- 		return(NULL);
- 	}
-=20
--	return OurImports->CopyHostList((const char **)rcd->hostlist);
-+    return OurImports->CopyHostList(CONST_CAST(rcd->hostlist));
- }
-
- /*
-diff -Naur a/lib/plugins/stonith/rhcs.c b/lib/plugins/stonith/rhcs.c
---- a/lib/plugins/stonith/rhcs.c	2014-07-09 17:17:27.652742171 +0200
-+++ b/lib/plugins/stonith/rhcs.c	2014-07-09 17:18:18.562597957 +0200
-@@ -703,7 +703,7 @@
- 		sd->confignames[dircount] =3D NULL;
- 	}
-=20
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
-=20
--	return OurImports->CopyHostList((const char **)sd->hostlist);
-+    return OurImports->CopyHostList(CONST_CAST(sd->hostlist));
- }
-
-
-diff -Naur a/lib/plugins/stonith/stonith_plugin_common.h b/lib/plugins/sto=
nith/stonith_plugin_common.h
---- a/lib/plugins/stonith/stonith_plugin_common.h	2014-07-09 17:23:16.9540=
27367 +0200
-+++ b/lib/plugins/stonith/stonith_plugin_common.h	2014-07-09 17:24:38.5386=
09129 +0200
-@@ -123,5 +123,8 @@
-     return; \
-   }
-=20
-+#define CONST_CAST(s) \
-+    (__extension__(union {char ** a; const char** b;})(s)).b
-+
- #endif
-
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-rem=
ove-getpid-check.patch b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-g=
lue/glue-remove-getpid-check.patch
deleted file mode 100644
index 30f422c..0000000
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-remove-get=
pid-check.patch
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
--dnl	Possibly better:  move 'LIBS=3D"$LIBS -lltdl"' from above to beyond h=
ere.
--dnl
--AC_MSG_CHECKING(for getpid() consistency in multi-process/threads program=
) --ac_save_LIBS=3D$LIBS --LIBS=3D"-lpthread"
--AC_TRY_RUN(`cat $srcdir/config/pidtest.c`, --AC_MSG_RESULT(ok), --[AC_MSG=
_RESULT(fail); AC_DEFINE(GETPID_INCONSISTENT, 1 , [pid inconsistent])],) --=
LIBS=3D$ac_save_LIBS
--
--dnl check byte order
--AC_MSG_CHECKING(for byteorder)
--AC_TRY_RUN(`cat $srcdir/config/byteorder_test.c`, --[AC_MSG_RESULT(little=
-endian); AC_DEFINE(CONFIG_LITTLE_ENDIAN, 1, [little-endian])], --[AC_MSG_R=
ESULT(big-endian); AC_DEFINE(CONFIG_BIG_ENDIAN, 1, [big-endian])],)
-+AC_C_BIGENDIAN(
-+  [AC_DEFINE(CONFIG_BIG_ENDIAN, 1, [big])],
-+  [AC_DEFINE(CONFIG_LITTLE_ENDIAN, 1, [little])])
-
-
- dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-rep=
air-deprecated-glib-support.patch b/meta-cgl-common/recipes-cgl/cluster-glu=
e/cluster-glue/glue-repair-deprecated-glib-support.patch
deleted file mode 100644
index 16fc679..0000000
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-dep=
recated-glib-support.patch
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
-=20
- typedef struct cl_uuid_s{=09
- 	unsigned char	uuid[16];
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-rep=
air-libxml-support.patch b/meta-cgl-common/recipes-cgl/cluster-glue/cluster=
-glue/glue-repair-libxml-support.patch
deleted file mode 100644
index a436575..0000000
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-lib=
xml-support.patch
+++ /dev/null
@@ -1,14 +0,0 @@
-diff -Naur a/configure.ac b/configure.ac
---- a/configure.ac	2014-07-14 13:02:42.016652860 +0200
-+++ b/configure.ac	2014-07-14 13:03:59.585322332 +0200
-@@ -679,8 +679,8 @@
-
- CPPFLAGS=3D"$CPPFLAGS $XML2HEAD"
-
--AC_CHECK_HEADERS(libxml/xpath.h)
--if test "$ac_cv_header_libxml_xpath_h" !=3D "yes"; then
-+AC_CHECK_HEADERS(libxml2/libxml/xpath.h)
-+if test x"$ac_cv_header_libxml2_libxml_xpath_h" !=3D x"yes"; then
-    AC_MSG_ERROR(The libxml developement headers were not found)
- fi
-
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb=
 b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
similarity index 49%
rename from meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
rename to meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
index f1b4a78..be04469 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
@@ -7,21 +7,20 @@ LICENSE =3D "GPLv2"
 DEPENDS =3D "libxml2 libtool glib-2.0 bzip2 util-linux net-snmp openhpi"
=20
 SRC_URI =3D " \
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
 SRC_URI_append_libc-uclibc =3D " file://kill-stack-protector.patch"
-SRC_URI[md5sum] =3D "d2b6f798e58ef2497526e404b8ad640a"
-SRC_URI[sha256sum] =3D "0e1922373aba1c3811f6ef61559a9c407c0bec71d2ebc451a4=
db5b940ded8ec0"
+
+SRC_URI[md5sum] =3D "ec620466d6f23affa3b074b72bca7870"
+SRC_URI[sha256sum] =3D "feba102fa1e24b6be2005089ebe362b82d6567af60005cf371=
679b1b44ec503f"
=20
 LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.GPLv2;md5=3D75141926=
0aa954499f7abaabaa882bbe"
=20
-inherit autotools useradd
+inherit autotools useradd pkgconfig
=20
 S =3D "${WORKDIR}/Reusable-Cluster-Components-glue--glue-${PV}"
=20
@@ -70,43 +69,50 @@ PACKAGES +=3D "\
 	 ${PN}-plugin-interfacemgr-dbg \
 	 ${PN}-plugin-interfacemgr-staticdev \
 	 ${PN}-lrmtest \
+         ${PN}-plugin-compress \
+         ${PN}-plugin-compress-dbg \
+         ${PN}-plugin-compress-staticdev \
 	 "
=20
-FILES_${PN} =3D "/etc/ /var /usr/lib/lib*.so.* /usr/sbin /usr/share/cluste=
r-glue/*sh /usr/share/cluster-glue/*pl\
-	/usr/lib/heartbeat/transient-test.sh \
-	/usr/lib/heartbeat/logtest \
-	/usr/lib/heartbeat/ipctransientserver \
-	/usr/lib/heartbeat/base64_md5_test \
-	/usr/lib/heartbeat/ipctest \
-	/usr/lib/heartbeat/ipctransientclient \
-	/usr/lib/heartbeat/ha_logd \
-	/usr/lib/heartbeat/lrmd \
+FILES_${PN} =3D "${sysconfdir} /var ${libdir}/lib*.so.* ${sbindir} ${datad=
ir}/cluster-glue/*sh ${datadir}/cluster-glue/*pl\
+	${libdir}/heartbeat/transient-test.sh \
+	${libdir}/heartbeat/logtest \
+	${libdir}/heartbeat/ipctransientserver \
+	${libdir}/heartbeat/base64_md5_test \
+	${libdir}/heartbeat/ipctest \
+	${libdir}/heartbeat/ipctransientclient \
+	${libdir}/heartbeat/ha_logd \
+	${libdir}/heartbeat/lrmd \
 	"
=20
-FILES_${PN}-dbg +=3D "/usr/lib/heartbeat/.debug/"
+FILES_${PN}-dbg +=3D "${libdir}/heartbeat/.debug/ \
+                   "
+FILES_${PN}-plugin-compress =3D "${libdir}/heartbeat/plugins/compress/*.so=
"
+FILES_${PN}-plugin-compress-staticdev =3D "${libdir}/heartbeat/plugins/com=
press/*.*a"
+FILES_${PN}-plugin-compress-dbg =3D "${libdir}/heartbeat/plugins/compress/=
.debug/"
=20
-FILES_${PN}-plugin-test =3D "/usr/lib/heartbeat/plugins/test/test.so"
-FILES_${PN}-plugin-test-staticdev =3D "/usr/lib/heartbeat/plugins/test/tes=
t.*a"
-FILES_${PN}-plugin-test-dbg =3D "/usr/lib/heartbeat/plugins/test/.debug/"
+FILES_${PN}-plugin-test =3D "${libdir}/heartbeat/plugins/test/test.so"
+FILES_${PN}-plugin-test-staticdev =3D "${libdir}/heartbeat/plugins/test/te=
st.*a"
+FILES_${PN}-plugin-test-dbg =3D "${libdir}/heartbeat/plugins/test/.debug/"
 FILES_${PN}-plugin-stonith2 =3D " \
-	/usr/lib/stonith/plugins/xen0-ha-dom0-stonith-helper \
-	/usr/lib/stonith/plugins/stonith2/*.so \
+	${libdir}/stonith/plugins/xen0-ha-dom0-stonith-helper \
+	${libdir}/stonith/plugins/stonith2/*.so \
 	"
-FILES_${PN}-plugin-stonith2-ribcl =3D "/usr/lib/stonith/plugins/stonith2/r=
ibcl.py"
+FILES_${PN}-plugin-stonith2-ribcl =3D "${libdir}/stonith/plugins/stonith2/=
ribcl.py"
=20
-FILES_${PN}-plugin-stonith2-dbg =3D "/usr/lib/stonith/plugins/stonith2/.de=
bug/"
-FILES_${PN}-plugin-stonith2-staticdev =3D "/usr/lib/stonith/plugins/stonit=
h2/*.*a"
+FILES_${PN}-plugin-stonith2-dbg =3D "${libdir}/stonith/plugins/stonith2/.d=
ebug/"
+FILES_${PN}-plugin-stonith2-staticdev =3D "${libdir}/stonith/plugins/stoni=
th2/*.*a"
=20
-FILES_${PN}-plugin-stonith-external =3D "/usr/lib/stonith/plugins/external=
/"
-FILES_${PN}-plugin-raexec =3D "/usr/lib/heartbeat/plugins/RAExec/*.so"
-FILES_${PN}-plugin-raexec-staticdev =3D "/usr/lib/heartbeat/plugins/RAExec=
/*.*a"
-FILES_${PN}-plugin-raexec-dbg =3D "/usr/lib/heartbeat/plugins/RAExec/.debu=
g/"
+FILES_${PN}-plugin-stonith-external =3D "${libdir}/stonith/plugins/externa=
l/"
+FILES_${PN}-plugin-raexec =3D "${libdir}/heartbeat/plugins/RAExec/*.so"
+FILES_${PN}-plugin-raexec-staticdev =3D "${libdir}/heartbeat/plugins/RAExe=
c/*.*a"
+FILES_${PN}-plugin-raexec-dbg =3D "${libdir}/heartbeat/plugins/RAExec/.deb=
ug/"
=20
-FILES_${PN}-plugin-interfacemgr =3D "/usr/lib/heartbeat/plugins/InterfaceM=
gr/generic.so"
-FILES_${PN}-plugin-interfacemgr-staticdev =3D "/usr/lib/heartbeat/plugins/=
InterfaceMgr/generic.*a"
-FILES_${PN}-plugin-interfacemgr-dbg =3D "/usr/lib/heartbeat/plugins/Interf=
aceMgr/.debug/"
+FILES_${PN}-plugin-interfacemgr =3D "${libdir}/heartbeat/plugins/Interface=
Mgr/generic.so"
+FILES_${PN}-plugin-interfacemgr-staticdev =3D "${libdir}/heartbeat/plugins=
/InterfaceMgr/generic.*a"
+FILES_${PN}-plugin-interfacemgr-dbg =3D "${libdir}/heartbeat/plugins/Inter=
faceMgr/.debug/"
=20
-FILES_${PN}-lrmtest =3D "/usr/share/cluster-glue/lrmtest/"
+FILES_${PN}-lrmtest =3D "${datadir}/cluster-glue/lrmtest/"
=20
 RDEPENDS_${PN} +=3D "perl"
 RDEPENDS_${PN}-plugin-stonith2 +=3D "bash"
--
1.8.4.2

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

