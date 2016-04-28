Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7BEEE00E16; Thu, 28 Apr 2016 06:05:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC179E00DE2
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 06:04:30 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2016 06:03:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="794230449"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga003.jf.intel.com with ESMTP; 28 Apr 2016 06:03:31 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 16:03:05 +0300
Message-Id: <1731f5e3412694b8a2d9acf409c0fa59c9105c84.1461830592.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
References: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1461830592.git.jussi.kukkonen@intel.com>
References: <cover.1461830592.git.jussi.kukkonen@intel.com>
Subject: [matchbox-desktop-2][PATCH 12/16] build: remove unused --enable-standalone option
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
X-List-Received-Date: Thu, 28 Apr 2016 13:05:35 -0000

From: Ross Burton <ross.burton@intel.com>

---
 configure.ac | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/configure.ac b/configure.ac
index afa64ae..774a4ac 100644
--- a/configure.ac
+++ b/configure.ac
@@ -30,13 +30,6 @@ if test x$enable_startup_notification != xno; then
   AC_DEFINE(USE_LIBSN, [1], [Has Startup Notification Support])
 fi
 
-AC_ARG_ENABLE(standalone,
-        AC_HELP_STRING([--enable-standalone], [run in a window, not as the desktop]),
-        enable_standalone=$enableval, enable_standalone=no)
-if test x$enable_standalone != xno; then
-  AC_DEFINE(STANDALONE, [1], [Run in a window])
-fi
-
 AC_ARG_WITH(dbus,
         AC_HELP_STRING([--with-dbus], [use DBus to send a 'loaded' signal]),
         with_dbus=$withval, with_dbus=no)
-- 
2.8.1


