Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.4639.1582261161834162829
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 20:59:22 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: qi.chen@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 332B0E016B9; Thu, 20 Feb 2020 20:59:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45ACFE00C29
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 20:59:18 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 01L4wXJf031883
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 20 Feb 2020 20:58:43 -0800
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.468.0; Thu, 20 Feb 2020 20:58:22 -0800
From: "Chen Qi" <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>, <jiahongxujia@163.com>
Subject: [meta-tensorflow][PATCH] tensorflow: fix compilation error
Date: Fri, 21 Feb 2020 12:58:21 +0800
Message-ID: <20200221045821.18108-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

Fix the following compliation error.

  error: cannot convert 'std::nullptr_t' to 'Py_ssize_t {aka long int}' in initialization

This patch references: https://github.com/tensorflow/tensorflow/issues/34197

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 .../files/0001-fix-compilation-error.patch    | 58 +++++++++++++++++++
 .../tensorflow/tensorflow-native_1.13.0.bb    |  1 +
 .../tensorflow/tensorflow_1.13.0.bb           |  1 +
 3 files changed, 60 insertions(+)
 create mode 100644 recipes-framework/tensorflow/files/0001-fix-compilation-error.patch

diff --git a/recipes-framework/tensorflow/files/0001-fix-compilation-error.patch b/recipes-framework/tensorflow/files/0001-fix-compilation-error.patch
new file mode 100644
index 0000000..995b83b
--- /dev/null
+++ b/recipes-framework/tensorflow/files/0001-fix-compilation-error.patch
@@ -0,0 +1,58 @@
+From c1d33029372d7b4d3b5cc1d52d92c414c97ca763 Mon Sep 17 00:00:00 2001
+From: Chen Qi <Qi.Chen@windriver.com>
+Date: Fri, 21 Feb 2020 11:45:04 +0800
+Subject: [PATCH] fix compilation error
+
+This fix references https://github.com/tensorflow/tensorflow/issues/34197.
+
+Upstream-Status: Pending
+
+Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
+---
+ tensorflow/python/eager/pywrap_tfe_src.cc           | 2 +-
+ tensorflow/python/lib/core/bfloat16.cc              | 2 +-
+ tensorflow/python/lib/core/ndarray_tensor_bridge.cc | 2 +-
+ 3 files changed, 3 insertions(+), 3 deletions(-)
+
+diff --git a/tensorflow/python/eager/pywrap_tfe_src.cc b/tensorflow/python/eager/pywrap_tfe_src.cc
+index 9ce500bc08..6c6cb215f2 100644
+--- a/tensorflow/python/eager/pywrap_tfe_src.cc
++++ b/tensorflow/python/eager/pywrap_tfe_src.cc
+@@ -1216,7 +1216,7 @@ static PyTypeObject TFE_Py_Tape_Type = {
+     sizeof(TFE_Py_Tape),                          /* tp_basicsize */
+     0,                                            /* tp_itemsize */
+     &TFE_Py_Tape_Delete,                          /* tp_dealloc */
+-    nullptr,                                      /* tp_print */
++    NULL,                                      /* tp_print */
+     nullptr,                                      /* tp_getattr */
+     nullptr,                                      /* tp_setattr */
+     nullptr,                                      /* tp_reserved */
+diff --git a/tensorflow/python/lib/core/bfloat16.cc b/tensorflow/python/lib/core/bfloat16.cc
+index fde3a83770..9b8fa97958 100644
+--- a/tensorflow/python/lib/core/bfloat16.cc
++++ b/tensorflow/python/lib/core/bfloat16.cc
+@@ -317,7 +317,7 @@ PyTypeObject PyBfloat16_Type = {
+     sizeof(PyBfloat16),                        // tp_basicsize
+     0,                                         // tp_itemsize
+     nullptr,                                   // tp_dealloc
+-    nullptr,                                   // tp_print
++    NULL,                                   // tp_print
+     nullptr,                                   // tp_getattr
+     nullptr,                                   // tp_setattr
+     nullptr,                                   // tp_compare / tp_reserved
+diff --git a/tensorflow/python/lib/core/ndarray_tensor_bridge.cc b/tensorflow/python/lib/core/ndarray_tensor_bridge.cc
+index 0d5838505f..50c1f885f4 100644
+--- a/tensorflow/python/lib/core/ndarray_tensor_bridge.cc
++++ b/tensorflow/python/lib/core/ndarray_tensor_bridge.cc
+@@ -86,7 +86,7 @@ PyTypeObject TensorReleaserType = {
+     0,                                /* tp_itemsize */
+     /* methods */
+     TensorReleaser_dealloc,      /* tp_dealloc */
+-    nullptr,                     /* tp_print */
++    NULL,                     /* tp_print */
+     nullptr,                     /* tp_getattr */
+     nullptr,                     /* tp_setattr */
+     nullptr,                     /* tp_compare */
+-- 
+2.17.1
+
diff --git a/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb b/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb
index fa9b04c..48635a5 100644
--- a/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb
+++ b/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb
@@ -8,6 +8,7 @@ SRC_URI = "git://github.com/tensorflow/tensorflow.git;branch=r1.13 \
            file://0001-SyntaxError-around-async-keyword-on-Python-3.7.patch \
            file://0001-use-local-bazel-to-workaround-bazel-paralle-issue.patch \
            file://0001-grpc-Define-gettid-only-for-glibc-2.30.patch \
+           file://0001-fix-compilation-error.patch \
           "
 S = "${WORKDIR}/git"
 
diff --git a/recipes-framework/tensorflow/tensorflow_1.13.0.bb b/recipes-framework/tensorflow/tensorflow_1.13.0.bb
index 223044f..e541895 100644
--- a/recipes-framework/tensorflow/tensorflow_1.13.0.bb
+++ b/recipes-framework/tensorflow/tensorflow_1.13.0.bb
@@ -19,6 +19,7 @@ SRC_URI = "git://github.com/tensorflow/tensorflow.git;branch=r1.13 \
            file://BUILD.yocto_compiler \
            file://CROSSTOOL.tpl \
            file://yocto_compiler_configure.bzl \
+           file://0001-fix-compilation-error.patch \
           "
 
 S = "${WORKDIR}/git"
-- 
2.17.1

