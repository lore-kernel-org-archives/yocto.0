Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC02BE00C49; Mon, 21 Nov 2016 07:42:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4428E009B1
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 07:42:50 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id a20so32221wme.2
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 07:42:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=IwUDg+9YSX3rqhGNsps0EDPz9B1juR+rtNi25sXivfk=;
	b=HszVEtP8LHEzKbfvXzhPzwd6mwEf2Dp5fy5zeSfZKTiVfcobwtJclHXDheu1sQGhIP
	MBb/aVjCFIGusSYJxEZ916CNvPo4ze5Udc0xVCfIHS3hW9Cn0hSDoC+Gar9X1eOITSBA
	O4EDmkiqrCLuKJ+/htHPbVsx/SZDu3xmpO2wZIJ59dvuLMVuIZ/cUCbpm/vbw1Z7WIhO
	MeLMR+4HSwi6TFLcd4XmxfZQstryc6FJ3wJ4O/ZJaeL4SgQLR12x+fEYm/0uvVjDlqy+
	bnOeQ/IwbyEOkuW0ayDQlE7BhwoAOyVP/oz9Hl4au8cTYgDzaQCry60ktsJ0S3Qm/Brh
	BOMQ==
X-Gm-Message-State: AKaTC00niXYx3/O0bSLAo0qdSk+Lfb+ti2g/ydyu0Z7qqvxYc8AgcnPEIxYx9BadvGf2dw==
X-Received: by 10.28.69.91 with SMTP id s88mr14516423wma.18.1479742968835;
	Mon, 21 Nov 2016 07:42:48 -0800 (PST)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	z6sm25596405wjt.24.2016.11.21.07.42.48 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 Nov 2016 07:42:48 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon, 21 Nov 2016 15:42:47 +0000
Message-Id: <20161121154247.14845-1-git@andred.net>
X-Mailer: git-send-email 2.10.2
MIME-Version: 1.0
Subject: [meta-swupd][PATCH] swupd-client: do out-of-tree builds
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
X-List-Received-Date: Mon, 21 Nov 2016 15:42:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <adraszik@tycoint.com>

Backport a patch that fixes out-of-tree builds, and at
the same time switch to using autotools.bbclass rather
than autotools-brokensep.bbclass

Signed-off-by: André Draszik <adraszik@tycoint.com>
---
 .../0001-build-allow-out-of-tree-builds.patch      | 57 ++++++++++++++++++++++
 recipes-core/swupd-client/swupd-client_git.bb      |  5 +-
 2 files changed, 59 insertions(+), 3 deletions(-)
 create mode 100644 recipes-core/swupd-client/swupd-client/0001-build-allow-out-of-tree-builds.patch

diff --git a/recipes-core/swupd-client/swupd-client/0001-build-allow-out-of-tree-builds.patch b/recipes-core/swupd-client/swupd-client/0001-build-allow-out-of-tree-builds.patch
new file mode 100644
index 0000000..ae7b8e0
--- /dev/null
+++ b/recipes-core/swupd-client/swupd-client/0001-build-allow-out-of-tree-builds.patch
@@ -0,0 +1,57 @@
+From aab90416caac1c581f0de6814b5e43491407bce4 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
+Date: Wed, 16 Nov 2016 10:55:23 +0000
+Subject: [PATCH] build: allow out of tree builds
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+When doing out-of-tree builds, the distributed
+scripts are in different directory than where
+the build is happening. This doesn't work:
+
+  make  install-exec-hook
+  make[2]: Entering directory '<builddir>'
+  perl scripts/findstatic.pl */*.o | grep -v Checking ||:
+  Can't open perl script "scripts/findstatic.pl": No such file or directory
+  make[2]: Leaving directory '<builddir>'
+
+We therefore need to give perl the full path
+of the perl-script to run using the standard
+automake variable top_srcdir:
+
+  make  install-exec-hook
+  make[2]: Entering directory '<builddir>'
+  perl ../../../../../../../../tmp/swupd-client.git/scripts/findstatic.pl */*.o | grep -v Checking ||:
+    'bin_paths' is unique to src/search.o, should be static?  (initialised variable)
+    'do_search' is unique to src/search.o, should be static?  (function)
+    'download_manifests' is unique to src/search.o, should be static?  (function)
+    'file_search' is unique to src/search.o, should be static?  (function)
+    'lib_paths' is unique to src/search.o, should be static?  (initialised variable)
+    'report_find' is unique to src/search.o, should be static?  (function)
+    'scope' is unique to src/search.o, should be static?  (initialised variable)
+    'search_type' is unique to src/search.o, should be static?  (initialised variable)
+  make[2]: Leaving directory '<builddir>'
+
+Signed-off-by: André Draszik <git@andred.net>
+---
+Upstream-Status: Backport [https://github.com/clearlinux/swupd-client/commit/b89d002a7d0f168354d9138207943b62138aa70a]
+ Makefile.am | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/Makefile.am b/Makefile.am
+index d485e00..f1a5b72 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -126,7 +126,7 @@ distclean-local:
+ 	rm -rf aclocal.m4 ar-lib autom4te.cache config.guess config.h.in config.h.in~ config.sub configure depcomp install-sh ltmain.sh m4 Makefile.in missing compile
+ 
+ install-exec-hook:
+-	perl scripts/findstatic.pl */*.o | grep -v Checking ||:
++	perl $(top_srcdir)/scripts/findstatic.pl */*.o | grep -v Checking ||:
+ 
+ 
+ TEST_EXTENSIONS = .bats
+-- 
+2.10.2
+
diff --git a/recipes-core/swupd-client/swupd-client_git.bb b/recipes-core/swupd-client/swupd-client_git.bb
index 8df89a1..fd4716f 100644
--- a/recipes-core/swupd-client/swupd-client_git.bb
+++ b/recipes-core/swupd-client/swupd-client_git.bb
@@ -11,6 +11,7 @@ SRC_URI = "\
     file://Change-systemctl-path-to-OE-systemctl-path.patch \
     file://0001-Add-configure-option-to-re-enable-updating-of-config.patch \
     file://Make-pinned-pubkey-configurable.patch \
+    file://0001-build-allow-out-of-tree-builds.patch \
 "
 SRCREV = "f4000c5b22be47ec1af2f8748fd71a36148b5dc4"
 
@@ -20,9 +21,7 @@ RDEPENDS_${PN}_append_class-target = " oe-swupd-helpers bsdtar"
 # We check /etc/os-release for the current OS version number
 RRECOMMENDS_${PN}_class-target = "os-release"
 
-# TODO: we inherit autotools-brokensep because the Makefile calls a perl script
-# in ${S} during one of its steps.
-inherit pkgconfig autotools-brokensep systemd
+inherit pkgconfig autotools systemd
 
 EXTRA_OECONF = "\
     --with-systemdsystemunitdir=${systemd_system_unitdir} \
-- 
2.10.2


