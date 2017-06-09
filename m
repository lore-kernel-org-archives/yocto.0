Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A62CE00C06; Thu,  8 Jun 2017 18:10:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBA4BE00B57
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 18:10:10 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v591A9Ri002108
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 8 Jun 2017 18:10:09 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Thu, 8 Jun 2017 18:10:08 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 9 Jun 2017 09:10:02 +0800
Message-ID: <83dea065827feb46f3a3f88b436847b22c81dcf9.1496970398.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1496970398.git.jackie.huang@windriver.com>
References: <cover.1496970398.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 2/4 v2] resource-agents: fix install-sh not found
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
X-List-Received-Date: Fri, 09 Jun 2017 01:10:15 -0000
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


