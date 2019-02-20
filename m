Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B35E8E00CB6; Wed, 20 Feb 2019 10:07:25 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ECB5E00B5C
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 10:06:52 -0800 (PST)
Received: by mail-it1-f196.google.com with SMTP id v72so17804439itc.0
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 10:06:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Y7JD+fqbTW+lmFqwsrvu51GL0sPjuogkb3MZb5usdUI=;
	b=RF9Tliljx7TkejqhwtOTccaiNIBS12kLQlGt9cez6cvn5uHq+IMx4TzWSYh/xWwvud
	jr6zBwmPiK6/VkSrgwnHJAdGYgrzNZh1laC00DLhIRGNzCFg+Zr1r25Talc560TTXppu
	jcEUSHIfSSJ+lSH6W+iZSL0se2+CAqoG665WiMa0RHOhlanb2CJFaPU88w+se4iihMwC
	rouq/L1KGnZvs4oeFBskU0QSd7EFs8D5rmG43bJgCQzMM8J7If2TmkjkUwCslV1T86xa
	XfhiN12jNgefuu3B2vbodpjIRX4Y/2YgmIX1HEVFTVNLrJ/6KlvsIM3nOg4ibL/B5bOw
	5NVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Y7JD+fqbTW+lmFqwsrvu51GL0sPjuogkb3MZb5usdUI=;
	b=TlTm7yyX/cevXAuzph4qsgEqGjsfgvGtrdrrx0oXNxgjn3iEfredldzYdDSLVTQqh9
	VQ35rVuEivP+4o65eAoz+09k+0bw74hY6GZzYWXPK+li/gnPp7gKa9axKR3b0kDPgp/e
	VZUL+iorPovPrR7IrSli34ilahJ3zYl6rBw/x3III8xXFbor44Y99SpaSfvOwhAA+EyU
	MWQfID3kYthSxyMR8h8QMwIaAyIWqmHz/T1q/qTkzv5ZI/JN79K466GLeTghgzViwZhC
	AIAMowFMHjVqP+Un+/clqC9nqsR8UK3APgTUPsQkQZN4elNw/6ifPgTloeA05wG8mj7J
	WRIA==
X-Gm-Message-State: AHQUAuZJQXpvOGXHi616UqCdZPRA/LEWMzedI311AuBxOYZwl+lT5i8k
	QZ2SANw7oKhs7IycidAsBoWJNtSa
X-Google-Smtp-Source: AHgI3IacUFjQ96LbCX/2Ol+d3b/5zrtL2j6/Xf/rhgQqPqK/kgixFBs+YfQV7fiX0r/n8K8GmzZuyA==
X-Received: by 2002:a6b:7a48:: with SMTP id k8mr19509739iop.192.1550686011337; 
	Wed, 20 Feb 2019 10:06:51 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	w13sm3198324itb.10.2019.02.20.10.06.50
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 20 Feb 2019 10:06:50 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 20 Feb 2019 12:06:43 -0600
Message-Id: <20190220180643.4112-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.20.1
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
X-List-Received-Date: Wed, 20 Feb 2019 18:07:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Upgrade diffutils from 3.6 to 3.7. The upstream made several fixes so
the local patches are no longer necessary, but the gnulib-tests need to
be dropped since they do not compile properly

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 .../diffutils/diffutils/sdiff-no-kill.patch   | 32 -------------------
 .../diffutils/diffutils_3.6.bbappend          | 18 -----------
 .../diffutils/diffutils_3.7.bbappend          | 14 ++++++++
 3 files changed, 14 insertions(+), 50 deletions(-)
 delete mode 100644 recipes-extended/diffutils/diffutils/sdiff-no-kill.patch
 delete mode 100644 recipes-extended/diffutils/diffutils_3.6.bbappend
 create mode 100644 recipes-extended/diffutils/diffutils_3.7.bbappend

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
diff --git a/recipes-extended/diffutils/diffutils_3.7.bbappend b/recipes-extended/diffutils/diffutils_3.7.bbappend
new file mode 100644
index 0000000..2c54a55
--- /dev/null
+++ b/recipes-extended/diffutils/diffutils_3.7.bbappend
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
-- 
2.20.1


