Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60E9CE008F6; Fri, 13 Feb 2015 04:39:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 957D3E008BC
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 04:39:25 -0800 (PST)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 13 Feb 2015 13:39:23 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id EFEC12800CB;
	Fri, 13 Feb 2015 13:39:23 +0100 (CET)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <linux-maintainers@enea.com>, <yocto@yoctoproject.org>
Date: Fri, 13 Feb 2015 13:39:21 +0100
Message-ID: <1423831161-48269-1-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Cc: qianl.fnst@cn.fujitsu.com
Subject: [PATCH] [meta-cgl][PATCH 2_2] cluster: Fix the path
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
X-List-Received-Date: Fri, 13 Feb 2015 12:39:33 -0000
Content-Type: text/plain

The patch from Qian Lei was redone since the SRC_URI checksum
change ws done previous to this change by me.

Signed-off-by: Qian Lei <qianl.fnst@cn.fujitsu.com>
Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
---
 .../cluster/0001-Fix-the-kernel-source-patch.patch | 39 ++++++++++++++++++++++
 .../recipes-cgl/cluster/cluster_3.2.0.bb           |  4 ++-
 2 files changed, 42 insertions(+), 1 deletion(-)
 create mode 100644 meta-cgl-common/recipes-cgl/cluster/cluster/0001-Fix-the-kernel-source-patch.patch

diff --git a/meta-cgl-common/recipes-cgl/cluster/cluster/0001-Fix-the-kernel-source-patch.patch b/meta-cgl-common/recipes-cgl/cluster/cluster/0001-Fix-the-kernel-source-patch.patch
new file mode 100644
index 0000000..79640d5
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster/cluster/0001-Fix-the-kernel-source-patch.patch
@@ -0,0 +1,39 @@
+From 7ddf265becd44e7f7270ff98d2dcc14361effe8c Mon Sep 17 00:00:00 2001
+From: Qian Lei <qianl.fnst@cn.fujitsu.com>
+Date: Sun, 18 Jan 2015 14:01:17 +0800
+Subject: [PATCH] Fix the kernel source patch
+
+Signed-off-by: Qian Lei <qianl.fnst@cn.fujitsu.com>
+---
+ configure | 12 ++----------
+ 1 file changed, 2 insertions(+), 10 deletions(-)
+
+diff --git a/configure b/configure
+index 1e6356e..0c8038f 100755
+--- a/configure
++++ b/configure
+@@ -362,18 +362,10 @@ if (! -d "$objdir/make") {
+
+ my @un = POSIX::uname();
+ if (!$kernel_build) {
+-  if (-d "/lib/modules/$un[2]/build") {
+-    $kernel_build="/lib/modules/$un[2]/build";
+-  } else {
+-    $kernel_build="/usr/src/linux";
+-  }
++  $kernel_build="${KERNEL_SRC}";
+ }
+ if (!$kernel_src) {
+-  if (-d "/lib/modules/$un[2]/source") {
+-    $kernel_src="/lib/modules/$un[2]/source";
+-  } else {
+-    $kernel_src=$kernel_build;
+-  }
++  $kernel_src=$kernel_build;
+ }
+ if (not $disable_kernel_check and !kernel_version($kernel_src,$required_kernelversion)) {
+   exit 1;
+--
+1.8.3.1
+
+
diff --git a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
index 2610236..d85f2b6 100644
--- a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
@@ -3,7 +3,9 @@ DESCRIPTION = "Red Hat Cluster"
 SECTION = "libs"
 HOMEPAGE = "https://fedorahosted.org/cluster/wiki/HomePage"
 
-SRC_URI = "https://fedorahosted.org/releases/c/l/cluster/${BP}.tar.xz"
+SRC_URI = "https://fedorahosted.org/releases/c/l/cluster/${BP}.tar.xz \
+           file://0001-Fix-the-kernel-source-patch.patch"
+
 
 SRC_URI[md5sum] = "300d83dbbc525c3da21c2e961271c84b"
 SRC_URI[sha256sum] = "4d340338c2376d369cb223469fa1a3356cce9ab5b2a0a0a33256ade2dbbe02d1"
-- 
1.9.1


