Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 921BDE00D94; Tue,  3 May 2016 04:31:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8476EE00DA7
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:30:56 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:30:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489605"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:30:55 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:24 +0300
Message-Id: <0a94521d70f9562e22ac30bd54a8bcba5816d19f.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 05/25] showdesktop: port to GTK+ 3
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
X-List-Received-Date: Tue, 03 May 2016 11:31:07 -0000

From: Ross Burton <ross.burton@intel.com>

---
 applets/showdesktop/showdesktop.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/applets/showdesktop/showdesktop.c b/applets/showdesktop/showdesktop.c
index 33c13e1..e40ebc3 100644
--- a/applets/showdesktop/showdesktop.c
+++ b/applets/showdesktop/showdesktop.c
@@ -1,4 +1,4 @@
-/* 
+/*
  * (C) 2006 OpenedHand Ltd.
  *
  * Author: Jorn Baayen <jorn@openedhand.com>
@@ -20,7 +20,7 @@ typedef struct {
         gboolean active;
 
         Atom atom;
-        
+
         GdkWindow *root_window;
 } ShowDesktopApplet;
 
@@ -50,7 +50,7 @@ set_active (ShowDesktopApplet *applet, gboolean active)
         applet->active = active;
 
         /* TODO: remove this function and instead use a toggle button? */
-        
+
         icon = "panel-user-desktop";
 
         mb_panel_scaling_image_set_icon (applet->image, icon);
@@ -71,8 +71,7 @@ sync_applet (ShowDesktopApplet *applet)
 
         gdk_error_trap_push ();
         result = XGetWindowProperty (GDK_DISPLAY_XDISPLAY (display),
-                                     GDK_WINDOW_XWINDOW
-                                            (applet->root_window),
+                                     GDK_WINDOW_XID (applet->root_window),
                                      applet->atom,
                                      0,
                                      G_MAXLONG,
@@ -160,13 +159,13 @@ button_clicked_cb (GtkButton         *button,
 
         widget = GTK_WIDGET (button);
         screen = GDK_SCREEN_XSCREEN (gtk_widget_get_screen (widget));
-  
+
         xev.xclient.type = ClientMessage;
         xev.xclient.serial = 0;
         xev.xclient.send_event = True;
         xev.xclient.display = DisplayOfScreen (screen);
         xev.xclient.window = RootWindowOfScreen (screen);
-        xev.xclient.message_type = applet->atom; 
+        xev.xclient.message_type = applet->atom;
         xev.xclient.format = 32;
         xev.xclient.data.l[0] = !applet->active;
         xev.xclient.data.l[1] = 0;
@@ -194,12 +193,10 @@ mb_panel_applet_create (const char    *id,
         ShowDesktopApplet *applet;
         GtkWidget *button, *image;
 
-        /* Create applet data structure */
         applet = g_slice_new0 (ShowDesktopApplet);
 
         applet->root_window = NULL;
 
-        /* Create button */
         button = gtk_button_new ();
         applet->button = GTK_BUTTON (button);
 
@@ -231,7 +228,6 @@ mb_panel_applet_create (const char    *id,
                            (GWeakNotify) show_desktop_applet_free,
                            applet);
 
-        /* Show! */
         gtk_widget_show_all (button);
 
         return button;
-- 
2.8.1


