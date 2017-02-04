Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A9C9E00972; Sat,  4 Feb 2017 10:40:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2CFDE008D3
	for <yocto@yoctoproject.org>; Sat,  4 Feb 2017 10:40:46 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP; 04 Feb 2017 10:40:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,335,1477983600"; d="scan'208";a="55400532"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga004.jf.intel.com with ESMTP; 04 Feb 2017 10:40:38 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat,  4 Feb 2017 10:36:44 -0800
Message-Id: <1486233410-15671-2-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1486233410-15671-1-git-send-email-juro.bystricky@intel.com>
References: <1486233410-15671-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][morty][PATCH 1/7] zephyr-kernel-common.inc: also build qemus if needed
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
X-List-Received-Date: Sat, 04 Feb 2017 18:40:53 -0000

Also build qemus if a recipe is built for a MACHINE=qemuXXX.
Allow inheriting classes based on recipe context.

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index cb3c76b..078ea72 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -1,6 +1,7 @@
 # Common settings for all Zephyr recipes
 
-inherit zephyr
+ZEPHYR_INHERIT_CLASSES += "zephyr"
+inherit ${ZEPHYR_INHERIT_CLASSES}
 
 # There shouldn't be a manifest for zephyr kernels since there is no root
 # filesystem.
@@ -16,6 +17,8 @@ INHIBIT_DEFAULT_DEPS = "1"
 DEPENDS += "gcc-cross-${TARGET_ARCH} libgcc ${TOOLCHAIN_TARGET_TASK}"
 CROSS_COMPILE = "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
 
+DEPENDS_append_qemuall = " qemu-native qemu-helper-native"
+
 do_configure[noexec] = "1"
 
 # The makefiles are explicit about the flags they want, so don't unset
@@ -35,3 +38,4 @@ OE_TERMINAL_EXPORTS += "ZEPHYR_SRC_DIR"
 OE_TERMINAL_EXPORTS += "ZEPHYR_BASE"
 OE_TERMINAL_EXPORTS += "ZEPHYR_SYSROOT"
 OE_TERMINAL_EXPORTS += "ZEPHYR_GCC_VARIANT"
+
-- 
2.7.4


