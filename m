Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 085C2E002AC; Fri, 13 Feb 2015 09:02:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FAF1E00283
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 09:02:41 -0800 (PST)
Received: by mail-pa0-f51.google.com with SMTP id eu11so20015164pac.10
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 09:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=eJlqIwUEjKELhDgL3JXpWvm1I4lnwmUuYjVwUy1QqAU=;
	b=veh5SDu56/4/iIUeJH5OLdXBK6y+raI+/7kYLQKFF4ZC7DyuivQIdNjLQwARuWHY4b
	ZfvH3CWxai7khylElgUiW74u8dMFWrEJQlG5UpQFL4zn9C6plXEFELAg4hFaGzZ1VVN2
	m6P/vvzLi6g/dZhNpY8d4TR1Bef5M43tyyEbkHVyC36Wmo4g4jjMpqcCrjNdcoahkdNC
	HMf9PgtvqEtUddo85nkmKzYnOqeyHv9hjl3HD3FqyUJnWrINLUv5sh/8MfOe1Rhc99S1
	2g1UbBBtGgvwTcltPfOZK+NaQ+NDbwGNX9uAg6v3g+2noCu85lXSXYmiFqkQZ5Jw7Nht
	sHXw==
X-Received: by 10.68.191.2 with SMTP id gu2mr16312897pbc.149.1423846961104;
	Fri, 13 Feb 2015 09:02:41 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	di10sm7269498pad.41.2015.02.13.09.02.38 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 13 Feb 2015 09:02:40 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 13 Feb 2015 09:02:36 -0800
Message-Id: <1423846956-10462-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] libcap-ng: remove from layer
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
X-List-Received-Date: Fri, 13 Feb 2015 17:02:45 -0000

this package is not in meta-oe

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libcap-ng/libcap-ng/python.patch | 39 -----------------------
 recipes-security/libcap-ng/libcap-ng_0.7.4.bb     | 37 ---------------------
 2 files changed, 76 deletions(-)
 delete mode 100644 recipes-security/libcap-ng/libcap-ng/python.patch
 delete mode 100644 recipes-security/libcap-ng/libcap-ng_0.7.4.bb

diff --git a/recipes-security/libcap-ng/libcap-ng/python.patch b/recipes-security/libcap-ng/libcap-ng/python.patch
deleted file mode 100644
index d82ceb4..0000000
--- a/recipes-security/libcap-ng/libcap-ng/python.patch
+++ /dev/null
@@ -1,39 +0,0 @@
-configure.ac - Avoid an incorrect check for python.
-Makefile.am - avoid hard coded host include paths.
-
-Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
-
---- libcap-ng-0.6.5/configure.ac.orig	2012-01-17 13:59:03.645898989 -0600
-+++ libcap-ng-0.6.5/configure.ac	2012-01-17 13:59:46.353959252 -0600
-@@ -120,17 +120,8 @@
- else
- AC_MSG_RESULT(testing)
- AM_PATH_PYTHON
--if test -f /usr/include/python${am_cv_python_version}/Python.h ; then
--	python_found="yes"
--	AC_MSG_NOTICE(Python bindings will be built)
--else
--	python_found="no"
--	if test x$use_python = xyes ; then
--		AC_MSG_ERROR([Python explicitly required and python headers found])
--	else
--		AC_MSG_WARN("Python headers not found - python bindings will not be made")
--	fi
--fi
-+python_found="yes"
-+AC_MSG_NOTICE(Python bindings will be built)
- fi
- AM_CONDITIONAL(HAVE_PYTHON, test ${python_found} = "yes")
- 
---- libcap-ng-0.6.5/bindings/python/Makefile.am.orig	2010-11-03 12:31:59.000000000 -0500
-+++ libcap-ng-0.6.5/bindings/python/Makefile.am	2012-01-17 14:05:50.199834467 -0600
-@@ -24,7 +24,8 @@
- CONFIG_CLEAN_FILES = *.loT *.rej *.orig
- AM_CFLAGS = -fPIC -DPIC
- PYLIBVER ?= python$(PYTHON_VERSION)
--INCLUDES = -I. -I$(top_builddir) -I/usr/include/$(PYLIBVER)
-+PYINC ?= /usr/include/$(PYLIBVER)
-+INCLUDES = -I. -I$(top_builddir) -I$(PYINC)
- LIBS = $(top_builddir)/src/libcap-ng.la
- pyexec_PYTHON = capng.py
- pyexec_LTLIBRARIES = _capng.la
diff --git a/recipes-security/libcap-ng/libcap-ng_0.7.4.bb b/recipes-security/libcap-ng/libcap-ng_0.7.4.bb
deleted file mode 100644
index 8823dad..0000000
--- a/recipes-security/libcap-ng/libcap-ng_0.7.4.bb
+++ /dev/null
@@ -1,37 +0,0 @@
-SUMMARY = "An alternate posix capabilities library"
-DESCRIPTION = "The libcap-ng library is intended to make programming \
-with POSIX capabilities much easier than the traditional libcap library."
-HOMEPAGE = "http://freecode.com/projects/libcap-ng"
-SECTION = "base"
-LICENSE = "GPLv2+ & LGPLv2.1+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
-		    file://COPYING.LIB;md5=e3eda01d9815f8d24aae2dbd89b68b06"
-
-SRC_URI = "http://people.redhat.com/sgrubb/libcap-ng/libcap-ng-${PV}.tar.gz \
-	   file://python.patch"
-
-inherit lib_package autotools pythonnative
-
-SRC_URI[md5sum] = "55c57c0673b944ea1a755bcb2636dabd"
-SRC_URI[sha256sum] = "48a2083276f9820cb92dcb05d001b30733bcbf48c14c230303cac3cd08b45b6b"
-
-DEPENDS += "swig-native python"
-
-EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' PYINC='${STAGING_INCDIR}/${PYLIBVER}'"
-
-PACKAGES += "${PN}-python"
-
-FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/*/.debug"
-FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}"
-
-BBCLASSEXTEND = "native"
-
-do_install_append() {
-	# Moving libcap-ng to base_libdir
-	if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
-		mkdir -p ${D}/${base_libdir}/
-		mv -f ${D}${libdir}/libcap-ng.so.* ${D}${base_libdir}/
-		relpath=${@os.path.relpath("${base_libdir}", "${libdir}")}
-		ln -sf ${relpath}/libcap-ng.so.0.0.0 ${D}${libdir}/libcap-ng.so
-	fi
-}
-- 
1.9.1


