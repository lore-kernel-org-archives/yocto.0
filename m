Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5031EE00D23; Thu, 21 Feb 2019 03:41:16 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F7D8E00CED
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:41:01 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x1LBdBrK004060
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Feb 2019 03:39:21 -0800
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Thu, 21 Feb 2019 03:39:00 -0800
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <richard.purdie@linuxfoundation.org>, <mhalstead@linuxfoundation.org>,
	<ross.burton@intel.com>, <raj.khem@gmail.com>,
	<paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Thu, 21 Feb 2019 06:37:11 -0500
Message-ID: <1550749039-67320-6-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Cc: lpd-cdc-core-dev@windriver.com, Zhangle.Yang@windriver.com
Subject: [meta-tensorflow][PATCH 05/13] tensorflow-native: add Python 3.7 compatibility
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
X-List-Received-Date: Thu, 21 Feb 2019 11:41:16 -0000
Content-Type: text/plain

SyntaxError around async keyword on Python 3.7

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 ...xError-around-async-keyword-on-Python-3.7.patch | 116 +++++++++++++++++++++
 .../tensorflow/tensorflow-native_1.13.0.bb         |   1 +
 2 files changed, 117 insertions(+)
 create mode 100644 recipes-framework/tensorflow/files/0001-SyntaxError-around-async-keyword-on-Python-3.7.patch

diff --git a/recipes-framework/tensorflow/files/0001-SyntaxError-around-async-keyword-on-Python-3.7.patch b/recipes-framework/tensorflow/files/0001-SyntaxError-around-async-keyword-on-Python-3.7.patch
new file mode 100644
index 0000000..75cb572
--- /dev/null
+++ b/recipes-framework/tensorflow/files/0001-SyntaxError-around-async-keyword-on-Python-3.7.patch
@@ -0,0 +1,116 @@
+From 8abbdce7a7ec7428b7f657e313ee0b6642c1de76 Mon Sep 17 00:00:00 2001
+From: Hongxu Jia <hongxu.jia@windriver.com>
+Date: Thu, 14 Feb 2019 10:45:55 +0800
+Subject: [PATCH] SyntaxError around async keyword on Python 3.7
+
+Backport a fix from upstream astor to fix the error
+
+Upstream-Status: Pending
+
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ tensorflow/workspace.bzl                           |  1 +
+ ...-Don-t-use-async-as-a-keyword-argument-94.patch | 79 ++++++++++++++++++++++
+ 2 files changed, 80 insertions(+)
+ create mode 100644 third_party/systemlibs/0001-Don-t-use-async-as-a-keyword-argument-94.patch
+
+diff --git a/tensorflow/workspace.bzl b/tensorflow/workspace.bzl
+index aefab03..a281803 100755
+--- a/tensorflow/workspace.bzl
++++ b/tensorflow/workspace.bzl
+@@ -278,6 +278,7 @@ def tf_workspace(path_prefix = "", tf_repo_name = ""):
+     tf_http_archive(
+         name = "astor_archive",
+         build_file = clean_dep("//third_party:astor.BUILD"),
++        patch_file = clean_dep("//third_party/systemlibs:0001-Don-t-use-async-as-a-keyword-argument-94.patch"),
+         sha256 = "ff6d2e2962d834acb125cc4dcc80c54a8c17c253f4cc9d9c43b5102a560bb75d",
+         strip_prefix = "astor-0.6.2",
+         system_build_file = clean_dep("//third_party/systemlibs:astor.BUILD"),
+diff --git a/third_party/systemlibs/0001-Don-t-use-async-as-a-keyword-argument-94.patch b/third_party/systemlibs/0001-Don-t-use-async-as-a-keyword-argument-94.patch
+new file mode 100644
+index 0000000..aafb172
+--- /dev/null
++++ b/third_party/systemlibs/0001-Don-t-use-async-as-a-keyword-argument-94.patch
+@@ -0,0 +1,79 @@
++From fe1ef7f9d746847c157197e4cb2ab6505fe19faf Mon Sep 17 00:00:00 2001
++From: Berker Peksag <berker.peksag@gmail.com>
++Date: Fri, 23 Mar 2018 16:50:21 +0300
++Subject: [PATCH] Don't use 'async' as a keyword argument (#94)
++
++Fixes #86
++
++Upstream-Status: Backport[https://github.com/berkerpeksag/astor.git]
++Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
++---
++ astor/code_gen.py | 18 +++++++++---------
++ 1 file changed, 9 insertions(+), 9 deletions(-)
++
++diff --git a/astor/code_gen.py b/astor/code_gen.py
++index 7c27f70..47d6acc 100644
++--- a/astor/code_gen.py
+++++ b/astor/code_gen.py
++@@ -308,8 +308,8 @@ class SourceGenerator(ExplicitNodeVisitor):
++         self.statement(node)
++         self.generic_visit(node)
++ 
++-    def visit_FunctionDef(self, node, async=False):
++-        prefix = 'async ' if async else ''
+++    def visit_FunctionDef(self, node, is_async=False):
+++        prefix = 'async ' if is_async else ''
++         self.decorators(node, 1 if self.indentation else 2)
++         self.statement(node, '%sdef %s' % (prefix, node.name), '(')
++         self.visit_arguments(node.args)
++@@ -322,7 +322,7 @@ class SourceGenerator(ExplicitNodeVisitor):
++ 
++     # introduced in Python 3.5
++     def visit_AsyncFunctionDef(self, node):
++-        self.visit_FunctionDef(node, async=True)
+++        self.visit_FunctionDef(node, is_async=True)
++ 
++     def visit_ClassDef(self, node):
++         have_args = []
++@@ -364,24 +364,24 @@ class SourceGenerator(ExplicitNodeVisitor):
++                 self.else_body(else_)
++                 break
++ 
++-    def visit_For(self, node, async=False):
+++    def visit_For(self, node, is_async=False):
++         set_precedence(node, node.target)
++-        prefix = 'async ' if async else ''
+++        prefix = 'async ' if is_async else ''
++         self.statement(node, '%sfor ' % prefix,
++                        node.target, ' in ', node.iter, ':')
++         self.body_or_else(node)
++ 
++     # introduced in Python 3.5
++     def visit_AsyncFor(self, node):
++-        self.visit_For(node, async=True)
+++        self.visit_For(node, is_async=True)
++ 
++     def visit_While(self, node):
++         set_precedence(node, node.test)
++         self.statement(node, 'while ', node.test, ':')
++         self.body_or_else(node)
++ 
++-    def visit_With(self, node, async=False):
++-        prefix = 'async ' if async else ''
+++    def visit_With(self, node, is_async=False):
+++        prefix = 'async ' if is_async else ''
++         self.statement(node, '%swith ' % prefix)
++         if hasattr(node, "context_expr"):  # Python < 3.3
++             self.visit_withitem(node)
++@@ -392,7 +392,7 @@ class SourceGenerator(ExplicitNodeVisitor):
++ 
++     # new for Python 3.5
++     def visit_AsyncWith(self, node):
++-        self.visit_With(node, async=True)
+++        self.visit_With(node, is_async=True)
++ 
++     # new for Python 3.3
++     def visit_withitem(self, node):
++-- 
++2.7.4
++
+-- 
+2.7.4
+
diff --git a/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb b/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb
index bb979ab..e747670 100644
--- a/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb
+++ b/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb
@@ -5,6 +5,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=01e86893010a1b87e69a213faa753ebd"
 DEPENDS = "bazel-native protobuf-native util-linux-native protobuf"
 SRCREV = "c8875cbb1341f6ca14dd0ec908f1dde7d67f7808"
 SRC_URI = "git://github.com/tensorflow/tensorflow.git;branch=r1.13 \
+           file://0001-SyntaxError-around-async-keyword-on-Python-3.7.patch \
           "
 S = "${WORKDIR}/git"
 
-- 
2.8.1


