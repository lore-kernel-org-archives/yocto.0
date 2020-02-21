Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.5697.1582271454546971596
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 23:50:55 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: qi.chen@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D19BE016E8; Thu, 20 Feb 2020 23:50:54 -0800 (PST)
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
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DA43E00C29
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 23:50:50 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 01L7oH9j003615
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 20 Feb 2020 23:50:17 -0800 (PST)
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
 14.3.468.0; Thu, 20 Feb 2020 23:50:16 -0800
From: "Chen Qi" <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>, <jiahongxujia@163.com>
Subject: [meta-tensorflow][PATCH] tensorflow: fix logger issue on python 3.8
Date: Fri, 21 Feb 2020 15:50:15 +0800
Message-ID: <20200221075015.27270-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

We met the following error with python 3.8.

  TypeError: _logger_find_caller() takes from 0 to 1 positional arguments but 2 were given

Backport a patch to fix this issue.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 ...ensorFlow-on-Python-3.8-logger-issue.patch | 55 +++++++++++++++++++
 .../tensorflow/tensorflow-native_1.13.0.bb    |  1 +
 .../tensorflow/tensorflow_1.13.0.bb           |  1 +
 3 files changed, 57 insertions(+)
 create mode 100644 recipes-framework/tensorflow/files/0001-Fix-TensorFlow-on-Python-3.8-logger-issue.patch

diff --git a/recipes-framework/tensorflow/files/0001-Fix-TensorFlow-on-Python-3.8-logger-issue.patch b/recipes-framework/tensorflow/files/0001-Fix-TensorFlow-on-Python-3.8-logger-issue.patch
new file mode 100644
index 0000000..714cfed
--- /dev/null
+++ b/recipes-framework/tensorflow/files/0001-Fix-TensorFlow-on-Python-3.8-logger-issue.patch
@@ -0,0 +1,55 @@
+From db8840ea06bee6c8384d88edba2faa027ed74c02 Mon Sep 17 00:00:00 2001
+From: Yong Tang <yong.tang.github@outlook.com>
+Date: Sun, 3 Nov 2019 19:52:04 +0000
+Subject: [PATCH] Fix TensorFlow on Python 3.8 logger issue
+
+This fix tries to address the issue raised in 33799
+where running tensorflow on python 3.8 (Ubuntu 18.04)
+raised the following error:
+```
+TypeError: _logger_find_caller() takes from 0 to 1 positional arguments but 2 were given
+```
+
+The issue was that findCaller changed in Python 3.8
+
+This PR fixes the issue.
+
+This PR fixes 33799
+
+Signed-off-by: Yong Tang <yong.tang.github@outlook.com>
+
+Upstream-Status: Backport [https://github.com/tensorflow/tensorflow/pull/33953/commits/ea3063c929c69f738bf65bc99dad1159803e772f]
+
+Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
+---
+ tensorflow/python/platform/tf_logging.py | 13 +++++++++++--
+ 1 file changed, 11 insertions(+), 2 deletions(-)
+
+diff --git a/tensorflow/python/platform/tf_logging.py b/tensorflow/python/platform/tf_logging.py
+index 813bcb89be..4862e70e4d 100644
+--- a/tensorflow/python/platform/tf_logging.py
++++ b/tensorflow/python/platform/tf_logging.py
+@@ -57,9 +57,18 @@ def _get_caller(offset=3):
+     f = f.f_back
+   return None, None
+ 
+-
+ # The definition of `findCaller` changed in Python 3.2
+-if _sys.version_info.major >= 3 and _sys.version_info.minor >= 2:
++if _sys.version_info.major >= 3 and _sys.version_info.minor >= 8:
++  def _logger_find_caller(stack_info=False, stacklevel=1):  # pylint: disable=g-wrong-blank-lines
++    code, frame = _get_caller(4)
++    sinfo = None
++    if stack_info:
++      sinfo = '\n'.join(_traceback.format_stack())
++    if code:
++      return (code.co_filename, frame.f_lineno, code.co_name, sinfo)
++    else:
++      return '(unknown file)', 0, '(unknown function)', sinfo
++elif _sys.version_info.major >= 3 and _sys.version_info.minor >= 2:
+   def _logger_find_caller(stack_info=False):  # pylint: disable=g-wrong-blank-lines
+     code, frame = _get_caller(4)
+     sinfo = None
+-- 
+2.17.1
+
diff --git a/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb b/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb
index 48635a5..4aa76ba 100644
--- a/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb
+++ b/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb
@@ -9,6 +9,7 @@ SRC_URI = "git://github.com/tensorflow/tensorflow.git;branch=r1.13 \
            file://0001-use-local-bazel-to-workaround-bazel-paralle-issue.patch \
            file://0001-grpc-Define-gettid-only-for-glibc-2.30.patch \
            file://0001-fix-compilation-error.patch \
+           file://0001-Fix-TensorFlow-on-Python-3.8-logger-issue.patch \
           "
 S = "${WORKDIR}/git"
 
diff --git a/recipes-framework/tensorflow/tensorflow_1.13.0.bb b/recipes-framework/tensorflow/tensorflow_1.13.0.bb
index e541895..7502f34 100644
--- a/recipes-framework/tensorflow/tensorflow_1.13.0.bb
+++ b/recipes-framework/tensorflow/tensorflow_1.13.0.bb
@@ -20,6 +20,7 @@ SRC_URI = "git://github.com/tensorflow/tensorflow.git;branch=r1.13 \
            file://CROSSTOOL.tpl \
            file://yocto_compiler_configure.bzl \
            file://0001-fix-compilation-error.patch \
+           file://0001-Fix-TensorFlow-on-Python-3.8-logger-issue.patch \
           "
 
 S = "${WORKDIR}/git"
-- 
2.17.1

