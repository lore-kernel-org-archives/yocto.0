Return-Path: <sujith.h@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 429B9E007A0; Wed, 13 Aug 2014 05:02:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,URIBL_BLACK
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sujith.h[at]gmail.com)
	*  1.7 URIBL_BLACK Contains an URL listed in the URIBL blacklist
	*      [URIs: configure.ac]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B522E00796
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 05:01:55 -0700 (PDT)
Received: by mail-pd0-f176.google.com with SMTP id y10so14312613pdj.21
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 05:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=zOFNJOjcqM8UOVy7ATCq9Nbmkc3YKLvvQQQqRswJZd0=;
	b=APlciMUYdPwEK5VQpswpoucMMRizwpg5qHjyWA1GhnAt/0cOe41OIGhnjK0QsKjpM9
	26tL1DDOXXoZF12Hp6KwPQDm86o3ZqyJ9ZuOtoWVYNRaRRaPPy68Ov+jASgY7hSWAPxs
	28M/MY3bKz8L4mnE/02bTTexBuRTXTTE3K8Q5NymonsP0QMkm3YFG9qC2FzPCda/t+42
	kGpJA3UJeDGxTMWQzwvBb19hOKOcd5PiMQ27smOvLLYg+VVCVs8c2Ys33fdSzZuO2Rxi
	yOkm0sagbkDLIIl8l/ObrohLsgmIpqk44sHvtK/6ChC/AF3FhdoxrAlePtL9ZspxdkKw
	gziA==
X-Received: by 10.66.100.200 with SMTP id fa8mr3624638pab.23.1407931314767;
	Wed, 13 Aug 2014 05:01:54 -0700 (PDT)
Received: from linux-z8xt.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id a5sm2804467pdp.38.2014.08.13.05.01.51
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Aug 2014 05:01:53 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Aug 2014 17:27:22 +0530
Message-Id: <1407931042-4223-1-git-send-email-sujith.h@gmail.com>
X-Mailer: git-send-email 1.8.4
Cc: Sujith H <Sujith_Haridasan@mentor.com>,
	Muzaffar Mahmood <muzaffar_mahmood@mentor.com>
Subject: [PATCH] Adding support for systemd and its service files
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
X-List-Received-Date: Wed, 13 Aug 2014 12:02:01 -0000

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


