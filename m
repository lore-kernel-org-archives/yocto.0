Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1C1EE00E1D; Sat, 20 Aug 2016 11:06:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D9D3E00E1B
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2016 11:06:13 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga104.jf.intel.com with ESMTP; 20 Aug 2016 11:05:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,551,1464678000"; 
   d="scan'208";a="101807"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga005.jf.intel.com with ESMTP; 20 Aug 2016 11:05:10 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat, 20 Aug 2016 11:03:57 -0700
Message-Id: <1471716241-7010-4-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1471716241-7010-1-git-send-email-juro.bystricky@intel.com>
References: <1471716241-7010-1-git-send-email-juro.bystricky@intel.com>
Subject: [meta-mingw][PATCH 3/7] binutils-cross-canadian_2.25%.bbappend: Work with all 2.2* versions
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
X-List-Received-Date: Sat, 20 Aug 2016 18:06:16 -0000

Tested up to 2.27

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend  | 5 +++++
 recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend | 5 -----
 2 files changed, 5 insertions(+), 5 deletions(-)
 create mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
 delete mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend

diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend b/recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
new file mode 100644
index 0000000..026c932
--- /dev/null
+++ b/recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
@@ -0,0 +1,5 @@
+EXTRA_OECONF_append_sdkmingw32 = " --disable-plugins --disable-nls"
+LDFLAGS_append_sdkmingw32 = " -Wl,-static"
+
+DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
+DEPENDS_remove_sdkmingw32 = "nativesdk-flex"
diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend b/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
deleted file mode 100644
index 026c932..0000000
--- a/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-EXTRA_OECONF_append_sdkmingw32 = " --disable-plugins --disable-nls"
-LDFLAGS_append_sdkmingw32 = " -Wl,-static"
-
-DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
-DEPENDS_remove_sdkmingw32 = "nativesdk-flex"
-- 
2.7.4


