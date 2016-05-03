Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FC1BE00D7E; Tue,  3 May 2016 04:31:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92E60E00D7D
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:31:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:31:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489634"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:30:59 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:27 +0300
Message-Id: <5b7b0693d9c55114f2232216e7725ed0effcb793.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 08/25] notify: port to GTK+ 3
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
X-List-Received-Date: Tue, 03 May 2016 11:31:13 -0000

From: Ross Burton <ross.burton@intel.com>

---
 applets/notify/applet.c          | 19 ++++++++++++-------
 applets/notify/mb-notification.c | 38 +++++++++++++++++++++-----------------
 2 files changed, 33 insertions(+), 24 deletions(-)

diff --git a/applets/notify/applet.c b/applets/notify/applet.c
index 2920b12..2d896e8 100644
--- a/applets/notify/applet.c
+++ b/applets/notify/applet.c
@@ -1,4 +1,4 @@
-/* 
+/*
  * (C) 2008 OpenedHand Ltd.
  *
  * Author: Ross Burton <ross@openedhand.com>
@@ -20,9 +20,13 @@ reposition (GtkWindow *window)
 
   screen = gtk_window_get_screen (window);
 
-  gtk_widget_size_request ((GtkWidget*)window, &req);
+  gtk_widget_get_preferred_size (GTK_WIDGET (window), &req, NULL);
+
   if (req.height) {
     gtk_window_resize (window, req.width, req.height);
+    /* TODO: get the primary monitor and then use
+       gdk_screen_get_monitor_geometry() to get the geometry of the primary
+       display, not the overall screen. */
     gtk_window_move (window,
                      gdk_screen_get_width (screen) - req.width,
                      gdk_screen_get_height (screen) - req.height);
@@ -45,7 +49,7 @@ find_widget (GtkContainer *container, guint32 id)
 {
   GList *children, *l;
   GtkWidget *w;
-  
+
   children = gtk_container_get_children (container);
   l = g_list_find_custom (children, GINT_TO_POINTER (id), id_compare);
   w = l ? l->data : NULL;
@@ -86,7 +90,7 @@ on_notification_closed (MbNotifyStore *store, guint id, guint reason, GtkWindow
   w = find_widget ((GtkContainer*)box, id);
   if (w)
     gtk_container_remove (GTK_CONTAINER (box), w);
-  
+
   reposition (window);
 }
 
@@ -95,14 +99,15 @@ mb_panel_applet_create (const char *id, GtkOrientation orientation)
 {
   GtkWidget *window, *box;
   MbNotifyStore *notify;
-  
+
   window = gtk_window_new (GTK_WINDOW_POPUP);
   gtk_widget_set_name (window, "MbNotificationBox");
-  
+  gtk_window_set_gravity (GTK_WINDOW (window), GDK_GRAVITY_SOUTH_EAST);
+
   box = gtk_vbox_new (TRUE, 0);
   gtk_container_add (GTK_CONTAINER (window), box);
   gtk_widget_show_all (window);
-  
+
   notify = mb_notify_store_new ();
   g_signal_connect (notify, "notification-added", G_CALLBACK (on_notification_added), window);
   g_signal_connect (notify, "notification-closed", G_CALLBACK (on_notification_closed), window);
diff --git a/applets/notify/mb-notification.c b/applets/notify/mb-notification.c
index 0d0e97c..e440ec9 100644
--- a/applets/notify/mb-notification.c
+++ b/applets/notify/mb-notification.c
@@ -9,7 +9,7 @@ enum {
 };
 
 static guint signals[N_SIGNALS];
-  
+
 #define GET_PRIVATE(o) \
   (G_TYPE_INSTANCE_GET_PRIVATE ((o), MB_TYPE_NOTIFICATION, MbNotificationPrivate))
 
@@ -31,17 +31,21 @@ on_button_release (MbNotification *notification, GdkEventButton *event)
   }
 }
 
-static gint
-expose (GtkWidget *widget, GdkEventExpose *event)
+static gboolean
+on_draw (GtkWidget *widget, cairo_t *cr)
 {
-  if (gtk_widget_is_drawable (widget)) {
-    gtk_paint_box (widget->style, widget->window,
-                   widget->state, GTK_SHADOW_OUT,
-                   &event->area, widget, "notification",
-                   0, 0, -1, -1);
-    
-    (*GTK_WIDGET_CLASS (mb_notification_parent_class)->expose_event) (widget, event);
-  }
+  GtkStyleContext *style;
+  int width, height;
+
+  style = gtk_widget_get_style_context (widget);
+
+  width = gtk_widget_get_allocated_width (widget);
+  height = gtk_widget_get_allocated_height (widget);
+
+  gtk_render_frame (style, cr, 0, 0, width, height);
+
+  (*GTK_WIDGET_CLASS (mb_notification_parent_class)->draw) (widget, cr);
+
   return FALSE;
 }
 
@@ -52,8 +56,8 @@ mb_notification_class_init (MbNotificationClass *klass)
 
   g_type_class_add_private (klass, sizeof (MbNotificationPrivate));
 
-  widget_class->expose_event = expose;
-  
+  widget_class->draw = on_draw;
+
   signals[CLOSED] = g_signal_new ("closed",
                                   G_OBJECT_CLASS_TYPE (klass),
                                   G_SIGNAL_RUN_FIRST,
@@ -73,13 +77,13 @@ mb_notification_init (MbNotification *self)
   gtk_event_box_set_visible_window (GTK_EVENT_BOX (self), FALSE);
   gtk_widget_add_events (GTK_WIDGET (self), GDK_BUTTON_RELEASE_MASK);
   g_signal_connect (self, "button-release-event", G_CALLBACK (on_button_release), NULL);
-  
-  box = gtk_hbox_new (FALSE, 8);
+
+  box = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 8);
   gtk_container_add (GTK_CONTAINER (self), box);
 
   priv->image = gtk_image_new ();
   gtk_box_pack_start (GTK_BOX (box), priv->image, FALSE, FALSE, 0);
-  
+
   priv->label = gtk_label_new (NULL);
   gtk_misc_set_alignment (GTK_MISC (priv->label), 0.0, 0.5);
   gtk_box_pack_start (GTK_BOX (box), priv->label, TRUE, TRUE, 0);
@@ -106,7 +110,7 @@ mb_notification_update (MbNotification *notification, Notification *n)
     /* TODO: should this default to no image, or "info" */
     gtk_image_clear (GTK_IMAGE (priv->image));
   }
-  
+
   s = g_strdup_printf ("<big><b>%s</b></big>\n"
                        "\n%s", n->summary, n->body ?: NULL);
   gtk_label_set_markup (GTK_LABEL (priv->label), s);
-- 
2.8.1


