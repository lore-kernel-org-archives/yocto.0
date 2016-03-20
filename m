Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31C58E00CB4; Sun, 20 Mar 2016 04:24:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 827E2E00C73
	for <yocto@yoctoproject.org>; Sun, 20 Mar 2016 04:24:45 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP; 20 Mar 2016 04:24:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,365,1455004800"; d="scan'208";a="69863281"
Received: from lauridse-mobl2.ger.corp.intel.com (HELO
	heimdall.ger.corp.intel.com) ([10.252.7.136])
	by fmsmga004.fm.intel.com with ESMTP; 20 Mar 2016 04:24:43 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Sun, 20 Mar 2016 13:24:37 +0200
Message-Id: <1458473077-22833-1-git-send-email-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [matchbox-panel-2][PATCH] showdesktop: Make sure active state is initialized
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
X-List-Received-Date: Sun, 20 Mar 2016 11:24:46 -0000

There are cases (in qemu at least) where set_active()
is never called on startup. Make sure we initialize the active
state so the icon gets loaded and the applet is not confused
about the current state.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 applets/showdesktop/showdesktop.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/applets/showdesktop/showdesktop.c b/applets/showdesktop/showdesktop.c
index 61dd5c2..33c13e1 100644
--- a/applets/showdesktop/showdesktop.c
+++ b/applets/showdesktop/showdesktop.c
@@ -181,6 +181,12 @@ button_clicked_cb (GtkButton         *button,
 	            &xev);
 }
 
+static void
+realize_cb (GtkWidget *button, ShowDesktopApplet *applet)
+{
+        sync_applet (applet);
+}
+
 G_MODULE_EXPORT GtkWidget *
 mb_panel_applet_create (const char    *id,
                         GtkOrientation orientation)
@@ -216,6 +222,10 @@ mb_panel_applet_create (const char    *id,
                           "clicked",
                           G_CALLBACK (button_clicked_cb),
                           applet);
+        g_signal_connect (button,
+                          "realize",
+                          G_CALLBACK (realize_cb),
+                          applet);
 
         g_object_weak_ref (G_OBJECT (button),
                            (GWeakNotify) show_desktop_applet_free,
-- 
2.7.0


