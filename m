Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 947C6E00D73; Sat,  6 Jul 2019 16:32:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
	[209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93567E00B8D
	for <yocto@yoctoproject.org>; Sat,  6 Jul 2019 16:32:33 -0700 (PDT)
Received: by mail-pg1-f173.google.com with SMTP id g15so5828661pgi.4
	for <yocto@yoctoproject.org>; Sat, 06 Jul 2019 16:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=yLk5cfUCKhLNXxnIs68DYlnF6sC9fBrJf4uNnGwCoho=;
	b=g3bp0Zaicno58vLoX8SCu4Vw5zvor+rr7QnuEuTYYx41CLrwIdg8HzRHDaQVIXCUR7
	3uVhW6PztYXQN2vGo2imx1vw7MH9eh9HDQvd+QzWd+WK46PEHUKK7xY6ilci6UVWLxMC
	7zDLgHHjvmXdADvklqPpFZsxmP7oA7PH2M/MUvbyaAWtNsLwG08HUAjk2s/dG6qo9mcg
	Vhrs9HRLlwG9IHcFQzA8VGtsC3fq/py7SaBXOwYDCt4KepnKSNCLGIOCebl1nreM3Nee
	X7NaCLcYre7Ipuk81ewnSmtKGmGkc744Zx6dBW8lVV2llMCcShyGcjEXqj7h35Wwb07s
	6ERQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=yLk5cfUCKhLNXxnIs68DYlnF6sC9fBrJf4uNnGwCoho=;
	b=VM5U5GG4zJ/1cJtRgV+JEqzHzZpKSxf019cKsYzF4EN5XfhCFLp+YcDKq1ecsNjFrj
	qGnWU/OL1WrLoAS+w+XxSH0h+ZtHwTUeAdociaKZn1q+QnKbCY8lLeyRX/ma1RtIFSRw
	lVWmtmDG4i119MfxcTnbI/M/C/aNa7ldmXVzZM89ZVW/YnPW/s7KVVvwRiOtJJCBKN1u
	KmdxUIDGQxo2CY9E/Kv6R/iRL98YuuHSd7UcckbrPtJeOb087JUiP+mRFgl8e07eENdZ
	h5FLRXLNU8C1Gc63aScXUnO0bq3BovOYDCLepy+zs87+z62Qab241mNtPwTnXQZ7Hbyp
	jcnw==
X-Gm-Message-State: APjAAAW2W4lpKCskvQi3+C//huiBrfZqiH5e0zhN88J+Vu/I34DyVBJz
	Jp60ya8valv+9L/IT8304/fZF0YNAxI=
X-Google-Smtp-Source: APXvYqwCySJd8RmjMDlnQBCc/BcUf0GF5Aau/iPGYvQ8WvkmtM+uMhRE3quf4D1Hqh2NJXiaOcrVTg==
X-Received: by 2002:a63:f346:: with SMTP id t6mr13670418pgj.203.1562455952840; 
	Sat, 06 Jul 2019 16:32:32 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	a25sm12486639pfn.1.2019.07.06.16.32.31 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 06 Jul 2019 16:32:32 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  6 Jul 2019 16:32:27 -0700
Message-Id: <20190706233230.2774-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security-compliance][PATCH 1/4] openscap_git: update to 1.3.0
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
X-List-Received-Date: Sat, 06 Jul 2019 23:32:36 -0000

removed unneeded patch
convert over to cmake

refactor files

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../openscap/files/crypto_pkgconfig.patch     | 36 --------
 .../recipes-openscap/openscap/openscap.inc    | 75 +++++++++++++++++
 .../recipes-openscap/openscap/openscap_git.bb | 83 +------------------
 3 files changed, 78 insertions(+), 116 deletions(-)
 delete mode 100644 meta-security-compliance/recipes-openscap/openscap/files/crypto_pkgconfig.patch

diff --git a/meta-security-compliance/recipes-openscap/openscap/files/crypto_pkgconfig.patch b/meta-security-compliance/recipes-openscap/openscap/files/crypto_pkgconfig.patch
deleted file mode 100644
index 2d70855..0000000
--- a/meta-security-compliance/recipes-openscap/openscap/files/crypto_pkgconfig.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-Index: git/configure.ac
-===================================================================
---- git.orig/configure.ac
-+++ git/configure.ac
-@@ -360,25 +360,13 @@ case "${with_crypto}" in
-         AC_DEFINE([HAVE_NSS3], [1], [Define to 1 if you have 'NSS' library.])
-         ;;
-     gcrypt)
--	SAVE_LIBS=$LIBS
--        AC_CHECK_LIB([gcrypt], [gcry_check_version],
--                     [crapi_CFLAGS=`libgcrypt-config --cflags`;
--                      crapi_LIBS=`libgcrypt-config --libs`;
--                      crapi_libname="GCrypt";],
--                     [AC_MSG_ERROR([library 'gcrypt' is required for GCrypt.])],
--                     [])
--        AC_DEFINE([HAVE_GCRYPT], [1], [Define to 1 if you have 'gcrypt' library.])
--	AC_CACHE_CHECK([for GCRYCTL_SET_ENFORCED_FIPS_FLAG],
--                    [ac_cv_gcryctl_set_enforced_fips_flag],
--                    [AC_COMPILE_IFELSE([AC_LANG_PROGRAM([#include<gcrypt.h>],
--                                                        [return GCRYCTL_SET_ENFORCED_FIPS_FLAG;])],
--                                       [ac_cv_gcryctl_set_enforced_fips_flag=yes],
--                                       [ac_cv_gcryctl_set_enforced_fips_flag=no])])
-+	PKG_CHECK_MODULES([libgcrypt], [libgcrypt >= 1.7.9],[],
-+			  AC_MSG_FAILURE([libgcrypt devel support is missing]))
- 
--	if test "${ac_cv_gcryctl_set_enforced_fips_flag}" == "yes"; then
--	   AC_DEFINE([HAVE_GCRYCTL_SET_ENFORCED_FIPS_FLAG], [1], [Define to 1 if you have 'gcrypt' library with GCRYCTL_SET_ENFORCED_FIPS_FLAG.])
--	fi
--	LIBS=$SAVE_LIBS
-+	crapi_libname="libgcrypt"
-+	crapi_CFLAGS=$libgcrypt_CFLAGS
-+	crapi_LIBS=$libgcrypt_LIBS
-+        AC_DEFINE([HAVE_GCRYPT], [1], [Define to 1 if you have 'libgcrypt' library.])
-         ;;
-          *)
-           AC_MSG_ERROR([unknown crypto backend])
diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.inc b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
index e9589b6..4c1f206 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap.inc
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
@@ -1,2 +1,77 @@
+# Copyright (C) 2017 Armin Kuster  <akuster808@gmail.com>
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SUMARRY = "NIST Certified SCAP 1.2 toolkit"
+HOME_URL = "https://www.open-scap.org/tools/openscap-base/"
+LIC_FILES_CHKSUM = "file://COPYING;md5=fbc093901857fcd118f065f900982c24"
+LICENSE = "LGPL-2.1"
+
+DEPENDS = "autoconf-archive dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt libcap swig libgcrypt chrpath-replacement-native "
+
+DEPENDS_class-native = "autoconf-archive-native pkgconfig-native swig-native curl-native libxml2-native libxslt-native dpkg-native libgcrypt-native nss-native"
+
+inherit cmake pkgconfig python3native perlnative ptest
+
+S = "${WORKDIR}/git"
+
+PACKAGECONFIG ?= "python3 rpm perl"
+PACKAGECONFIG[python3] = "-DENABLE_PYTHON3=True, , python3, python3"
+PACKAGECONFIG[perl] = "-DENABLE_PERL=True,, perl, perl"
+PACKAGECONFIG[rpm] = "-DENABLE_OSCAP_UTIL_AS_RPM=True, ,rpm, rpm"
+
+EXTRA_OECONF += "-DENABLE_PROBES_INDEPENDENT=yes -DENABLE_PROBES_LINUX=yes -DWITH_CRYPTO=gcrypt\
+		-DENABLE_PROBES_SOLARIS=yes -DENABLE_PROBES_UNIX=yes  -DENABLE_TESTS=no \
+		-DENABLE_OSCAP_UTIL_SSH=yes -DENABLE_OSCAP_UTIL=yes -DENABLE_SCE=yes \
+                -DENABLE_OSCAP_UTIL_DOCKER=no \
+                "
+
+EXTRA_OECONF_class-native += "-DENABLE_PROBES=True"
+
 STAGING_OSCAP_DIR = "${TMPDIR}/work-shared/${MACHINE}/oscap-source"
 STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
+
+EXTRANATIVEPATH += "chrpath-native"
+
+do_configure_append_class-native () {
+	sed -i 's:OSCAP_DEFAULT_CPE_PATH.*$:OSCAP_DEFAULT_CPE_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe":' ${S}/config.h
+	sed -i 's:OSCAP_DEFAULT_SCHEMA_PATH.*$:OSCAP_DEFAULT_SCHEMA_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas":' ${S}/config.h
+	sed -i 's:OSCAP_DEFAULT_XSLT_PATH.*$:OSCAP_DEFAULT_XSLT_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl":' ${S}/config.h
+}
+
+do_clean[cleandirs] += " ${STAGING_OSCAP_BUILDDIR}"
+
+do_compile_append_class-target() {
+	sed -i -e 's:${STAGING_BINDIR_NATIVE}/python3-native/python3:${bindir}/python3:' ${B}/utils/oscap-docker
+}
+
+do_install_append_class-native () {
+	oscapdir=${STAGING_OSCAP_BUILDDIR}/${datadir_native}
+	install -d $oscapdir	
+	cp -a ${D}/${STAGING_DATADIR_NATIVE}/openscap $oscapdir
+}
+
+TESTDIR = "tests"
+
+do_compile_ptest() {
+    oe-runcmake ${TESTDIR} 
+}
+
+do_install_ptest() {
+    # install the tests
+    cp -rf ${B}/${TESTDIR} ${D}${PTEST_PATH}
+}
+
+do_fixup_rpath() {
+	chrpath -d ${D}${libdir}/libopenscap.so.25.0.1
+	chrpath -d ${D}${libdir}/libopenscap_sce.so.25.0.1
+	chrpath -d ${D}${bindir}/oscap
+}
+
+addtask fixup_rpath before do_package after do_install
+
+FILES_${PN} += "${PYTHON_SITEPACKAGES_DIR}"
+
+RDEPENDS_${PN} += "libxml2 python3 libgcc"
+RDEPENDS_${PN}-ptest = "bash perl python3-core"
+
+BBCLASSEXTEND = "native"
diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
index 3bfa2e1..3dfa99e 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
@@ -1,88 +1,11 @@
 # Copyright (C) 2017 Armin Kuster  <akuster808@gmail.com>
 # Released under the MIT license (see COPYING.MIT for the terms)
 
-SUMARRY = "NIST Certified SCAP 1.2 toolkit"
-HOME_URL = "https://www.open-scap.org/tools/openscap-base/"
-LIC_FILES_CHKSUM = "file://COPYING;md5=fbc093901857fcd118f065f900982c24"
-LICENSE = "LGPL-2.1"
+SUMARRY = "NIST Certified SCAP 1.2 toolkit with OE changes"
 
-DEPENDS = "autoconf-archive pkgconfig gconf procps curl libxml2 rpm \
-          libxslt libcap swig swig-native"
-
-DEPENDS_class-native = "autoconf-archive-native pkgconfig-native swig-native curl-native libxml2-native libxslt-native dpkg-native libgcrypt-native nss-native"
-
-SRCREV = "59c234b3e9907480c89dfbd1b466a6bf72a2d2ed"
-SRC_URI = "git://github.com/akuster/openscap.git;branch=oe \
-           file://crypto_pkgconfig.patch \
+SRCREV = "4bbdb46ff651f809d5b38ca08d769790c4bfff90"
+SRC_URI = "git://github.com/akuster/openscap.git;branch=oe-1.3 \
            file://run-ptest \
 "
-PV = "v1.2.17+git${SRCPV}"
-
-inherit autotools-brokensep pkgconfig python3native perlnative ptest
-
-S = "${WORKDIR}/git"
-
-PACKAGECONFIG ?= "nss3 pcre rpm"
-PACKAGECONFIG[pcre] = ",--enable-regex-posix, libpcre"
-PACKAGECONFIG[gcrypt] = "--with-crypto=gcrypt,, libgcrypt "
-PACKAGECONFIG[nss3] = "--with-crypto=nss3,, nss"
-PACKAGECONFIG[python] = "--enable-python, --disable-python, python, python"
-PACKAGECONFIG[python3] = "--enable-python3, --disable-python3, python3, python3"
-PACKAGECONFIG[perl] = "--enable-perl, --disable-perl, perl, perl"
-PACKAGECONFIG[rpm] = " --enable-util-scap-as-rpm, --disable-util-scap-as-rpm, rpm, rpm"
-
-export LDFLAGS += " -ldl"
-
-EXTRA_OECONF += "--enable-probes-independent --enable-probes-linux \
-		--enable-probes-solaris --enable-probes-unix  --disable-util-oscap-docker\
-		--enable-util-oscap-ssh --enable-util-oscap --enable-ssp --enable-sce \
-"
-
-EXTRA_OECONF_class-native += "--disable-probes-independent --enable-probes-linux \
-		--disable-probes-solaris --disable-probes-unix \
-		--enable-util-oscap \
-"
-
-do_configure_prepend () {
-	sed -i 's:-I/usr/include:-I${STAGING_INCDIR}:' ${S}/swig/perl/Makefile.am
-	sed -i 's:-I/usr/include:-I${STAGING_INCDIR}:' ${S}/swig/python3/Makefile.am
-	sed -i 's:-I/usr/include:-I${STAGING_INCDIR}:' ${S}/swig/python2/Makefile.am
-	sed -i 's:python2:python:' ${S}/utils/scap-as-rpm
-}
-
 
 include openscap.inc
-
-do_configure_append_class-native () {
-	sed -i 's:OSCAP_DEFAULT_CPE_PATH.*$:OSCAP_DEFAULT_CPE_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe":' ${S}/config.h
-	sed -i 's:OSCAP_DEFAULT_SCHEMA_PATH.*$:OSCAP_DEFAULT_SCHEMA_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas":' ${S}/config.h
-	sed -i 's:OSCAP_DEFAULT_XSLT_PATH.*$:OSCAP_DEFAULT_XSLT_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl":' ${S}/config.h
-}
-
-do_clean[cleandirs] += " ${STAGING_OSCAP_BUILDDIR}"
-
-do_install_append_class-native () {
-	oscapdir=${STAGING_OSCAP_BUILDDIR}/${datadir_native}
-	install -d $oscapdir	
-	cp -a ${D}/${STAGING_DATADIR_NATIVE}/openscap $oscapdir
-}
-
-TESTDIR = "tests"
-
-do_compile_ptest() {
-    sed -i 's:python2:python:' ${S}/${TESTDIR}/nist/test_worker.py
-    echo 'buildtest-TESTS: $(check)' >> ${TESTDIR}/Makefile
-    oe_runmake -C ${TESTDIR} buildtest-TESTS
-}
-
-do_install_ptest() {
-    # install the tests
-    cp -rf ${B}/${TESTDIR} ${D}${PTEST_PATH}
-}
-
-FILES_${PN} += "${PYTHON_SITEPACKAGES_DIR}"
-
-RDEPENDS_${PN} += "libxml2 python libgcc"
-RDEPENDS_${PN}-ptest = "bash perl python"
-
-BBCLASSEXTEND = "native"
-- 
2.17.1


