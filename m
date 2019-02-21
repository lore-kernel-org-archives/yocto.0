Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 588ADE00D11; Thu, 21 Feb 2019 03:40:20 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0AC4E00CED
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:40:04 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x1LBdwxv023675
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Feb 2019 03:39:58 -0800 (PST)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Thu, 21 Feb 2019 03:39:57 -0800
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <richard.purdie@linuxfoundation.org>, <mhalstead@linuxfoundation.org>,
	<ross.burton@intel.com>, <raj.khem@gmail.com>,
	<paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Thu, 21 Feb 2019 06:37:14 -0500
Message-ID: <1550749039-67320-9-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Cc: lpd-cdc-core-dev@windriver.com, Zhangle.Yang@windriver.com
Subject: [meta-tensorflow][PATCH 08/13] tensorboard: add version 1.12.2
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
X-List-Received-Date: Thu, 21 Feb 2019 11:40:20 -0000
Content-Type: text/plain

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../tensorboard/0001-customize-for-Yocto.patch     | 128 +++++++++++++++++++++
 recipes-framework/tensorflow/tensorboard_1.12.2.bb |  62 ++++++++++
 2 files changed, 190 insertions(+)
 create mode 100644 recipes-framework/tensorflow/tensorboard/0001-customize-for-Yocto.patch
 create mode 100644 recipes-framework/tensorflow/tensorboard_1.12.2.bb

diff --git a/recipes-framework/tensorflow/tensorboard/0001-customize-for-Yocto.patch b/recipes-framework/tensorflow/tensorboard/0001-customize-for-Yocto.patch
new file mode 100644
index 0000000..1f0b309
--- /dev/null
+++ b/recipes-framework/tensorflow/tensorboard/0001-customize-for-Yocto.patch
@@ -0,0 +1,128 @@
+From 3834b8ecb55ebf2527aaa2502d9030460882931c Mon Sep 17 00:00:00 2001
+From: Hongxu Jia <hongxu.jia@windriver.com>
+Date: Thu, 31 Jan 2019 22:24:54 +0800
+Subject: [PATCH] customize for Yocto
+
+- Remove virtualenv/pip/bdist_wheel calling which Yocto does not support
+
+- Add Yocto toolchain to support cross compiling
+
+Upstream-Status: Inappropriate [oe specific]
+
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ WORKSPACE                                    |  6 ++++++
+ tensorboard/pip_package/build_pip_package.sh | 27 +++------------------------
+ third_party/workspace.bzl                    |  8 ++++++++
+ 3 files changed, 17 insertions(+), 24 deletions(-)
+
+diff --git a/WORKSPACE b/WORKSPACE
+index 8ab70cc..0c18f6f 100644
+--- a/WORKSPACE
++++ b/WORKSPACE
+@@ -1,5 +1,11 @@
+ workspace(name = "org_tensorflow_tensorboard")
+ 
++new_local_repository(
++    name = "yocto_compiler",
++    path = "%%WORKDIR%%",
++    build_file = "BUILD.yocto_compiler",
++)
++
+ load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
+ 
+ # Needed as a transitive dependency of rules_webtesting below.
+diff --git a/tensorboard/pip_package/build_pip_package.sh b/tensorboard/pip_package/build_pip_package.sh
+index 754fa83..e473f51 100755
+--- a/tensorboard/pip_package/build_pip_package.sh
++++ b/tensorboard/pip_package/build_pip_package.sh
+@@ -23,7 +23,7 @@ else
+   sedi="sed -i"
+ fi
+ 
+-run_smoke_test=1
++run_smoke_test=0
+ while [ "$#" -gt 0 ]; do
+   case "$1" in
+     "--no-smoke")
+@@ -75,27 +75,20 @@ command -v curl >/dev/null
+ command -v perl >/dev/null
+ command -v python2 >/dev/null
+ command -v python3 >/dev/null
+-command -v virtualenv >/dev/null
+ [ -d "${RUNFILES}" ]
+ 
+-dest=/tmp/tensorboard
++dest=${DESTDIR}
+ if [ ! -e $dest ]; then
+-  mkdir $dest
++  mkdir -p $dest
+ else
+   dest="$(mktemp -d -p /tmp -t tensorboard-pip.XXXXXXXXXX)"
+ fi
+ cd "${dest}"
+ 
+ cp -LR "${RUNFILES}/org_tensorflow_tensorboard/tensorboard" .
+-mv -f "tensorboard/pip_package/LICENSE" .
+-mv -f "tensorboard/pip_package/MANIFEST.in" .
+-mv -f "tensorboard/pip_package/README.rst" .
+-mv -f "tensorboard/pip_package/setup.cfg" .
+-mv -f "tensorboard/pip_package/setup.py" .
+ rm -rf tensorboard/pip_package
+ 
+ rm -f tensorboard/tensorboard              # bazel py_binary sh wrapper
+-chmod -x LICENSE                           # bazel symlinks confuse cp
+ find . -name __init__.py | xargs chmod -x  # which goes for all genfiles
+ 
+ mkdir -p tensorboard/_vendor
+@@ -117,21 +110,7 @@ find tensorboard -name \*.py |
+     s/from tensorflow_serving/from tensorboard._vendor.tensorflow_serving/
+   '
+ 
+-virtualenv venv
+-export VIRTUAL_ENV=venv
+-export PATH="$PWD/venv/bin:${PATH}"
+-unset PYTHON_HOME
+-
+-# Require wheel for bdist_wheel command, and setuptools 36.2.0+ so that
+-# env markers are handled (https://github.com/pypa/setuptools/pull/1081)
+-pip install -qU wheel 'setuptools>=36.2.0'
+-
+-python setup.py bdist_wheel --python-tag py2 >/dev/null
+-python setup.py bdist_wheel --python-tag py3 >/dev/null
+-
+ if [ "$run_smoke_test" = 1 ]; then
+   smoke 2
+   smoke 3
+ fi
+-
+-ls -hal "$PWD/dist"
+diff --git a/third_party/workspace.bzl b/third_party/workspace.bzl
+index 083c441..24786f8 100644
+--- a/third_party/workspace.bzl
++++ b/third_party/workspace.bzl
+@@ -24,6 +24,7 @@ load("//third_party:polymer.bzl", "tensorboard_polymer_workspace")
+ load("//third_party:python.bzl", "tensorboard_python_workspace")
+ load("//third_party:js.bzl", "tensorboard_js_workspace")
+ load("//third_party:typings.bzl", "tensorboard_typings_workspace")
++load("//third_party/toolchains/yocto:yocto_compiler_configure.bzl", "yocto_compiler_configure")
+ 
+ def tensorboard_workspace():
+   tensorboard_fonts_workspace()
+@@ -32,6 +33,13 @@ def tensorboard_workspace():
+   tensorboard_typings_workspace()
+   tensorboard_js_workspace()
+ 
++  # Point //external/local_config_yocto_compiler to //external/yocto_compiler
++  yocto_compiler_configure(
++      name = "local_config_yocto_compiler",
++      build_file = str(Label("//third_party/toolchains/yocto:BUILD")),
++      remote_config_repo = "../yocto_compiler",
++  )
++
+   http_archive(
+       name = "com_google_protobuf_js",
+       strip_prefix = "protobuf-3.6.0/js",
+-- 
+2.7.4
+
diff --git a/recipes-framework/tensorflow/tensorboard_1.12.2.bb b/recipes-framework/tensorflow/tensorboard_1.12.2.bb
new file mode 100644
index 0000000..bb15b27
--- /dev/null
+++ b/recipes-framework/tensorflow/tensorboard_1.12.2.bb
@@ -0,0 +1,62 @@
+DESCRIPTION = "A suite of web applications for inspecting and understanding \
+your TensorFlow runs and graphs."
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=e74df23890b9521cc481e3348863e45d"
+
+SRC_URI = "git://github.com/tensorflow/tensorboard.git; \
+           file://0001-customize-for-Yocto.patch \
+           file://BUILD \
+           file://BUILD.yocto_compiler \
+           file://CROSSTOOL.tpl \
+           file://yocto_compiler_configure.bzl \
+          "
+SRCREV = "7194c7486a0c4d107322ffad102c1ca0fcc0fc24"
+S = "${WORKDIR}/git"
+
+RDEPENDS_${PN} += "python3 \
+           python3-numpy \
+           python3-protobuf \
+           python3-grpcio \
+           python3-werkzeug \
+           python3-six \
+           python3-markdown \
+"
+inherit python3native bazel
+
+do_configure_append () {
+    mkdir -p ${S}/third_party/toolchains/yocto/
+    install -m 644 ${WORKDIR}/BUILD ${S}/third_party/toolchains/yocto/
+    install -m 644 ${WORKDIR}/CROSSTOOL.tpl ${S}/third_party/toolchains/yocto/
+    install -m 644 ${WORKDIR}/yocto_compiler_configure.bzl ${S}/third_party/toolchains/yocto/
+    install -m 644 ${WORKDIR}/BUILD.yocto_compiler ${S}
+
+    CT_NAME=$(echo ${HOST_PREFIX} | rev | cut -c 2- | rev)
+    SED_COMMAND="s#%%CT_NAME%%#${CT_NAME}#g"
+    SED_COMMAND="${SED_COMMAND}; s#%%WORKDIR%%#${WORKDIR}#g"
+    SED_COMMAND="${SED_COMMAND}; s#%%YOCTO_COMPILER_PATH%%#${BAZEL_OUTPUTBASE_DIR}/external/yocto_compiler#g"
+
+    sed -i "${SED_COMMAND}" ${S}/BUILD.yocto_compiler \
+                            ${S}/third_party/toolchains/yocto/CROSSTOOL.tpl \
+                            ${S}/WORKSPACE
+}
+
+do_compile () {
+    unset CC
+    DESTDIR=${WORKDIR}/python-tensorboard \
+     ${STAGING_BINDIR_NATIVE}/bazel run \
+        --cpu=armeabi \
+        --subcommands --explain=${T}/explain.log \
+        --verbose_explanations --verbose_failures \
+        --crosstool_top=@local_config_yocto_compiler//:toolchain \
+        --verbose_failures \
+        //tensorboard/pip_package:build_pip_package
+
+    ${STAGING_BINDIR_NATIVE}/bazel shutdown
+}
+
+do_install () {
+    install -d ${D}${PYTHON_SITEPACKAGES_DIR}
+    cp -rf ${WORKDIR}/python-tensorboard/* ${D}${PYTHON_SITEPACKAGES_DIR}
+}
+
+FILES_${PN} += "${libdir}/*"
-- 
2.8.1


