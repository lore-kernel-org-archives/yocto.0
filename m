Return-Path: <sujith.h@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03982E00809; Wed, 13 Aug 2014 05:03:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,URIBL_BLACK
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.7 URIBL_BLACK Contains an URL listed in the URIBL
	blacklist *      [URIs: configure.ac]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sujith.h[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 904E7E007D5
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 05:03:29 -0700 (PDT)
Received: by mail-pa0-f43.google.com with SMTP id lf10so14829190pab.2
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 05:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=zOFNJOjcqM8UOVy7ATCq9Nbmkc3YKLvvQQQqRswJZd0=;
	b=hOOnphaHLIyNk3Rjy0cIbWCRgReABb86W2pUV89l3x8Y2AtKqaXFpxPaYCEWptto2k
	4yT+8eZpSNUg6Qe9aLm2RM9wgXbYbuMm9VXAz8TIvtA9f5aLr3S4gF0dBp8vsrdl3MiW
	hfoq1byFNQOpNT+Ggc3xaVyQd+//ssN7jIxnSVkUK7Bg8tCuBbALEEt1ILtBBIRsempP
	Yg4mynB61Lz4963U1+wcEKUXmbrPWhHQorWjs2sDRF3sXrxoHL3iUgk8p+7YlOKdP6R6
	dnKzq3Rky+PEJLZkzaSBQWdFEMBeA9Zs7WNkZxEnkv92aIwrTEz2raQcEzvoNock8fcy
	Jnhw==
X-Received: by 10.70.91.167 with SMTP id cf7mr3667058pdb.3.1407931409681;
	Wed, 13 Aug 2014 05:03:29 -0700 (PDT)
Received: from linux-z8xt.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id mn2sm1923482pbc.64.2014.08.13.05.03.26
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Aug 2014 05:03:28 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Aug 2014 17:28:59 +0530
Message-Id: <1407931139-4286-1-git-send-email-sujith.h@gmail.com>
X-Mailer: git-send-email 1.8.4
Cc: Sujith H <Sujith_Haridasan@mentor.com>,
	Muzaffar Mahmood <muzaffar_mahmood@mentor.com>
Subject: [psplash][PATCH] Adding support for systemd and its service files
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
X-List-Received-Date: Wed, 13 Aug 2014 12:03:46 -0000

From: Sujith H <Sujith_Haridasan@mentor.com>

Signed-off-by: Muzaffar Mahmood <muzaffar_mahmood@mentor.com>
Signed-off-by: Sujith H <sujith.h@gmail.com>
---
 Makefile.am              |  8 +++++++-
 configure.ac             | 23 ++++++++++++++++++++++-
 psplash-quit.service.in  | 11 +++++++++++
 psplash-start.service.in | 11 +++++++++++
 4 files changed, 51 insertions(+), 2 deletions(-)
 create mode 100644 psplash-quit.service.in
 create mode 100644 psplash-start.service.in

diff --git a/Makefile.am b/Makefile.am
index c90ebfa..786b3ce 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -11,8 +11,14 @@ psplash_write_SOURCES = psplash-write.c psplash.h
 
 EXTRA_DIST = make-image-header.sh
  
-MAINTAINERCLEANFILES = aclocal.m4 compile config.guess config.sub configure depcomp install-sh ltmain.sh Makefile.in missing
+MAINTAINERCLEANFILES = aclocal.m4 compile config.guess config.sub configure depcomp install-sh ltmain.sh Makefile.in missing psplash-quit.service  psplash-start.service
 
 snapshot:
 	$(MAKE) dist distdir=$(PACKAGE)-snap`date +"%Y%m%d"`
 
+if SYSTEMD
+systemdunitdir = @SYSTEMD_UNITDIR@
+
+systemdunit_DATA = psplash-quit.service  psplash-start.service
+endif
+
diff --git a/configure.ac b/configure.ac
index 1284833..a44c8d4 100644
--- a/configure.ac
+++ b/configure.ac
@@ -15,6 +15,27 @@ fi
 
 AC_SUBST(GCC_FLAGS)
 
+# Check for pkg-config manually first, as if its not installed the
+# PKG_PROG_PKG_CONFIG macro won't be defined.
+AC_CHECK_PROG(have_pkg_config, pkg-config, yes, no)
+
+if test x"$have_pkg_config" = "xno"; then
+    AC_MSG_ERROR(pkg-config is required to install this program)
+fi
+
+#
+# systemd
+#
+AC_ARG_WITH([systemdunitdir], AC_HELP_STRING([--with-systemdunitdir=DIR],
+        [path to systemd service directory]), [path_systemdunit=${withval}],
+                [path_systemdunit="`$PKG_CONFIG --variable=systemdsystemunitdir systemd`"])
+if (test -n "${path_systemdunit}"); then
+        SYSTEMD_UNITDIR="${path_systemdunit}"
+        AC_SUBST(SYSTEMD_UNITDIR)
+fi
+AM_CONDITIONAL(SYSTEMD, test -n "${path_systemdunit}")
+
 AC_OUTPUT([
-Makefile
+Makefile psplash-quit.service  psplash-start.service
 ])
+
diff --git a/psplash-quit.service.in b/psplash-quit.service.in
new file mode 100644
index 0000000..14bd499
--- /dev/null
+++ b/psplash-quit.service.in
@@ -0,0 +1,11 @@
+[Unit]
+Description=Terminate Psplash Boot Screen
+After=psplash-start.service
+
+[Service]
+Type=oneshot
+ExecStart=/usr/bin/psplash-write QUIT
+TimeoutSec=20
+
+[Install]
+WantedBy=multi-user.target
diff --git a/psplash-start.service.in b/psplash-start.service.in
new file mode 100644
index 0000000..502b150
--- /dev/null
+++ b/psplash-start.service.in
@@ -0,0 +1,11 @@
+[Unit]
+Description=Starts Psplash Boot screen
+Wants=systemd-vconsole-setup.service
+After=systemd-vconsole-setup.service systemd-udev-trigger.service systemd-udevd.service
+DefaultDependencies=no
+
+[Service]
+ExecStart=/usr/bin/psplash
+
+[Install]
+WantedBy=sysinit.target
-- 
1.8.4


