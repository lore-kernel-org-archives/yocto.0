Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34348E00D33; Thu, 21 Feb 2019 03:41:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22C46E00CCE
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:41:05 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x1LBetVF022901
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Feb 2019 03:40:55 -0800 (PST)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Thu, 21 Feb 2019 03:40:54 -0800
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <richard.purdie@linuxfoundation.org>, <mhalstead@linuxfoundation.org>,
	<ross.burton@intel.com>, <raj.khem@gmail.com>,
	<paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Thu, 21 Feb 2019 06:37:17 -0500
Message-ID: <1550749039-67320-12-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Cc: lpd-cdc-core-dev@windriver.com, Zhangle.Yang@windriver.com
Subject: [meta-tensorflow][PATCH 11/13] tensorflow: support musl
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
X-List-Received-Date: Thu, 21 Feb 2019 11:41:19 -0000
Content-Type: text/plain

Build fails looking for `execinfo.h` when building against musl
|In file included from ./tensorflow/core/platform/stacktrace.h:26,
|                 from tensorflow/core/platform/stacktrace_handler.cc:34:
|./tensorflow/core/platform/default/stacktrace.h:27:10: fatal error:
execinfo.h: No such file or directory

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../tensorflow/files/0001-support-musl.patch       | 49 ++++++++++++++++++++++
 recipes-framework/tensorflow/tensorflow_1.13.0.bb  |  1 +
 2 files changed, 50 insertions(+)
 create mode 100644 recipes-framework/tensorflow/files/0001-support-musl.patch

diff --git a/recipes-framework/tensorflow/files/0001-support-musl.patch b/recipes-framework/tensorflow/files/0001-support-musl.patch
new file mode 100644
index 0000000..f76041b
--- /dev/null
+++ b/recipes-framework/tensorflow/files/0001-support-musl.patch
@@ -0,0 +1,49 @@
+From 02e58aa624aa6c330984474b9119c6b29a1ed77d Mon Sep 17 00:00:00 2001
+From: Hongxu Jia <hongxu.jia@windriver.com>
+Date: Thu, 14 Feb 2019 10:26:27 -0500
+Subject: [PATCH] support musl
+
+Build fails looking for `execinfo.h` when building against musl
+|In file included from ./tensorflow/core/platform/stacktrace.h:26,
+|                 from tensorflow/core/platform/stacktrace_handler.cc:34:
+|./tensorflow/core/platform/default/stacktrace.h:27:10: fatal error:
+execinfo.h: No such file or directory
+
+Upstream-Status: Pending
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ tensorflow/core/platform/default/stacktrace.h  | 3 ++-
+ tensorflow/core/platform/stacktrace_handler.cc | 3 ++-
+ 2 files changed, 4 insertions(+), 2 deletions(-)
+
+diff --git a/tensorflow/core/platform/default/stacktrace.h b/tensorflow/core/platform/default/stacktrace.h
+index c8e297f..8fecf05 100644
+--- a/tensorflow/core/platform/default/stacktrace.h
++++ b/tensorflow/core/platform/default/stacktrace.h
+@@ -18,7 +18,8 @@ limitations under the License.
+ 
+ #include "tensorflow/core/platform/platform.h"
+ #if !defined(IS_MOBILE_PLATFORM) && defined(PLATFORM_POSIX) && \
+-    (defined(__clang__) || defined(__GNUC__))
++    (defined(__clang__) || defined(__GNUC__)) && \
++    defined(__GLIBC__)
+ #define TF_GENERATE_BACKTRACE
+ #endif
+ 
+diff --git a/tensorflow/core/platform/stacktrace_handler.cc b/tensorflow/core/platform/stacktrace_handler.cc
+index ff31c97..41d62f7 100644
+--- a/tensorflow/core/platform/stacktrace_handler.cc
++++ b/tensorflow/core/platform/stacktrace_handler.cc
+@@ -16,7 +16,8 @@ limitations under the License.
+ #include "tensorflow/core/platform/platform.h"
+ 
+ #if !defined(PLATFORM_GOOGLE) && !defined(IS_MOBILE_PLATFORM) && \
+-    defined(PLATFORM_POSIX) && (defined(__clang__) || defined(__GNUC__))
++    defined(PLATFORM_POSIX) && (defined(__clang__) || defined(__GNUC__)) && \
++    defined(__GLIBC__)
+ #define TF_GENERATE_STACKTRACE
+ #endif
+ 
+-- 
+2.8.1
+
diff --git a/recipes-framework/tensorflow/tensorflow_1.13.0.bb b/recipes-framework/tensorflow/tensorflow_1.13.0.bb
index 9e493dc..24986f5 100644
--- a/recipes-framework/tensorflow/tensorflow_1.13.0.bb
+++ b/recipes-framework/tensorflow/tensorflow_1.13.0.bb
@@ -8,6 +8,7 @@ SRC_URI = "git://github.com/tensorflow/tensorflow.git;branch=r1.13 \
            file://0001-add-yocto-toolchain-to-support-cross-compiling.patch \
            file://0001-fix-gcc-internal-compile-error-on-qemuarm64.patch \
            file://0001-SyntaxError-around-async-keyword-on-Python-3.7.patch \
+           file://0001-support-musl.patch \
            file://BUILD \
            file://BUILD.yocto_compiler \
            file://CROSSTOOL.tpl \
-- 
2.8.1


