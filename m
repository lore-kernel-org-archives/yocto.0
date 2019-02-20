Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB066E00BB7; Wed, 20 Feb 2019 13:14:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59EA2E006D8
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 13:14:21 -0800 (PST)
Received: by mail-it1-f196.google.com with SMTP id d125so7545179ith.1
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 13:14:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=KIPwS6Y8Dmt0rTH8hTFa5chbt/W5WXUUGwtAWPSk3/Q=;
	b=oNdKhycJAVXfIPGF05fVjfNwS/U7phddMnWOt2gzkiXOqbBouVms4E9JvC9mLvFf8S
	EWBTXD0BZcTsf5Pn8YVy/NlDlJgaXDQ1DB0MZnrXh2P0WR0yPx0GjknIySCS5ZS7kcuT
	kkgQJX4nThBS2KBnQCApLdM4fjlTH+VopLEMqqQCstaZTx+7z5tkCGJKU3bPnMTZ3MD1
	w/dxolJ58/ikql3pPSU4HDnARWbLxaLfNN2xr8UKUbMjXVRZn9umRfDCq3tmf8rOu8s0
	r5oe3mUyYDJcOfdU0TYMXouUSH0q7wGaVP5VXZDjPf7/HDOM5hnivB3k6P9hC6/K8cMZ
	B5vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=KIPwS6Y8Dmt0rTH8hTFa5chbt/W5WXUUGwtAWPSk3/Q=;
	b=oEhxgOsqtGpkfeQSOq9qw3yIZLMYkydrwwbmHwGKN34Ho/W4qkfFDEyggmrpFbdthK
	UxcPbgyY2Z36ifPtJ8dz2xLuH9V7xTr+txaTaKgYyDB/C3WP4RBWKpSqFD+DlUyoSPir
	yDVPSfqzBwqJypQJD8UZKm1Ww5Gab6huqDFYlG6UKWRtG/FfEzO3A1GAXCujpQv+FPHb
	a86QPJmqWtHfDo/a91VrN+bVwFeVD+78WpzNMfsvXFOFO9a3HV0HmM/mbj3g6wlKBWKe
	NmISUiELQIEasW7lkYJLGqIyvjk5Apm87J7Z7PF6QqmtRnDrS2nE2pAm8n/A4F0Bc5Zq
	e8ww==
X-Gm-Message-State: AHQUAuaWMbRh0STfdN/McE5qoA+DdGnlxn3yCdDbJVRXVcE/aUIAHpmk
	yiffmyJ0WYE/ksfMNmDOoADE+zky
X-Google-Smtp-Source: AHgI3IZOzkdhk7Z3bGmew5pf+alT/Ve0I69RWUHIje/GZkcQtQSxlnxS7WkjJzlHfeVJ/EsoghsJBA==
X-Received: by 2002:a6b:4001:: with SMTP id k1mr24018048ioa.34.1550697260510; 
	Wed, 20 Feb 2019 13:14:20 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id n4sm5221694ioa.26.2019.02.20.13.14.19
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 20 Feb 2019 13:14:19 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 20 Feb 2019 15:14:17 -0600
Message-Id: <20190220211417.22113-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190220180643.4112-1-JPEWhacker@gmail.com>
References: <20190220180643.4112-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH] diffutils: Upgrade to 3.7
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
X-List-Received-Date: Wed, 20 Feb 2019 21:14:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Upgrade diffutils from 3.6 to 3.7. The upstream made several fixes so
the local patches are no longer necessary, but the gnulib-tests need to
be dropped since they do not compile properly. Since there are no more
local patches, the bbappend can be made to match all versions.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 .../diffutils/diffutils/sdiff-no-kill.patch   | 32 -------------------
 .../diffutils/diffutils_%.bbappend            | 14 ++++++++
 .../diffutils/diffutils_3.6.bbappend          | 18 -----------
 3 files changed, 14 insertions(+), 50 deletions(-)
 delete mode 100644 recipes-extended/diffutils/diffutils/sdiff-no-kill.patch
 create mode 100644 recipes-extended/diffutils/diffutils_%.bbappend
 delete mode 100644 recipes-extended/diffutils/diffutils_3.6.bbappend

diff --git a/recipes-extended/diffutils/diffutils/sdiff-no-kill.patch b/recipes-extended/diffutils/diffutils/sdiff-no-kill.patch
deleted file mode 100644
index c9fbc24..0000000
--- a/recipes-extended/diffutils/diffutils/sdiff-no-kill.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-Upstream-Status: Backport
-Signed-off-by: Ross Burton <ross.burton@intel.com>
-
-From 56225ecca4f9598c0c9dbd7c46a51dd4816a383f Mon Sep 17 00:00:00 2001
-From: Paul Eggert <eggert@cs.ucla.edu>
-Date: Fri, 20 Apr 2018 13:39:15 -0700
-Subject: sdiff: port to mingw
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-Problem reported by Ross Burton (Bug#31218).
-* src/sdiff.c (checksigs): Use ‘raise’, not ‘kill’.
----
- src/sdiff.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/src/sdiff.c b/src/sdiff.c
-index 1b23a0c..b08bc74 100644
---- a/src/sdiff.c
-+++ b/src/sdiff.c
-@@ -805,7 +805,7 @@ checksigs (void)
- 
-       /* Yield an exit status indicating that a signal was received.  */
-       untrapsig (s);
--      kill (getpid (), s);
-+      raise (s);
- 
-       /* That didn't work, so exit with error status.  */
-       exit (EXIT_TROUBLE);
--- 
-cgit v1.0-41-gc330
diff --git a/recipes-extended/diffutils/diffutils_%.bbappend b/recipes-extended/diffutils/diffutils_%.bbappend
new file mode 100644
index 0000000..2c54a55
--- /dev/null
+++ b/recipes-extended/diffutils/diffutils_%.bbappend
@@ -0,0 +1,14 @@
+FILESEXTRAPATHS_prepend_mingw32 := "${THISDIR}/${BPN}:"
+
+# Add some definitions for POSIX signals..
+CFLAGS_append_mingw32 = " -DSIGALRM=14 -DSIGHUP=1 -DSIGQUIT=3 -DSIGPIPE=13 -DSIGTSTP=18 -DSIGSTOP=17 "
+
+do_configure_prepend_mingw32 () {
+    # Remove building of "man" and "gnulib-tests". The tests don't
+    # cross-compile for mingw, but we aren't using them anyway
+    sed -i \
+        -e 's:^SUBDIRS =\(.*\) man\>:SUBDIRS = \1 :g' \
+        -e 's:^SUBDIRS =\(.*\) gnulib-tests\>:SUBDIRS = \1 :g' \
+        ${S}/Makefile.am
+}
+
diff --git a/recipes-extended/diffutils/diffutils_3.6.bbappend b/recipes-extended/diffutils/diffutils_3.6.bbappend
deleted file mode 100644
index f301349..0000000
--- a/recipes-extended/diffutils/diffutils_3.6.bbappend
+++ /dev/null
@@ -1,18 +0,0 @@
-
-FILESEXTRAPATHS_prepend_mingw32 := "${THISDIR}/${BPN}:"
-
-SRC_URI_remove_mingw32 = "file://0001-explicitly-disable-replacing-getopt.patch"
-SRC_URI_append_mingw32 = " file://sdiff-no-kill.patch"
-
-CACHED_CONFIGUREVARS_append_mingw32 = " ac_cv_header_getopt_h=yes "
-
-# Add some definitions for POSIX signals..
-CFLAGS_append_mingw32 = " -DSIGALRM=14 -DSIGHUP=1 -DSIGQUIT=3 -DSIGPIPE=13 -DSIGTSTP=18 -DSIGSTOP=17 "
-
-do_configure_prepend_mingw32 () {
-    # Remove building of "man"
-    sed -i -e 's:^SUBDIRS = lib src tests doc man po gnulib-test:SUBDIRS = lib src tests doc po gnulib-test:g' ${S}/Makefile.am
-}
-
-
-
-- 
2.20.1


