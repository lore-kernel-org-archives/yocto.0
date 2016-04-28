Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB37FE00E18; Thu, 28 Apr 2016 06:06:05 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59343E00DDE
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 06:04:37 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2016 06:03:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="794230531"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga003.jf.intel.com with ESMTP; 28 Apr 2016 06:03:36 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 16:03:09 +0300
Message-Id: <606344f8b1652bcc3d369911990cf5bc46a16ab6.1461830592.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
References: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1461830592.git.jussi.kukkonen@intel.com>
References: <cover.1461830592.git.jussi.kukkonen@intel.com>
Subject: [matchbox-desktop-2][PATCH 16/16] Don't set the desktop fullscreen if MODE_DESKTOP
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
X-List-Received-Date: Thu, 28 Apr 2016 13:06:06 -0000

WM paints fullscreen windows over the panel: don't make the
desktop fullscreen.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 src/desktop.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/src/desktop.c b/src/desktop.c
index ddb2786..8234e8c 100644
--- a/src/desktop.c
+++ b/src/desktop.c
@@ -210,7 +210,6 @@ create_desktop (DesktopMode mode)
 
   switch (mode) {
   case MODE_DESKTOP:
-    gtk_window_fullscreen (GTK_WINDOW (window));
   case MODE_TITLEBAR:
     gtk_window_set_type_hint (GTK_WINDOW (window), GDK_WINDOW_TYPE_HINT_DESKTOP);
     gtk_window_set_skip_taskbar_hint (GTK_WINDOW (window), TRUE);
-- 
2.8.1


