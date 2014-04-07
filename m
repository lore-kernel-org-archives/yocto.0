Return-Path: <Alexandru.Vaduva@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id A32C2E00CA7
	for <yocto@yoctoproject.org>; Mon,  7 Apr 2014 03:10:46 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.158.1; Mon, 7 Apr 2014
	12:10:40 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id BF754288415;
	Mon,  7 Apr 2014 12:10:40 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>
Date: Mon, 7 Apr 2014 12:10:37 +0200
Message-ID: <1396865438-19132-1-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Cc: "Alexandru.Vaduva" <Alexandru.Vaduva@enea.com>
Subject: [PATCH] libcap-ng: resolved issue related with LONG_BIT definition.
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
X-List-Received-Date: Mon, 07 Apr 2014 10:10:51 -0000
Content-Type: text/plain

From: "Alexandru.Vaduva" <Alexandru.Vaduva@enea.com>

The problem is well known for 64 bits architectures and the solution
is offered in the same recibe but in the meta-selinux layer.

Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
---
 recipes-security/libcap-ng/libcap-ng/python.patch |   39 +++++++++++++++++++++
 recipes-security/libcap-ng/libcap-ng_0.7.3.bb     |   38 ++++++++++++++++----
 2 files changed, 71 insertions(+), 6 deletions(-)
 create mode 100644 recipes-security/libcap-ng/libcap-ng/python.patch

diff --git a/recipes-security/libcap-ng/libcap-ng/python.patch b/recipes-security/libcap-ng/libcap-ng/python.patch
new file mode 100644
index 0000000..d82ceb4
--- /dev/null
+++ b/recipes-security/libcap-ng/libcap-ng/python.patch
@@ -0,0 +1,39 @@
+configure.ac - Avoid an incorrect check for python.
+Makefile.am - avoid hard coded host include paths.
+
+Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+
+--- libcap-ng-0.6.5/configure.ac.orig	2012-01-17 13:59:03.645898989 -0600
++++ libcap-ng-0.6.5/configure.ac	2012-01-17 13:59:46.353959252 -0600
+@@ -120,17 +120,8 @@
+ else
+ AC_MSG_RESULT(testing)
+ AM_PATH_PYTHON
+-if test -f /usr/include/python${am_cv_python_version}/Python.h ; then
+-	python_found="yes"
+-	AC_MSG_NOTICE(Python bindings will be built)
+-else
+-	python_found="no"
+-	if test x$use_python = xyes ; then
+-		AC_MSG_ERROR([Python explicitly required and python headers found])
+-	else
+-		AC_MSG_WARN("Python headers not found - python bindings will not be made")
+-	fi
+-fi
++python_found="yes"
++AC_MSG_NOTICE(Python bindings will be built)
+ fi
+ AM_CONDITIONAL(HAVE_PYTHON, test ${python_found} = "yes")
+ 
+--- libcap-ng-0.6.5/bindings/python/Makefile.am.orig	2010-11-03 12:31:59.000000000 -0500
++++ libcap-ng-0.6.5/bindings/python/Makefile.am	2012-01-17 14:05:50.199834467 -0600
+@@ -24,7 +24,8 @@
+ CONFIG_CLEAN_FILES = *.loT *.rej *.orig
+ AM_CFLAGS = -fPIC -DPIC
+ PYLIBVER ?= python$(PYTHON_VERSION)
+-INCLUDES = -I. -I$(top_builddir) -I/usr/include/$(PYLIBVER)
++PYINC ?= /usr/include/$(PYLIBVER)
++INCLUDES = -I. -I$(top_builddir) -I$(PYINC)
+ LIBS = $(top_builddir)/src/libcap-ng.la
+ pyexec_PYTHON = capng.py
+ pyexec_LTLIBRARIES = _capng.la
diff --git a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb b/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
index ef70207..3f225ba 100644
--- a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
+++ b/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
@@ -1,11 +1,37 @@
-DESCRIPTION = "The libcap-ng library is intended to make programming with posix capabilities much easier than the traditional libcap library."
-HOMEPAGE = "http://people.redhat.com/sgrubb/libcap-ng/index.html"
-LICENSE = "GPL-2.0"
-LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+SUMMARY = "An alternate posix capabilities library"
+DESCRIPTION = "The libcap-ng library is intended to make programming \
+with POSIX capabilities much easier than the traditional libcap library."
+HOMEPAGE = "http://freecode.com/projects/libcap-ng"
+SECTION = "base"
+LICENSE = "GPLv2+ & LGPLv2.1+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
+		    file://COPYING.LIB;md5=e3eda01d9815f8d24aae2dbd89b68b06"
 
-SRC_URI = "http://people.redhat.com/sgrubb/libcap-ng/${PN}-${PV}.tar.gz"
+SRC_URI = "http://people.redhat.com/sgrubb/libcap-ng/libcap-ng-${PV}.tar.gz \
+	   file://python.patch"
+
+inherit lib_package autotools pythonnative
 
 SRC_URI[md5sum] = "610afb774f80a8032b711281df126283"
 SRC_URI[sha256sum] = "5ca441c8d3a1e4cfe8a8151907977662679457311ccaa7eaac91447c33a35bb1"
 
-inherit autotools
+DEPENDS += "swig-native python"
+
+EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' PYINC='${STAGING_INCDIR}/${PYLIBVER}'"
+
+PACKAGES += "${PN}-python"
+
+FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/*/.debug"
+FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}"
+
+BBCLASSEXTEND = "native"
+
+do_install_append() {
+	# Moving libcap-ng to base_libdir
+	if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
+		mkdir -p ${D}/${base_libdir}/
+		mv -f ${D}${libdir}/libcap-ng.so.* ${D}${base_libdir}/
+		relpath=${@os.path.relpath("${base_libdir}", "${libdir}")}
+		ln -sf ${relpath}/libcap-ng.so.0.0.0 ${D}${libdir}/libcap-ng.so
+	fi
+}
-- 
1.7.10.4


