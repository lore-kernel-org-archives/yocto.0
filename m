Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08B03E00D5D; Tue,  3 May 2016 04:30:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 611C4E00D6B
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:30:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:30:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489548"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:30:50 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:20 +0300
Message-Id: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 01/25] build: check for GTK+3, and require 3.0
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
X-List-Received-Date: Tue, 03 May 2016 11:30:58 -0000

From: Ross Burton <ross.burton@intel.com>

---
 configure.ac | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/configure.ac b/configure.ac
index 55de6ae..4f38032 100644
--- a/configure.ac
+++ b/configure.ac
@@ -17,10 +17,12 @@ GNOME_COMPILE_WARNINGS
 # base deps
 PKG_CHECK_MODULES(MATCHBOX_PANEL,
                   glib-2.0
+                  gmodule-export-2.0
                   x11
-                  gdk-x11-2.0
-                  gtk+-2.0 >= 2.18
-                  gmodule-export-2.0)
+                  gdk-x11-3.0
+                  gtk+-3.0)
+
+AC_DEFINE_UNQUOTED(GDK_VERSION_MIN_REQUIRED, [GDK_VERSION_3_0], [GTK+ API we require])
 
 # startup-notification
 AC_ARG_ENABLE(startup_notification,
-- 
2.8.1


