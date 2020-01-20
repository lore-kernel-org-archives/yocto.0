Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.6923.1579498978353900789
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jan 2020 21:42:59 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 00K5gaJU008019
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Sun, 19 Jan 2020 21:42:46 -0800
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Sun, 19 Jan
 2020 21:42:25 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] samhain: fix build with new version attr
Date: Mon, 20 Jan 2020 13:42:23 +0800
Message-ID: <20200120054223.14911-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

The attr/xattr.h has been removed from attr 2.4.48 with commit:
http://git.savannah.nongnu.org/cgit/attr.git/commit/include?id=7921157890d07858d092f4003ca4c6bae9fd2c38
The xattr syscalls are provided by sys/xattr.h from glibc now.
Remove the checking code to adapt it otherwise it would fail to build
with selinux support.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../fix-build-with-new-version-attr.patch     | 73 +++++++++++++++++++
 recipes-ids/samhain/samhain.inc               |  1 +
 2 files changed, 74 insertions(+)
 create mode 100644 recipes-ids/samhain/files/fix-build-with-new-version-attr.patch

diff --git a/recipes-ids/samhain/files/fix-build-with-new-version-attr.patch b/recipes-ids/samhain/files/fix-build-with-new-version-attr.patch
new file mode 100644
index 0000000..eaf30db
--- /dev/null
+++ b/recipes-ids/samhain/files/fix-build-with-new-version-attr.patch
@@ -0,0 +1,73 @@
+From e67acafa62f71f0015ed548918b98ed0b1ded128 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Sun, 19 Jan 2020 15:53:48 +0800
+Subject: [PATCH] fix build with new version attr
+
+The attr/xattr.h has been removed from attr 2.4.48 with commit:
+http://git.savannah.nongnu.org/cgit/attr.git/commit/include?id=7921157890d07858d092f4003ca4c6bae9fd2c38
+The xattr syscalls are provided by sys/xattr.h from glibc now.
+Remove the checking code to adapt it.
+
+Upstream-Status: Pending
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ aclocal.m4    | 26 +++++++++++---------------
+ src/sh_unix.c |  2 +-
+ 2 files changed, 12 insertions(+), 16 deletions(-)
+
+diff --git a/aclocal.m4 b/aclocal.m4
+index ee5b204..38cef8e 100644
+--- a/aclocal.m4
++++ b/aclocal.m4
+@@ -1453,23 +1453,19 @@ AC_DEFUN([sh_CHECK_POSIX_ACL],
+ 
+ AC_DEFUN([sh_CHECK_XATTR],
+ [
+-  AC_CHECK_HEADERS(attr/xattr.h)
+-  if test $ac_cv_header_attr_xattr_h = yes; then
+-
+-  	AC_CHECK_LIB([attr], [getxattr], sh_lattr=yes, sh_lattr=no)
+-  	if test x"$sh_lattr" = xyes; then
+-    		LIBATTR=-lattr
+-  	else
+-    		LIBATTR=
+-  	fi
+-  
+-  	OLDLIBS="$LIBS"
+-  	LIBS="$LIBS $LIBATTR"
+-  	AC_CHECK_FUNCS([getxattr lgetxattr fgetxattr],
+-                       [sh_fattr=yes],[sh_fattr=no])
+-  	LIBS="$OLDLIBS"
++  AC_CHECK_LIB([attr], [getxattr], sh_lattr=yes, sh_lattr=no)
++  if test x"$sh_lattr" = xyes; then
++      LIBATTR=-lattr
++  else
++      LIBATTR=
+   fi
+ 
++  OLDLIBS="$LIBS"
++  LIBS="$LIBS $LIBATTR"
++  AC_CHECK_FUNCS([getxattr lgetxattr fgetxattr],
++	  [sh_fattr=yes],[sh_fattr=no])
++  LIBS="$OLDLIBS"
++
+   if test x"$sh_fattr" = xyes; then
+ 	  AC_DEFINE(USE_XATTR, 1, [Define if you want extended attributes support.])
+ 	  LIBS="$LIBS $LIBATTR"
+diff --git a/src/sh_unix.c b/src/sh_unix.c
+index 3ede57f..ef236e9 100644
+--- a/src/sh_unix.c
++++ b/src/sh_unix.c
+@@ -3681,7 +3681,7 @@ static char * sh_unix_getinfo_acl (char * path, int fd, struct stat * buf)
+ 
+ #ifdef USE_XATTR
+ 
+-#include <attr/xattr.h>
++#include <sys/xattr.h>
+ static char * sh_unix_getinfo_xattr_int (char * path, int fd, char * name)
+ {
+   char *  out   = NULL;
+-- 
+2.7.4
+
diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index 16222ba..91eb697 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -14,6 +14,7 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://samhain-configure-add-option-for-ps.patch \
            file://samhain-avoid-searching-host-for-postgresql.patch \
            file://samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch \
+           file://fix-build-with-new-version-attr.patch \
            file://${INITSCRIPT_NAME}.init \
            file://${INITSCRIPT_NAME}.default \
            file://samhain.service \
-- 
2.17.1

