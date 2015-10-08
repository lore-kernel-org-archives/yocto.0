Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E68EE0100B; Wed,  7 Oct 2015 22:23:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE004E00E79
	for <yocto@yoctoproject.org>; Wed,  7 Oct 2015 22:23:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t985NSYb014765
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 7 Oct 2015 22:23:29 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 7 Oct 2015 22:23:28 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 8 Oct 2015 01:23:25 -0400
Message-ID: <4affec0e6d8f78b164fa24c73cf2f31ad1b94556.1444281567.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1444281567.git.wenzong.fan@windriver.com>
References: <cover.1444281567.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/2][meta-selinux] libcap-ng: remove package
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
X-List-Received-Date: Thu, 08 Oct 2015 05:23:32 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

libcap-ng 0.7.7 has been added to oe-core:
  ad509d7644803ff9386affefe2ec1a3664027074

No change need to port.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/libcap-ng/libcap-ng/python.patch | 58 -----------------------
 recipes-security/libcap-ng/libcap-ng_0.7.7.bb     | 40 ----------------
 2 files changed, 98 deletions(-)
 delete mode 100644 recipes-security/libcap-ng/libcap-ng/python.patch
 delete mode 100644 recipes-security/libcap-ng/libcap-ng_0.7.7.bb

diff --git a/recipes-security/libcap-ng/libcap-ng/python.patch b/recipes-security/libcap-ng/libcap-ng/python.patch
deleted file mode 100644
index 59591eb..0000000
--- a/recipes-security/libcap-ng/libcap-ng/python.patch
+++ /dev/null
@@ -1,58 +0,0 @@
-From b01bb2694f66cd981e6d61523433dc3eb5ed32f2 Mon Sep 17 00:00:00 2001
-From: Li xin <lixin.fnst@cn.fujitsu.com>
-Date: Sat, 18 Jul 2015 23:03:30 +0900
-Subject: [PATCH] configure.ac - Avoid an incorrect check for python.
- Makefile.am - avoid hard coded host include paths.
-
-Upstream-Status: pending
-
-Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
-Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
----
- bindings/python/Makefile.am |  3 ++-
- configure.ac                | 15 ++-------------
- 2 files changed, 4 insertions(+), 14 deletions(-)
-
-diff --git a/bindings/python/Makefile.am b/bindings/python/Makefile.am
-index 82b9bb8..f9fe7a8 100644
---- a/bindings/python/Makefile.am
-+++ b/bindings/python/Makefile.am
-@@ -23,7 +23,8 @@ SUBDIRS = test
- CONFIG_CLEAN_FILES = *.loT *.rej *.orig
- AM_CFLAGS = -fPIC -DPIC
- PYLIBVER ?= python$(PYTHON_VERSION)
--AM_CPPFLAGS = -I. -I$(top_builddir) -I@PYINCLUDEDIR@
-+PYINC ?= /usr/include/$(PYLIBVER)
-+AM_CPPFLAGS = -I. -I$(top_builddir) -I$(PYINC)
- LIBS = $(top_builddir)/src/libcap-ng.la
- SWIG_FLAGS = -python
- SWIG_INCLUDES = ${AM_CPPFLAGS}
-diff --git a/configure.ac b/configure.ac
-index 1d777d5..9d90f64 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -123,19 +123,8 @@ if test x$use_python = xno ; then
- else
- AC_MSG_RESULT(testing)
- AM_PATH_PYTHON
--PYINCLUDEDIR=`python${am_cv_python_version} -c "from distutils import sysconfig; print(sysconfig.get_config_var('INCLUDEPY'))"`
--if test -f ${PYINCLUDEDIR}/Python.h ; then
--	python_found="yes"
--	AC_SUBST(PYINCLUDEDIR)
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
--- 
-1.8.4.2
-
diff --git a/recipes-security/libcap-ng/libcap-ng_0.7.7.bb b/recipes-security/libcap-ng/libcap-ng_0.7.7.bb
deleted file mode 100644
index 5c5cd3d..0000000
--- a/recipes-security/libcap-ng/libcap-ng_0.7.7.bb
+++ /dev/null
@@ -1,40 +0,0 @@
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
-           file://python.patch \
-          "
-
-inherit lib_package autotools pythonnative
-
-SRC_URI[md5sum] = "3d7d126b29e2869a0257c17c8b0d9b2e"
-SRC_URI[sha256sum] = "615549ce39b333f6b78baee0c0b4ef18bc726c6bf1cca123dfd89dd963f6d06b"
-
-DEPENDS += "swig-native python"
-
-EXTRA_OECONF += "--without-python3"
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


