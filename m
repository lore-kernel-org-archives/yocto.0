Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C7FDE00A3C; Thu, 13 Aug 2015 23:38:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03B22E00707
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 23:38:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.1/8.15.1) with ESMTPS id t7E6cJe1005368
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 23:38:19 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.235.1;
	Thu, 13 Aug 2015 23:38:18 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 14 Aug 2015 02:38:17 -0400
Message-ID: <1439534297-72448-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] libcap-ng: upgrade 0.7.4 -> 0.7.7
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
X-List-Received-Date: Fri, 14 Aug 2015 06:38:23 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

* Port changes from meta-oe:

  commit bce4dba5546480c8e43c6442959ac7d0a4ef32f6
  Author: Li xin <lixin.fnst@cn.fujitsu.com>
  Date:   Thu Jul 23 15:29:31 2015 +0800

    libcap-ng: upgrade 0.7.4 -> 0.7.7

    Update python.patch,since the contents has been changed.

    Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
    Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>

* Remove patch CVE-2014-3215.patch that included by 0.7.7

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../libcap-ng/libcap-ng/CVE-2014-3215.patch        | 79 ----------------------
 recipes-security/libcap-ng/libcap-ng/python.patch  | 55 ++++++++++-----
 .../{libcap-ng_0.7.3.bb => libcap-ng_0.7.7.bb}     | 10 +--
 3 files changed, 42 insertions(+), 102 deletions(-)
 delete mode 100644 recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch
 rename recipes-security/libcap-ng/{libcap-ng_0.7.3.bb => libcap-ng_0.7.7.bb} (84%)

diff --git a/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch b/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch
deleted file mode 100644
index d7a868d..0000000
--- a/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch
+++ /dev/null
@@ -1,79 +0,0 @@
-Upstream-Status: Pending
-
-diff --git a/docs/capng_lock.3 b/docs/capng_lock.3
-index 7683119..a070c1e 100644
---- a/docs/capng_lock.3
-+++ b/docs/capng_lock.3
-@@ -8,12 +8,13 @@ int capng_lock(void);
- 
- .SH "DESCRIPTION"
- 
--capng_lock will take steps to prevent children of the current process to regain full privileges if the uid is 0. This should be called while possessing the CAP_SETPCAP capability in the kernel. This function will do the following if permitted by the kernel: Set the NOROOT option on for PR_SET_SECUREBITS, set the NOROOT_LOCKED option to on for PR_SET_SECUREBITS, set the PR_NO_SETUID_FIXUP option on for PR_SET_SECUREBITS, and set the PR_NO_SETUID_FIXUP_LOCKED option on for PR_SET_SECUREBITS.
-+capng_lock will take steps to prevent children of the current process from gaining privileges by executing setuid programs.  This should be called while possessing the CAP_SETPCAP capability in the kernel.
- 
-+This function will do the following if permitted by the kernel:  If the kernel supports PR_SET_NO_NEW_PRIVS, it will use it.  Otherwise it will set the NOROOT option on for PR_SET_SECUREBITS, set the NOROOT_LOCKED option to on for PR_SET_SECUREBITS, set the PR_NO_SETUID_FIXUP option on for PR_SET_SECUREBITS, and set the PR_NO_SETUID_FIXUP_LOCKED option on for PR_SET_SECUREBITS.  If both fail, it will return an error.
- 
- .SH "RETURN VALUE"
- 
--This returns 0 on success and a negative number on failure. -1 means a failure setting any of the PR_SET_SECUREBITS options.
-+This returns 0 on success and a negative number on failure. -1 means a failure to use PR_SET_NO_NEW_PRIVS and a failure setting any of the PR_SET_SECUREBITS options.
- 
- .SH "SEE ALSO"
- 
-diff --git a/src/cap-ng.c b/src/cap-ng.c
-index bd105ba..422f2bc 100644
---- a/src/cap-ng.c
-+++ b/src/cap-ng.c
-@@ -45,6 +45,7 @@
-  * 2.6.24 kernel	XATTR_NAME_CAPS
-  * 2.6.25 kernel	PR_CAPBSET_DROP, CAPABILITY_VERSION_2
-  * 2.6.26 kernel	PR_SET_SECUREBITS, SECURE_*_LOCKED, VERSION_3
-+ * 3.5    kernel	PR_SET_NO_NEW_PRIVS
-  */
- 
- /* External syscall prototypes */
-@@ -122,6 +123,14 @@ extern int capget(cap_user_header_t header, const cap_user_data_t data);
- #define SECURE_NO_SETUID_FIXUP_LOCKED   3  /* make bit-2 immutable */
- #endif
- 
-+/* prctl values that we use */
-+#ifndef PR_SET_SECUREBITS
-+#define PR_SET_SECUREBITS		28
-+#endif
-+#ifndef PR_SET_NO_NEW_PRIVS
-+#define PR_SET_NO_NEW_PRIVS		38
-+#endif
-+
- // States: new, allocated, initted, updated, applied
- typedef enum { CAPNG_NEW, CAPNG_ERROR, CAPNG_ALLOCATED, CAPNG_INIT,
- 	CAPNG_UPDATED, CAPNG_APPLIED } capng_states_t;
-@@ -663,15 +672,22 @@ int capng_change_id(int uid, int gid, capng_flags_t flag)
- 
- int capng_lock(void)
- {
--#ifdef PR_SET_SECUREBITS
--	int rc = prctl(PR_SET_SECUREBITS,
--			1 << SECURE_NOROOT |
--			1 << SECURE_NOROOT_LOCKED |
--			1 << SECURE_NO_SETUID_FIXUP |
--			1 << SECURE_NO_SETUID_FIXUP_LOCKED, 0, 0, 0);
-+	int rc;
-+
-+	// On Linux 3.5 and up, we can directly prevent ourselves and
-+	// our descendents from gaining privileges.
-+	if (prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0) == 0)
-+		return 0;
-+
-+	// This kernel is too old or otherwise doesn't support
-+	// PR_SET_NO_NEW_PRIVS.  Fall back to using securebits.
-+	rc = prctl(PR_SET_SECUREBITS,
-+		   1 << SECURE_NOROOT |
-+		   1 << SECURE_NOROOT_LOCKED |
-+		   1 << SECURE_NO_SETUID_FIXUP |
-+		   1 << SECURE_NO_SETUID_FIXUP_LOCKED, 0, 0, 0);
- 	if (rc)
- 		return -1;
--#endif
- 
- 	return 0;
- }
diff --git a/recipes-security/libcap-ng/libcap-ng/python.patch b/recipes-security/libcap-ng/libcap-ng/python.patch
index d82ceb4..59591eb 100644
--- a/recipes-security/libcap-ng/libcap-ng/python.patch
+++ b/recipes-security/libcap-ng/libcap-ng/python.patch
@@ -1,16 +1,44 @@
-configure.ac - Avoid an incorrect check for python.
-Makefile.am - avoid hard coded host include paths.
+From b01bb2694f66cd981e6d61523433dc3eb5ed32f2 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Sat, 18 Jul 2015 23:03:30 +0900
+Subject: [PATCH] configure.ac - Avoid an incorrect check for python.
+ Makefile.am - avoid hard coded host include paths.
+
+Upstream-Status: pending
 
 Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ bindings/python/Makefile.am |  3 ++-
+ configure.ac                | 15 ++-------------
+ 2 files changed, 4 insertions(+), 14 deletions(-)
 
---- libcap-ng-0.6.5/configure.ac.orig	2012-01-17 13:59:03.645898989 -0600
-+++ libcap-ng-0.6.5/configure.ac	2012-01-17 13:59:46.353959252 -0600
-@@ -120,17 +120,8 @@
+diff --git a/bindings/python/Makefile.am b/bindings/python/Makefile.am
+index 82b9bb8..f9fe7a8 100644
+--- a/bindings/python/Makefile.am
++++ b/bindings/python/Makefile.am
+@@ -23,7 +23,8 @@ SUBDIRS = test
+ CONFIG_CLEAN_FILES = *.loT *.rej *.orig
+ AM_CFLAGS = -fPIC -DPIC
+ PYLIBVER ?= python$(PYTHON_VERSION)
+-AM_CPPFLAGS = -I. -I$(top_builddir) -I@PYINCLUDEDIR@
++PYINC ?= /usr/include/$(PYLIBVER)
++AM_CPPFLAGS = -I. -I$(top_builddir) -I$(PYINC)
+ LIBS = $(top_builddir)/src/libcap-ng.la
+ SWIG_FLAGS = -python
+ SWIG_INCLUDES = ${AM_CPPFLAGS}
+diff --git a/configure.ac b/configure.ac
+index 1d777d5..9d90f64 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -123,19 +123,8 @@ if test x$use_python = xno ; then
  else
  AC_MSG_RESULT(testing)
  AM_PATH_PYTHON
--if test -f /usr/include/python${am_cv_python_version}/Python.h ; then
+-PYINCLUDEDIR=`python${am_cv_python_version} -c "from distutils import sysconfig; print(sysconfig.get_config_var('INCLUDEPY'))"`
+-if test -f ${PYINCLUDEDIR}/Python.h ; then
 -	python_found="yes"
+-	AC_SUBST(PYINCLUDEDIR)
 -	AC_MSG_NOTICE(Python bindings will be built)
 -else
 -	python_found="no"
@@ -25,15 +53,6 @@ Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
  fi
  AM_CONDITIONAL(HAVE_PYTHON, test ${python_found} = "yes")
  
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
+-- 
+1.8.4.2
+
diff --git a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb b/recipes-security/libcap-ng/libcap-ng_0.7.7.bb
similarity index 84%
rename from recipes-security/libcap-ng/libcap-ng_0.7.3.bb
rename to recipes-security/libcap-ng/libcap-ng_0.7.7.bb
index e729518..a31d5dc 100644
--- a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
+++ b/recipes-security/libcap-ng/libcap-ng_0.7.7.bb
@@ -8,17 +8,17 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 		    file://COPYING.LIB;md5=e3eda01d9815f8d24aae2dbd89b68b06"
 
 SRC_URI = "http://people.redhat.com/sgrubb/libcap-ng/libcap-ng-${PV}.tar.gz \
-           file://python.patch \
-           file://CVE-2014-3215.patch \
-          "
+           file://python.patch"
 
 inherit lib_package autotools pythonnative
 
-SRC_URI[md5sum] = "610afb774f80a8032b711281df126283"
-SRC_URI[sha256sum] = "5ca441c8d3a1e4cfe8a8151907977662679457311ccaa7eaac91447c33a35bb1"
+SRC_URI[md5sum] = "3d7d126b29e2869a0257c17c8b0d9b2e"
+SRC_URI[sha256sum] = "615549ce39b333f6b78baee0c0b4ef18bc726c6bf1cca123dfd89dd963f6d06b"
 
 DEPENDS += "swig-native python"
 
+EXTRA_OECONF += "--without-python3"
+
 EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' PYINC='${STAGING_INCDIR}/${PYLIBVER}'"
 
 PACKAGES += "${PN}-python"
-- 
1.9.1


