Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B83CFE00CCC; Thu, 21 Feb 2019 03:39:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34015E007B3
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:39:02 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x1LBctjp022641
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Feb 2019 03:38:55 -0800 (PST)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Thu, 21 Feb 2019 03:38:54 -0800
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <richard.purdie@linuxfoundation.org>, <mhalstead@linuxfoundation.org>,
	<ross.burton@intel.com>, <raj.khem@gmail.com>,
	<paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Thu, 21 Feb 2019 06:37:09 -0500
Message-ID: <1550749039-67320-4-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Cc: lpd-cdc-core-dev@windriver.com, Zhangle.Yang@windriver.com
Subject: [meta-tensorflow][PATCH 03/13] create classes/bazel.bbclass
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
X-List-Received-Date: Thu, 21 Feb 2019 11:39:02 -0000
Content-Type: text/plain

Inherit the bbclass to use bazel to build tensorflow-native,
tensorflow, tensorboard and tensorflow-estimator.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 classes/bazel.bbclass | 80 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)
 create mode 100644 classes/bazel.bbclass

diff --git a/classes/bazel.bbclass b/classes/bazel.bbclass
new file mode 100644
index 0000000..3bda2c8
--- /dev/null
+++ b/classes/bazel.bbclass
@@ -0,0 +1,80 @@
+DEPENDS += "bazel-native \
+           openjdk-8-native \
+          "
+
+BAZEL_OUTPUTBASE_DIR ?= "${WORKDIR}/bazel/output_base"
+export BAZEL_ARGS="--output_user_root=${WORKDIR}/bazel/user_root \
+                   --output_base=${BAZEL_OUTPUTBASE_DIR} \
+                   --bazelrc=${S}/bazelrc \
+                  "
+
+export JAVA_HOME="${RECIPE_SYSROOT_NATIVE}/usr/lib/jvm/openjdk-8-native"
+
+def bazel_get_flags(d):
+    flags = ""
+    for i in d.getVar("CC").split()[1:]:
+        flags += "--conlyopt=%s --cxxopt=%s " % (i, i)
+
+    for i in d.getVar("CFLAGS").split():
+        if i == "-g":
+            continue
+        flags += "--conlyopt=%s " % i
+
+    for i in d.getVar("BUILD_CFLAGS").split():
+        flags += "--host_conlyopt=%s " % i
+
+    for i in d.getVar("CXXFLAGS").split():
+        if i == "-g":
+            continue
+        flags += "--cxxopt=%s " % i
+
+    for i in d.getVar("BUILD_CXXFLAGS").split():
+        flags += "--host_cxxopt=%s " % i
+
+    for i in d.getVar("CPPFLAGS").split():
+        if i == "-g":
+            continue
+        flags += "--conlyopt=%s --cxxopt=%s " % (i, i)
+
+    for i in d.getVar("BUILD_CPPFLAGS").split():
+        flags += "--host_conlyopt=%s --host_cxxopt=%s " % (i, i)
+
+    for i in d.getVar("LDFLAGS").split():
+        flags += "--linkopt=%s " % i
+
+    for i in d.getVar("BUILD_LDFLAGS").split():
+        flags += "--host_linkopt=%s " % i
+
+    for i in d.getVar("TOOLCHAIN_OPTIONS").split():
+        flags += "--linkopt=%s " % i
+
+    return flags
+
+bazel_do_configure () {
+    cat > "${S}/bazelrc" <<-EOF
+build --verbose_failures
+build --spawn_strategy=standalone --genrule_strategy=standalone
+build --jobs=${@oe.utils.cpu_count()}
+test --verbose_failures --verbose_test_summary
+test --spawn_strategy=standalone --genrule_strategy=standalone
+
+build --linkopt=-Wl,-latomic
+build --strip=never
+
+fetch --distdir=${DL_DIR}
+build --distdir=${DL_DIR}
+
+EOF
+
+}
+
+bazel_do_configure_append_class-target () {
+    cat >> "${S}/bazelrc" <<-EOF
+# FLAGS
+build ${@bazel_get_flags(d)}
+EOF
+
+    sed -i "s:${WORKDIR}:${BAZEL_OUTPUTBASE_DIR}/external/yocto_compiler:g" ${S}/bazelrc
+}
+
+EXPORT_FUNCTIONS do_configure
-- 
2.8.1


