Return-Path: <qianl.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1E3DE00823; Mon, 19 Jan 2015 02:08:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 040F2E00851
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 02:08:21 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="56263705"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 19 Jan 2015 18:04:49 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t0JA7eR2004829
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 18:07:40 +0800
Received: from Fedora.g08.fujitsu.local (10.167.226.40) by
	G08CNEXCHPEKD01.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Mon, 19 Jan 2015 18:08:22 +0800
From: Qian Lei <qianl.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 19 Jan 2015 18:07:36 +0800
Message-ID: <1421662056-1389-3-git-send-email-qianl.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1421662056-1389-1-git-send-email-qianl.fnst@cn.fujitsu.com>
References: <1421662056-1389-1-git-send-email-qianl.fnst@cn.fujitsu.com>
MIME-Version: 1.0
X-Originating-IP: [10.167.226.40]
Subject: [meta-cgl][PATCH 2/2] cluster: Fix the path
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
X-List-Received-Date: Mon, 19 Jan 2015 10:08:25 -0000
Content-Type: text/plain

Use KERNEL_SRC instead of the hardcode path in configure.

Signed-off-by: Qian Lei <qianl.fnst@cn.fujitsu.com>
---
 .../cluster/0001-Fix-the-kernel-source-patch.patch | 38 ++++++++++++++++++++++
 .../recipes-cgl/cluster/cluster_3.2.0.bb           |  3 +-
 2 files changed, 40 insertions(+), 1 deletion(-)
 create mode 100644 meta-cgl-common/recipes-cgl/cluster/cluster/0001-Fix-the-kernel-source-patch.patch

diff --git a/meta-cgl-common/recipes-cgl/cluster/cluster/0001-Fix-the-kernel-source-patch.patch b/meta-cgl-common/recipes-cgl/cluster/cluster/0001-Fix-the-kernel-source-patch.patch
new file mode 100644
index 0000000..05dab1b
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster/cluster/0001-Fix-the-kernel-source-patch.patch
@@ -0,0 +1,38 @@
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
diff --git a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
index 3e7d42c..392af2c 100644
--- a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
@@ -3,7 +3,8 @@ DESCRIPTION = "Red Hat Cluster"
 SECTION = "libs"
 HOMEPAGE = "https://fedorahosted.org/cluster/wiki/HomePage"
 
-SRC_URI = "https://fedorahosted.org/releases/c/l/cluster/${BP}.tar.xz"
+SRC_URI = "https://fedorahosted.org/releases/c/l/cluster/${BP}.tar.xz \
+           file://0001-Fix-the-kernel-source-patch.patch"
 
 SRC_URI[md5sum] = "3f496dbecaea367af5a5e81d2e8dcab8"
 
-- 
1.8.3.1


