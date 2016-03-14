Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75054E00D59; Mon, 14 Mar 2016 08:12:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 93D39E00D5C
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 08:12:33 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.266.1;
	Mon, 14 Mar 2016 16:12:25 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4451)	id 2CBF728BA26;
	Mon, 14 Mar 2016 16:12:26 +0100 (CET)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Mon, 14 Mar 2016 16:12:23 +0100
Message-ID: <1457968346-54855-3-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1457968346-54855-1-git-send-email-adrian.dudau@enea.com>
References: <1457968346-54855-1-git-send-email-adrian.dudau@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
Subject: [meta-cgl][PATCH 3/6] remove lksctp-tools from meta-cgl
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
X-List-Received-Date: Mon, 14 Mar 2016 15:12:36 -0000
Content-Type: text/plain

lksctp-tools was initially added with the aim to fulfill STD.3.1. The
Linux kernel >2.6 includes support for the base features of SCTP, so
there is no need for the package.

Besides that, there is already a recipe defined in meta-networking that
is kept up to date. If a P2 requirement will require lksctp-tools, we
can add it from there.

CGL requirement STD.3.1

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
Signed-off-by: Siva Borra <siva.borra@enea.com>
---
 .../packagegroups/packagegroup-cgl-middleware.bb   |  1 -
 .../lksctp-tools/files/static-libraries-fix.patch  | 60 ----------------------
 .../recipes-cgl/lksctp-tools/lksctp-tools.inc      | 47 -----------------
 .../recipes-cgl/lksctp-tools/lksctp-tools_1.0.7.bb | 38 --------------
 4 files changed, 146 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/lksctp-tools/files/static-libraries-fix.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/lksctp-tools/lksctp-tools.inc
 delete mode 100644 meta-cgl-common/recipes-cgl/lksctp-tools/lksctp-tools_1.0.7.bb

diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
index 23735f3..448e038 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
@@ -49,7 +49,6 @@ RDEPENDS_packagegroup-cgl-middleware = "\
     vlan \
     corosync \
     iscsi-initiator-utils \
-    lksctp-tools \
     openais \
     openipmi \
     openhpi \
diff --git a/meta-cgl-common/recipes-cgl/lksctp-tools/files/static-libraries-fix.patch b/meta-cgl-common/recipes-cgl/lksctp-tools/files/static-libraries-fix.patch
deleted file mode 100644
index 745db9b..0000000
--- a/meta-cgl-common/recipes-cgl/lksctp-tools/files/static-libraries-fix.patch
+++ /dev/null
@@ -1,60 +0,0 @@
-When running "./configure --disable-shared --enable-
-static" the build fails with the following error:
-
-gcc -g -Wall -Wstrict-prototypes -Wimplicit-function-
-declaration -g -O2 -o nagle_snd
-nagle_snd.o ../../src/lib/.libs/libsctp.a ../../src/t
-estlib/.libs/libsctputil.a
-../../src/testlib/.libs/libsctputil.a(sctputil.o): In
-function `test_peer_addr':
-/home/roubert/src/lksctp/lksctp-tools-
-1.0.6/src/testlib/sctputil.c:376: undefined reference
-to `sctp_getpaddrs'
-/home/roubert/src/lksctp/lksctp-tools-
-1.0.6/src/testlib/sctputil.c:382: undefined reference
-to `sctp_freepaddrs'
-/home/roubert/src/lksctp/lksctp-tools-
-1.0.6/src/testlib/sctputil.c:416: undefined reference
-to `sctp_freepaddrs'
-/home/roubert/src/lksctp/lksctp-tools-
-1.0.6/src/testlib/sctputil.c:400: undefined reference
-to `sctp_freepaddrs'
-collect2: ld returned 1 exit status
-make[3]: *** [nagle_snd] Error 1
-
-Changing the order of libsctp.a and libsctputil.a
-fixes this. The attached patch updates
-src/apps/Makefile.am and src/func_tests/Makefile.am
-to do that.
-
-Patch submitted by Fredrik Roubert <roubert@sf.net>.
-Patch needed reformatation because it did not applies as it was.
-
-diff -Naur a/src/apps/Makefile.am b/src/apps/Makefile.am
---- a/src/apps/Makefile.am	2014-07-04 14:57:42.707977872 +0200
-+++ b/src/apps/Makefile.am	2014-07-04 14:59:12.336231677 +0200
-@@ -8,8 +8,8 @@
- INCLUDES = -I. -I$(top_srcdir)/src/include -I$(top_srcdir)/src/testlib 
- AM_CFLAGS = -g -Wall -Wstrict-prototypes -Wimplicit-function-declaration
- AM_LDFLAGS = 
--LDADD = $(top_builddir)/src/lib/libsctp.la \
--	$(top_builddir)/src/testlib/libsctputil.la
-+LDADD = $(top_builddir)/src/testlib/libsctputil.la \
-+	$(top_builddir)/src/lib/libsctp.la
- 
- # programs to be installed with the distriubution
- bin_PROGRAMS = sctp_darn sctp_test
-diff -Naur a/src/func_tests/Makefile.am b/src/func_tests/Makefile.am
---- a/src/func_tests/Makefile.am	2014-07-04 15:04:48.678188041 +0200
-+++ b/src/func_tests/Makefile.am	2014-07-04 15:13:24.624769819 +0200
-@@ -8,8 +8,8 @@
- INCLUDES = -I. -I$(top_srcdir)/src/include -I$(top_srcdir)/src/testlib 
- AM_CFLAGS = -g -Wall -Wstrict-prototypes -Wimplicit-function-declaration
- AM_LDFLAGS = -lpthread
--LDADD = $(top_builddir)/src/lib/libsctp.la \
--	$(top_builddir)/src/testlib/libsctputil.la
-+LDADD = $(top_builddir)/src/testlib/libsctputil.la \
-+	$(top_builddir)/src/lib/libsctp.la
- 
- V6FLAGS = -DCONFIG_IPV6=1 -DTEST_V6=1 ${DEFS} ${INCLUDES} ${CFLAGS}
- 
diff --git a/meta-cgl-common/recipes-cgl/lksctp-tools/lksctp-tools.inc b/meta-cgl-common/recipes-cgl/lksctp-tools/lksctp-tools.inc
deleted file mode 100644
index 08a2073..0000000
--- a/meta-cgl-common/recipes-cgl/lksctp-tools/lksctp-tools.inc
+++ /dev/null
@@ -1,47 +0,0 @@
-DESCRIPTION = "The Linux Kernel Stream Control Transmission Protocol (lksctp) project"
-SECTION = "libs"
-PRIORITY = "optional"
-LICENSE = "LGPLv2"
-LIC_FILES_CHKSUM = "file://COPYING;md5=0c56db0143f4f80c369ee3af7425af6e"
-
-S = "${WORKDIR}/${BPN}-${PV}"
-
-INC_PR = "r1"
-
-BBCLASSEXTEND = "native"
-
-inherit autotools-brokensep pkgconfig binconfig
-
-EXTRA_OEMAKE="LIB=${libdir} exec_prefix=${exec_prefix} libdir=${libdir}"
-EXTRA_OECONF="--prefix=${libdir}"
-
-do_install_append_virtclass-native() {
-	:
-}
-
-RREPLACES_${PN}= "lksctp"
-
-LEAD_SONAME = "libsctp.so"
-
-PACKAGES =+ "${PN}-withsctp ${PN}-utils"
-
-FILES_${PN} = "${libexecdir}/* ${libdir}/lib*${SOLIBS} \
-            ${sysconfdir} ${sharedstatedir} ${localstatedir} \
-            ${base_libdir}/*${SOLIBS}"
-
-FILES_${PN}-dev += " \
-  ${datadir}/lksctp-tools/checksctp.c \
-  ${datadir}/lksctp-tools/sctp_socket.c \
-  ${datadir}/lksctp-tools/sctp_bind.c \
-  ${datadir}/lksctp-tools/sctp_darn.c \
-  ${datadir}/lksctp-tools/sctp_load_libs.c \
-  ${datadir}/lksctp-tools/sctp_sockopt.c \
-  ${datadir}/lksctp-tools/sctp_socket.h \
-  ${datadir}/lksctp-tools/sctp_test.c \
-  ${datadir}/lksctp-tools/sctp_darn.h"
-
-FILES_${PN}-utils = " \
-  ${bindir}/sctp_test \
-  ${bindir}/sctp_darn \
-  ${bindir}/checksctp \
-  ${bindir}/withsctp"
diff --git a/meta-cgl-common/recipes-cgl/lksctp-tools/lksctp-tools_1.0.7.bb b/meta-cgl-common/recipes-cgl/lksctp-tools/lksctp-tools_1.0.7.bb
deleted file mode 100644
index 454c9ff..0000000
--- a/meta-cgl-common/recipes-cgl/lksctp-tools/lksctp-tools_1.0.7.bb
+++ /dev/null
@@ -1,38 +0,0 @@
-require lksctp-tools.inc
-
-FILESEXTRAPATHS_prepend = "${THISDIR}/files:"
-SRC_URI += " \
-    ${SOURCEFORGE_MIRROR}/lksctp/lksctp-tools-${PV}.tar.gz \
-    file://static-libraries-fix.patch \
-    "
-
-inherit pkgconfig autotools
-
-SRC_URI[md5sum] = "047562b40537eb3be5d5ec3ae0a2198b"
-SRC_URI[sha256sum] = "e920e89d110cff9847f1d86a1d7a23a156a8abcc9e65a35655d687fd08377595"
-
-FILES_${PN}-dev += " \
-    ${libdir}/lksctp-tools/*.so \
-    ${libdir}/*.so \
-    ${base_libdir}/*.so \
-    ${base_libdir}/lksctp-tools/*.so \
-    /usr/lib/lksctp-tools/*.so"
-FILES_${PN}-staticdev = " \
-    ${libdir}/lksctp-tools/*.a \
-    ${libdir}/*.a \
-    ${base_libdir}/*.a \
-    ${base_libdir}/lksctp-tools/*.a \
-    /usr/lib/lksctp-tools/*.a"
-
-FILES_${PN}-withsctp-dev = " \
-    ${libdir}/lksctp-tools/*.so \
-    ${libdir}/*.so \
-    ${base_libdir}/*.so \
-    ${base_libdir}/lksctp-tools/*.so \
-    /usr/lib/lksctp-tools/*.so"
-FILES_${PN}-withsctp-staticdev = " \
-    ${libdir}/lksctp-tools/*.a \
-    ${libdir}/*.a \
-    ${base_libdir}/*.a \
-    ${base_libdir}/lksctp-tools/*.a \
-    /usr/lib/lksctp-tools/*.a"
-- 
1.9.1


