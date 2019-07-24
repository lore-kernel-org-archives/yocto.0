Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 039CAE00DCE; Wed, 24 Jul 2019 03:12:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2B3CE00D9F
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 03:12:02 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x6OABuN3018203
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 24 Jul 2019 03:11:56 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Wed, 24 Jul 2019 03:11:49 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <anuj.mittal@intel.com>
Date: Wed, 24 Jul 2019 18:11:19 +0800
Message-ID: <1563963079-20347-3-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563963079-20347-1-git-send-email-hongxu.jia@windriver.com>
References: <1563963079-20347-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-intel][PATCH 3/3] intel-graphics-compiler: skip it if clang is not ready
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
X-List-Received-Date: Wed, 24 Jul 2019 10:12:03 -0000
Content-Type: text/plain

Since intel-graphics-compiler depends on clang, skip it if clang is not ready

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-opencl/igc/intel-graphics-compiler_1.0.6.bb | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/recipes-opencl/igc/intel-graphics-compiler_1.0.6.bb b/recipes-opencl/igc/intel-graphics-compiler_1.0.6.bb
index f64b97f..2bce574 100644
--- a/recipes-opencl/igc/intel-graphics-compiler_1.0.6.bb
+++ b/recipes-opencl/igc/intel-graphics-compiler_1.0.6.bb
@@ -25,3 +25,11 @@ DEPENDS_class-target = " flex-native bison-native clang clang-cross-x86_64"
 
 EXTRA_OECMAKE = "-DIGC_PREFERRED_LLVM_VERSION=8.0.0 -DPYTHON_EXECUTABLE=${HOSTTOOLS_DIR}/python2"
 EXTRA_OECMAKE += "-DCOMMON_CLANG_LIBRARY_NAME=common_clang"
+
+python __anonymous() {
+    toolchain = d.getVar('TOOLCHAIN')
+    if toolchain != "clang" or 'clang-layer' not in d.getVar('BBFILE_COLLECTIONS').split():
+        msg = "Set 'TOOLCHAIN = \"clang\"' to local.conf\n"
+        msg += "And require meta-clang to be present"
+        raise bb.parse.SkipRecipe(msg)
+}
-- 
2.7.4


