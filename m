Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA9FAE00D69; Tue,  3 May 2016 04:30:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EF35E00D5D
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:30:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:30:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489582"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:30:53 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:23 +0300
Message-Id: <6e6c09bf07c162ea2bb6151d972b974c8448f390.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 04/25] startup-notify: port to GTK+ 3
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
 applets/startup-notify/startup.c | 65 +++++++++++++++++++++++++++-------------
 1 file changed, 44 insertions(+), 21 deletions(-)

diff --git a/applets/startup-notify/startup.c b/applets/startup-notify/startup.c
index a65817a..a4686ef 100644
--- a/applets/startup-notify/startup.c
+++ b/applets/startup-notify/startup.c
@@ -302,37 +302,60 @@ init_notify (StartupApplet *applet)
   return TRUE;
 }
 
+static void
+screen_changed_cb (GtkWidget     *widget,
+                   GdkScreen     *old_screen,
+                   StartupApplet *applet)
+{
+  GdkScreen *screen;
+  GdkDisplay *display;
+  Display *xdisplay;
+
+  if (applet->root_window) {
+    gdk_window_remove_filter (applet->root_window,
+                              (GdkFilterFunc) filter_func,
+                              applet);
+  }
+
+  screen = gtk_widget_get_screen (widget);
+  display = gdk_screen_get_display (screen);
+
+  xdisplay = GDK_DISPLAY_XDISPLAY (display);
+
+  applet->sn_display = sn_display_new (xdisplay, NULL, NULL);
+
+  applet->sn_context = sn_monitor_context_new (applet->sn_display,
+                                               gdk_screen_get_number (screen),
+                                               monitor_event_func,
+                                               applet, NULL);
+
+  /* We have to select for property events on at least one root window (but not
+   * all as INITIATE messages go to all root windows)
+   */
+  XSelectInput (xdisplay, DefaultRootWindow (xdisplay), PropertyChangeMask);
+
+  applet->root_window = gdk_x11_window_lookup_for_display
+    (display, DefaultRootWindow (xdisplay));
+
+  gdk_window_add_filter (applet->root_window, (GdkFilterFunc)filter_func, applet);
+}
+
 G_MODULE_EXPORT GtkWidget *
 mb_panel_applet_create (const char *id, GtkOrientation orientation)
 {
   StartupApplet *applet;
   GtkWidget *widget;
-  Display *xdisplay;
-  
+
   applet = g_slice_new0 (StartupApplet);
 
-  widget = gtk_hbox_new (0, FALSE); /* grr */
+  widget = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 0);
   g_object_weak_ref (G_OBJECT (widget), (GWeakNotify)startup_applet_free, applet);
 
   if (init_notify (applet)) {
-    xdisplay = GDK_DISPLAY_XDISPLAY (gtk_widget_get_display (widget));
-    
-    applet->sn_display = sn_display_new (xdisplay, NULL, NULL);
-    
-    applet->sn_context = sn_monitor_context_new (applet->sn_display,
-                                                 DefaultScreen (xdisplay),
-                                                 monitor_event_func,
-                                                 applet, NULL);
-
-    /* We have to select for property events on at least one root window (but not
-     * all as INITIATE messages go to all root windows)
-     */
-    XSelectInput (xdisplay, DefaultRootWindow (xdisplay), PropertyChangeMask);
-    
-    applet->root_window = gdk_window_lookup_for_display
-      (gdk_x11_lookup_xdisplay (xdisplay), 0);
-    
-    gdk_window_add_filter (applet->root_window, (GdkFilterFunc)filter_func, applet);
+          g_signal_connect (widget,
+                            "screen-changed",
+                            G_CALLBACK (screen_changed_cb),
+                            applet);
   }
 
   /* TODO: need to fix the panel to support invisible widgets */
-- 
2.8.1


