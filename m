Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBF2BE00D3F; Thu, 21 Feb 2019 03:41:25 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51959E00CE6
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:41:11 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x1LBdBrL004060
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Feb 2019 03:39:51 -0800
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Thu, 21 Feb 2019 03:39:33 -0800
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <richard.purdie@linuxfoundation.org>, <mhalstead@linuxfoundation.org>,
	<ross.burton@intel.com>, <raj.khem@gmail.com>,
	<paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Thu, 21 Feb 2019 06:37:12 -0500
Message-ID: <1550749039-67320-7-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Cc: lpd-cdc-core-dev@windriver.com, Zhangle.Yang@windriver.com
Subject: [meta-tensorflow][PATCH 06/13] tensorflow-estimator: add version 1.13
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
X-List-Received-Date: Thu, 21 Feb 2019 11:41:25 -0000
Content-Type: text/plain

The build steps refers README of https://github.com/tensorflow/estimator

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../tensorflow/tensorflow-estimator_1.13.bb        | 50 ++++++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 recipes-framework/tensorflow/tensorflow-estimator_1.13.bb

diff --git a/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb b/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb
new file mode 100644
index 0000000..5400888
--- /dev/null
+++ b/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb
@@ -0,0 +1,50 @@
+DESCRIPTION = "A high-level TensorFlow API that greatly simplifies machine \
+learning programming."
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=01e86893010a1b87e69a213faa753ebd"
+
+SRC_URI = "git://github.com/tensorflow/estimator.git;branch=r1.13 \
+          "
+SRCREV = "340703eed78ba4854862f749ed94f91598826e79"
+S = "${WORKDIR}/git"
+
+inherit python3native bazel
+
+DEPENDS += " \
+    python3-pip-native \
+    python3-wheel-native \
+    python3-six-native \
+    python3-protobuf-native \
+    python3-absl-native \
+    python3-astor-native \
+    python3-gast-native \
+    python3-termcolor-native \
+    tensorflow-native \
+"
+
+do_compile () {
+    unset CC
+    export TMPDIR="${WORKDIR}"
+    ${STAGING_BINDIR_NATIVE}/bazel build \
+        --subcommands --explain=${T}/explain.log \
+        --verbose_explanations --verbose_failures \
+        --verbose_failures \
+        --python_path="${PYTHON}" \
+        //tensorflow_estimator/tools/pip_package:build_pip_package
+
+    ${STAGING_BINDIR_NATIVE}/bazel shutdown
+
+    PYTHON_BIN_PATH="${PYTHON}" \
+    ${S}/bazel-bin/tensorflow_estimator/tools/pip_package/build_pip_package \
+        ${WORKDIR}/estimator_pip
+}
+
+do_install () {
+    echo "Installing pip package"
+    install -d ${D}${PYTHON_SITEPACKAGES_DIR}
+    ${STAGING_BINDIR_NATIVE}/pip3 install --disable-pip-version-check -v --no-deps \
+        -t ${D}/${PYTHON_SITEPACKAGES_DIR} --no-cache-dir ${WORKDIR}/estimator_pip/*.whl
+
+}
+
+FILES_${PN} += "${libdir}/*"
-- 
2.8.1


