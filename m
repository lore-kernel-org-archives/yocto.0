Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93D27E00E4B; Fri, 29 Apr 2016 00:47:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95955E00E46
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 00:47:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga104.fm.intel.com with ESMTP; 29 Apr 2016 00:47:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,550,1455004800"; d="scan'208";a="968998426"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by fmsmga002.fm.intel.com with ESMTP; 29 Apr 2016 00:47:40 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Apr 2016 10:47:41 +0300
Message-Id: <4a06d2169cf1fdcb4427c105fdc54fc80c3f334b.1461913863.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <957fe17fcfb2826ed1245ef79346d4edf35febb6.1461913863.git.jussi.kukkonen@intel.com>
References: <957fe17fcfb2826ed1245ef79346d4edf35febb6.1461913863.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1461913863.git.jussi.kukkonen@intel.com>
References: <cover.1461913863.git.jussi.kukkonen@intel.com>
Subject: [xsettings-daemon][PATCH 2/2] Use gdk-x11-3.0 instead of 2.0
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
X-List-Received-Date: Fri, 29 Apr 2016 07:47:43 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 configure.ac | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/configure.ac b/configure.ac
index b3e7dae..5af0c52 100644
--- a/configure.ac
+++ b/configure.ac
@@ -14,7 +14,7 @@ AC_PROG_CC
 
 
 dnl TODO: make gconf optional
-PKG_CHECK_MODULES(APP, [gconf-2.0 gdk-x11-2.0 x11])
+PKG_CHECK_MODULES(APP, [gconf-2.0 gdk-x11-3.0 x11])
 
 
 AC_SUBST(APP_CFLAGS)
-- 
2.8.1


