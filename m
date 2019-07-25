Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A4B8E00D59; Thu, 25 Jul 2019 01:35:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6537AE00C5C
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2019 01:35:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6P8YWX2025386
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 25 Jul 2019 01:34:42 -0700
Received: from localhost (128.224.162.136) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 25 Jul 2019 01:34:21 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <akuster808@gmail.com>
Date: Thu, 25 Jul 2019 16:34:18 +0800
Message-ID: <1564043659-22405-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.136]
Subject: [meta-security][PATCH 1/2] openscap: update recipe
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
X-List-Received-Date: Thu, 25 Jul 2019 08:35:14 -0000
Content-Type: text/plain

* Add PACKAGECONFIG for gcrypt, nss3 and selinux
* Use EXTRA_OECMAKE rather than EXTRA_OECONF
* Set CMAKE_SKIP_RPATH and CMAKE_SKIP_INSTALL_RPATH instead of chrpath
* Remove ptest since there are many host contamination issues on target.
  We will add it back when these issues are solved.
* Drop the unused patch
* Add PV

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../openscap/files/probe_dir_fixup.patch           | 17 -----
 .../recipes-openscap/openscap/files/run-ptest      |  3 -
 .../recipes-openscap/openscap/openscap.inc         | 77 ++++++++--------------
 .../recipes-openscap/openscap/openscap_1.3.1.bb    |  1 -
 .../recipes-openscap/openscap/openscap_git.bb      |  3 +-
 5 files changed, 30 insertions(+), 71 deletions(-)
 delete mode 100644 meta-security-compliance/recipes-openscap/openscap/files/probe_dir_fixup.patch
 delete mode 100644 meta-security-compliance/recipes-openscap/openscap/files/run-ptest

diff --git a/meta-security-compliance/recipes-openscap/openscap/files/probe_dir_fixup.patch b/meta-security-compliance/recipes-openscap/openscap/files/probe_dir_fixup.patch
deleted file mode 100644
index ecbe602..0000000
--- a/meta-security-compliance/recipes-openscap/openscap/files/probe_dir_fixup.patch
+++ /dev/null
@@ -1,17 +0,0 @@
-Index: git/configure.ac
-===================================================================
---- git.orig/configure.ac
-+++ git/configure.ac
-@@ -1109,11 +1109,7 @@ AC_ARG_WITH([crypto],
-      [],
-      [crypto=gcrypt])
- 
--if test "x${libexecdir}" = xNONE; then
--	probe_dir="/usr/local/libexec/openscap"
--else
--	EXPAND_DIR(probe_dir,"${libexecdir}/openscap")
--fi
-+probe_dir="/usr/local/libexec/openscap"
- 
- AC_SUBST(probe_dir)
- 
diff --git a/meta-security-compliance/recipes-openscap/openscap/files/run-ptest b/meta-security-compliance/recipes-openscap/openscap/files/run-ptest
deleted file mode 100644
index 454a6a3..0000000
--- a/meta-security-compliance/recipes-openscap/openscap/files/run-ptest
+++ /dev/null
@@ -1,3 +0,0 @@
-#!/bin/sh
-cd tests
-make -k check
diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.inc b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
index e5daaf8..f23ea99 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap.inc
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
@@ -6,71 +6,50 @@ HOME_URL = "https://www.open-scap.org/tools/openscap-base/"
 LIC_FILES_CHKSUM = "file://COPYING;md5=fbc093901857fcd118f065f900982c24"
 LICENSE = "LGPL-2.1"
 
-DEPENDS = "autoconf-archive dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt libcap swig libgcrypt chrpath-replacement-native "
-
-DEPENDS_class-native = "autoconf-archive-native pkgconfig-native swig-native curl-native libxml2-native libxslt-native dpkg-native libgcrypt-native nss-native"
+DEPENDS = "autoconf-archive dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt libcap swig"
+DEPENDS_class-native = "autoconf-archive-native pkgconfig-native swig-native curl-native libxml2-native libxslt-native libcap-native dpkg-native"
 
 S = "${WORKDIR}/git"
 
-inherit cmake pkgconfig python3native perlnative ptest
-
-PACKAGECONFIG ?= "python3 rpm perl"
-PACKAGECONFIG[python3] = "-DENABLE_PYTHON3=True, , python3, python3"
-PACKAGECONFIG[perl] = "-DENABLE_PERL=True,, perl, perl"
-PACKAGECONFIG[rpm] = "-DENABLE_OSCAP_UTIL_AS_RPM=True, ,rpm, rpm"
-
-EXTRA_OECONF += "-DENABLE_PROBES_INDEPENDENT=yes -DENABLE_PROBES_LINUX=yes -DWITH_CRYPTO=gcrypt\
-		-DENABLE_PROBES_SOLARIS=yes -DENABLE_PROBES_UNIX=yes  -DENABLE_TESTS=no \
-		-DENABLE_OSCAP_UTIL_SSH=yes -DENABLE_OSCAP_UTIL=yes -DENABLE_SCE=yes \
-                -DENABLE_OSCAP_UTIL_DOCKER=no \
-                "
-
+inherit cmake pkgconfig python3native perlnative
+
+PACKAGECONFIG ?= "python3 rpm perl gcrypt ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
+PACKAGECONFIG[python3] = "-DENABLE_PYTHON3=ON, ,python3, python3"
+PACKAGECONFIG[perl] = "-DENABLE_PERL=ON, ,perl, perl"
+PACKAGECONFIG[rpm] = "-DENABLE_OSCAP_UTIL_AS_RPM=ON, ,rpm, rpm"
+PACKAGECONFIG[gcrypt] = "-DWITH_CRYPTO=gcrypt, ,libgcrypt"
+PACKAGECONFIG[nss3] = "-DWITH_CRYPTO=nss3, ,nss"
+PACKAGECONFIG[selinux] = ", ,libselinux"
+
+EXTRA_OECMAKE += "-DENABLE_PROBES_LINUX=ON -DENABLE_PROBES_UNIX=ON \
+                  -DENABLE_PROBES_SOLARIS=OFF -DENABLE_PROBES_INDEPENDENT=ON \
+                  -DENABLE_OSCAP_UTIL=ON -DENABLE_OSCAP_UTIL_SSH=ON \
+                  -DENABLE_OSCAP_UTIL_DOCKER=OFF -DENABLE_OSCAP_UTIL_CHROOT=OFF \
+                  -DENABLE_OSCAP_UTIL_PODMAN=OFF -DENABLE_OSCAP_UTIL_VM=OFF \
+                  -DENABLE_PROBES_WINDOWS=OFF -DENABLE_VALGRIND=OFF \
+                  -DENABLE_SCE=ON -DENABLE_MITRE=OFF -DENABLE_TESTS=OFF \
+                  -DCMAKE_SKIP_INSTALL_RPATH=ON -DCMAKE_SKIP_RPATH=ON \
+                 "
 
 STAGING_OSCAP_DIR = "${TMPDIR}/work-shared/${MACHINE}/oscap-source"
 STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
 
-EXTRANATIVEPATH += "chrpath-native"
-
 do_configure_append_class-native () {
-	sed -i 's:OSCAP_DEFAULT_CPE_PATH.*$:OSCAP_DEFAULT_CPE_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe":' ${B}/config.h
-	sed -i 's:OSCAP_DEFAULT_SCHEMA_PATH.*$:OSCAP_DEFAULT_SCHEMA_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas":' ${B}/config.h
-	sed -i 's:OSCAP_DEFAULT_XSLT_PATH.*$:OSCAP_DEFAULT_XSLT_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl":' ${B}/config.h
+    sed -i 's:OSCAP_DEFAULT_CPE_PATH.*$:OSCAP_DEFAULT_CPE_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe":' ${B}/config.h
+    sed -i 's:OSCAP_DEFAULT_SCHEMA_PATH.*$:OSCAP_DEFAULT_SCHEMA_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas":' ${B}/config.h
+    sed -i 's:OSCAP_DEFAULT_XSLT_PATH.*$:OSCAP_DEFAULT_XSLT_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl":' ${B}/config.h
 }
 
-do_clean[cleandirs] += " ${STAGING_OSCAP_BUILDDIR}"
-
-do_compile_append_class-target() {
-	sed -i -e 's:${STAGING_BINDIR_NATIVE}/python3-native/python3:${bindir}/python3:' ${B}/utils/oscap-docker
-}
+do_clean[cleandirs] += "${STAGING_OSCAP_BUILDDIR}"
 
 do_install_append_class-native () {
-	oscapdir=${STAGING_OSCAP_BUILDDIR}/${datadir_native}
-	install -d $oscapdir	
-	cp -a ${D}/${STAGING_DATADIR_NATIVE}/openscap $oscapdir
+    oscapdir=${STAGING_OSCAP_BUILDDIR}/${datadir_native}
+    install -d $oscapdir
+    cp -a ${D}/${STAGING_DATADIR_NATIVE}/openscap $oscapdir
 }
 
-TESTDIR = "tests"
-
-do_compile_ptest() {
-    oe-runcmake ${TESTDIR} 
-}
-
-do_install_ptest() {
-    # install the tests
-    cp -rf ${B}/${TESTDIR} ${D}${PTEST_PATH}
-}
-
-do_fixup_rpath() {
-	chrpath -d ${D}${libdir}/libopenscap.so.25.0.1
-	chrpath -d ${D}${libdir}/libopenscap_sce.so.25.0.1
-	chrpath -d ${D}${bindir}/oscap
-}
-
-addtask fixup_rpath before do_package after do_install
-
 FILES_${PN} += "${PYTHON_SITEPACKAGES_DIR}"
 
 RDEPENDS_${PN} += "libxml2 python3 libgcc"
-RDEPENDS_${PN}-ptest = "bash perl python3-core"
 
 BBCLASSEXTEND = "native"
diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.bb
index c29fd42..ad29efd 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.bb
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.bb
@@ -4,7 +4,6 @@ require openscap.inc
 
 SRCREV = "3a4c635691380fa990a226acc8558db35d7ebabc"
 SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3 \
-           file://run-ptest \
 "
 
 DEFAULT_PREFERENCE = "-1"
diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
index aded920..963d3de 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
@@ -7,5 +7,6 @@ include openscap.inc
 
 SRCREV = "4bbdb46ff651f809d5b38ca08d769790c4bfff90"
 SRC_URI = "git://github.com/akuster/openscap.git;branch=oe-1.3 \
-           file://run-ptest \
 "
+
+PV = "1.3.1+git${SRCPV}"
-- 
2.7.4


