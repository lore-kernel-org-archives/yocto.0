Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0909DE00BB7; Thu, 21 Feb 2019 03:42:03 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0682E00D05
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:41:56 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x1LBeB9a004086
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Feb 2019 03:40:21 -0800
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Thu, 21 Feb 2019 03:40:00 -0800
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <richard.purdie@linuxfoundation.org>, <mhalstead@linuxfoundation.org>,
	<ross.burton@intel.com>, <raj.khem@gmail.com>,
	<paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Thu, 21 Feb 2019 06:37:15 -0500
Message-ID: <1550749039-67320-10-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Cc: lpd-cdc-core-dev@windriver.com, Zhangle.Yang@windriver.com
Subject: [meta-tensorflow][PATCH 09/13] tensorflow: add version 1.13.0
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
X-List-Received-Date: Thu, 21 Feb 2019 11:42:03 -0000
Content-Type: text/plain

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 ...octo-toolchain-to-support-cross-compiling.patch | 108 +++++++++++++++
 recipes-framework/tensorflow/tensorflow_1.13.0.bb  | 154 +++++++++++++++++++++
 2 files changed, 262 insertions(+)
 create mode 100644 recipes-framework/tensorflow/files/0001-add-yocto-toolchain-to-support-cross-compiling.patch
 create mode 100644 recipes-framework/tensorflow/tensorflow_1.13.0.bb

diff --git a/recipes-framework/tensorflow/files/0001-add-yocto-toolchain-to-support-cross-compiling.patch b/recipes-framework/tensorflow/files/0001-add-yocto-toolchain-to-support-cross-compiling.patch
new file mode 100644
index 0000000..5fa5f91
--- /dev/null
+++ b/recipes-framework/tensorflow/files/0001-add-yocto-toolchain-to-support-cross-compiling.patch
@@ -0,0 +1,108 @@
+From dd303f745d159a2359c81922a2171a409998a71d Mon Sep 17 00:00:00 2001
+From: Hongxu Jia <hongxu.jia@windriver.com>
+Date: Thu, 31 Jan 2019 20:37:26 +0800
+Subject: [PATCH] add yocto toolchain to support cross compiling
+
+Upstream-Status: Inappropriate [oe specific]
+
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ WORKSPACE                   | 6 ++++++
+ tensorflow/BUILD            | 9 +++++++++
+ tensorflow/workspace.bzl    | 8 ++++++++
+ third_party/aws/BUILD.bazel | 3 +++
+ third_party/repo.bzl        | 1 +
+ 5 files changed, 27 insertions(+)
+
+diff --git a/WORKSPACE b/WORKSPACE
+index 7057d3f..869c180 100644
+--- a/WORKSPACE
++++ b/WORKSPACE
+@@ -53,6 +53,12 @@ android_configure(name="local_config_android")
+ load("@local_config_android//:android.bzl", "android_workspace")
+ android_workspace()
+ 
++new_local_repository(
++    name = "yocto_compiler",
++    path = "%%WORKDIR%%",
++    build_file = "//:BUILD.yocto_compiler",
++)
++
+ # Please add all new TensorFlow dependencies in workspace.bzl.
+ tf_workspace()
+ 
+diff --git a/tensorflow/BUILD b/tensorflow/BUILD
+index 823ad8f..6270301 100644
+--- a/tensorflow/BUILD
++++ b/tensorflow/BUILD
+@@ -100,6 +100,15 @@ config_setting(
+ )
+ 
+ config_setting(
++    name = "yocto_armeabi",
++    values = {
++        "crosstool_top": "@local_config_yocto_compiler//:toolchain",
++        "cpu": "armeabi",
++    },
++    visibility = ["//visibility:public"],
++)
++
++config_setting(
+     name = "android_arm",
+     values = {
+         "crosstool_top": "//external:android/crosstool",
+diff --git a/tensorflow/workspace.bzl b/tensorflow/workspace.bzl
+index aefab03..12c6fab 100755
+--- a/tensorflow/workspace.bzl
++++ b/tensorflow/workspace.bzl
+@@ -12,6 +12,7 @@ load("//third_party/sycl:sycl_configure.bzl", "sycl_configure")
+ load("//third_party/systemlibs:syslibs_configure.bzl", "syslibs_configure")
+ load("//third_party/toolchains/clang6:repo.bzl", "clang6_configure")
+ load("//third_party/toolchains/cpus/arm:arm_compiler_configure.bzl", "arm_compiler_configure")
++load("//third_party/toolchains/yocto:yocto_compiler_configure.bzl", "yocto_compiler_configure")
+ load("//third_party:repo.bzl", "tf_http_archive")
+ load("//third_party/clang_toolchain:cc_configure_clang.bzl", "cc_download_clang_toolchain")
+ load("@io_bazel_rules_closure//closure/private:java_import_external.bzl", "java_import_external")
+@@ -76,6 +77,13 @@ def tf_workspace(path_prefix = "", tf_repo_name = ""):
+         remote_config_repo = "../arm_compiler",
+     )
+ 
++    # Point //external/local_config_yocto_compiler to //external/yocto_compiler
++    yocto_compiler_configure(
++        name = "local_config_yocto_compiler",
++        build_file = clean_dep("//third_party/toolchains/yocto:BUILD"),
++        remote_config_repo = "../yocto_compiler",
++    )
++
+     mkl_repository(
+         name = "mkl_linux",
+         build_file = clean_dep("//third_party/mkl:mkl.BUILD"),
+diff --git a/third_party/aws/BUILD.bazel b/third_party/aws/BUILD.bazel
+index 5426f79..b106b12 100644
+--- a/third_party/aws/BUILD.bazel
++++ b/third_party/aws/BUILD.bazel
+@@ -24,6 +24,9 @@ cc_library(
+         "@org_tensorflow//tensorflow:raspberry_pi_armeabi": glob([
+             "aws-cpp-sdk-core/source/platform/linux-shared/*.cpp",
+         ]),
++        "@org_tensorflow//tensorflow:yocto_armeabi": glob([
++            "aws-cpp-sdk-core/source/platform/linux-shared/*.cpp",
++        ]),
+         "//conditions:default": [],
+     }) + glob([
+         "aws-cpp-sdk-core/include/**/*.h",
+diff --git a/third_party/repo.bzl b/third_party/repo.bzl
+index bad6d20..9823cab 100644
+--- a/third_party/repo.bzl
++++ b/third_party/repo.bzl
+@@ -16,6 +16,7 @@
+ 
+ _SINGLE_URL_WHITELIST = depset([
+     "arm_compiler",
++    "yocto_compiler",
+ ])
+ 
+ def _is_windows(ctx):
+-- 
+2.7.4
+
diff --git a/recipes-framework/tensorflow/tensorflow_1.13.0.bb b/recipes-framework/tensorflow/tensorflow_1.13.0.bb
new file mode 100644
index 0000000..33649ea
--- /dev/null
+++ b/recipes-framework/tensorflow/tensorflow_1.13.0.bb
@@ -0,0 +1,154 @@
+DESCRIPTION = "TensorFlow C/C++ Libraries"
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=01e86893010a1b87e69a213faa753ebd"
+
+DEPENDS = "bazel-native protobuf-native util-linux-native protobuf"
+SRCREV = "c8875cbb1341f6ca14dd0ec908f1dde7d67f7808"
+SRC_URI = "git://github.com/tensorflow/tensorflow.git;branch=r1.13 \
+           file://0001-add-yocto-toolchain-to-support-cross-compiling.patch \
+           file://0001-SyntaxError-around-async-keyword-on-Python-3.7.patch \
+           file://BUILD \
+           file://BUILD.yocto_compiler \
+           file://CROSSTOOL.tpl \
+           file://yocto_compiler_configure.bzl \
+          "
+S = "${WORKDIR}/git"
+
+DEPENDS += " \
+    python3 \
+    python3-numpy-native \
+    python3-keras-applications-native \
+    python3-keras-preprocessing-native \
+    python3-pip-native \
+    python3-wheel-native \
+"
+
+RDEPENDS_${PN} += " \
+    python3 \
+    python3-numpy \
+    python3-keras-applications \
+    python3-keras-preprocessing \
+    python3-protobuf \
+    python3-grpcio \
+    python3-absl \
+    python3-astor \
+    python3-gast \
+    python3-termcolor \
+    tensorboard \
+    tensorflow-estimator \
+"
+
+inherit python3native bazel
+
+export PYTHON_BIN_PATH="${PYTHON}"
+export PYTHON_LIB_PATH="${STAGING_DIR_NATIVE}${PYTHON_SITEPACKAGES_DIR}"
+
+do_configure_append () {
+    CROSSTOOL_PYTHON_INCLUDE_PATH="${STAGING_INCDIR}/python${PYTHON_BASEVERSION}${PYTHON_ABI}"
+    install -d ${CROSSTOOL_PYTHON_INCLUDE_PATH}
+    mv ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig.h ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-target.h
+
+    install -m 644 ${STAGING_INCDIR_NATIVE}/python${PYTHON_BASEVERSION}${PYTHON_ABI}/pyconfig.h \
+        ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-native.h
+
+    cat > ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig.h <<ENDOF
+#if defined (_PYTHON_INCLUDE_TARGET)
+#include "pyconfig-target.h"
+#elif defined (_PYTHON_INCLUDE_NATIVE)
+#include "pyconfig-native.h"
+#else
+#error "_PYTHON_INCLUDE_TARGET or _PYTHON_INCLUDE_NATIVE is not defined"
+#endif // End of #if defined (_PYTHON_INCLUDE_TARGET)
+
+ENDOF
+
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
+
+    TF_NEED_CUDA=0 \
+    TF_NEED_OPENCL_SYCL=0 \
+    TF_NEED_OPENCL=0 \
+    TF_CUDA_CLANG=0 \
+    TF_DOWNLOAD_CLANG=0 \
+    TF_ENABLE_XLA=0 \
+    TF_NEED_MPI=0 \
+    TF_SET_ANDROID_WORKSPACE=0 \
+    ./configure
+}
+
+do_compile () {
+    unset CC
+    ${STAGING_BINDIR_NATIVE}/bazel build \
+        --config=monolithic \
+        -c opt \
+        --cpu=armeabi \
+        --subcommands --explain=${T}/explain.log \
+        --verbose_explanations --verbose_failures \
+        --crosstool_top=@local_config_yocto_compiler//:toolchain \
+        --verbose_failures \
+        //tensorflow:libtensorflow.so \
+        //tensorflow:libtensorflow_cc.so \
+        //tensorflow:libtensorflow_framework.so \
+        //tensorflow/tools/benchmark:benchmark_model \
+        //tensorflow/tools/pip_package:build_pip_package
+
+    ${STAGING_BINDIR_NATIVE}/bazel shutdown
+}
+
+do_install() {
+    install -d ${D}${libdir}
+    install -m 644 ${S}/bazel-bin/tensorflow/libtensorflow.so \
+        ${D}${libdir}
+    install -m 644 ${S}/bazel-bin/tensorflow/libtensorflow_cc.so \
+        ${D}${libdir}
+    install -m 644 ${S}/bazel-bin/tensorflow/libtensorflow_framework.so \
+        ${D}${libdir}
+
+    install -d ${D}${sbindir}
+    install -m 755 ${S}/bazel-bin/tensorflow/tools/benchmark/benchmark_model \
+        ${D}${sbindir}
+
+    export TMPDIR="${WORKDIR}"
+    echo "Generating pip package"
+    BDIST_OPTS="--universal" \
+        ${S}/bazel-bin/tensorflow/tools/pip_package/build_pip_package ${WORKDIR}
+
+    echo "Installing pip package"
+    install -d ${D}/${PYTHON_SITEPACKAGES_DIR}
+    ${STAGING_BINDIR_NATIVE}/pip3 install --disable-pip-version-check -v \
+        -t ${D}/${PYTHON_SITEPACKAGES_DIR} --no-cache-dir --no-deps \
+         ${WORKDIR}/tensorflow*.whl
+
+    (
+        cd ${D}${PYTHON_SITEPACKAGES_DIR}/bin;
+        for app in `ls`; do
+            sed -i "s:^'''exec' ${PYTHON} :'''exec' /usr/bin/python3 :g" $app
+            mv $app ${D}${sbindir}
+        done
+
+    )
+}
+
+FILES_${PN}-dev = ""
+INSANE_SKIP_${PN} += "dev-so \
+                     "
+FILES_${PN} += "${libdir}/*"
+
+UNSUPPORTED_TARGET_ARCH = "powerpc"
+python __anonymous() {
+    target_arch = d.getVar("TARGET_ARCH")
+    if target_arch in d.getVar("UNSUPPORTED_TARGET_ARCH").split():
+        raise bb.parse.SkipPackage("TensorFlow does not support Target Arch '%s'" % target_arch)
+}
-- 
2.8.1


