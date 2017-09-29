Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7750BE00D8F; Thu, 28 Sep 2017 21:26:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0B60E00D71
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:49 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id d8so274386pgt.3
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=VhMiIK7ubDgRszFFSvre9b5KRPN6otmi10WQN6b9QIs=;
	b=H5yO0Fnvk+sYjlHSbZRd41k07mfGXeQRM37WLe821wbD1+i5z3vwEZJsAAlDaWiGEO
	0SzsXc40JlkZyuZ4vd4Zq6RyrGqE6zYF5ky/uhk8PtezesF4LSSzM2t0w8eQ0untSNt7
	d9jqC8mqpxUZT1dvy3QseiF2hyt/rYfYmW2pA5Bwh8RxjqbaKlTbm/xWpLZ7icJTz7Vi
	+hyG2wV2qMLEajGw8mfWi3qSJcXSlmY3jF8BNPchU0oFf4hnxrr1VpExwI6JWmsvndeu
	b8WFReP+O9Wa0o48oDJ5g8VkTaJ0MlMZv/iU5z2BlVnQCYGCbrlbmjXLNKZsdpYFm6Ss
	IVZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=VhMiIK7ubDgRszFFSvre9b5KRPN6otmi10WQN6b9QIs=;
	b=oTJMQ8DVF6D6jBlFRgrtNuMIeeIUVg1ErbGpq8KXYcoNDQIqmnJDn9keRKAUVsHSZ7
	fV66jcULu6xK0A8V38iuZec7jMCRR+Nj0+ipojED6WbPCPzhlaKfSP4vDgwysAknYuUw
	kMEretPB0ze1FYif1kV6b4q1ULxQIhVqO0Nh58aVAeMCYPthHwBpYnKNNlLHE6VItzjE
	izH4AcNzDZ6E1l1HP9X3r9mxj0rig8gJrAcRwcP8CRnfF24sEs3biov5HCh8nexi58AM
	7NMrOSj8AUThL9rI+6yRmlSYfBAaOGPAUP6JuaFwvYgiNJYK8edg415XFXEa8DwrKkwQ
	eQRQ==
X-Gm-Message-State: AHPjjUgv3JBI3x2Bz+ZcOMY84KAtVO6IRXpvGQGZgh2Cmlhg6GLU1wL+
	oYWHlotSbI1JGAmPQI+cSNyQtA==
X-Google-Smtp-Source: AOwi7QAbYM6/epDWLAp5KQRbEME/j4gApY+M7MZqKLwovyA5NFohXNkNdl1P8o3VHdl0Y1Pks6rkAg==
X-Received: by 10.98.76.70 with SMTP id z67mr6252517pfa.78.1506659209097;
	Thu, 28 Sep 2017 21:26:49 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:c06:a05b:fc56:fd72])
	by smtp.gmail.com with ESMTPSA id
	r66sm5060330pfl.15.2017.09.28.21.26.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Sep 2017 21:26:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Thu, 28 Sep 2017 21:26:36 -0700
Message-Id: <1506659201-21501-4-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
References: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/8] openscap: add package
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
X-List-Received-Date: Fri, 29 Sep 2017 04:26:53 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../openscap/files/crypto_pkgconfig.patch          | 36 ++++++++++
 .../openscap/files/probe_dir_fixup.patch           | 17 +++++
 .../recipes-openscap/openscap/files/run-ptest      |  3 +
 .../recipes-openscap/openscap/openscap.inc         |  2 +
 .../recipes-openscap/openscap/openscap_1.2.14.bb   | 82 ++++++++++++++++++++++
 5 files changed, 140 insertions(+)
 create mode 100644 meta-security-compliance/recipes-openscap/openscap/files/crypto_pkgconfig.patch
 create mode 100644 meta-security-compliance/recipes-openscap/openscap/files/probe_dir_fixup.patch
 create mode 100644 meta-security-compliance/recipes-openscap/openscap/files/run-ptest
 create mode 100644 meta-security-compliance/recipes-openscap/openscap/openscap.inc
 create mode 100644 meta-security-compliance/recipes-openscap/openscap/openscap_1.2.14.bb

diff --git a/meta-security-compliance/recipes-openscap/openscap/files/crypto_pkgconfig.patch b/meta-security-compliance/recipes-openscap/openscap/files/crypto_pkgconfig.patch
new file mode 100644
index 0000000..2d70855
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/openscap/files/crypto_pkgconfig.patch
@@ -0,0 +1,36 @@
+Index: git/configure.ac
+===================================================================
+--- git.orig/configure.ac
++++ git/configure.ac
+@@ -360,25 +360,13 @@ case "${with_crypto}" in
+         AC_DEFINE([HAVE_NSS3], [1], [Define to 1 if you have 'NSS' library.])
+         ;;
+     gcrypt)
+-	SAVE_LIBS=$LIBS
+-        AC_CHECK_LIB([gcrypt], [gcry_check_version],
+-                     [crapi_CFLAGS=`libgcrypt-config --cflags`;
+-                      crapi_LIBS=`libgcrypt-config --libs`;
+-                      crapi_libname="GCrypt";],
+-                     [AC_MSG_ERROR([library 'gcrypt' is required for GCrypt.])],
+-                     [])
+-        AC_DEFINE([HAVE_GCRYPT], [1], [Define to 1 if you have 'gcrypt' library.])
+-	AC_CACHE_CHECK([for GCRYCTL_SET_ENFORCED_FIPS_FLAG],
+-                    [ac_cv_gcryctl_set_enforced_fips_flag],
+-                    [AC_COMPILE_IFELSE([AC_LANG_PROGRAM([#include<gcrypt.h>],
+-                                                        [return GCRYCTL_SET_ENFORCED_FIPS_FLAG;])],
+-                                       [ac_cv_gcryctl_set_enforced_fips_flag=yes],
+-                                       [ac_cv_gcryctl_set_enforced_fips_flag=no])])
++	PKG_CHECK_MODULES([libgcrypt], [libgcrypt >= 1.7.9],[],
++			  AC_MSG_FAILURE([libgcrypt devel support is missing]))
+ 
+-	if test "${ac_cv_gcryctl_set_enforced_fips_flag}" == "yes"; then
+-	   AC_DEFINE([HAVE_GCRYCTL_SET_ENFORCED_FIPS_FLAG], [1], [Define to 1 if you have 'gcrypt' library with GCRYCTL_SET_ENFORCED_FIPS_FLAG.])
+-	fi
+-	LIBS=$SAVE_LIBS
++	crapi_libname="libgcrypt"
++	crapi_CFLAGS=$libgcrypt_CFLAGS
++	crapi_LIBS=$libgcrypt_LIBS
++        AC_DEFINE([HAVE_GCRYPT], [1], [Define to 1 if you have 'libgcrypt' library.])
+         ;;
+          *)
+           AC_MSG_ERROR([unknown crypto backend])
diff --git a/meta-security-compliance/recipes-openscap/openscap/files/probe_dir_fixup.patch b/meta-security-compliance/recipes-openscap/openscap/files/probe_dir_fixup.patch
new file mode 100644
index 0000000..ecbe602
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/openscap/files/probe_dir_fixup.patch
@@ -0,0 +1,17 @@
+Index: git/configure.ac
+===================================================================
+--- git.orig/configure.ac
++++ git/configure.ac
+@@ -1109,11 +1109,7 @@ AC_ARG_WITH([crypto],
+      [],
+      [crypto=gcrypt])
+ 
+-if test "x${libexecdir}" = xNONE; then
+-	probe_dir="/usr/local/libexec/openscap"
+-else
+-	EXPAND_DIR(probe_dir,"${libexecdir}/openscap")
+-fi
++probe_dir="/usr/local/libexec/openscap"
+ 
+ AC_SUBST(probe_dir)
+ 
diff --git a/meta-security-compliance/recipes-openscap/openscap/files/run-ptest b/meta-security-compliance/recipes-openscap/openscap/files/run-ptest
new file mode 100644
index 0000000..454a6a3
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/openscap/files/run-ptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+cd tests
+make -k check
diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.inc b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
new file mode 100644
index 0000000..e9589b6
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
@@ -0,0 +1,2 @@
+STAGING_OSCAP_DIR = "${TMPDIR}/work-shared/${MACHINE}/oscap-source"
+STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_1.2.14.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_1.2.14.bb
new file mode 100644
index 0000000..0d26959
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap_1.2.14.bb
@@ -0,0 +1,82 @@
+# Copyright (C) 2017 Armin Kuster  <akuster808@gmail.com>
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SUMARRY = "NIST Certified SCAP 1.2 toolkit"
+HOME_URL = "https://www.open-scap.org/tools/openscap-base/"
+LIC_FILES_CHKSUM = "file://COPYING;md5=fbc093901857fcd118f065f900982c24"
+LICENSE = "LGPL-2.1"
+
+DEPENDS = "autoconf-archive pkgconfig gconf procps curl libxml2 rpm \
+          libxslt libcap swig swig-native"
+
+DEPENDS_class-native = "autoconf-archive-native pkgconfig-native swig-native curl-native libxml2-native libxslt-native dpkg-native libgcrypt-native nss-native"
+
+SRCREV = "7a924c0eea10d05f512660192c8c4aef447801a6"
+SRC_URI = "git://github.com/akuster/openscap.git;branch=oe \
+           file://crypto_pkgconfig.patch \
+           file://run-ptest \
+"
+
+inherit autotools-brokensep pkgconfig python3native perlnative ptest
+
+S = "${WORKDIR}/git"
+
+PACKAGECONFIG ?= "nss3 pcre rpm"
+PACKAGECONFIG[pcre] = ",--enable-regex-posix, libpcre"
+PACKAGECONFIG[gcrypt] = "--with-crypto=gcrypt,, libgcrypt "
+PACKAGECONFIG[nss3] = "--with-crypto=nss3,, nss"
+PACKAGECONFIG[python] = "--enable-python, --disable-python, python, python"
+PACKAGECONFIG[python3] = "--enable-python3, --disable-python3, python3, python3"
+PACKAGECONFIG[perl] = "--enable-perl, --disable-perl, perl, perl"
+PACKAGECONFIG[rpm] = " --enable-util-scap-as-rpm, --disable-util-scap-as-rpm, rpm, rpm"
+
+EXTRA_OECONF += "--enable-probes-independent --enable-probes-linux \
+		--enable-probes-solaris --enable-probes-unix  --disable-util-oscap-docker\
+		--enable-util-oscap-ssh --enable-util-oscap --enable-ssp --enable-sce \
+"
+
+EXTRA_OECONF_class-native += "--disable-probes-independent --enable-probes-linux \
+		--disable-probes-solaris --disable-probes-unix \
+		--enable-util-oscap \
+"
+
+do_configure_prepend () {
+	sed -i 's:-I/usr/include:-I${STAGING_INCDIR}:' ${S}/swig/perl/Makefile.am
+	sed -i 's:-I/usr/include:-I${STAGING_INCDIR}:' ${S}/swig/python3/Makefile.am
+	sed -i 's:-I/usr/include:-I${STAGING_INCDIR}:' ${S}/swig/python2/Makefile.am
+}
+
+
+include openscap.inc
+
+do_configure_append_class-native () {
+	sed -i 's:OSCAP_DEFAULT_CPE_PATH.*$:OSCAP_DEFAULT_CPE_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe":' ${S}/config.h
+	sed -i 's:OSCAP_DEFAULT_SCHEMA_PATH.*$:OSCAP_DEFAULT_SCHEMA_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas":' ${S}/config.h
+	sed -i 's:OSCAP_DEFAULT_XSLT_PATH.*$:OSCAP_DEFAULT_XSLT_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl":' ${S}/config.h
+}
+
+do_clean[cleandirs] += " ${STAGING_OSCAP_BUILDDIR}"
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
+    echo 'buildtest-TESTS: $(check)' >> ${TESTDIR}/Makefile
+    oe_runmake -C ${TESTDIR} buildtest-TESTS
+}
+
+do_install_ptest() {
+    # install the tests
+    cp -rf ${B}/${TESTDIR} ${D}${PTEST_PATH}
+}
+
+FILES_${PN} += "${PYTHON_SITEPACKAGES_DIR}"
+
+RDEPENDS_${PN} += "libxml2 python libgcc"
+
+BBCLASSEXTEND = "native"
-- 
2.7.4


