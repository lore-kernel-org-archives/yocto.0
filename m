Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B742DE00CD0; Tue, 12 Sep 2017 19:50:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4719AE00C9E
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 19:49:43 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8D2nepA009769
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 19:49:40 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Tue, 12 Sep 2017 19:49:39 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 13 Sep 2017 10:48:44 +0800
Message-ID: <20170913024844.10596-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] ocfs2-tools: fix compile error with glibc 2.26
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
X-List-Received-Date: Wed, 13 Sep 2017 02:50:12 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

When glibc upgrade to glibc-2.26.90-14, there was a compile error in fsck.ocfs2,
the compile error messages like,

In file included from /usr/include/string.h:431:0,
                 from ../include/ocfs2/ocfs2.h:41,
                 from pass4.c:32:
include/strings.h:37:1: error: unknown type name 'errcode_t'; did you mean 'mode_t'?
 errcode_t o2fsck_strings_insert(o2fsck_strings *strings, char *string,
 ^~~~~~~~~
 mode_t

Backport a patch to rename strings.h => o2fsck_strings.h

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 ...cfs2-fix-compile-error-when-glibc-upgrade.patch | 88 ++++++++++++++++++++++
 .../recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb   |  1 +
 2 files changed, 89 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-fix-compile-error-when-glibc-upgrade.patch

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-fix-compile-error-when-glibc-upgrade.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-fix-compile-error-when-glibc-upgrade.patch
new file mode 100644
index 0000000..5eb2a61
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-fix-compile-error-when-glibc-upgrade.patch
@@ -0,0 +1,88 @@
+From 0ffd58b223e24779420130522ea8ee359505f493 Mon Sep 17 00:00:00 2001
+From: Gang He <ghe@suse.com>
+Date: Mon, 4 Sep 2017 14:08:59 +0800
+Subject: [PATCH] fsck.ocfs2: fix compile error when glibc upgrade
+
+When glibc upgrade to glibc-2.26.90-14, there was a compile error in fsck.ocfs2,
+the compile error messages like,
+
+In file included from /usr/include/string.h:431:0,
+                 from ../include/ocfs2/ocfs2.h:41,
+                 from pass4.c:32:
+include/strings.h:37:1: error: unknown type name 'errcode_t'; did you mean 'mode_t'?
+ errcode_t o2fsck_strings_insert(o2fsck_strings *strings, char *string,
+ ^~~~~~~~~
+ mode_t
+
+
+Upstream-Status: Backport [https://github.com/markfasheh/ocfs2-tools/commit/0ffd58b223e24779420130522ea8ee359505f493]
+
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+---
+ fsck.ocfs2/Makefile                                | 2 +-
+ fsck.ocfs2/include/{strings.h => o2fsck_strings.h} | 0
+ fsck.ocfs2/pass2.c                                 | 2 +-
+ fsck.ocfs2/pass5.c                                 | 2 +-
+ fsck.ocfs2/strings.c                               | 2 +-
+ 5 files changed, 4 insertions(+), 4 deletions(-)
+ rename fsck.ocfs2/include/{strings.h => o2fsck_strings.h} (100%)
+
+diff --git a/fsck.ocfs2/Makefile b/fsck.ocfs2/Makefile
+index 051ed74..baf1994 100644
+--- a/fsck.ocfs2/Makefile
++++ b/fsck.ocfs2/Makefile
+@@ -64,7 +64,7 @@ HFILES = 	include/fsck.h		\
+ 		include/problem.h	\
+ 		include/refcount.h	\
+ 		include/slot_recovery.h	\
+-		include/strings.h	\
++		include/o2fsck_strings.h	\
+ 		include/util.h
+ 
+ 
+diff --git a/fsck.ocfs2/include/strings.h b/fsck.ocfs2/include/o2fsck_strings.h
+similarity index 100%
+rename from fsck.ocfs2/include/strings.h
+rename to fsck.ocfs2/include/o2fsck_strings.h
+diff --git a/fsck.ocfs2/pass2.c b/fsck.ocfs2/pass2.c
+index 181febb..a48a50b 100644
+--- a/fsck.ocfs2/pass2.c
++++ b/fsck.ocfs2/pass2.c
+@@ -43,7 +43,7 @@
+ #include "fsck.h"
+ #include "pass2.h"
+ #include "problem.h"
+-#include "strings.h"
++#include "o2fsck_strings.h"
+ #include "util.h"
+ 
+ static const char *whoami = "pass2";
+diff --git a/fsck.ocfs2/pass5.c b/fsck.ocfs2/pass5.c
+index 5c2d899..bfad1b7 100644
+--- a/fsck.ocfs2/pass5.c
++++ b/fsck.ocfs2/pass5.c
+@@ -40,7 +40,7 @@
+ #include "fsck.h"
+ #include "pass5.h"
+ #include "problem.h"
+-#include "strings.h"
++#include "o2fsck_strings.h"
+ #include "util.h"
+ 
+ static const char *whoami = "pass5";
+diff --git a/fsck.ocfs2/strings.c b/fsck.ocfs2/strings.c
+index 4ad3782..8a7a8d9 100644
+--- a/fsck.ocfs2/strings.c
++++ b/fsck.ocfs2/strings.c
+@@ -31,7 +31,7 @@
+ #include "ocfs2/ocfs2.h"
+ 
+ #include "fsck.h"
+-#include "strings.h"
++#include "o2fsck_strings.h"
+ #include "util.h"
+ 
+ struct string_entry {
+-- 
+2.7.4
+
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
index f40bfdf..9098fbf 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
@@ -15,6 +15,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 SRC_URI = "git://oss.oracle.com/git/ocfs2-tools.git \
     file://0003-vendor-common-o2cb.ocf-add-new-conf-file.patch \
     file://disable-ocfs2-stack-user-support.patch \
+    file://ocfs2-fix-compile-error-when-glibc-upgrade.patch \
     file://o2cb.service \
     file://ocfs2.service \
 "
-- 
2.11.0


