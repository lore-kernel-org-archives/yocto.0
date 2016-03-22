Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A52CCE004A0; Tue, 22 Mar 2016 03:41:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72FE2E00443
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 03:41:55 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 22 Mar 2016 03:41:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,376,1455004800"; d="scan'208";a="768946985"
Received: from heimdall.fi.intel.com ([10.237.68.41])
	by orsmga003.jf.intel.com with ESMTP; 22 Mar 2016 03:41:53 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Mar 2016 12:41:35 +0200
Message-Id: <1458643295-23529-1-git-send-email-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [matchbox-desktop-2][PATCH] Do nothing on delete-event when not STANDALONE
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
X-List-Received-Date: Tue, 22 Mar 2016 10:41:58 -0000

This prevents an opportunistic alt-F4 from closing the desktop.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 src/desktop.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/src/desktop.c b/src/desktop.c
index d4fc2fb..94b4ddf 100644
--- a/src/desktop.c
+++ b/src/desktop.c
@@ -122,6 +122,15 @@ load_items (TakuMenu *menu)
 
 }
 
+#ifndef STANDALONE
+static gboolean
+delete_event_cb (GtkWidget *widget, GdkEvent *event, gpointer user_data)
+{
+  /* prevent default handler from destroying the window */
+  return TRUE;
+}
+#endif
+
 static void
 workarea_changed (int x, int y, int w, int h)
 {
@@ -144,11 +153,11 @@ create_desktop (void)
   gtk_icon_size_register ("taku-icon", 64, 64);
 
   window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
-  g_signal_connect (window, "delete-event", G_CALLBACK (gtk_main_quit), NULL);
   gtk_widget_set_name (window, "TakuWindow");
   gtk_window_set_title (GTK_WINDOW (window), _("Desktop"));
 
 #ifndef STANDALONE
+  g_signal_connect (window, "delete-event", G_CALLBACK (delete_event_cb), NULL);
   gtk_window_set_type_hint (GTK_WINDOW (window), GDK_WINDOW_TYPE_HINT_DESKTOP);
   gtk_window_set_skip_taskbar_hint (GTK_WINDOW (window), TRUE);
 
@@ -156,6 +165,7 @@ create_desktop (void)
   screen_w = gdk_screen_get_width (screen);
   screen_h = gdk_screen_get_height (screen);
 #else
+  g_signal_connect (window, "delete-event", G_CALLBACK (gtk_main_quit), NULL);
   screen_w = 640;
   screen_h = 480;
 #endif
-- 
2.7.0


