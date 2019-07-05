Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92104E00920; Fri,  5 Jul 2019 00:51:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6AD1E00920
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2019 00:51:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x657pGLJ025672
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 5 Jul 2019 00:51:16 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.439.0; Fri, 5 Jul 2019 00:51:14 -0700
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 5 Jul 2019 15:51:12 +0800
Message-ID: <1562313073-109593-1-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561510813-10520-1-git-send-email-yi.zhao@windriver.com>
References: <1561510813-10520-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH v2 1/2] audit: upgrade 2.8.4 -> 2.8.5
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
X-List-Received-Date: Fri, 05 Jul 2019 07:51:19 -0000
Content-Type: text/plain

From: Yi Zhao <yi.zhao@windriver.com>

* Drop backport patch:
  0001-Remove-strdupa-as-suggested-in-pull-request-25.patch

* Refresh all patches.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...e-strdupa-as-suggested-in-pull-request-25.patch | 47 ----------------------
 ...bstitue-functions-for-strndupa-rawmemchr.patch} | 23 +++++------
 .../audit/audit/audit-python-configure.patch       | 10 ++---
 recipes-security/audit/audit/audit-python.patch    |  8 ++--
 recipes-security/audit/audit/auditd                |  2 +-
 .../audit/audit/fix-swig-host-contamination.patch  | 22 +++++-----
 .../audit/{audit_2.8.4.bb => audit_2.8.5.bb}       |  7 ++--
 7 files changed, 35 insertions(+), 84 deletions(-)
 delete mode 100644 recipes-security/audit/audit/0001-Remove-strdupa-as-suggested-in-pull-request-25.patch
 rename recipes-security/audit/audit/{0002-Add-substitue-functions-for-strndupa-rawmemchr.patch => Add-substitue-functions-for-strndupa-rawmemchr.patch} (88%)
 rename recipes-security/audit/{audit_2.8.4.bb => audit_2.8.5.bb} (92%)

diff --git a/recipes-security/audit/audit/0001-Remove-strdupa-as-suggested-in-pull-request-25.patch b/recipes-security/audit/audit/0001-Remove-strdupa-as-suggested-in-pull-request-25.patch
deleted file mode 100644
index 38029aa..0000000
--- a/recipes-security/audit/audit/0001-Remove-strdupa-as-suggested-in-pull-request-25.patch
+++ /dev/null
@@ -1,47 +0,0 @@
-From a1782b58b687b74249dc8b2411a3f646b821ebd6 Mon Sep 17 00:00:00 2001
-From: Steve Grubb <sgrubb@redhat.com>
-Date: Thu, 4 Oct 2018 08:45:47 -0400
-Subject: [PATCH] Remove strdupa as suggested in pull request #25
-
----
- src/auditd.c | 11 ++++++-----
- 1 file changed, 6 insertions(+), 5 deletions(-)
-
-Origin: https://github.com/linux-audit/audit-userspace/commit/a1782b58b687b74249dc8b2411a3f646b821ebd6
-Applied-Upstream: yes
-
-diff --git a/src/auditd.c b/src/auditd.c
-index b0952db..c826ec0 100644
---- a/src/auditd.c
-+++ b/src/auditd.c
-@@ -209,21 +209,22 @@ static void cont_handler(struct ev_loop *loop, struct ev_signal *sig,
- 
- static int extract_type(const char *str)
- {
--	const char *tptr, *ptr2, *ptr = str;
-+	const char *ptr2, *ptr = str;
- 	if (*str == 'n') {
- 		ptr = strchr(str+1, ' ');
- 		if (ptr == NULL)
- 			return -1; // Malformed - bomb out
- 		ptr++;
- 	}
-+
- 	// ptr should be at 't'
- 	ptr2 = strchr(ptr, ' ');
--	// get type=xxx in a buffer
--	tptr = strndupa(ptr, ptr2 - ptr);
-+
- 	// find =
--	str = strchr(tptr, '=');
--	if (str == NULL)
-+	str = strchr(ptr, '=');
-+	if (str == NULL || str >= ptr2)
- 		return -1; // Malformed - bomb out
-+
- 	// name is 1 past
- 	str++;
- 	return audit_name_to_msg_type(str);
--- 
-2.20.1
-
diff --git a/recipes-security/audit/audit/0002-Add-substitue-functions-for-strndupa-rawmemchr.patch b/recipes-security/audit/audit/Add-substitue-functions-for-strndupa-rawmemchr.patch
similarity index 88%
rename from recipes-security/audit/audit/0002-Add-substitue-functions-for-strndupa-rawmemchr.patch
rename to recipes-security/audit/audit/Add-substitue-functions-for-strndupa-rawmemchr.patch
index c948aa3..bb6c61e 100644
--- a/recipes-security/audit/audit/0002-Add-substitue-functions-for-strndupa-rawmemchr.patch
+++ b/recipes-security/audit/audit/Add-substitue-functions-for-strndupa-rawmemchr.patch
@@ -1,12 +1,11 @@
-From 5346b6af0ca67a2965ca5846ae150f3021a2aa17 Mon Sep 17 00:00:00 2001
+From bdcdc3dff4469aac88e718bd15958d5ed4b9392a Mon Sep 17 00:00:00 2001
 From: Steve Grubb <sgrubb@redhat.com>
 Date: Tue, 26 Feb 2019 18:33:33 -0500
 Subject: [PATCH] Add substitue functions for strndupa & rawmemchr
 
+Upstream-Status: Backport
+[https://github.com/linux-audit/audit-userspace/commit/d579a08bb1cde71f939c13ac6b2261052ae9f77e]
 ---
-Origin: https://github.com/linux-audit/audit-userspace/commit/d579a08bb1cde71f939c13ac6b2261052ae9f77e
-Applied-Upstream: yes
-
  auparse/auparse.c   | 12 +++++++++++-
  auparse/interpret.c |  9 ++++++++-
  configure.ac        | 14 +++++++++++++-
@@ -14,7 +13,7 @@ Applied-Upstream: yes
  4 files changed, 43 insertions(+), 4 deletions(-)
 
 diff --git a/auparse/auparse.c b/auparse/auparse.c
-index f84712e..3764046 100644
+index 650db02..2e1c737 100644
 --- a/auparse/auparse.c
 +++ b/auparse/auparse.c
 @@ -1,5 +1,5 @@
@@ -24,7 +23,7 @@ index f84712e..3764046 100644
   * All Rights Reserved.
   *
   * This library is free software; you can redistribute it and/or
-@@ -1100,6 +1100,16 @@ static int str2event(char *s, au_event_t *e)
+@@ -1118,6 +1118,16 @@ static int str2event(char *s, au_event_t *e)
  	return 0;
  }
  
@@ -42,7 +41,7 @@ index f84712e..3764046 100644
  static int extract_timestamp(const char *b, au_event_t *e)
  {
 diff --git a/auparse/interpret.c b/auparse/interpret.c
-index 1846f9d..8540bd1 100644
+index 51c4a5e..67b7b77 100644
 --- a/auparse/interpret.c
 +++ b/auparse/interpret.c
 @@ -853,6 +853,13 @@ err_out:
@@ -69,7 +68,7 @@ index 1846f9d..8540bd1 100644
  				break;
  			*ptr = ' ';
 diff --git a/configure.ac b/configure.ac
-index ede7109..97b547f 100644
+index 54bdbf1..aef07fb 100644
 --- a/configure.ac
 +++ b/configure.ac
 @@ -1,7 +1,7 @@
@@ -101,7 +100,7 @@ index ede7109..97b547f 100644
  ALLWARNS=""
  ALLDEBUG="-g"
 diff --git a/src/ausearch-lol.c b/src/ausearch-lol.c
-index 4fbfbae..5eecefe 100644
+index 5d17a72..758c33e 100644
 --- a/src/ausearch-lol.c
 +++ b/src/ausearch-lol.c
 @@ -1,6 +1,6 @@
@@ -112,8 +111,8 @@ index 4fbfbae..5eecefe 100644
  * All Rights Reserved. 
  *
  * This software may be freely redistributed and/or modified under the
-@@ -131,6 +131,16 @@ static int inline events_are_equal(event *e1, event *e2)
- 	return 1;
+@@ -152,6 +152,16 @@ static int compare_event_time(event *e1, event *e2)
+ 	return 0;
  }
  
 +#ifndef HAVE_STRNDUPA
@@ -130,5 +129,5 @@ index 4fbfbae..5eecefe 100644
   * This function will look at the line and pick out pieces of it.
   */
 -- 
-2.20.1
+2.7.4
 
diff --git a/recipes-security/audit/audit/audit-python-configure.patch b/recipes-security/audit/audit/audit-python-configure.patch
index cb62ec3..37096b0 100644
--- a/recipes-security/audit/audit/audit-python-configure.patch
+++ b/recipes-security/audit/audit/audit-python-configure.patch
@@ -1,9 +1,9 @@
-From be689ee1748c6aa531dbca982e0218d077ac901c Mon Sep 17 00:00:00 2001
+From 6a2710db094061e1956fac3ed81114d0e958ea21 Mon Sep 17 00:00:00 2001
 From: Li xin <lixin.fnst@cn.fujitsu.com>
 Date: Sun, 19 Jul 2015 00:49:13 +0900
 Subject: [PATCH] audit: python cross-compile
 
-Upstream-Status: pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
@@ -14,10 +14,10 @@ Signed-off-by: T.O. Radzy Radzykewycz <radzy@windriver.com>
  1 file changed, 2 insertions(+), 15 deletions(-)
 
 diff --git a/configure.ac b/configure.ac
-index 1f48cb4..cdb5219 100644
+index 6e345f1..54bdbf1 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -94,21 +94,8 @@ if test x$use_python = xno ; then
+@@ -99,21 +99,8 @@ if test "x$use_python" = xno ; then
  else
  AC_MSG_RESULT(testing)
  AM_PATH_PYTHON
@@ -42,5 +42,5 @@ index 1f48cb4..cdb5219 100644
  AM_CONDITIONAL(HAVE_PYTHON, test ${python_found} = "yes")
  
 -- 
-1.9.1
+2.7.4
 
diff --git a/recipes-security/audit/audit/audit-python.patch b/recipes-security/audit/audit/audit-python.patch
index 0c2dc1c..c1a2595 100644
--- a/recipes-security/audit/audit/audit-python.patch
+++ b/recipes-security/audit/audit/audit-python.patch
@@ -1,8 +1,10 @@
-From 9c8fd14feabe985242ef08e52c3e866d7755fa6e Mon Sep 17 00:00:00 2001
+From 9d95d7e28a2c4cbefa998d375de180c731a151b1 Mon Sep 17 00:00:00 2001
 From: Li xin <lixin.fnst@cn.fujitsu.com>
 Date: Sun, 19 Jul 2015 01:40:48 +0900
 Subject: [PATCH] Remove hard coded python include directory
 
+Upstream-Status: Inappropriate [embedded specific]
+
 Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
 ---
  bindings/Makefile.am                | 8 +++++++-
@@ -11,7 +13,7 @@ Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
  3 files changed, 12 insertions(+), 4 deletions(-)
 
 diff --git a/bindings/Makefile.am b/bindings/Makefile.am
-index cc68df3..998b990 100644
+index 5b5c576..7a15205 100644
 --- a/bindings/Makefile.am
 +++ b/bindings/Makefile.am
 @@ -22,4 +22,10 @@
@@ -58,5 +60,5 @@ index 8c98b94..ae7c52b 100644
  pyexec_LTLIBRARIES = _audit.la
  pyexec_SOLIBRARIES = _audit.so
 -- 
-1.8.4.2
+2.7.4
 
diff --git a/recipes-security/audit/audit/auditd b/recipes-security/audit/audit/auditd
index fcd96c9..cda2e43 100755
--- a/recipes-security/audit/audit/auditd
+++ b/recipes-security/audit/audit/auditd
@@ -30,7 +30,7 @@ SCRIPTNAME=/etc/init.d/"$NAME"
 
 . /etc/default/rcS
 
-. /etc/init.d/functions                                                
+. /etc/init.d/functions
 
 #
 # Function that starts the daemon/service
diff --git a/recipes-security/audit/audit/fix-swig-host-contamination.patch b/recipes-security/audit/audit/fix-swig-host-contamination.patch
index faeeeeb..184f515 100644
--- a/recipes-security/audit/audit/fix-swig-host-contamination.patch
+++ b/recipes-security/audit/audit/fix-swig-host-contamination.patch
@@ -1,4 +1,4 @@
-From d7577e1e55595123e3bcec78fa4a79fe8a314fe5 Mon Sep 17 00:00:00 2001
+From bd70f570ffb82991feb7a539ac1abf3165d417a4 Mon Sep 17 00:00:00 2001
 From: Li xin <lixin.fnst@cn.fujitsu.com>
 Date: Sun, 19 Jul 2015 02:42:58 +0900
 Subject: [PATCH] audit: Fixed swig host contamination issue
@@ -8,17 +8,17 @@ Unfortunately, the swig info file references host include
 directories.  Some of these were previously noticed and
 eliminated, but the one fixed here was not.
 
-Upstream Status:  pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Anders Hedlund <anders.hedlund@windriver.com>
 Signed-off-by: Joe Slater <jslater@windriver.com>
 ---
  bindings/swig/python/Makefile.am | 3 ++-
- bindings/swig/src/auditswig.i    | 4 ++--
- 2 files changed, 4 insertions(+), 3 deletions(-)
+ bindings/swig/src/auditswig.i    | 2 +-
+ 2 files changed, 3 insertions(+), 2 deletions(-)
 
 diff --git a/bindings/swig/python/Makefile.am b/bindings/swig/python/Makefile.am
-index ae7c52b..d1bb93c 100644
+index ae7c52b..c580bc0 100644
 --- a/bindings/swig/python/Makefile.am
 +++ b/bindings/swig/python/Makefile.am
 @@ -22,6 +22,7 @@
@@ -34,25 +34,23 @@ index ae7c52b..d1bb93c 100644
  nodist__audit_la_SOURCES  = audit_wrap.c
  audit.py audit_wrap.c: ${srcdir}/../src/auditswig.i 
 -	swig -o audit_wrap.c ${SWIG_FLAGS} ${SWIG_INCLUDES} ${srcdir}/../src/auditswig.i 
-+	swig -o audit_wrap.c ${SWIG_FLAGS} ${SWIG_INCLUDES} -I$(STDINC) ${srcdir}/../src/auditswig.i 
++	swig -o audit_wrap.c ${SWIG_FLAGS} ${SWIG_INCLUDES} -I$(STDINC) ${srcdir}/../src/auditswig.i
  
  CLEANFILES = audit.py* audit_wrap.c *~
  
 diff --git a/bindings/swig/src/auditswig.i b/bindings/swig/src/auditswig.i
-index 9364ac4..48667d4 100644
+index 7ebb373..424fb68 100644
 --- a/bindings/swig/src/auditswig.i
 +++ b/bindings/swig/src/auditswig.i
-@@ -39,8 +39,8 @@ signed
+@@ -39,7 +39,7 @@ signed
  #define __attribute(X) /*nothing*/
  typedef unsigned __u32;
  typedef unsigned uid_t;
 -%include "/usr/include/linux/audit.h"
 +%include "linux/audit.h"
  #define __extension__ /*nothing*/
--%include "/usr/include/stdint.h"
-+%include "stdint.h"
+ #include <stdint.h>
  %include "../lib/libaudit.h"
- 
 -- 
-1.8.4.2
+2.7.4
 
diff --git a/recipes-security/audit/audit_2.8.4.bb b/recipes-security/audit/audit_2.8.5.bb
similarity index 92%
rename from recipes-security/audit/audit_2.8.4.bb
rename to recipes-security/audit/audit_2.8.5.bb
index 594786a..bd09873 100644
--- a/recipes-security/audit/audit_2.8.4.bb
+++ b/recipes-security/audit/audit_2.8.5.bb
@@ -11,14 +11,13 @@ SRC_URI = "http://people.redhat.com/sgrubb/${BPN}/${BPN}-${PV}.tar.gz \
            file://audit-python-configure.patch \
            file://audit-python.patch \
            file://fix-swig-host-contamination.patch \
-           file://0001-Remove-strdupa-as-suggested-in-pull-request-25.patch \
-           file://0002-Add-substitue-functions-for-strndupa-rawmemchr.patch \
+           file://Add-substitue-functions-for-strndupa-rawmemchr.patch \
            file://auditd \
            file://auditd.service \
            file://audit-volatile.conf \
 "
-SRC_URI[md5sum] = "ec9510312564c3d9483bccf8dbda4779"
-SRC_URI[sha256sum] = "a410694d09fc5708d980a61a5abcb9633a591364f1ecc7e97ad5daef9c898c38"
+SRC_URI[md5sum] = "9455e5773670afdbccaeb92681b2e97d"
+SRC_URI[sha256sum] = "0e5d4103646e00f8d1981e1cd2faea7a2ae28e854c31a803e907a383c5e2ecb7"
 
 inherit autotools pythonnative update-rc.d systemd
 
-- 
2.7.4


