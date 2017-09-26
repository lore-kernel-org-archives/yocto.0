Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A01BFE00D11; Tue, 26 Sep 2017 00:21:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 246C2E00C89
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 00:20:58 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 7AE1918406
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 09:20:57 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 7eFajxPsphUG for <yocto@yoctoproject.org>;
	Tue, 26 Sep 2017 09:20:55 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id A4E1E1836A
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 09:20:55 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 8A2081A09F
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 09:20:55 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7E29E1A09E
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 09:20:55 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder02.se.axis.com (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 09:20:55 +0200 (CEST)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by thoth.se.axis.com (Postfix) with ESMTP id 729941E8F
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 09:20:55 +0200 (CEST)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id v8Q7KrLT028613
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 09:20:53 +0200
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id v8Q7KrbT028612
	for yocto@yoctoproject.org; Tue, 26 Sep 2017 09:20:53 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: yocto@yoctoproject.org
Date: Tue, 26 Sep 2017 09:20:52 +0200
Message-Id: <20170926072052.28572-1-pkj@axis.com>
X-Mailer: git-send-email 2.12.0
X-TM-AS-GCONF: 00
Subject: [meta-gplv2][PATCH] elfutils: Make it build with GCC 7 and compile time hardening enabled
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
X-List-Received-Date: Tue, 26 Sep 2017 07:21:00 -0000

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 .../0001-Make-it-compile-with-GCC-7.patch          | 43 ++++++++++++++++++++++
 ...ld-with-GCC-7-and-compile-time-hardening-.patch | 32 ++++++++++++++++
 recipes-devtools/elfutils/elfutils_0.148.bb        |  2 +
 3 files changed, 77 insertions(+)
 create mode 100644 recipes-devtools/elfutils/elfutils-0.148/0001-Make-it-compile-with-GCC-7.patch
 create mode 100644 recipes-devtools/elfutils/elfutils-0.148/0002-Make-it-build-with-GCC-7-and-compile-time-hardening-.patch

diff --git a/recipes-devtools/elfutils/elfutils-0.148/0001-Make-it-compile-with-GCC-7.patch b/recipes-devtools/elfutils/elfutils-0.148/0001-Make-it-compile-with-GCC-7.patch
new file mode 100644
index 0000000..a43508f
--- /dev/null
+++ b/recipes-devtools/elfutils/elfutils-0.148/0001-Make-it-compile-with-GCC-7.patch
@@ -0,0 +1,43 @@
+From 9529f012a1cfdae36aedeab8ccd790c875ae7f73 Mon Sep 17 00:00:00 2001
+From: Peter Kjellerstedt <pkj@axis.com>
+Date: Sat, 16 Sep 2017 15:09:23 +0200
+Subject: [PATCH 1/2] Make it compile with GCC 7
+
+This avoids the following errors:
+
+  src/readelf.c: In function 'register_info':
+  src/readelf.c:4481:30: warning: 'sizeof' on array function parameter
+  'name' will return size of 'char *' [-Wsizeof-array-argument]
+         snprintf (name, sizeof name, "reg%u", loc->regno);
+                                ^~~~
+  src/readelf.c:4472:14: note: declared here
+           char name[REGNAMESZ], int *bits, int *type)
+                ^~~~
+  rc/readelf.c:4481:30: warning: argument to 'sizeof' in 'snprintf' call
+  is the same expression as the destination; did you mean to provide an
+  explicit length? [-Wsizeof-pointer-memaccess]
+         snprintf (name, sizeof name, "reg%u", loc->regno);
+                                ^~~~
+
+Upstream-Status: Inappropriate [legacy version]
+Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
+---
+ src/readelf.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/readelf.c b/src/readelf.c
+index bf622a6..ba0607b 100644
+--- a/src/readelf.c
++++ b/src/readelf.c
+@@ -4478,7 +4478,7 @@ register_info (Ebl *ebl, unsigned int regno, const Ebl_Register_Location *loc,
+ 				 bits ?: &ignore, type ?: &ignore);
+   if (n <= 0)
+     {
+-      snprintf (name, sizeof name, "reg%u", loc->regno);
++      snprintf (name, REGNAMESZ, "reg%u", loc->regno);
+       if (bits != NULL)
+ 	*bits = loc->bits;
+       if (type != NULL)
+-- 
+2.12.0
+
diff --git a/recipes-devtools/elfutils/elfutils-0.148/0002-Make-it-build-with-GCC-7-and-compile-time-hardening-.patch b/recipes-devtools/elfutils/elfutils-0.148/0002-Make-it-build-with-GCC-7-and-compile-time-hardening-.patch
new file mode 100644
index 0000000..68d14b6
--- /dev/null
+++ b/recipes-devtools/elfutils/elfutils-0.148/0002-Make-it-build-with-GCC-7-and-compile-time-hardening-.patch
@@ -0,0 +1,32 @@
+From 5dcd8e331af448e3adcb9ed15a38762a912a8267 Mon Sep 17 00:00:00 2001
+From: Peter Kjellerstedt <pkj@axis.com>
+Date: Sat, 16 Sep 2017 15:12:37 +0200
+Subject: [PATCH 2/2] Make it build with GCC 7 and compile time hardening
+ enabled
+
+This avoids the following error:
+
+cc1: error: -Wformat-security ignored without -Wformat [-Werror=format-security]
+
+Upstream-Status: Inappropriate [legacy version]
+Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
+---
+ config/eu.am | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/config/eu.am b/config/eu.am
+index 8066d7f..7de66b0 100644
+--- a/config/eu.am
++++ b/config/eu.am
+@@ -33,7 +33,7 @@ INCLUDES = -I. -I$(srcdir) -I$(top_srcdir)/lib -I..
+ AM_CFLAGS = -std=gnu99 -Wall -Wshadow \
+ 	    $(if $($(*F)_no_Werror),,-Werror) \
+ 	    $(if $($(*F)_no_Wunused),,-Wunused $(WEXTRA)) \
+-	    $(if $($(*F)_no_Wformat),-Wno-format,-Wformat=2) \
++	    $(if $($(*F)_no_Wformat),-Wno-format -Wno-format-security,-Wformat=2) \
+ 	    $($(*F)_CFLAGS)
+ 
+ if MUDFLAP
+-- 
+2.12.0
+
diff --git a/recipes-devtools/elfutils/elfutils_0.148.bb b/recipes-devtools/elfutils/elfutils_0.148.bb
index 29d109a..892a523 100644
--- a/recipes-devtools/elfutils/elfutils_0.148.bb
+++ b/recipes-devtools/elfutils/elfutils_0.148.bb
@@ -37,6 +37,8 @@ SRC_URI += "\
         file://gcc6.patch \
         file://0001-Fix-fallthrough-warnings.patch \
         file://0002-Fix-printf-overflow-warnings.patch \
+        file://0001-Make-it-compile-with-GCC-7.patch \
+        file://0002-Make-it-build-with-GCC-7-and-compile-time-hardening-.patch \
 "
 # Only apply when building uclibc based target recipe
 SRC_URI_append_libc-uclibc = " file://uclibc-support-for-elfutils-0.148.patch"
-- 
2.12.0


