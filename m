Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B980E00D4E; Mon,  2 Sep 2019 02:39:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82B37E00890
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2019 02:39:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x829dIXE009502
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 2 Sep 2019 02:39:18 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Mon, 2 Sep 2019 02:39:18 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 2 Sep 2019 17:38:54 +0800
Message-ID: <1567417134-282605-3-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567417134-282605-1-git-send-email-changqing.li@windriver.com>
References: <1567417134-282605-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] pacemaker: upgrade 1.1.19 -> 1.1.21
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
X-List-Received-Date: Mon, 02 Sep 2019 09:39:20 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

License-Update:  update e-mail address and URL

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 ...o-not-execute-target-program-while-cross-.patch | 25 ++++++++++++----------
 .../{pacemaker_1.1.19.bb => pacemaker_1.1.21.bb}   |  6 ++++--
 2 files changed, 18 insertions(+), 13 deletions(-)
 rename meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_1.1.19.bb => pacemaker_1.1.21.bb} (95%)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program-while-cross-.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program-while-cross-.patch
index e749f9a..b600fec 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program-while-cross-.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program-while-cross-.patch
@@ -1,41 +1,44 @@
-From e8c4b9d98ef15aa7fb02a68b1d7fe9c008cc8bfd Mon Sep 17 00:00:00 2001
-From: Bian Naimeng <biannm@cn.fujitsu.com>
-Date: Mon, 6 Jul 2015 12:20:17 +0900
+From 6d59090df5856d32163f256912ddf1c897590447 Mon Sep 17 00:00:00 2001
+From: Changqing Li <changqing.li@windriver.com>
+Date: Wed, 21 Aug 2019 13:12:13 +0800
 Subject: [PATCH] pacemaker: do not execute target program while cross compile
 
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
 
+refresh patch to new version 1.1.21
+Signed-off-by: Changqing Li <changqing.li@windriver.com>
 ---
  Makefile.common | 8 +++++---
  1 file changed, 5 insertions(+), 3 deletions(-)
 
 diff --git a/Makefile.common b/Makefile.common
-index d73ad04..8973f91 100644
+index 469417f..9f19a53 100644
 --- a/Makefile.common
 +++ b/Makefile.common
-@@ -36,6 +36,8 @@ if BUILD_HELP
+@@ -36,18 +36,20 @@ if BUILD_HELP
  man8_MANS		= $(sbin_PROGRAMS:%=%.8) $(sbin_SCRIPTS:%=%.8)
  endif
  
-+man7_MANS		=
+++man7_MANS              =
 +
  %.8:	% $(MAN8DEPS)
  	chmod a+x $(abs_builddir)/$<
- 	$(PCMK_V)  PATH=$(abs_builddir):$$PATH $(abs_builddir)/$< --help
-@@ -43,13 +45,13 @@ endif
  	$(AM_V_MAN)PATH=$(abs_builddir):$$PATH $(HELP2MAN) --output $@ --no-info --section 8 --name "Part of the Pacemaker cluster resource manager" $(abs_builddir)/$<
  
  %.xml:  %
 -	$(AM_V_GEN)$(abs_builddir)/$< metadata > $@
-+	@echo "xml for $<: Do not try to execute target program here"
++        @echo "xml for $<: Do not try to execute target program here"
  
  %.dbook: %.xml
 -	$(AM_V_XSL)$(XSLTPROC) --nonet --novalid --stringparam man.name $* $(DBOOK_OPTS) $(top_srcdir)/xml/ocf-meta2man.xsl $(abs_builddir)/$< > $(abs_builddir)/$@
-+	@echo "dbook for $<: Do not try to execute target program here"
++        @echo "dbook for $<: Do not try to execute target program here"
  
  %.7:	%.dbook
 -	$(AM_V_XSL)$(XSLTPROC) $(MANPAGE_XSLT) $(abs_builddir)/$< $(PCMK_quiet)
-+	@echo "man7 for $<: Do not try to execute target program here"
++        @echo "man7 for $<: Do not try to execute target program here"
  
  # Build docbook from asciidoc because XML is a PITA to edit
  #
+-- 
+2.7.4
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.19.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
similarity index 95%
rename from meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.19.bb
rename to meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
index a7c38df..feed53d 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.19.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
@@ -9,7 +9,7 @@ check resource health."
 HOMEPAGE = "http://www.clusterlabs.org"
 
 LICENSE = "GPLv2+ & LGPLv2.1+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=19a64afd3a35d044a80579d7aafc30ff"
+LIC_FILES_CHKSUM = "file://COPYING;md5=000212f361a81b100d9d0f0435040663"
 
 DEPENDS = "corosync libxslt libxml2 gnutls resource-agents libqb python-native"
 
@@ -28,12 +28,14 @@ SRC_URI = "git://github.com/ClusterLabs/${BPN}.git;branch=1.1 \
 
 SRC_URI_append_libc-musl = "file://0001-pacemaker-fix-compile-error-of-musl-libc.patch"
 
-SRCREV = "c3c624ea3d98a74a8a287671a156db126c99a7bb"
+SRCREV = "f14e36fd4336874705b34266c7cddbe12119106c"
 
 inherit autotools-brokensep pkgconfig systemd python-dir useradd
 
 S = "${WORKDIR}/git"
 
+UPSTREAM_CHECK_GITTAGREGEX = "Pacemaker-(?P<pver>\d+(\.\d+)+)"
+
 CLEANBROKEN = "1"
 
 PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'systemd', d)}"
-- 
2.7.4


