Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F314EE00CB9; Thu, 21 Feb 2019 03:39:02 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79AB4E00BB7
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:39:02 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x1LBcw4i023669
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Feb 2019 03:38:58 -0800 (PST)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Thu, 21 Feb 2019 03:38:57 -0800
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <richard.purdie@linuxfoundation.org>, <mhalstead@linuxfoundation.org>,
	<ross.burton@intel.com>, <raj.khem@gmail.com>,
	<paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Thu, 21 Feb 2019 06:37:10 -0500
Message-ID: <1550749039-67320-5-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Cc: lpd-cdc-core-dev@windriver.com, Zhangle.Yang@windriver.com
Subject: [meta-tensorflow][PATCH 04/13] tensorflow-native: add version 1.13.0
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
X-List-Received-Date: Thu, 21 Feb 2019 11:39:03 -0000
Content-Type: text/plain

It is required by tensorflow-estimator.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../tensorflow/tensorflow-native_1.13.0.bb         | 60 ++++++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 recipes-framework/tensorflow/tensorflow-native_1.13.0.bb

diff --git a/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb b/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb
new file mode 100644
index 0000000..bb979ab
--- /dev/null
+++ b/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb
@@ -0,0 +1,60 @@
+DESCRIPTION = "TensorFlow C/C++ Libraries"
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=01e86893010a1b87e69a213faa753ebd"
+
+DEPENDS = "bazel-native protobuf-native util-linux-native protobuf"
+SRCREV = "c8875cbb1341f6ca14dd0ec908f1dde7d67f7808"
+SRC_URI = "git://github.com/tensorflow/tensorflow.git;branch=r1.13 \
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
+inherit python3native bazel native
+
+export PYTHON_BIN_PATH="${PYTHON}"
+export PYTHON_LIB_PATH="${PYTHON_SITEPACKAGES_DIR}"
+
+do_configure_append () {
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
+        -c opt \
+        --subcommands --explain=${T}/explain.log \
+        --verbose_explanations --verbose_failures \
+        --verbose_failures \
+        //tensorflow/tools/pip_package:build_pip_package
+
+    ${STAGING_BINDIR_NATIVE}/bazel shutdown
+}
+
+do_install() {
+    export TMPDIR="${WORKDIR}"
+    echo "Generating pip package"
+    BDIST_OPTS="--universal" \
+        ${S}/bazel-bin/tensorflow/tools/pip_package/build_pip_package ${WORKDIR}
+
+    echo "Installing pip package"
+    install -d ${D}/${PYTHON_SITEPACKAGES_DIR}
+    ${STAGING_BINDIR_NATIVE}/pip3 install --disable-pip-version-check -v --no-deps \
+        -t ${D}/${PYTHON_SITEPACKAGES_DIR} --no-cache-dir ${WORKDIR}/tensorflow*.whl
+
+}
-- 
2.8.1


