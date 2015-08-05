Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3F05E00A71; Wed,  5 Aug 2015 15:55:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE08DE009FD
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 15:55:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 05 Aug 2015 15:55:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,620,1432623600"; d="scan'208";a="778632419"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.145])
	by orsmga002.jf.intel.com with ESMTP; 05 Aug 2015 15:55:14 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Aug 2015 15:51:17 -0700
Message-Id: <1438815082-32286-2-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1438815082-32286-1-git-send-email-juro.bystricky@intel.com>
References: <1438815082-32286-1-git-send-email-juro.bystricky@intel.com>
Subject: [meta-mingw][PATCH 1/6] binutils-cross-canadian: upgrade to version 2.25
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
X-List-Received-Date: Wed, 05 Aug 2015 22:55:18 -0000

Renamed the file binutils-cross-canadian_2.24.bbappend to
binutils-cross-canadian_2.25.bbappend.

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-devtools/binutils/binutils-cross-canadian_2.24.bbappend | 5 -----
 recipes-devtools/binutils/binutils-cross-canadian_2.25.bbappend | 5 +++++
 2 files changed, 5 insertions(+), 5 deletions(-)
 delete mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.24.bbappend
 create mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.25.bbappend

diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.24.bbappend b/recipes-devtools/binutils/binutils-cross-canadian_2.24.bbappend
deleted file mode 100644
index 026c932..0000000
--- a/recipes-devtools/binutils/binutils-cross-canadian_2.24.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-EXTRA_OECONF_append_sdkmingw32 = " --disable-plugins --disable-nls"
-LDFLAGS_append_sdkmingw32 = " -Wl,-static"
-
-DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
-DEPENDS_remove_sdkmingw32 = "nativesdk-flex"
diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.25.bbappend b/recipes-devtools/binutils/binutils-cross-canadian_2.25.bbappend
new file mode 100644
index 0000000..026c932
--- /dev/null
+++ b/recipes-devtools/binutils/binutils-cross-canadian_2.25.bbappend
@@ -0,0 +1,5 @@
+EXTRA_OECONF_append_sdkmingw32 = " --disable-plugins --disable-nls"
+LDFLAGS_append_sdkmingw32 = " -Wl,-static"
+
+DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
+DEPENDS_remove_sdkmingw32 = "nativesdk-flex"
-- 
1.9.1


