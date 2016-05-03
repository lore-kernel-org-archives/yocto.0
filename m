Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A667E00D87; Tue,  3 May 2016 04:31:00 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0030DE00D57
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:30:53 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:30:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489576"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:30:52 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:22 +0300
Message-Id: <878b37e9191fa8e52096b80d7c204634c38da6c9.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 03/25] startup: port to GTK+ 3
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
X-List-Received-Date: Tue, 03 May 2016 11:31:00 -0000

From: Ross Burton <ross.burton@intel.com>

---
 applets/startup/startup.c | 63 +++++++++++++++++++++++++----------------------
 1 file changed, 34 insertions(+), 29 deletions(-)

diff --git a/applets/startup/startup.c b/applets/startup/startup.c
index 3554d4c..1b304da 100644
--- a/applets/startup/startup.c
+++ b/applets/startup/startup.c
@@ -1,10 +1,13 @@
+/* -*- Mode: C; tab-width: 8; indent-tabs-mode: nil; c-basic-offset: 8 -*- */
+
 /*
  * startup-monitor - A tray app that provides feedback
  *                             on application startup.
  *
- * Copyright 2004 - 2007, Openedhand Ltd.
+ * Copyright 2004 - 2013, Intel Corp
  * By Matthew Allum <mallum@o-hand.com>,
  * Stefan Schmidt <stefan@openmoko.org>
+ * Ross Burton <ross.burton@intel.com>
  *
  * Based on mb-applet-startup-monitor
  *
@@ -16,7 +19,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */
 
 #include <stdio.h>
@@ -38,7 +40,7 @@
 #include <matchbox-panel/mb-panel.h>
 #include <matchbox-panel/mb-panel-scaling-image.h>
 
-#define TIMEOUT                   20
+#define TIMEOUT 20
 #define HOURGLASS_PIXMAPS 8
 
 typedef struct LaunchItem {
@@ -66,6 +68,7 @@ static gboolean timeout (StartupApplet *applet);
 static void
 startup_applet_free (StartupApplet *applet)
 {
+	/* TODO: this should be in unrealize */
         gdk_window_remove_filter (applet->root_window,
                                   (GdkFilterFunc) filter_func, applet);
         g_slice_free (StartupApplet, applet);
@@ -218,12 +221,38 @@ filter_func (GdkXEvent     *gdk_xevent,
         return GDK_FILTER_CONTINUE;
 }
 
+static void
+on_realize (GtkWidget *widget, gpointer user_data)
+{
+        StartupApplet *applet = user_data;
+        GdkDisplay *display;
+        GdkScreen *screen;
+        Display *xdisplay;
+
+        screen = gtk_widget_get_screen (widget);
+        display = gdk_screen_get_display (screen);
+        xdisplay = GDK_DISPLAY_XDISPLAY (display);
+
+        applet->root_window = gdk_screen_get_root_window (screen);
+
+        applet->sn_display = sn_display_new (xdisplay, NULL, NULL);
+        applet->sn_context = sn_monitor_context_new (applet->sn_display,
+                                                     gdk_screen_get_number (screen),
+                                                     monitor_event_func,
+                                                     applet, NULL);
+
+        XSelectInput (xdisplay,
+                      GDK_WINDOW_XID (applet->root_window),
+                      PropertyChangeMask);
+
+        gdk_window_add_filter (applet->root_window, (GdkFilterFunc)filter_func, applet);
+}
+
 G_MODULE_EXPORT GtkWidget *
 mb_panel_applet_create (const char    *id,
                         GtkOrientation orientation)
 {
         StartupApplet *applet;
-        Display *xdisplay;
 
         /* Create applet data structure */
         applet = g_slice_new0 (StartupApplet);
@@ -242,31 +271,7 @@ mb_panel_applet_create (const char    *id,
         g_object_weak_ref (G_OBJECT(applet->image),
                            (GWeakNotify) startup_applet_free, applet);
 
-        xdisplay = GDK_DISPLAY_XDISPLAY
-                                (gtk_widget_get_display
-                                        (GTK_WIDGET (applet->image)));
-
-        applet->sn_display = sn_display_new (xdisplay, NULL, NULL);
-
-        applet->sn_context = sn_monitor_context_new (applet->sn_display,
-                                                     DefaultScreen(xdisplay),
-                                                     monitor_event_func,
-                                                     (void *) applet,
-                                                     NULL);
-
-        /* We have to select for property events on at least one
-         * root window (but not all as INITIATE messages go to
-         * all root windows)
-         */
-        XSelectInput (xdisplay,
-                      DefaultRootWindow(xdisplay), PropertyChangeMask);
-
-        applet->root_window =
-                gdk_window_lookup_for_display
-                        (gdk_x11_lookup_xdisplay (xdisplay), 0);
-
-        gdk_window_add_filter (applet->root_window,
-                               (GdkFilterFunc) filter_func, applet);
+        g_signal_connect (applet->image, "realize", G_CALLBACK (on_realize), applet);
 
         return GTK_WIDGET (applet->image);
 }
-- 
2.8.1


