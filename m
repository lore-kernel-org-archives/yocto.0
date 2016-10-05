Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FD27E00CBF; Wed,  5 Oct 2016 15:50:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 108EDE00CAA
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 15:50:11 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP; 05 Oct 2016 15:50:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,451,1473145200"; d="scan'208";a="16706238"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga005.jf.intel.com with ESMTP; 05 Oct 2016 15:50:09 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Oct 2016 15:49:18 -0700
Message-Id: <1475707760-36799-2-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1475707760-36799-1-git-send-email-juro.bystricky@intel.com>
References: <1475707760-36799-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-mingw][PATCH 1/3] mingw-64-runtime_3.1.bb: Adapt to SDK_ARCH -> SDK_SYS chanages for crosssdk
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
X-List-Received-Date: Wed, 05 Oct 2016 22:50:14 -0000

With the change of crosssdk to use SDK_SYS instead of SDK_ARCH, we need to update
the recipe to match the changes in master.

[YOCTO #9281]

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb
index ddffcf4..c4292ad 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb
@@ -24,7 +24,7 @@ PROVIDES += "virtual/nativesdk-${SDK_PREFIX}libc-for-gcc"
 PROVIDES += "virtual/nativesdk-libintl"
 
 STAGINGCC = "gcc-cross-initial-${TARGET_ARCH}"
-STAGINGCC_class-nativesdk = "gcc-crosssdk-initial-${TARGET_ARCH}"
+STAGINGCC_class-nativesdk = "gcc-crosssdk-initial-${SDK_SYS}"
 TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"
 PATH_prepend = "${STAGING_BINDIR_TOOLCHAIN}.${STAGINGCC}:"
 
-- 
2.7.4


