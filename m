Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87DD3E00D5F; Thu, 25 Jul 2019 02:04:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64780E00D30
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2019 02:04:44 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6P9420c026462
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 25 Jul 2019 02:04:17 -0700
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Thu, 25 Jul 2019 02:04:10 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <anuj.mittal@intel.com>
Date: Thu, 25 Jul 2019 17:04:08 +0800
Message-ID: <1564045448-4717-1-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563963079-20347-3-git-send-email-hongxu.jia@windriver.com>
References: <1563963079-20347-3-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [PATCH V2 3/3] intel-graphics-compiler: skip it if clang is not ready
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
X-List-Received-Date: Thu, 25 Jul 2019 09:04:46 -0000
Content-Type: text/plain

Since intel-graphics-compiler depends on clang, skip it if clang is not ready

Issue: LIN1019-1846
(LOCAL REV: NOT UPSTREAM) -- Sent to Yocto on 20190724

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-opencl/igc/intel-graphics-compiler_1.0.6.bb | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/recipes-opencl/igc/intel-graphics-compiler_1.0.6.bb b/recipes-opencl/igc/intel-graphics-compiler_1.0.6.bb
index f64b97f..2c33b12 100644
--- a/recipes-opencl/igc/intel-graphics-compiler_1.0.6.bb
+++ b/recipes-opencl/igc/intel-graphics-compiler_1.0.6.bb
@@ -25,3 +25,11 @@ DEPENDS_class-target = " flex-native bison-native clang clang-cross-x86_64"
 
 EXTRA_OECMAKE = "-DIGC_PREFERRED_LLVM_VERSION=8.0.0 -DPYTHON_EXECUTABLE=${HOSTTOOLS_DIR}/python2"
 EXTRA_OECMAKE += "-DCOMMON_CLANG_LIBRARY_NAME=common_clang"
+
+python __anonymous() {
+    toolchain = d.getVar('TOOLCHAIN')
+    if toolchain != "clang" or 'clang-layer' not in d.getVar('BBFILE_COLLECTIONS').split():
+        msg = "Add 'TOOLCHAIN = \"clang\"' in local.conf\n"
+        msg += "And meta-clang should be present"
+        raise bb.parse.SkipRecipe(msg)
+}
-- 
2.7.4


