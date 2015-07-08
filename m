Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 489E2E00A1C; Wed,  8 Jul 2015 09:10:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-03.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DB5AE0096A
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 09:10:42 -0700 (PDT)
X-Halon-ID: de772f41-258b-11e5-8f60-0050569116f7
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-03.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 18:10:36 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Wed,  8 Jul 2015 18:10:37 +0200
Message-Id: <74bf9251fa78b95a404da1e642b440b4310c48b6.1436366548.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1436366548.git.petter@technux.se>
References: <cover.1436366548.git.petter@technux.se>
In-Reply-To: <cover.1436366548.git.petter@technux.se>
References: <cover.1436366548.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 4/6] pi-blaster: bump to latest version
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
X-List-Received-Date: Wed, 08 Jul 2015 16:10:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Removed 'enable-autotools-support.patch' since it is included in latest
upstream. Also fix a cross compiling issue.

[Support #60]

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 ...ndle-install-data-hook-when-cross-compile.patch | 54 +++++++++++++++
 .../files/enable-autotools-support.patch           | 77 ----------------------
 recipes-devtools/pi-blaster/pi-blaster.inc         |  4 +-
 recipes-devtools/pi-blaster/pi-blaster_git.bb      |  2 +-
 4 files changed, 57 insertions(+), 80 deletions(-)
 create mode 100644 recipes-devtools/pi-blaster/files/0001-handle-install-data-hook-when-cross-compile.patch
 delete mode 100644 recipes-devtools/pi-blaster/files/enable-autotools-support.patch

diff --git a/recipes-devtools/pi-blaster/files/0001-handle-install-data-hook-when-cross-compile.patch b/recipes-devtools/pi-blaster/files/0001-handle-install-data-hook-when-cross-compile.patch
new file mode 100644
index 0000000..2f2a7f4
--- /dev/null
+++ b/recipes-devtools/pi-blaster/files/0001-handle-install-data-hook-when-cross-compile.patch
@@ -0,0 +1,54 @@
+From 28e4bc3216f8845cf278f0fbc6b2c30eebcc35aa Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
+Date: Sun, 7 Jun 2015 17:17:01 +0200
+Subject: [PATCH] handle install-data-hook when cross compile
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Avoid doing 'install-data-hook' when cross compiling since it isn't
+suitable to update rc.d or run the service when cross
+compiling.
+
+Upstream-Status: Pending
+
+Signed-off-by: Petter Mabäcker <petter@technux.se>
+---
+ Makefile.am  | 4 +++-
+ configure.ac | 1 +
+ 2 files changed, 4 insertions(+), 1 deletion(-)
+
+diff --git a/Makefile.am b/Makefile.am
+index 6693d46..935288f 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -13,6 +13,7 @@ else
+ init_ddir = $(sysconfdir)/init.d
+ init_d_SCRIPTS = pi-blaster.boot.sh
+ 
++if !CROSS_COMPILING
+ install-data-hook:
+ 	update-rc.d pi-blaster.boot.sh defaults
+ 	$(init_ddir)/pi-blaster.boot.sh start
+@@ -20,4 +21,5 @@ install-data-hook:
+ uninstall-hook:
+ 	update-rc.d pi-blaster.boot.sh remove
+ 	killall pi-blaster
+-endif
++endif # !CROSS_COMPILING
++endif # !HAVE_SYSTEMD
+diff --git a/configure.ac b/configure.ac
+index 5d0c1fa..aaf4465 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -23,6 +23,7 @@ if test "x$with_systemdsystemunitdir" != xno; then
+  AC_SUBST([systemdsystemunitdir], [$with_systemdsystemunitdir])
+ fi
+ AM_CONDITIONAL(HAVE_SYSTEMD, [test -n "$with_systemdsystemunitdir" -a "x$with_systemdsystemunitdir" != xno ])
++AM_CONDITIONAL(CROSS_COMPILING, [test x"$cross_compiling" = x"yes" ])
+ 
+ # Checks for programs.
+ AC_PROG_CC
+-- 
+1.9.1
+
diff --git a/recipes-devtools/pi-blaster/files/enable-autotools-support.patch b/recipes-devtools/pi-blaster/files/enable-autotools-support.patch
deleted file mode 100644
index f0d4958..0000000
--- a/recipes-devtools/pi-blaster/files/enable-autotools-support.patch
+++ /dev/null
@@ -1,77 +0,0 @@
-Add autotools configuration files to simplify cross-compilation
-
-Upstream-Status: Submitted [https://github.com/sarfata/pi-blaster/pull/25]
-
-Signed-off-by: Alex Lennon <ajlennon@dynamicdevices.co.uk>
-
-diff -Nur git.org/Makefile git.new/Makefile
---- git.org/Makefile	2014-06-11 15:42:26.490930706 +0100
-+++ git.new/Makefile	1970-01-01 01:00:00.000000000 +0100
-@@ -1,23 +0,0 @@
--.PHONY: all
--all:	pi-blaster
--
--REVISION=$(shell egrep -q '000f$$' /proc/cpuinfo && echo 2 || echo 1)
--
--pi-blaster:	pi-blaster.c
--	gcc -Wall -g -O2 -o $@ $< -DREVISION=$(REVISION)
--
--clean:
--	rm -f pi-blaster
--
--install: pi-blaster
--	cp -f pi-blaster.boot.sh /etc/init.d/pi-blaster
--	chmod +x /etc/init.d/pi-blaster
--	cp -f pi-blaster /usr/sbin/pi-blaster
--	update-rc.d pi-blaster defaults
--	/etc/init.d/pi-blaster start
--	
--uninstall:
--	-/etc/init.d/pi-blaster stop
--	rm /usr/sbin/pi-blaster
--	rm /etc/init.d/pi-blaster
--	update-rc.d pi-blaster remove
-diff -Nur git.org/Makefile.am git.new/Makefile.am
---- git.org/Makefile.am	1970-01-01 01:00:00.000000000 +0100
-+++ git.new/Makefile.am	2014-06-11 15:40:16.562930372 +0100
-@@ -0,0 +1,9 @@
-+AUTOMAKE_OPTIONS = foreign
-+
-+CFLAGS = -Wall -pedantic
-+
-+sbin_PROGRAMS = pi-blaster
-+pi_blaster_SOURCES = pi-blaster.c
-+
-+init_ddir = $(sysconfdir)/init.d
-+init_d_SCRIPTS = pi-blaster.boot.sh
-diff -Nur git.org/autogen.sh git.new/autogen.sh
---- git.org/autogen.sh	1970-01-01 01:00:00.000000000 +0100
-+++ git.new/autogen.sh	2014-06-11 15:35:57.798929684 +0100
-@@ -0,0 +1,9 @@
-+#!/bin/sh
-+
-+echo "Generating configure files... may take a while."
-+
-+autoreconf --install --force && \
-+  echo "Preparing was successful if there was no error messages above." && \
-+  echo "Now type:" && \
-+  echo "  ./configure && make"  && \
-+  echo "Run './configure --help' for more information"
-diff -Nur git.org/configure.ac git.new/configure.ac
---- git.org/configure.ac	1970-01-01 01:00:00.000000000 +0100
-+++ git.new/configure.ac	2014-06-11 15:35:53.154929717 +0100
-@@ -0,0 +1,14 @@
-+#                                               -*- Autoconf -*-
-+# Process this file with autoconf to produce a configure script.
-+
-+AC_PREREQ([2.69])
-+AC_INIT(pi-blaster, 0.1.0)
-+AC_CONFIG_SRCDIR([pi-blaster.c])
-+AC_CONFIG_HEADERS([config.h])
-+AM_INIT_AUTOMAKE
-+
-+# Checks for programs.
-+AC_PROG_CC
-+
-+AC_CONFIG_FILES([Makefile])
-+AC_OUTPUT
diff --git a/recipes-devtools/pi-blaster/pi-blaster.inc b/recipes-devtools/pi-blaster/pi-blaster.inc
index 04a7b5e..1f4cc2f 100644
--- a/recipes-devtools/pi-blaster/pi-blaster.inc
+++ b/recipes-devtools/pi-blaster/pi-blaster.inc
@@ -2,11 +2,11 @@ DESCRIPTION = "This project enables PWM on the GPIO pins you request of a Raspbe
 HOMEPAGE = "https://github.com/sarfata/pi-blaster/"
 SECTION = "devel/libs"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://README.md;beginline=138;endline=151;md5=e0f0f92050a87a160939707c60940307"
+LIC_FILES_CHKSUM = "file://README.md;beginline=157;endline=170;md5=f20832f31126609af5a7bf2340014540"
 
 SRC_URI = "git://github.com/sarfata/pi-blaster \
-           file://enable-autotools-support.patch \
            file://remove-initscript-lsb-dependency.patch \
+           file://0001-handle-install-data-hook-when-cross-compile.patch \
 "
 
 S = "${WORKDIR}/git"
diff --git a/recipes-devtools/pi-blaster/pi-blaster_git.bb b/recipes-devtools/pi-blaster/pi-blaster_git.bb
index 25eb382..3ae7c49 100644
--- a/recipes-devtools/pi-blaster/pi-blaster_git.bb
+++ b/recipes-devtools/pi-blaster/pi-blaster_git.bb
@@ -1,3 +1,3 @@
 require pi-blaster.inc
 
-SRCREV = "177cef81774d6df5c6284c198ff818515281db14"
+SRCREV = "cd318cd63031a30249a4c08435b97263fa76d7b7"
-- 
1.9.1


