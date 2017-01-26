Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22322E00995; Thu, 26 Jan 2017 12:36:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEEB6E004A0
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 12:36:12 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga102.fm.intel.com with ESMTP; 26 Jan 2017 12:36:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,291,1477983600"; d="scan'208";a="57645217"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga005.jf.intel.com with ESMTP; 26 Jan 2017 12:36:12 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 26 Jan 2017 12:32:55 -0800
Message-Id: <1485462775-33031-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-mingw][PATCH] pthreads-win32: fix dependencies
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
X-List-Received-Date: Thu, 26 Jan 2017 20:36:20 -0000

This commit fixes the build error:

    make[1]: x86_64-pokysdk-mingw32-gcc: Command not found

The build error appeared after oe-core switched to Recipe
Specific Sysroots.

[YOCTO#10971]

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb b/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb
index 68291b9..e4a0f80 100644
--- a/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb
+++ b/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb
@@ -21,7 +21,7 @@ SRC_URI[sha256sum] = "e6aca7aea8de33d9c8580bcb3a0ea3ec0a7ace4ba3f4e263ac7c7b66bc
 S = "${WORKDIR}/pthreads-w32-${PVdash}-release"
 
 INHIBIT_DEFAULT_DEPS = "1"
-DEPENDS = "virtual/${SDK_PREFIX}gcc-initial libgcc virtual/libc"
+DEPENDS = "virtual/${SDK_PREFIX}gcc libgcc virtual/libc"
 
 do_configure_prepend() {
     ## First reset all permissions because all are executable
-- 
2.7.4


