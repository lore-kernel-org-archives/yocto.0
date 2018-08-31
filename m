Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 341A9E009B2; Fri, 31 Aug 2018 00:10:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0B98E009C2
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 00:10:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7V7AH8x014147
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 00:10:17 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Fri, 31 Aug 2018 00:10:16 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 31 Aug 2018 15:10:11 +0800
Message-ID: <1535699411-6135-2-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1535699411-6135-1-git-send-email-yi.zhao@windriver.com>
References: <1535699411-6135-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-security][PATCH 2/2] xmlsec1: upgrade 1.2.25 -> 1.2.26
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
X-List-Received-Date: Fri, 31 Aug 2018 07:10:20 -0000
Content-Type: text/plain

Drop patch xmlsec1-fix-a-typo-in-examples-verify3.c.patch since the
issue had been fixed upstream.

Rebase patch change-finding-path-of-nss.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../xmlsec1/change-finding-path-of-nss.patch       | 107 ++++++++++-----------
 .../xmlsec1-fix-a-typo-in-examples-verify3.c.patch |  23 -----
 .../{xmlsec1_1.2.25.bb => xmlsec1_1.2.26.bb}       |   5 +-
 3 files changed, 53 insertions(+), 82 deletions(-)
 delete mode 100644 recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch
 rename recipes-security/xmlsec1/{xmlsec1_1.2.25.bb => xmlsec1_1.2.26.bb} (89%)

diff --git a/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch b/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch
index fcc63b3..1cec47f 100644
--- a/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch
+++ b/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch
@@ -1,4 +1,4 @@
-From 47379747e34f952d31af028c672940ca7859ae3c Mon Sep 17 00:00:00 2001
+From c1c980a95d85bcaf8802524d6148783522b300d7 Mon Sep 17 00:00:00 2001
 From: Yulong Pei <Yulong.pei@windriver.com>
 Date: Wed, 21 Jul 2010 22:33:43 +0800
 Subject: [PATCH] change finding path of nss and nspr
@@ -7,66 +7,61 @@ Upstream-Status: Pending
 
 Signed-off-by: Yulong Pei <Yulong.pei@windriver.com>
 Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
-
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- configure.ac | 12 ++++++------
- 1 file changed, 6 insertions(+), 6 deletions(-)
+ configure.ac | 20 ++++++++++----------
+ 1 file changed, 10 insertions(+), 10 deletions(-)
 
 diff --git a/configure.ac b/configure.ac
-index 3278200..6edec7d 100644
+index 951b3eb..1fdeb0f 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -644,7 +644,7 @@ if test "z$NSS_FOUND" = "zno" ; then
+@@ -866,10 +866,10 @@ MOZILLA_MIN_VERSION="1.4"
+ NSS_CRYPTO_LIB="$XMLSEC_PACKAGE-nss"
+ NSPR_PACKAGE=mozilla-nspr
+ NSS_PACKAGE=mozilla-nss
+-NSPR_INCLUDE_MARKER="nspr/nspr.h"
++NSPR_INCLUDE_MARKER="nspr.h"
+ NSPR_LIB_MARKER="libnspr4$shrext"
+ NSPR_LIBS_LIST="-lnspr4 -lplds4 -lplc4"
+-NSS_INCLUDE_MARKER="nss/nss.h"
++NSS_INCLUDE_MARKER="nss3/nss.h"
+ NSS_LIB_MARKER="libnss3$shrext"
+ NSS_LIBS_LIST="-lnss3 -lsmime3"
  
-     if test "z$with_nspr" != "z" ; then
- 	NSPR_PREFIX="$with_nspr"
--	NSPR_CFLAGS="-I$with_nspr/include -I$with_nspr/include/nspr"
-+	NSPR_CFLAGS="-I$with_nspr/usr/include -I$with_nspr/usr/include/nspr4"
- 	if test "z$with_gnu_ld" = "zyes" ; then
- 	    NSPR_LIBS="-Wl,-rpath-link -Wl,$with_nspr/lib -L$with_nspr/lib $NSPR_LIBS_LIST"
- 	else
-@@ -652,7 +652,7 @@ if test "z$NSS_FOUND" = "zno" ; then
- 	fi
- 	NSPR_INCLUDES_FOUND="yes"
- 	NSPR_LIBS_FOUND="yes"
--	NSPR_PRINIT_H="$with_nspr/include/prinit.h"
-+	NSPR_PRINIT_H="$with_nspr/usr/include/nspr4/prinit.h"
+@@ -898,24 +898,24 @@ fi
+ dnl Priority 1: User specifies the path to installation
+ if test "z$NSPR_FOUND" = "zno" -a "z$with_nspr" != "z" -a "z$with_nspr" != "zyes" ; then
+     AC_MSG_CHECKING(for nspr library installation in "$with_nspr" folder)
+-    if test -f "$with_nspr/include/$NSPR_INCLUDE_MARKER" -a -f "$with_nspr/lib/$NSPR_LIB_MARKER" ; then
+-        NSPR_INCLUDE_PATH="$with_nspr/include"
+-        NSPR_LIB_PATH="$with_nspr/lib"
++    if test -f "$with_nspr/usr/include/$NSPR_INCLUDE_MARKER" -a -f "$with_nspr/${libdir}/$NSPR_LIB_MARKER" ; then
++        NSPR_INCLUDE_PATH="$with_nspr/usr/include"
++        NSPR_LIB_PATH="$with_nspr/${libdir}"
+         NSPR_FOUND="yes"
+         AC_MSG_RESULT([yes])
      else
- 	for dir in $ac_nss_inc_dir ; do
-     	    if test -f $dir/nspr/prinit.h ; then
-@@ -690,7 +690,7 @@ if test "z$NSS_FOUND" = "zno" ; then
- 	OLD_CPPFLAGS=$CPPFLAGS
- 	CPPFLAGS="$NSPR_CFLAGS"
- 	AC_EGREP_CPP(yes,[
--    	    #include <prinit.h>
-+	    #include <nspr4/prinit.h>
-             #if PR_VMAJOR >= 4
-                yes
-             #endif
-@@ -715,7 +715,7 @@ if test "z$NSS_FOUND" = "zno" ; then
-     NSS_NSS_H=""
- 
-     if test "z$with_nss" != "z" ; then
--	NSS_CFLAGS="$NSS_CFLAGS -I$with_nss/include -I$with_nss/include/nss"
-+	NSS_CFLAGS="$NSS_CFLAGS -I$with_nss/usr/include -I$with_nss/usr/include/nss3 -I$with_nspr/usr/include/nspr4"
- 	if test "z$with_gnu_ld" = "zyes" ; then
- 	    NSS_LIBS="$NSS_LIBS -Wl,-rpath-link -Wl,$with_nss/lib -L$with_nss/lib $NSS_LIBS_LIST"
-         else
-@@ -723,7 +723,7 @@ if test "z$NSS_FOUND" = "zno" ; then
-         fi
- 	NSS_INCLUDES_FOUND="yes"
- 	NSS_LIBS_FOUND="yes"
--	NSS_NSS_H="$with_nss/include/nss.h"
-+	NSS_NSS_H="$with_nss/usr/include/nss3/nss.h"
+-        AC_MSG_ERROR([not found: "$with_nspr/include/$NSPR_INCLUDE_MARKER" and/or "$with_nspr/lib/$NSPR_LIB_MARKER" files don't exist), typo?])
++        AC_MSG_ERROR([not found: "$with_nspr/usr/include/$NSPR_INCLUDE_MARKER" and/or "$with_nspr/${libdir}/$NSPR_LIB_MARKER" files don't exist), typo?])
+     fi
+ fi
+ if test "z$NSS_FOUND" = "zno" -a "z$with_nss" != "z" -a "z$with_nss" != "zyes" ; then
+     AC_MSG_CHECKING(for nss library installation in "$with_nss" folder)
+-    if test -f "$with_nss/include/$NSS_INCLUDE_MARKER" -a -f "$with_nss/lib/$NSS_LIB_MARKER" ; then
+-        NSS_INCLUDE_PATH="$with_nss/include"
+-        NSS_LIB_PATH="$with_nss/lib"
++    if test -f "$with_nss/usr/include/$NSS_INCLUDE_MARKER" -a -f "$with_nss/${libdir}/$NSS_LIB_MARKER" ; then
++        NSS_INCLUDE_PATH="$with_nss/usr/include/nss3"
++        NSS_LIB_PATH="$with_nss/${libdir}"
+         NSS_FOUND="yes"
+         AC_MSG_RESULT([yes])
      else
- 	for dir in $ac_nss_inc_dir ; do
- 	    if test -f $dir/nss/nss.h ; then
-@@ -761,7 +761,7 @@ if test "z$NSS_FOUND" = "zno" ; then
-        OLD_CPPFLAGS=$CPPFLAGS
-        CPPFLAGS="$NSPR_CFLAGS $NSS_CFLAGS"
-        AC_EGREP_CPP(yes,[
--          #include <nss.h>
-+	  #include <nss3/nss.h>
-           #if NSS_VMAJOR >= 3 && NSS_VMINOR >= 2
-              yes
-           #endif
+-        AC_MSG_ERROR([not found: "$with_nss/include/$NSS_INCLUDE_MARKER" and/or "$with_nss/lib/$NSS_LIB_MARKER" files don't exist), typo?])
++        AC_MSG_ERROR([not found: "$with_nss/usr/include/$NSS_INCLUDE_MARKER" and/or "$with_nss/${libdir}/$NSS_LIB_MARKER" files don't exist), typo?])
+     fi
+ fi
+ 
+-- 
+2.7.4
+
diff --git a/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch b/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch
deleted file mode 100644
index 5f967bb..0000000
--- a/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch
+++ /dev/null
@@ -1,23 +0,0 @@
-From 1d8ae4b32bd76c19ec238f30eb9b1ee582cbe990 Mon Sep 17 00:00:00 2001
-From: Jackie Huang <jackie.huang@windriver.com>
-Date: Fri, 2 Mar 2018 01:10:58 -0800
-Subject: [PATCH] xmlsec1: fix a typo in examples/verify3.c
-
-Upstream-Status: Submitted [https://github.com/lsh123/xmlsec/pull/153]
-
-Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
-
----
- examples/verify3.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/examples/verify3.c b/examples/verify3.c
-index 2d26ae7..68f52ab 100644
---- a/examples/verify3.c
-+++ b/examples/verify3.c
-@@ -1,4 +1,4 @@
--4/** 
-+/**
-  * XML Security Library example: Verifying a file signed with X509 certificate
-  *
-  * Verifies a file signed with X509 certificate. 
diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.25.bb b/recipes-security/xmlsec1/xmlsec1_1.2.26.bb
similarity index 89%
rename from recipes-security/xmlsec1/xmlsec1_1.2.25.bb
rename to recipes-security/xmlsec1/xmlsec1_1.2.26.bb
index 341ca08..2dbbf33 100644
--- a/recipes-security/xmlsec1/xmlsec1_1.2.25.bb
+++ b/recipes-security/xmlsec1/xmlsec1_1.2.26.bb
@@ -17,12 +17,11 @@ SRC_URI = "http://www.aleksey.com/xmlsec/download/${BP}.tar.gz \
     file://change-finding-path-of-nss.patch \
     file://makefile-ptest.patch \
     file://xmlsec1-examples-allow-build-in-separate-dir.patch \
-    file://xmlsec1-fix-a-typo-in-examples-verify3.c.patch \
     file://run-ptest \
     "
 
-SRC_URI[md5sum] = "dbbef1efc69e61bc4629650205a05b41"
-SRC_URI[sha256sum] = "967ca83edf25ccb5b48a3c4a09ad3405a63365576503bf34290a42de1b92fcd2"
+SRC_URI[md5sum] = "9c4aaf9ff615a73921b9e3bf4988d878"
+SRC_URI[sha256sum] = "8d8276c9c720ca42a3b0023df8b7ae41a2d6c5f9aa8d20ed1672d84cc8982d50"
 
 inherit autotools-brokensep ptest pkgconfig
 
-- 
2.7.4


