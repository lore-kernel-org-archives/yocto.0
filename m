Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3413E00B52; Thu, 27 Aug 2015 23:27:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.74.38.227 listed in list.dnswl.org]
Received: from bin-vsp-out-04.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE5C1E0086D
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2015 23:27:12 -0700 (PDT)
X-Halon-ID: cfeb1fc0-4d4d-11e5-b213-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Fri, 28 Aug 2015 08:27:09 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Fri, 28 Aug 2015 08:27:16 +0200
Message-Id: <f2a71b6959484f9a6d4c60bb28b7b47b13f57607.1440742765.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1440742765.git.petter@technux.se>
References: <cover.1440742765.git.petter@technux.se>
In-Reply-To: <cover.1440742765.git.petter@technux.se>
References: <cover.1440742765.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/1] pi-blaster: Bump SRCREV
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
X-List-Received-Date: Fri, 28 Aug 2015 06:27:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Update to latest revision in order to get rid of the integration patch
'0001-handle-install-data-hook-when-cross-compile.patch' that has been
submitted upstream.

Changes since cd318cd63031a30249a4c08435b97263fa76d7b7:
  bce7c1b Merge pull request #45 from Technux/dev/technux
  74510ff Display an error message if unable to open mbox
  53197ca handle install-data-hook when cross compile

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 ...ndle-install-data-hook-when-cross-compile.patch | 54 ----------------------
 recipes-devtools/pi-blaster/pi-blaster.inc         |  1 -
 recipes-devtools/pi-blaster/pi-blaster_git.bb      |  2 +-
 3 files changed, 1 insertion(+), 56 deletions(-)
 delete mode 100644 recipes-devtools/pi-blaster/files/0001-handle-install-data-hook-when-cross-compile.patch

diff --git a/recipes-devtools/pi-blaster/files/0001-handle-install-data-hook-when-cross-compile.patch b/recipes-devtools/pi-blaster/files/0001-handle-install-data-hook-when-cross-compile.patch
deleted file mode 100644
index 2f2a7f4..0000000
--- a/recipes-devtools/pi-blaster/files/0001-handle-install-data-hook-when-cross-compile.patch
+++ /dev/null
@@ -1,54 +0,0 @@
-From 28e4bc3216f8845cf278f0fbc6b2c30eebcc35aa Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
-Date: Sun, 7 Jun 2015 17:17:01 +0200
-Subject: [PATCH] handle install-data-hook when cross compile
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-Avoid doing 'install-data-hook' when cross compiling since it isn't
-suitable to update rc.d or run the service when cross
-compiling.
-
-Upstream-Status: Pending
-
-Signed-off-by: Petter Mabäcker <petter@technux.se>
----
- Makefile.am  | 4 +++-
- configure.ac | 1 +
- 2 files changed, 4 insertions(+), 1 deletion(-)
-
-diff --git a/Makefile.am b/Makefile.am
-index 6693d46..935288f 100644
---- a/Makefile.am
-+++ b/Makefile.am
-@@ -13,6 +13,7 @@ else
- init_ddir = $(sysconfdir)/init.d
- init_d_SCRIPTS = pi-blaster.boot.sh
- 
-+if !CROSS_COMPILING
- install-data-hook:
- 	update-rc.d pi-blaster.boot.sh defaults
- 	$(init_ddir)/pi-blaster.boot.sh start
-@@ -20,4 +21,5 @@ install-data-hook:
- uninstall-hook:
- 	update-rc.d pi-blaster.boot.sh remove
- 	killall pi-blaster
--endif
-+endif # !CROSS_COMPILING
-+endif # !HAVE_SYSTEMD
-diff --git a/configure.ac b/configure.ac
-index 5d0c1fa..aaf4465 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -23,6 +23,7 @@ if test "x$with_systemdsystemunitdir" != xno; then
-  AC_SUBST([systemdsystemunitdir], [$with_systemdsystemunitdir])
- fi
- AM_CONDITIONAL(HAVE_SYSTEMD, [test -n "$with_systemdsystemunitdir" -a "x$with_systemdsystemunitdir" != xno ])
-+AM_CONDITIONAL(CROSS_COMPILING, [test x"$cross_compiling" = x"yes" ])
- 
- # Checks for programs.
- AC_PROG_CC
--- 
-1.9.1
-
diff --git a/recipes-devtools/pi-blaster/pi-blaster.inc b/recipes-devtools/pi-blaster/pi-blaster.inc
index 1f4cc2f..a3beccc 100644
--- a/recipes-devtools/pi-blaster/pi-blaster.inc
+++ b/recipes-devtools/pi-blaster/pi-blaster.inc
@@ -6,7 +6,6 @@ LIC_FILES_CHKSUM = "file://README.md;beginline=157;endline=170;md5=f20832f311266
 
 SRC_URI = "git://github.com/sarfata/pi-blaster \
            file://remove-initscript-lsb-dependency.patch \
-           file://0001-handle-install-data-hook-when-cross-compile.patch \
 "
 
 S = "${WORKDIR}/git"
diff --git a/recipes-devtools/pi-blaster/pi-blaster_git.bb b/recipes-devtools/pi-blaster/pi-blaster_git.bb
index 3ae7c49..01a55ca 100644
--- a/recipes-devtools/pi-blaster/pi-blaster_git.bb
+++ b/recipes-devtools/pi-blaster/pi-blaster_git.bb
@@ -1,3 +1,3 @@
 require pi-blaster.inc
 
-SRCREV = "cd318cd63031a30249a4c08435b97263fa76d7b7"
+SRCREV = "bce7c1b4c53b0dd12665e46bdebd3b7cb0987e3d"
-- 
1.9.1


