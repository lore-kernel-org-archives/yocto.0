Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8037E00D3F; Thu, 21 Feb 2019 03:42:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4BD2E00CD5
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:42:06 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x1LBeB9b004086
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Feb 2019 03:40:52 -0800
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Thu, 21 Feb 2019 03:40:33 -0800
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <richard.purdie@linuxfoundation.org>, <mhalstead@linuxfoundation.org>,
	<ross.burton@intel.com>, <raj.khem@gmail.com>,
	<paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Thu, 21 Feb 2019 06:37:16 -0500
Message-ID: <1550749039-67320-11-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Cc: lpd-cdc-core-dev@windriver.com, Zhangle.Yang@windriver.com
Subject: [meta-tensorflow][PATCH 10/13] tensorflow: fix gcc internal compile error on qemuarm64
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
X-List-Received-Date: Thu, 21 Feb 2019 11:42:13 -0000
Content-Type: text/plain

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 ...x-gcc-internal-compile-error-on-qemuarm64.patch | 64 ++++++++++++++++++++++
 recipes-framework/tensorflow/tensorflow_1.13.0.bb  |  1 +
 2 files changed, 65 insertions(+)
 create mode 100644 recipes-framework/tensorflow/files/0001-fix-gcc-internal-compile-error-on-qemuarm64.patch

diff --git a/recipes-framework/tensorflow/files/0001-fix-gcc-internal-compile-error-on-qemuarm64.patch b/recipes-framework/tensorflow/files/0001-fix-gcc-internal-compile-error-on-qemuarm64.patch
new file mode 100644
index 0000000..aca3de4
--- /dev/null
+++ b/recipes-framework/tensorflow/files/0001-fix-gcc-internal-compile-error-on-qemuarm64.patch
@@ -0,0 +1,64 @@
+From e9871369eee1d98652eaf1c7dcc6adaf72733f55 Mon Sep 17 00:00:00 2001
+From: Hongxu Jia <hongxu.jia@windriver.com>
+Date: Wed, 13 Feb 2019 20:58:17 -0500
+Subject: [PATCH] fix gcc internal compile error on qemuarm64
+
+Backport a fix from eigen upstream to fix the error.
+
+Upstream-Status: Inappropriate [oe specific]
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ tensorflow/workspace.bzl                           |  1 +
+ ...ling-workaround-on-architectures-with-SSE.patch | 28 ++++++++++++++++++++++
+ 2 files changed, 29 insertions(+)
+ create mode 100644 third_party/0001-enable-spilling-workaround-on-architectures-with-SSE.patch
+
+diff --git a/tensorflow/workspace.bzl b/tensorflow/workspace.bzl
+index 12c6fab..aa49190 100755
+--- a/tensorflow/workspace.bzl
++++ b/tensorflow/workspace.bzl
+@@ -144,6 +144,7 @@ def tf_workspace(path_prefix = "", tf_repo_name = ""):
+     tf_http_archive(
+         name = "eigen_archive",
+         build_file = clean_dep("//third_party:eigen.BUILD"),
++        patch_file = clean_dep("//third_party:0001-enable-spilling-workaround-on-architectures-with-SSE.patch"),
+         sha256 = "753fbb58d0a49b6bcbcfb126ebfa2e21fc97f7471529ba835a096008ce588d8a",
+         strip_prefix = "eigen-eigen-9f48e814419e",
+         urls = [
+diff --git a/third_party/0001-enable-spilling-workaround-on-architectures-with-SSE.patch b/third_party/0001-enable-spilling-workaround-on-architectures-with-SSE.patch
+new file mode 100644
+index 0000000..e3848bd
+--- /dev/null
++++ b/third_party/0001-enable-spilling-workaround-on-architectures-with-SSE.patch
+@@ -0,0 +1,28 @@
++From c1b4d0195674d4196683d4988d774e74e3cc291a Mon Sep 17 00:00:00 2001
++From: Gael Guennebaud <g.gael@free.fr>
++Date: Mon, 10 Dec 2018 23:22:44 +0100
++Subject: [PATCH] enable spilling workaround on architectures with SSE/AVX
++
++Upstream-Status: Backport [https://github.com/eigenteam/eigen-git-mirror.git]
++Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
++
++---
++ Eigen/src/Core/products/GeneralBlockPanelKernel.h | 2 +-
++ 1 file changed, 1 insertion(+), 1 deletion(-)
++
++diff --git a/Eigen/src/Core/products/GeneralBlockPanelKernel.h b/Eigen/src/Core/products/GeneralBlockPanelKernel.h
++index 61521e2..b1e98b6 100644
++--- a/Eigen/src/Core/products/GeneralBlockPanelKernel.h
+++++ b/Eigen/src/Core/products/GeneralBlockPanelKernel.h
++@@ -1391,7 +1391,7 @@ void gebp_kernel<LhsScalar,RhsScalar,Index,DataMapper,mr,nr,ConjugateLhs,Conjuga
++ 
++           // NOTE: the begin/end asm comments below work around bug 935!
++           // but they are not enough for gcc>=6 without FMA (bug 1637)
++-          #if EIGEN_GNUC_AT_LEAST(6,0)
+++          #if EIGEN_GNUC_AT_LEAST(6,0) && defined(EIGEN_VECTORIZE_SSE)
++             #define EIGEN_GEBP_2PX4_SPILLING_WORKAROUND __asm__  ("" : [a0] "+rm" (A0),[a1] "+rm" (A1));
++           #else
++             #define EIGEN_GEBP_2PX4_SPILLING_WORKAROUND
++-- 
++2.8.1
++
+-- 
+2.8.1
+
diff --git a/recipes-framework/tensorflow/tensorflow_1.13.0.bb b/recipes-framework/tensorflow/tensorflow_1.13.0.bb
index 33649ea..9e493dc 100644
--- a/recipes-framework/tensorflow/tensorflow_1.13.0.bb
+++ b/recipes-framework/tensorflow/tensorflow_1.13.0.bb
@@ -6,6 +6,7 @@ DEPENDS = "bazel-native protobuf-native util-linux-native protobuf"
 SRCREV = "c8875cbb1341f6ca14dd0ec908f1dde7d67f7808"
 SRC_URI = "git://github.com/tensorflow/tensorflow.git;branch=r1.13 \
            file://0001-add-yocto-toolchain-to-support-cross-compiling.patch \
+           file://0001-fix-gcc-internal-compile-error-on-qemuarm64.patch \
            file://0001-SyntaxError-around-async-keyword-on-Python-3.7.patch \
            file://BUILD \
            file://BUILD.yocto_compiler \
-- 
2.8.1


