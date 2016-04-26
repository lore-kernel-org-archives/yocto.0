Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96198E00CEC; Tue, 26 Apr 2016 00:57:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F4B4E00C37
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 00:57:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Apr 2016 00:57:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,536,1455004800"; d="scan'208";a="962814618"
Received: from heimdall.fi.intel.com ([10.237.68.34])
	by orsmga002.jf.intel.com with ESMTP; 26 Apr 2016 00:57:15 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 26 Apr 2016 10:57:00 +0300
Message-Id: <1461657420-30392-1-git-send-email-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [PATCH][matchbox-wm] wm: Do not set MB theme based on Net/ThemeName
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
X-List-Received-Date: Tue, 26 Apr 2016 07:57:21 -0000

MBWM already supports setting MB theme with "MATCHBOX/THEME",
there is no advantage to also set it with "Net/ThemeName" -- the
expectation that MBWM has a matching theme for all toolkit themes
is not realistic.

Net/ThemeName is used by Gtk+ to set Gtk theme so this change allows
the Gtk theme and MBWM theme to have different names.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 src/wm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/src/wm.c b/src/wm.c
index 00d88c5..cb033c6 100644
--- a/src/wm.c
+++ b/src/wm.c
@@ -3039,7 +3039,6 @@ wm_xsettings_notify_cb (const char       *name,
   int key = XSET_UNKNOWN;
   
   struct _mb_xsettings { char *name; int value; } mb_xsettings[] = {
-    { "Net/ThemeName",      XSET_THEME     },
     { "MATCHBOX/THEME",     XSET_THEME     },
     { "MATCHBOX/CURSOR",    XSET_CURSOR    },
     { "MATCHBOX/TITLEBARS", XSET_TITLEBARS }, /* XXX Not implemeted */
-- 
2.8.1


