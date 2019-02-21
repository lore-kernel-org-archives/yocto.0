Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E28D5E00CE7; Thu, 21 Feb 2019 03:40:01 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B6CDE00CEA
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:39:57 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x1LBc5PI004048
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Feb 2019 03:38:51 -0800
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Thu, 21 Feb 2019 03:38:23 -0800
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <richard.purdie@linuxfoundation.org>, <mhalstead@linuxfoundation.org>,
	<ross.burton@intel.com>, <raj.khem@gmail.com>,
	<paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Thu, 21 Feb 2019 06:37:08 -0500
Message-ID: <1550749039-67320-3-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Cc: lpd-cdc-core-dev@windriver.com, Zhangle.Yang@windriver.com
Subject: [meta-tensorflow][PATCH 02/13] bazel-native: add version 0.21.0
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
X-List-Received-Date: Thu, 21 Feb 2019 11:40:01 -0000
Content-Type: text/plain

It is the build system of tensorflow.

The build steps refers:
https://docs.bazel.build/versions/master/install-compile-source.html

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-devtools/bazel/bazel-native_0.21.0.bb | 33 +++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 recipes-devtools/bazel/bazel-native_0.21.0.bb

diff --git a/recipes-devtools/bazel/bazel-native_0.21.0.bb b/recipes-devtools/bazel/bazel-native_0.21.0.bb
new file mode 100644
index 0000000..122e507
--- /dev/null
+++ b/recipes-devtools/bazel/bazel-native_0.21.0.bb
@@ -0,0 +1,33 @@
+DESCRIPTION = "Bazel build and test tool"
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
+
+SRC_URI[md5sum] = "8c8240b178a35c0f3c1bc03017550270"
+SRC_URI[sha256sum] = "6ccb831e683179e0cfb351cb11ea297b4db48f9eab987601c038aa0f83037db4"
+
+SRC_URI = "https://github.com/bazelbuild/bazel/releases/download/${PV}/bazel-${PV}-dist.zip"
+
+inherit native
+
+INHIBIT_SYSROOT_STRIP = "1"
+
+DEPENDS = "coreutils-native \
+           zip-native \
+           openjdk-8-native \
+          "
+
+S="${WORKDIR}"
+
+do_compile () {
+    export JAVA_HOME="${RECIPE_SYSROOT_NATIVE}/usr/lib/jvm/openjdk-8-native"
+    TMPDIR="${TOPDIR}/bazel" \
+    VERBOSE=yes \
+    EXTRA_BAZEL_ARGS="--distdir=${DL_DIR}" \
+    ./compile.sh
+}
+
+do_install () {
+    install -d ${D}${bindir}
+    install -m 0755 ${S}/output/bazel ${D}${bindir}
+    create_cmdline_wrapper ${D}/${bindir}/bazel \$BAZEL_ARGS
+}
-- 
2.8.1


