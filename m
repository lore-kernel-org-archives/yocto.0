Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47025E00CF9; Sun, 24 Sep 2017 14:03:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D50BFE00CD5
	for <yocto@yoctoproject.org>; Sun, 24 Sep 2017 14:02:59 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga105.fm.intel.com with ESMTP; 24 Sep 2017 14:02:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,433,1500966000"; d="scan'208";a="138903822"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga002.jf.intel.com with ESMTP; 24 Sep 2017 14:02:56 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.84])
	by linux.intel.com (Postfix) with ESMTP id A0B1558043A
	for <yocto@yoctoproject.org>; Sun, 24 Sep 2017 14:02:55 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 25 Sep 2017 00:05:40 +0300
Message-Id: <1506287141-3998-5-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
In-Reply-To: <1506287141-3998-1-git-send-email-maxin.john@intel.com>
References: <1506287141-3998-1-git-send-email-maxin.john@intel.com>
Subject: [meta-java][PATCH 5/6] bdwgc: import from meta-oe
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
X-List-Received-Date: Sun, 24 Sep 2017 21:03:01 -0000

keep a copy of bdwgc recipe in meta-java from meta-oe layer.
cacao in meta-java depends on bdwgc.

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 ...ac-add-check-for-NO_GETCONTEXT-definition.patch | 29 +++++++++++++++
 recipes-extended/bdwgc/bdwgc/musl_header_fix.patch | 27 ++++++++++++++
 recipes-extended/bdwgc/bdwgc_7.6.0.bb              | 42 ++++++++++++++++++++++
 3 files changed, 98 insertions(+)
 create mode 100644 recipes-extended/bdwgc/bdwgc/0001-configure.ac-add-check-for-NO_GETCONTEXT-definition.patch
 create mode 100644 recipes-extended/bdwgc/bdwgc/musl_header_fix.patch
 create mode 100644 recipes-extended/bdwgc/bdwgc_7.6.0.bb

diff --git a/recipes-extended/bdwgc/bdwgc/0001-configure.ac-add-check-for-NO_GETCONTEXT-definition.patch b/recipes-extended/bdwgc/bdwgc/0001-configure.ac-add-check-for-NO_GETCONTEXT-definition.patch
new file mode 100644
index 0000000..8ef774f
--- /dev/null
+++ b/recipes-extended/bdwgc/bdwgc/0001-configure.ac-add-check-for-NO_GETCONTEXT-definition.patch
@@ -0,0 +1,29 @@
+configure.ac: add check for NO_GETCONTEXT definition
+
+Signed-off-by: Samuel Martin <s.martin49@gmail.com>
+[yann.morin.1998@free.fr: add a comment, change variable name, use
+ AS_IF, remove debug traces, use AC_CHECK_FUNCS (as suggested by
+ Thomas)]
+Signed-off-by: "Yann E. MORIN" <yann.morin.1998@free.fr>
+Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
+
+---
+Upstream-Status: Pending
+ configure.ac | 6 ++++++
+ 1 file changed, 6 insertions(+)
+
+--- bdwgc-7.2f.orig/configure.ac	2014-06-01 19:00:47.000000000 +0200
++++ bdwgc-7.2f/configure.ac	2014-12-23 14:13:11.585716713 +0100
+@@ -365,6 +365,12 @@
+   AC_MSG_RESULT($ac_cv_fno_strict_aliasing)
+ fi
+ 
++# Check for getcontext (uClibc can be configured without it, for example)
++AC_CHECK_FUNCS([getcontext])
++AS_IF([test "$ac_cv_func_getcontext" = "no"],
++  [CFLAGS="$CFLAGS -DNO_GETCONTEXT"
++   CPPFLAGS="$CPPFLAGS -DNO_GETCONTEXT"])
++
+ case "$host" in
+ # While IRIX 6 has libdl for the O32 and N32 ABIs, it's missing for N64
+ # and unnecessary everywhere.
diff --git a/recipes-extended/bdwgc/bdwgc/musl_header_fix.patch b/recipes-extended/bdwgc/bdwgc/musl_header_fix.patch
new file mode 100644
index 0000000..4a18496
--- /dev/null
+++ b/recipes-extended/bdwgc/bdwgc/musl_header_fix.patch
@@ -0,0 +1,27 @@
+Add missing header to avoid:
+
+| 1472659610.016355: ../git/pthread_stop_world.c: In function 'GC_brief_async_signal_safe_sleep':
+| 1472659610.0540252: ../git/pthread_stop_world.c:397:22: error: storage size of 'tv' isn't known
+| 1472659610.0540252:        struct timeval tv;
+| 1472659610.0540252:                       ^~
+| 1472659610.054099: ../git/pthread_stop_world.c:397:22: warning: unused variable 'tv' [-Wunused-variable]
+| 1472659610.054099:        struct timeval tv;
+| 1472659610.054099:                       ^~
+| 1472659610.054099: Makefile:1530: recipe for target 'pthread_stop_world.lo' failed
+
+in musl builds.
+
+Upstream-Status: Pending
+
+Index: git/pthread_stop_world.c
+===================================================================
+--- git.orig/pthread_stop_world.c
++++ git/pthread_stop_world.c
+@@ -45,6 +45,7 @@
+ #include <semaphore.h>
+ #include <errno.h>
+ #include <unistd.h>
++#include <sys/time.h>
+ #include "atomic_ops.h"
+ 
+ /* It's safe to call original pthread_sigmask() here.   */
diff --git a/recipes-extended/bdwgc/bdwgc_7.6.0.bb b/recipes-extended/bdwgc/bdwgc_7.6.0.bb
new file mode 100644
index 0000000..dcb68f0
--- /dev/null
+++ b/recipes-extended/bdwgc/bdwgc_7.6.0.bb
@@ -0,0 +1,42 @@
+SUMMARY = "A garbage collector for C and C++"
+
+DESCRIPTION = "The Boehm-Demers-Weiser conservative garbage collector can be\
+ used as a garbage collecting replacement for C malloc or C++ new. It allows\
+ you to allocate memory basically as you normally would, without explicitly\
+ deallocating memory that is no longer useful. The collector automatically\
+ recycles memory when it determines that it can no longer be otherwise\
+ accessed.\
+  The collector is also used by a number of programming language\
+ implementations that either use C as intermediate code, want to facilitate\
+ easier interoperation with C libraries, or just prefer the simple collector\
+ interface.\
+  Alternatively, the garbage collector may be used as a leak detector for C\
+ or C++ programs, though that is not its primary goal.\
+  Empirically, this collector works with most unmodified C programs, simply\
+ by replacing malloc with GC_malloc calls, replacing realloc with GC_realloc\
+ calls, and removing free calls."
+
+HOMEPAGE = "http://www.hboehm.info/gc/"
+SECTION = "devel"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://README.QUICK;md5=4f81f24ec69726c312487c2ac740e9e3"
+
+SRCREV = "8ac1d84a40eb7a431fec1b8097e3f24b48fb23fa"
+SRC_URI = "git://github.com/ivmai/bdwgc.git \
+           file://0001-configure.ac-add-check-for-NO_GETCONTEXT-definition.patch \
+           file://musl_header_fix.patch \
+          "
+
+FILES_${PN}-doc = "${datadir}"
+
+S = "${WORKDIR}/git"
+
+ARM_INSTRUCTION_SET = "arm"
+
+inherit autotools pkgconfig
+
+# by default use external libatomic-ops
+PACKAGECONFIG ??= "libatomic-ops"
+PACKAGECONFIG[libatomic-ops] = "--with-libatomic-ops=yes,--with-libatomic-ops=no,libatomic-ops"
+
+BBCLASSEXTEND = "native nativesdk"
-- 
2.4.0


