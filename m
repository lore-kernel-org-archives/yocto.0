Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6AF3E00B1E; Thu, 12 Apr 2018 16:28:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BF7DE0084E
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 16:28:16 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Apr 2018 16:28:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,444,1517904000"; d="scan'208";a="191104640"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.59])
	by orsmga004.jf.intel.com with ESMTP; 12 Apr 2018 16:28:16 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 12 Apr 2018 16:28:14 -0700
Message-Id: <1523575694-11789-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: jurobystricky@hotmail.com
Subject: [meta-mingw][PATCH] diffutils_3.6: build for mingw
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
X-List-Received-Date: Thu, 12 Apr 2018 23:28:17 -0000

Build of diffutils was requested/broken for mingw because of the commit
"diffutils: allow native & nativesdk builds"

This patch implements neccessary steps needed to build diffutils executables:
    cmp.exe
    diff.exe
    diff3.exe
    sdiff.exe

[YOCTO #12662]

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 .../diffutils/diffutils/sdiff-no-kill.patch            | 18 ++++++++++++++++++
 recipes-extended/diffutils/diffutils_3.6.bbappend      | 18 ++++++++++++++++++
 2 files changed, 36 insertions(+)
 create mode 100644 recipes-extended/diffutils/diffutils/sdiff-no-kill.patch
 create mode 100644 recipes-extended/diffutils/diffutils_3.6.bbappend

diff --git a/recipes-extended/diffutils/diffutils/sdiff-no-kill.patch b/recipes-extended/diffutils/diffutils/sdiff-no-kill.patch
new file mode 100644
index 0000000..70e7caf
--- /dev/null
+++ b/recipes-extended/diffutils/diffutils/sdiff-no-kill.patch
@@ -0,0 +1,18 @@
+"kill" is not supported by mingw, so compile conditionally,
+(same condition as another instance of "kill" in the source code).
+
+Upstream-Status: Pending
+Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
+
+--- a/src/sdiff.c
++++ b/src/sdiff.c
+@@ -805,7 +805,9 @@
+ 
+       /* Yield an exit status indicating that a signal was received.  */
+       untrapsig (s);
++#if HAVE_WORKING_FORK
+       kill (getpid (), s);
++#endif
+ 
+       /* That didn't work, so exit with error status.  */
+       exit (EXIT_TROUBLE);
diff --git a/recipes-extended/diffutils/diffutils_3.6.bbappend b/recipes-extended/diffutils/diffutils_3.6.bbappend
new file mode 100644
index 0000000..f301349
--- /dev/null
+++ b/recipes-extended/diffutils/diffutils_3.6.bbappend
@@ -0,0 +1,18 @@
+
+FILESEXTRAPATHS_prepend_mingw32 := "${THISDIR}/${BPN}:"
+
+SRC_URI_remove_mingw32 = "file://0001-explicitly-disable-replacing-getopt.patch"
+SRC_URI_append_mingw32 = " file://sdiff-no-kill.patch"
+
+CACHED_CONFIGUREVARS_append_mingw32 = " ac_cv_header_getopt_h=yes "
+
+# Add some definitions for POSIX signals..
+CFLAGS_append_mingw32 = " -DSIGALRM=14 -DSIGHUP=1 -DSIGQUIT=3 -DSIGPIPE=13 -DSIGTSTP=18 -DSIGSTOP=17 "
+
+do_configure_prepend_mingw32 () {
+    # Remove building of "man"
+    sed -i -e 's:^SUBDIRS = lib src tests doc man po gnulib-test:SUBDIRS = lib src tests doc po gnulib-test:g' ${S}/Makefile.am
+}
+
+
+
-- 
2.7.4


