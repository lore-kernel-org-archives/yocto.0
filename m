Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20135E00D5D; Tue,  3 May 2016 04:30:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E71C3E00D89
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:30:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:30:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489563"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:30:51 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:21 +0300
Message-Id: <0d9f4e0626987cda3748f4577e625d940f9935b0.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 02/25] windowselector: port to GTK+ 3
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
 applets/windowselector/windowselector.c | 39 ++++++++++++++++++---------------
 1 file changed, 21 insertions(+), 18 deletions(-)

diff --git a/applets/windowselector/windowselector.c b/applets/windowselector/windowselector.c
index 4608a85..9c1dadf 100644
--- a/applets/windowselector/windowselector.c
+++ b/applets/windowselector/windowselector.c
@@ -1,4 +1,4 @@
-/* 
+/*
  * (C) 2006, 2007 OpenedHand Ltd.
  *
  * Authors: Jorn Baayen <jorn@openedhand.com>
@@ -148,8 +148,9 @@ get_text_property (WindowSelectorApplet *applet,
         if (gdk_error_trap_pop () || result == 0)
                 return NULL;
 
-        count = gdk_text_property_to_utf8_list
-                        (gdk_x11_xatom_to_atom (text.encoding),
+        count = gdk_text_property_to_utf8_list_for_display
+                        (display,
+                         gdk_x11_xatom_to_atom (text.encoding),
                          text.format,
                          text.value,
                          text.nitems,
@@ -370,7 +371,7 @@ get_current_app_window (WindowSelectorApplet *applet)
 
 
         result = XGetWindowProperty (GDK_DISPLAY_XDISPLAY (display),
-                                     GDK_WINDOW_XWINDOW (applet->root_window),
+                                     GDK_WINDOW_XID (applet->root_window),
                                      applet->atoms[_MB_CURRENT_APP_WINDOW],
                                      0, 1,
                                      False,
@@ -412,18 +413,18 @@ window_menu_item_activate_cb (GtkWidget            *widget,
                         (g_object_get_data (G_OBJECT (widget), "window"));
         screen = GDK_SCREEN_XSCREEN (gtk_widget_get_screen (widget));
         toplevel = gtk_widget_get_toplevel (GTK_WIDGET (applet->button));
-  
+
         /* Send _NET_ACTIVE_WINDOW message */
         xev.xclient.type = ClientMessage;
         xev.xclient.serial = 0;
         xev.xclient.send_event = True;
         xev.xclient.display = DisplayOfScreen (screen);
         xev.xclient.window = window;
-        xev.xclient.message_type = applet->atoms[_NET_ACTIVE_WINDOW]; 
+        xev.xclient.message_type = applet->atoms[_NET_ACTIVE_WINDOW];
         xev.xclient.format = 32;
         xev.xclient.data.l[0] = 2;
         xev.xclient.data.l[1] = gtk_get_current_event_time ();
-        xev.xclient.data.l[2] = GDK_WINDOW_XWINDOW (toplevel->window);
+        xev.xclient.data.l[2] = GDK_WINDOW_XID (gtk_widget_get_window (toplevel));
         xev.xclient.data.l[3] = 0;
         xev.xclient.data.l[4] = 0;
 
@@ -431,7 +432,7 @@ window_menu_item_activate_cb (GtkWidget            *widget,
 	            RootWindowOfScreen (screen),
                     False,
 	            SubstructureRedirectMask,
-	            &xev);        
+	            &xev);
 }
 
 
@@ -460,7 +461,7 @@ rebuild_menu (WindowSelectorApplet *applet)
 
         gdk_error_trap_push ();
         result = XGetWindowProperty (GDK_DISPLAY_XDISPLAY (display),
-                                     GDK_WINDOW_XWINDOW (applet->root_window),
+                                     GDK_WINDOW_XID (applet->root_window),
                                      applet->atoms
                                              [_MB_APP_WINDOW_LIST_STACKING],
                                      0,
@@ -563,11 +564,13 @@ position_menu (GtkMenu  *menu,
                gpointer  user_data)
 {
         WindowSelectorApplet *applet = user_data;
-        
-        gdk_window_get_origin (applet->button->window, x, y);
-        
-        *x += applet->button->allocation.x;
-        *y += applet->button->allocation.height;
+        GtkAllocation allocation;
+
+        gdk_window_get_origin (gtk_widget_get_window (applet->button), x, y);
+        gtk_widget_get_allocation (applet->button, &allocation);
+
+        *x += allocation.x;
+        *y += allocation.height;
         *push_in = TRUE;
 }
 
@@ -658,7 +661,7 @@ filter_func (GdkXEvent            *xevent,
                     applet->atoms[_MB_APP_WINDOW_LIST_STACKING]) {
                         /* _MB_APP_WINDOW_LIST_STACKING changed.
                          * Rebuild menu if around. */
-                        if (applet->menu && GTK_WIDGET_VISIBLE (applet->menu))
+                        if (applet->menu && gtk_widget_get_visible (applet->menu))
                                 rebuild_menu (applet);
                 }
                 if (xev->xproperty.atom ==
@@ -744,7 +747,7 @@ screen_changed_cb (GtkWidget         *button,
                                applet);
         
         /* Rebuild menu if around */
-        if (applet->menu && GTK_WIDGET_VISIBLE (applet->menu))
+        if (applet->menu && gtk_widget_get_visible (applet->menu))
                 rebuild_menu (applet);
 
         update_current_app (applet);
@@ -800,12 +803,12 @@ mb_panel_applet_create (const char    *id,
                                 applet->image);
                 break;
         case MODE_ICON_NAME:
-                hbox = gtk_hbox_new (FALSE, 4);
+                hbox = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 4);
                 applet->label = gtk_label_new (NULL);
                 applet->image = gtk_image_new ();
                 gtk_box_pack_start (GTK_BOX (hbox), applet->image,
                                 FALSE, FALSE, 2);
-                gtk_box_pack_start (GTK_BOX (hbox), applet->label, 
+                gtk_box_pack_start (GTK_BOX (hbox), applet->label,
                                 TRUE, TRUE, 0);
                 gtk_container_add (GTK_CONTAINER (applet->button), hbox);
                 break;
-- 
2.8.1


