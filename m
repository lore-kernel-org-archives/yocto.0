Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72211E00CCA; Wed,  5 Oct 2016 15:50:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF75EE00CA7
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 15:50:11 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP; 05 Oct 2016 15:50:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,451,1473145200"; d="scan'208";a="16706241"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga005.jf.intel.com with ESMTP; 05 Oct 2016 15:50:09 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Oct 2016 15:49:20 -0700
Message-Id: <1475707760-36799-4-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1475707760-36799-1-git-send-email-juro.bystricky@intel.com>
References: <1475707760-36799-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-mingw][PATCH 3/3] gcc-crosssdk-initial_%.bbappend:Do not configure with initfini-array enabled
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

Default configuration for gcc-crosssddk-initial is now to enable initfini-array.
However, this works only for Linux so we disable it for mingw32.
Otherwise, (with SDKMACHINE=x86_64-mingw32) we will eventually encounter errors such as:

 Assembler messages:
 Error: invalid instruction suffix for `push'
 Error: invalid instruction suffix for `pop'

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-devtools/gcc/gcc-crosssdk-initial_%.bbappend | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-devtools/gcc/gcc-crosssdk-initial_%.bbappend b/recipes-devtools/gcc/gcc-crosssdk-initial_%.bbappend
index 1c09342..135a776 100644
--- a/recipes-devtools/gcc/gcc-crosssdk-initial_%.bbappend
+++ b/recipes-devtools/gcc/gcc-crosssdk-initial_%.bbappend
@@ -1 +1,3 @@
 DEPENDS_append_mingw32 = " nativesdk-mingw-w64-headers"
+EXTRA_OECONF_remove_mingw32 = "--enable-initfini-array"
+EXTRA_OECONF_append_mingw32 = " --disable-initfini-array"
-- 
2.7.4


