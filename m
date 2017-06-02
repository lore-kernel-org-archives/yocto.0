Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00C9CE00B87; Fri,  2 Jun 2017 01:21:48 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E00AE00B63
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 01:21:44 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v528LiHq010901
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 2 Jun 2017 01:21:44 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Fri, 2 Jun 2017 01:21:43 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 2 Jun 2017 16:21:36 +0800
Message-ID: <7a37503318b25654b76614af6351282fb4f93392.1496391537.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1496391537.git.jackie.huang@windriver.com>
References: <cover.1496391537.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 2/4] resource-agents: fix install-sh not found
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
X-List-Received-Date: Fri, 02 Jun 2017 08:21:49 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

Fix configure.ac to cope with new autoconf.
Recent autoconfs generate a bad configure when AM_INIT_AUTOMAKE is
called as late as it was, ending up thinking that the am_aux_dir is pwd
at the start of the build. Move it up to under AC_INIT to fix that.

configure.ac calls AM_INIT_AUTOMAKE too late. The attached patch moves
it up to just after AC_INIT, fixing the FTBFS.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../resource-agents/fix-install-sh-not-found.patch | 60 ++++++++++++++++++++++
 .../resource-agents_3.9.7.bb                       |  1 +
 2 files changed, 61 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fix-install-sh-not-found.patch

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fix-install-sh-not-found.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fix-install-sh-not-found.patch
new file mode 100644
index 0000000..102b797
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fix-install-sh-not-found.patch
@@ -0,0 +1,60 @@
+configure.ac: fix install-sh not found
+
+Fix configure.ac to cope with new autoconf.
+Recent autoconfs generate a bad configure when AM_INIT_AUTOMAKE is
+called as late as it was, ending up thinking that the am_aux_dir is pwd
+at the start of the build. Move it up to under AC_INIT to fix that.
+
+Author: William Grant <wgrant@ubuntu.com>
+
+Upstream-Status: Pending
+
+https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=724116
+
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ configure.ac | 15 ++++++++-------
+ 1 file changed, 8 insertions(+), 7 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index e8e2a7b..f3c8b9f 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -23,13 +23,20 @@ AC_INIT([resource-agents],
+ 	m4_esyscmd([make/git-version-gen .tarball-version]),
+ 	[to_be_defined@foobar.org])
+ 
++AC_CONFIG_AUX_DIR(.)
++
++dnl
++dnl AM_INIT_AUTOMAKE([1.11.1 foreign dist-bzip2 dist-xz])
++dnl
++
++AM_INIT_AUTOMAKE([1.10.1 foreign dist-bzip2])
++
+ AC_USE_SYSTEM_EXTENSIONS
+ 
+ CRM_DTD_VERSION="1.0"
+ 
+ PKG_FEATURES=""
+ 
+-AC_CONFIG_AUX_DIR(.)
+ AC_CANONICAL_HOST
+ 
+ dnl Where #defines go (e.g. `AC_CHECK_HEADERS' below)
+@@ -56,12 +63,6 @@ AC_ARG_WITH(pkg-name,
+     [  --with-pkg-name=name     Override package name (if you're a packager needing to pretend) ],
+     [ PACKAGE_NAME="$withval" ])
+ 
+-dnl 
+-dnl AM_INIT_AUTOMAKE([1.11.1 foreign dist-bzip2 dist-xz])
+-dnl
+-
+-AM_INIT_AUTOMAKE([1.10.1 foreign dist-bzip2])
+-
+ AC_DEFINE_UNQUOTED(AGENTS_VERSION, "$PACKAGE_VERSION", Current agents version)
+ 
+ CC_IN_CONFIGURE=yes
+-- 
+1.8.1.2
+
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
index 2e8b8f1..2d2dd88 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
@@ -18,6 +18,7 @@ SRC_URI = "https://codeload.github.com/ClusterLabs/resource-agents/tar.gz/v${PV}
            file://01-disable-doc-build.patch \
            file://02-set-OCF_ROOT_DIR-to-libdir-ocf.patch \
            file://03-fix-header-defs-lookup.patch \
+           file://fix-install-sh-not-found.patch \
           "
 
 SRC_URI[md5sum] = "c59096b1bacc704e8a5a285f15729109"
-- 
2.11.0


