Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E047AE007A2; Sat, 20 Aug 2016 11:06:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F462E00E1F
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2016 11:06:13 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga104.jf.intel.com with ESMTP; 20 Aug 2016 11:05:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,551,1464678000"; 
   d="scan'208";a="101816"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga005.jf.intel.com with ESMTP; 20 Aug 2016 11:05:10 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat, 20 Aug 2016 11:04:00 -0700
Message-Id: <1471716241-7010-7-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1471716241-7010-1-git-send-email-juro.bystricky@intel.com>
References: <1471716241-7010-1-git-send-email-juro.bystricky@intel.com>
Subject: [meta-mingw][PATCH 6/7] mpfr_3.1.3.bbappend: Work with all 3.1.% versions
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
X-List-Received-Date: Sat, 20 Aug 2016 18:06:17 -0000

Tested with 3.1.4.

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-support/mpfr/mpfr_3.1.%.bbappend | 1 +
 recipes-support/mpfr/mpfr_3.1.3.bbappend | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)
 create mode 100644 recipes-support/mpfr/mpfr_3.1.%.bbappend
 delete mode 100644 recipes-support/mpfr/mpfr_3.1.3.bbappend

diff --git a/recipes-support/mpfr/mpfr_3.1.%.bbappend b/recipes-support/mpfr/mpfr_3.1.%.bbappend
new file mode 100644
index 0000000..4252e8d
--- /dev/null
+++ b/recipes-support/mpfr/mpfr_3.1.%.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF_append_mingw32 = " --disable-shared"
\ No newline at end of file
diff --git a/recipes-support/mpfr/mpfr_3.1.3.bbappend b/recipes-support/mpfr/mpfr_3.1.3.bbappend
deleted file mode 100644
index 4252e8d..0000000
--- a/recipes-support/mpfr/mpfr_3.1.3.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-EXTRA_OECONF_append_mingw32 = " --disable-shared"
\ No newline at end of file
-- 
2.7.4


