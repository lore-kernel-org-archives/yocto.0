Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22650E00E81; Wed, 13 Nov 2019 17:50:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59C7CE00E4D
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:50:10 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xAE1o9jf024276
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:50:09 -0800 (PST)
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:50:08 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:49:01 +0800
Message-ID: <20191114014901.22862-20-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 19/19] audit: switch to python3
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
X-List-Received-Date: Thu, 14 Nov 2019 01:50:14 -0000
Content-Type: text/plain

* Switch to python3

* Drop patches:
  audit-python-configure.patch
  audit-python.patch
  fix-swig-host-contamination.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../audit/audit/audit-python-configure.patch  | 46 -------------
 .../audit/audit/audit-python.patch            | 64 -------------------
 .../audit/fix-swig-host-contamination.patch   | 56 ----------------
 recipes-security/audit/audit_2.8.5.bb         | 11 ++--
 4 files changed, 4 insertions(+), 173 deletions(-)
 delete mode 100644 recipes-security/audit/audit/audit-python-configure.patch
 delete mode 100644 recipes-security/audit/audit/audit-python.patch
 delete mode 100644 recipes-security/audit/audit/fix-swig-host-contamination.patch

diff --git a/recipes-security/audit/audit/audit-python-configure.patch b/recipes-security/audit/audit/audit-python-configure.patch
deleted file mode 100644
index 37096b0..0000000
--- a/recipes-security/audit/audit/audit-python-configure.patch
+++ /dev/null
@@ -1,46 +0,0 @@
-From 6a2710db094061e1956fac3ed81114d0e958ea21 Mon Sep 17 00:00:00 2001
-From: Li xin <lixin.fnst@cn.fujitsu.com>
-Date: Sun, 19 Jul 2015 00:49:13 +0900
-Subject: [PATCH] audit: python cross-compile
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-Signed-off-by: T.O. Radzy Radzykewycz <radzy@windriver.com>
----
- configure.ac | 17 ++---------------
- 1 file changed, 2 insertions(+), 15 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index 6e345f1..54bdbf1 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -99,21 +99,8 @@ if test "x$use_python" = xno ; then
- else
- AC_MSG_RESULT(testing)
- AM_PATH_PYTHON
--PYINCLUDEDIR=`python${am_cv_python_version} -c "from distutils import sysconfig; print(sysconfig.get_config_var('INCLUDEPY'))"`
--if test -f ${PYINCLUDEDIR}/Python.h ; then
--	python_found="yes"
--	AC_SUBST(PYINCLUDEDIR)
--	pybind_dir="python"
--	AC_SUBST(pybind_dir)
--	AC_MSG_NOTICE(Python bindings will be built)
--else
--	python_found="no"
--	if test "x$use_python" = xyes ; then
--		AC_MSG_ERROR([Python explicitly requested and python headers were not found])
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
-2.7.4
-
diff --git a/recipes-security/audit/audit/audit-python.patch b/recipes-security/audit/audit/audit-python.patch
deleted file mode 100644
index c1a2595..0000000
--- a/recipes-security/audit/audit/audit-python.patch
+++ /dev/null
@@ -1,64 +0,0 @@
-From 9d95d7e28a2c4cbefa998d375de180c731a151b1 Mon Sep 17 00:00:00 2001
-From: Li xin <lixin.fnst@cn.fujitsu.com>
-Date: Sun, 19 Jul 2015 01:40:48 +0900
-Subject: [PATCH] Remove hard coded python include directory
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
----
- bindings/Makefile.am                | 8 +++++++-
- bindings/python/python2/Makefile.am | 3 ++-
- bindings/swig/python/Makefile.am    | 5 +++--
- 3 files changed, 12 insertions(+), 4 deletions(-)
-
-diff --git a/bindings/Makefile.am b/bindings/Makefile.am
-index 5b5c576..7a15205 100644
---- a/bindings/Makefile.am
-+++ b/bindings/Makefile.am
-@@ -22,4 +22,10 @@
- 
- CONFIG_CLEAN_FILES = *.loT *.rej *.orig
- 
--SUBDIRS = python golang swig
-+SUBDIRS = swig
-+if HAVE_PYTHON
-+SUBDIRS += python
-+endif
-+if HAVE_GOLANG
-+SUBDIRS += golang
-+endif
-diff --git a/bindings/python/python2/Makefile.am b/bindings/python/python2/Makefile.am
-index 1dcb5bc..6226358 100644
---- a/bindings/python/python2/Makefile.am
-+++ b/bindings/python/python2/Makefile.am
-@@ -23,7 +23,8 @@
- 
- CONFIG_CLEAN_FILES = *.loT *.rej *.orig
- AM_CFLAGS = -fPIC -DPIC -fno-strict-aliasing
--AM_CPPFLAGS = -I$(top_builddir) -I@PYINCLUDEDIR@
-+PYINC ?= /usr/include/python$(PYTHON_VERSION)
-+AM_CPPFLAGS = -I$(top_builddir) -I${PYINC}
- 
- pyexec_LTLIBRARIES = auparse.la
- 
-diff --git a/bindings/swig/python/Makefile.am b/bindings/swig/python/Makefile.am
-index 8c98b94..ae7c52b 100644
---- a/bindings/swig/python/Makefile.am
-+++ b/bindings/swig/python/Makefile.am
-@@ -21,9 +21,10 @@
- #
- CONFIG_CLEAN_FILES = *.loT *.rej *.orig
- AM_CFLAGS = -fPIC -DPIC -fno-strict-aliasing
--AM_CPPFLAGS = -I. -I$(top_builddir) -I${top_srcdir}/lib -I@PYINCLUDEDIR@
-+PYINC ?= /usr/include/$(PYLIBVER)
-+AM_CPPFLAGS = -I. -I$(top_builddir) -I${top_srcdir}/lib -I${PYINC}
- SWIG_FLAGS = -python
--SWIG_INCLUDES = -I. -I$(top_builddir) -I${top_srcdir}/lib -I@PYINCLUDEDIR@
-+SWIG_INCLUDES = -I. -I$(top_builddir) -I${top_srcdir}/lib -I${PYINC}
- pyexec_PYTHON = audit.py
- pyexec_LTLIBRARIES = _audit.la
- pyexec_SOLIBRARIES = _audit.so
--- 
-2.7.4
-
diff --git a/recipes-security/audit/audit/fix-swig-host-contamination.patch b/recipes-security/audit/audit/fix-swig-host-contamination.patch
deleted file mode 100644
index 184f515..0000000
--- a/recipes-security/audit/audit/fix-swig-host-contamination.patch
+++ /dev/null
@@ -1,56 +0,0 @@
-From bd70f570ffb82991feb7a539ac1abf3165d417a4 Mon Sep 17 00:00:00 2001
-From: Li xin <lixin.fnst@cn.fujitsu.com>
-Date: Sun, 19 Jul 2015 02:42:58 +0900
-Subject: [PATCH] audit: Fixed swig host contamination issue
-
-The audit build uses swig to generate a python wrapper.
-Unfortunately, the swig info file references host include
-directories.  Some of these were previously noticed and
-eliminated, but the one fixed here was not.
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Anders Hedlund <anders.hedlund@windriver.com>
-Signed-off-by: Joe Slater <jslater@windriver.com>
----
- bindings/swig/python/Makefile.am | 3 ++-
- bindings/swig/src/auditswig.i    | 2 +-
- 2 files changed, 3 insertions(+), 2 deletions(-)
-
-diff --git a/bindings/swig/python/Makefile.am b/bindings/swig/python/Makefile.am
-index ae7c52b..c580bc0 100644
---- a/bindings/swig/python/Makefile.am
-+++ b/bindings/swig/python/Makefile.am
-@@ -22,6 +22,7 @@
- CONFIG_CLEAN_FILES = *.loT *.rej *.orig
- AM_CFLAGS = -fPIC -DPIC -fno-strict-aliasing
- PYINC ?= /usr/include/$(PYLIBVER)
-+STDINC ?= /usr/include
- AM_CPPFLAGS = -I. -I$(top_builddir) -I${top_srcdir}/lib -I${PYINC}
- SWIG_FLAGS = -python
- SWIG_INCLUDES = -I. -I$(top_builddir) -I${top_srcdir}/lib -I${PYINC}
-@@ -35,7 +36,7 @@ _audit_la_DEPENDENCIES =${top_srcdir}/lib/libaudit.h ${top_builddir}/lib/libaudi
- _audit_la_LIBADD = $(top_builddir)/lib/libaudit.la
- nodist__audit_la_SOURCES  = audit_wrap.c
- audit.py audit_wrap.c: ${srcdir}/../src/auditswig.i 
--	swig -o audit_wrap.c ${SWIG_FLAGS} ${SWIG_INCLUDES} ${srcdir}/../src/auditswig.i 
-+	swig -o audit_wrap.c ${SWIG_FLAGS} ${SWIG_INCLUDES} -I$(STDINC) ${srcdir}/../src/auditswig.i
- 
- CLEANFILES = audit.py* audit_wrap.c *~
- 
-diff --git a/bindings/swig/src/auditswig.i b/bindings/swig/src/auditswig.i
-index 7ebb373..424fb68 100644
---- a/bindings/swig/src/auditswig.i
-+++ b/bindings/swig/src/auditswig.i
-@@ -39,7 +39,7 @@ signed
- #define __attribute(X) /*nothing*/
- typedef unsigned __u32;
- typedef unsigned uid_t;
--%include "/usr/include/linux/audit.h"
-+%include "linux/audit.h"
- #define __extension__ /*nothing*/
- #include <stdint.h>
- %include "../lib/libaudit.h"
--- 
-2.7.4
-
diff --git a/recipes-security/audit/audit_2.8.5.bb b/recipes-security/audit/audit_2.8.5.bb
index 2b47812..1e76d5f 100644
--- a/recipes-security/audit/audit_2.8.5.bb
+++ b/recipes-security/audit/audit_2.8.5.bb
@@ -8,9 +8,6 @@ LICENSE = "GPLv2+ & LGPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 SRC_URI = "git://github.com/linux-audit/${BPN}-userspace.git;branch=2.8_maintenance \
-           file://audit-python-configure.patch \
-           file://audit-python.patch \
-           file://fix-swig-host-contamination.patch \
            file://Add-substitue-functions-for-strndupa-rawmemchr.patch \
            file://auditd \
            file://auditd.service \
@@ -20,7 +17,7 @@ SRC_URI = "git://github.com/linux-audit/${BPN}-userspace.git;branch=2.8_maintena
 S = "${WORKDIR}/git"
 SRCREV = "5fae55c1ad15b3cefe6890eba7311af163e9133c"
 
-inherit autotools pythonnative update-rc.d systemd
+inherit autotools python3native update-rc.d systemd
 
 UPDATERCPN = "auditd"
 INITSCRIPT_NAME = "auditd"
@@ -29,16 +26,16 @@ INITSCRIPT_PARAMS = "defaults"
 SYSTEMD_PACKAGES = "auditd"
 SYSTEMD_SERVICE_auditd = "auditd.service"
 
-DEPENDS += "python tcp-wrappers libcap-ng linux-libc-headers (>= 2.6.30) swig-native"
+DEPENDS += "python3 tcp-wrappers libcap-ng linux-libc-headers swig-native"
 
 EXTRA_OECONF += "--without-prelude \
         --with-libwrap \
         --enable-gssapi-krb5=no \
         --with-libcap-ng=yes \
-        --with-python=yes \
+        --with-python3=yes \
         --libdir=${base_libdir} \
         --sbindir=${base_sbindir} \
-        --without-python3 \
+        --without-python \
         --without-golang \
         --disable-zos-remote \
         "
-- 
2.17.1


