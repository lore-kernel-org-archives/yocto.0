Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52A72E00C19; Sun, 15 Apr 2018 18:57:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A1CEE00791
	for <yocto@yoctoproject.org>; Sun, 15 Apr 2018 18:57:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w3G1vbFc008456
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 15 Apr 2018 18:57:37 -0700 (PDT)
Received: from localhost (128.224.163.220) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Sun, 15 Apr 2018 18:57:36 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <Adrian.Dudau@enea.com>,
	<alexandru.vaduva@linux.com>, <joe_macdonald@mentor.com>
Date: Mon, 16 Apr 2018 09:57:27 +0800
Message-ID: <1523843847-24868-3-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523843847-24868-1-git-send-email-yi.zhao@windriver.com>
References: <1523843847-24868-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.220]
Subject: [meta-cgl][PATCH 3/3] resource-agents: refresh patches to fix QA warning
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
X-List-Received-Date: Mon, 16 Apr 2018 01:57:49 -0000
Content-Type: text/plain

Refresh patches with devtool command to fix do_patch warning.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../resource-agents/01-disable-doc-build.patch        |  9 +++++----
 .../02-set-OCF_ROOT_DIR-to-libdir-ocf.patch           | 13 +++++++------
 .../resource-agents/03-fix-header-defs-lookup.patch   | 11 ++++++-----
 .../resource-agents/fix-install-sh-not-found.patch    | 19 +++++++++----------
 ...x-builds-when-srcdir-and-builddir-are-sepera.patch |  6 ++----
 5 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch
index 3fce743..7c67ecc 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch
@@ -1,6 +1,10 @@
-disable doc build
+From 20aca585d2f3273adc36ed0d795716fa6b29524f Mon Sep 17 00:00:00 2001
+From: Bian Naimeng <biannm@cn.fujitsu.com>
+Date: Tue, 30 Jun 2015 16:42:48 +0800
+Subject: [PATCH] disable doc build
 
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+
 ---
  Makefile.am | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
@@ -18,6 +22,3 @@ index 1769c6e..d66b2ae 100644
  LINUX_HA = without
  else
  LINUX_HA = with
--- 
-1.8.3.1
-
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch
index 4a8ac64..683f3db 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch
@@ -1,15 +1,19 @@
-Set OCF_ROOT_DIR to ${libdir}/ocf
+From a62bfe802361b9b3b212afa9e2fa488a3435a0f9 Mon Sep 17 00:00:00 2001
+From: Bian Naimeng <biannm@cn.fujitsu.com>
+Date: Tue, 30 Jun 2015 16:42:48 +0800
+Subject: [PATCH] Set OCF_ROOT_DIR to ${libdir}/ocf
 
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+
 ---
  configure.ac | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/configure.ac b/configure.ac
-index bb45717..3326b53 100644
+index 3bb0b7d..ca30182 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -406,7 +406,7 @@ dnl Variables needed for substitution
+@@ -405,7 +405,7 @@ dnl Variables needed for substitution
  AC_CHECK_HEADERS(heartbeat/glue_config.h)
  
  if test "$ac_cv_header_heartbeat_glue_config_h" = "yes"; then
@@ -18,6 +22,3 @@ index bb45717..3326b53 100644
  else
    enable_libnet=no
  fi
--- 
-1.8.3.1
-
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch
index f1d3924..0ef2b45 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch
@@ -1,12 +1,16 @@
-fix header defs lookup
+From 6a8ec0557194fb5071503de95f2160361ae3427e Mon Sep 17 00:00:00 2001
+From: Bian Naimeng <biannm@cn.fujitsu.com>
+Date: Tue, 1 Apr 2014 16:20:39 +0200
+Subject: [PATCH] fix header defs lookup
 
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+
 ---
  configure.ac | 5 ++---
  1 file changed, 2 insertions(+), 3 deletions(-)
 
 diff --git a/configure.ac b/configure.ac
-index 3326b53..8b5706a 100644
+index ca30182..83a698d 100644
 --- a/configure.ac
 +++ b/configure.ac
 @@ -140,9 +140,8 @@ extract_header_define() {
@@ -21,6 +25,3 @@ index 3326b53..8b5706a 100644
  	  AC_MSG_RESULT($value)
  	  printf $value
  	  rm -f ${Cfile}.c ${Cfile}
--- 
-1.8.3.1
-
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fix-install-sh-not-found.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fix-install-sh-not-found.patch
index 102b797..fbded10 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fix-install-sh-not-found.patch
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fix-install-sh-not-found.patch
@@ -1,23 +1,25 @@
-configure.ac: fix install-sh not found
+From 59dd32d063ca09a64e371768d7fc74a9954aa717 Mon Sep 17 00:00:00 2001
+From: William Grant <wgrant@ubuntu.com>
+Date: Fri, 9 Jun 2017 09:10:02 +0800
+Subject: [PATCH] configure.ac: fix install-sh not found
 
 Fix configure.ac to cope with new autoconf.
 Recent autoconfs generate a bad configure when AM_INIT_AUTOMAKE is
 called as late as it was, ending up thinking that the am_aux_dir is pwd
 at the start of the build. Move it up to under AC_INIT to fix that.
 
-Author: William Grant <wgrant@ubuntu.com>
-
 Upstream-Status: Pending
 
 https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=724116
 
 Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+
 ---
  configure.ac | 15 ++++++++-------
  1 file changed, 8 insertions(+), 7 deletions(-)
 
 diff --git a/configure.ac b/configure.ac
-index e8e2a7b..f3c8b9f 100644
+index 83a698d..2082d43 100644
 --- a/configure.ac
 +++ b/configure.ac
 @@ -23,13 +23,20 @@ AC_INIT([resource-agents],
@@ -42,9 +44,9 @@ index e8e2a7b..f3c8b9f 100644
  AC_CANONICAL_HOST
  
  dnl Where #defines go (e.g. `AC_CHECK_HEADERS' below)
-@@ -56,12 +63,6 @@ AC_ARG_WITH(pkg-name,
-     [  --with-pkg-name=name     Override package name (if you're a packager needing to pretend) ],
-     [ PACKAGE_NAME="$withval" ])
+@@ -76,12 +83,6 @@ AS_IF([test "x$with_systemdsystemunitdir" != "xno"],
+       [AC_SUBST([systemdsystemunitdir], [$with_systemdsystemunitdir])])
+ AM_CONDITIONAL([HAVE_SYSTEMD], [test "x$with_systemdsystemunitdir" != "xno"])
  
 -dnl 
 -dnl AM_INIT_AUTOMAKE([1.11.1 foreign dist-bzip2 dist-xz])
@@ -55,6 +57,3 @@ index e8e2a7b..f3c8b9f 100644
  AC_DEFINE_UNQUOTED(AGENTS_VERSION, "$PACKAGE_VERSION", Current agents version)
  
  CC_IN_CONFIGURE=yes
--- 
-1.8.1.2
-
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch
index 3247927..dbafc68 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch
@@ -1,4 +1,4 @@
-From 5b7a84dbb9d06112c4b2804223163d91ba8ab786 Mon Sep 17 00:00:00 2001
+From 40227e4ac8c95fb0175cbc4856103b5ca4c6824c Mon Sep 17 00:00:00 2001
 From: Jackie Huang <jackie.huang@windriver.com>
 Date: Thu, 1 Jun 2017 10:34:38 +0800
 Subject: [PATCH] fs.sh: fix builds when srcdir and builddir are seperated
@@ -17,6 +17,7 @@ Add abs_srcdir to fix this.
 Upstream-Status: Submitted [https://github.com/ClusterLabs/resource-agents/pull/986]
 
 Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+
 ---
  rgmanager/src/resources/Makefile.am | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
@@ -34,6 +35,3 @@ index de88c69..30b3be9 100644
  		-e 's#@''LOGDIR@#${LOGDIR}#g' \
  	> $@.out
  	chmod +x $@.out
--- 
-2.11.0
-
-- 
2.7.4


