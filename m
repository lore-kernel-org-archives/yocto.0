Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25304E00DC6; Thu, 28 Apr 2016 06:04:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C1B4E00DC6
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 06:04:17 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2016 06:03:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="794230232"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga003.jf.intel.com with ESMTP; 28 Apr 2016 06:03:17 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 16:02:54 +0300
Message-Id: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <cover.1461830592.git.jussi.kukkonen@intel.com>
References: <cover.1461830592.git.jussi.kukkonen@intel.com>
Subject: [matchbox-desktop-2][PATCH 01/16] Initial port to GTK+ 3
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
X-List-Received-Date: Thu, 28 Apr 2016 13:04:57 -0000

From: Ross Burton <ross.burton@intel.com>

More to be done, but it works.  The only known regression is that startup
notification isn't multi-screen aware, but this should be ported to use GAppInfo
in the future.

Also themeing is likely to be broken, but this needs to be rethought for GTK+ 3
anyway.
---
 configure.ac             |  2 +-
 libtaku/launcher-util.c  | 23 +++++++----------
 libtaku/taku-icon-tile.c |  6 ++---
 libtaku/taku-table.c     | 64 ++++++++++++++++++++++++++----------------------
 libtaku/taku-tile.c      | 44 ++++++++++++++-------------------
 src/desktop.c            |  2 +-
 src/taku-category-bar.c  | 12 ++++++---
 7 files changed, 75 insertions(+), 78 deletions(-)

diff --git a/configure.ac b/configure.ac
index 5ec6f76..afa64ae 100644
--- a/configure.ac
+++ b/configure.ac
@@ -18,7 +18,7 @@ if test x$inotify_support = xyes; then
         AC_DEFINE(WITH_INOTIFY, [1], [If inotify is enabled])
 fi
 
-PKG_CHECK_MODULES(GTK, [glib-2.0 >= 2.14 gtk+-2.0 x11])
+PKG_CHECK_MODULES(GTK, [glib-2.0 >= 2.14 gtk+-3.0 x11])
 
 AC_ARG_ENABLE(startup_notification,
         AC_HELP_STRING([--disable-startup-notification], [disable startup notification support]),
diff --git a/libtaku/launcher-util.c b/libtaku/launcher-util.c
index b8e37d1..89333f9 100644
--- a/libtaku/launcher-util.c
+++ b/libtaku/launcher-util.c
@@ -266,23 +266,18 @@ launcher_start (GtkWidget *widget,
                                   gtk_get_current_event_time ());
   }
 #endif
-  
-  /* GTK+ 2.11.3 has a gdk_spawn_on_screen which doesn't trash envp */
-#if GTK_CHECK_VERSION(2,11,3)
-  if (!gdk_spawn_on_screen (gtk_widget_get_screen (widget),
-#else
-  if (!g_spawn_async (
-#endif
-                            NULL, argv, NULL,
-                            G_SPAWN_SEARCH_PATH,
-                            child_setup,
+
+  /* TODO: use GAppInfo */
+  if (!g_spawn_async (NULL, argv, NULL,
+                      G_SPAWN_SEARCH_PATH,
+                      child_setup,
 #ifdef USE_LIBSN
-                            use_sn ? context : NULL,
+                      use_sn ? context : NULL,
 #else
-                            NULL,
+                      NULL,
 #endif
-                            NULL,
-                            &error)) {
+                      NULL,
+                      &error)) {
     g_warning ("Cannot launch %s: %s", argv[0], error->message);
     g_error_free (error);
 #ifdef USE_LIBSN
diff --git a/libtaku/taku-icon-tile.c b/libtaku/taku-icon-tile.c
index 7af3d19..2e562aa 100644
--- a/libtaku/taku-icon-tile.c
+++ b/libtaku/taku-icon-tile.c
@@ -65,13 +65,13 @@ tile_arrange (TakuIconTile *tile)
     case GTK_ORIENTATION_VERTICAL :
       gtk_misc_set_alignment (GTK_MISC (tile->priv->primary), 0.5, 0.5);
       gtk_misc_set_alignment (GTK_MISC (tile->priv->secondary), 0.5, 0.5);
-      box = gtk_vbox_new (FALSE, 6);
+      box = gtk_box_new (GTK_ORIENTATION_VERTICAL, 6);
       break;
     default:
     case GTK_ORIENTATION_HORIZONTAL :
       gtk_misc_set_alignment (GTK_MISC (tile->priv->primary), 0.0, 0.5);
       gtk_misc_set_alignment (GTK_MISC (tile->priv->secondary), 0.0, 0.5);
-      box = gtk_hbox_new (FALSE, 6);
+      box = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 6);
       break;
     }
     
@@ -79,7 +79,7 @@ tile_arrange (TakuIconTile *tile)
     
     gtk_box_pack_start (GTK_BOX (box), tile->priv->icon, FALSE, FALSE, 0);
     
-    vbox = gtk_vbox_new (FALSE, 6);
+    vbox = gtk_box_new (GTK_ORIENTATION_VERTICAL, 6);
     gtk_widget_show (vbox);
 
     gtk_box_pack_start (GTK_BOX (vbox), tile->priv->primary, TRUE, TRUE, 0);
diff --git a/libtaku/taku-table.c b/libtaku/taku-table.c
index 1b2fa0e..67f630e 100644
--- a/libtaku/taku-table.c
+++ b/libtaku/taku-table.c
@@ -128,7 +128,7 @@ im_context_commit_cb (GtkIMContext *context,
     }
 
     tile = g_sequence_get (iter);
-    if (!GTK_WIDGET_VISIBLE (tile))
+    if (!gtk_widget_get_visible (GTK_WIDGET (tile)))
       goto next;
 
     text = taku_tile_get_search_key (tile);
@@ -155,20 +155,25 @@ next:
 static gboolean
 on_tile_focus (GtkWidget *widget, GdkEventFocus *event, gpointer user_data)
 {
-  GtkWidget *viewport = GTK_WIDGET (user_data)->parent;
+  GtkWidget *container = GTK_WIDGET (user_data);
+  GtkWidget *viewport = gtk_widget_get_parent (container);
+  GtkAllocation widget_alloc, viewport_alloc;
   GtkAdjustment *adjustment;
-  
-  /* If the lowest point of the tile is lower than the height of the viewport, 
+
+  gtk_widget_get_allocation (widget, &widget_alloc);
+  gtk_widget_get_allocation (viewport, &viewport_alloc);
+
+  /* If the lowest point of the tile is lower than the height of the viewport,
    * or if the top of the tile is higher than the viewport is... */
-  if (widget->allocation.y +
-      widget->allocation.height > viewport->allocation.height ||
-      widget->allocation.y < viewport->allocation.height) {
-    adjustment = gtk_viewport_get_vadjustment (GTK_VIEWPORT (viewport));
-    
+  if (widget_alloc.y +
+      widget_alloc.height > viewport_alloc.height ||
+      widget_alloc.y < viewport_alloc.height) {
+    adjustment = gtk_scrollable_get_vadjustment (GTK_SCROLLABLE (viewport));
+
     gtk_adjustment_clamp_page (adjustment,
-                               widget->allocation.y,
-                               widget->allocation.y +
-                               widget->allocation.height);
+                               widget_alloc.y,
+                               widget_alloc.y +
+                               widget_alloc.height);
   }
 
   return FALSE;
@@ -216,7 +221,7 @@ reflow (TakuTable *table)
   int i;
 
   /* Only reflow when necessary */
-  if (!GTK_WIDGET_REALIZED (table))
+  if (!gtk_widget_get_realized (GTK_WIDGET (table)))
     return;
 
   /* Remove dummies */
@@ -320,21 +325,25 @@ calculate_columns (GtkWidget *widget)
   PangoFontMetrics *metrics;
   int width, new_cols;
   guint cell_text_width = DEFAULT_WIDTH;
+  GtkAllocation allocation;
+
+  gtk_widget_get_allocation (widget, &allocation);
 
   /* If we are currently reflowing the tiles, or the final allocation hasn't
      been decided yet, return */
-  if (!GTK_WIDGET_REALIZED (widget) || table->priv->reflowing ||
-      widget->allocation.width <= 1)
+  if (!gtk_widget_get_realized (widget) ||
+      table->priv->reflowing ||
+      allocation.width <= 1)
     return;
 
   context = gtk_widget_get_pango_context (widget);
-  metrics = pango_context_get_metrics (context, widget->style->font_desc, NULL);
+  metrics = pango_context_get_metrics (context, gtk_widget_get_style (widget)->font_desc, NULL);
 
   gtk_widget_style_get (widget, "cell-text-width", &cell_text_width, NULL);
 
   width = PANGO_PIXELS
           (cell_text_width * pango_font_metrics_get_approximate_char_width (metrics));
-  new_cols = MAX (1, widget->allocation.width / width);
+  new_cols = MAX (1, allocation.width / width);
 
   if (table->priv->columns != new_cols) {
     table->priv->columns = new_cols;
@@ -352,7 +361,7 @@ taku_table_realize (GtkWidget *widget)
 
   (* GTK_WIDGET_CLASS (taku_table_parent_class)->realize) (widget);
 
-  gtk_im_context_set_client_window (self->priv->im_context, widget->window);
+  gtk_im_context_set_client_window (self->priv->im_context, gtk_widget_get_window (widget));
 
   calculate_columns (widget);
 }
@@ -368,15 +377,11 @@ taku_table_unrealize (GtkWidget *widget)
 }
 
 static void
-taku_table_size_allocate (GtkWidget     *widget,
-                          GtkAllocation *allocation)
+on_size_allocate (GtkWidget     *widget,
+                          GtkAllocation *allocation,
+                          gpointer       user_data)
 {
-  widget->allocation = *allocation;
-
   calculate_columns (widget);
-
-  (* GTK_WIDGET_CLASS (taku_table_parent_class)->size_allocate)
-    (widget, allocation);
 }
 
 static void
@@ -438,7 +443,7 @@ taku_table_grab_focus (GtkWidget *widget)
   while (!g_sequence_iter_is_end (iter)) {
     GtkWidget *widget = g_sequence_get (iter);
 
-    if (GTK_WIDGET_VISIBLE (widget)) {
+    if (gtk_widget_get_visible (widget)) {
       gtk_widget_grab_focus (widget);
 
       break;
@@ -472,16 +477,15 @@ taku_table_class_init (TakuTableClass *klass)
   g_type_class_add_private (klass, sizeof (TakuTablePrivate));
 
   object_class->finalize     = taku_table_finalize;
-  
+
   widget_class->realize         = taku_table_realize;
   widget_class->unrealize       = taku_table_unrealize;
-  widget_class->size_allocate   = taku_table_size_allocate;
   widget_class->style_set       = taku_table_style_set;
   widget_class->focus_in_event  = taku_table_focus_in_event;
   widget_class->focus_out_event = taku_table_focus_out_event;
   widget_class->key_press_event = taku_table_key_press_event;
   widget_class->grab_focus      = taku_table_grab_focus;
-  
+
   container_class->add    = container_add;
   container_class->remove = container_remove;
 
@@ -498,6 +502,8 @@ taku_table_init (TakuTable *self)
 {
   self->priv = GET_PRIVATE (self);
 
+  g_signal_connect (self, "size-allocate", G_CALLBACK (on_size_allocate), NULL);
+
   gtk_container_set_border_width (GTK_CONTAINER (self), 6);
   gtk_table_set_row_spacings (GTK_TABLE (self), 6);
   gtk_table_set_col_spacings (GTK_TABLE (self), 6);
diff --git a/libtaku/taku-tile.c b/libtaku/taku-tile.c
index 958c131..52f7885 100644
--- a/libtaku/taku-tile.c
+++ b/libtaku/taku-tile.c
@@ -29,32 +29,23 @@ enum {
 static guint signals[LAST_SIGNAL];
 
 static gboolean
-taku_tile_expose (GtkWidget      *widget,
-                  GdkEventExpose *event)
+taku_tile_draw (GtkWidget *widget, cairo_t *cr, gpointer user_data)
 {
-  if (GTK_WIDGET_DRAWABLE (widget)) {
-    gint x, y, width, height;
-    GtkStateType state;
-
-    x = widget->allocation.x;
-    y = widget->allocation.y;
-    width = widget->allocation.width;
-    height = widget->allocation.height;
-
-    state = GTK_WIDGET_STATE (widget);
-    /* If this isn't isn't being drawn active and it's focused, highlight it */
-    if (state != GTK_STATE_ACTIVE && GTK_WIDGET_HAS_FOCUS (widget)) {
-      state = GTK_STATE_SELECTED;
-    
-
-      gtk_paint_flat_box (widget->style, widget->window,
-                          state, GTK_SHADOW_NONE,
-                          &event->area, widget, NULL,
-                          x, y, width, height);
-    }
-    (* GTK_WIDGET_CLASS (taku_tile_parent_class)->expose_event) (widget, event);
+  GtkStyleContext *context;
+  int width, height;
+
+  context = gtk_widget_get_style_context (widget);
+
+  width = gtk_widget_get_allocated_width (widget);
+  height = gtk_widget_get_allocated_height (widget);
+
+  if (gtk_style_context_get_state (context) != GTK_STATE_FLAG_ACTIVE &&
+      gtk_widget_has_focus (widget)) {
+    gtk_style_context_set_state (context, GTK_STATE_SELECTED);
+
+    gtk_render_background (context, cr, 0, 0, width, height);
   }
-  
+
   return FALSE;
 }
 
@@ -123,7 +114,6 @@ taku_tile_class_init (TakuTileClass *klass)
 {
   GtkWidgetClass *widget_class = GTK_WIDGET_CLASS (klass);
 
-  widget_class->expose_event = taku_tile_expose;
   widget_class->button_release_event = taku_tile_button_release;
   widget_class->enter_notify_event = taku_tile_enter_notify;
   widget_class->leave_notify_event = taku_tile_leave_notify;
@@ -152,9 +142,11 @@ taku_tile_class_init (TakuTileClass *klass)
 static void
 taku_tile_init (TakuTile *self)
 {
-  GTK_WIDGET_SET_FLAGS (GTK_WIDGET (self), GTK_CAN_FOCUS);
+  gtk_widget_set_can_focus (GTK_WIDGET (self), TRUE);
   gtk_event_box_set_visible_window (GTK_EVENT_BOX (self), FALSE);
   gtk_container_set_border_width (GTK_CONTAINER (self), 6);
+
+  g_signal_connect (self, "draw", G_CALLBACK (taku_tile_draw), NULL);
 }
 
 GtkWidget *
diff --git a/src/desktop.c b/src/desktop.c
index 94b4ddf..22beeab 100644
--- a/src/desktop.c
+++ b/src/desktop.c
@@ -180,7 +180,7 @@ create_desktop (void)
   gtk_container_add (GTK_CONTAINER (window), fixed);
 
   /* Main VBox */
-  box = gtk_vbox_new (FALSE, 0);
+  box = gtk_box_new (GTK_ORIENTATION_VERTICAL, 0);
   gtk_widget_show (box);
   gtk_fixed_put (GTK_FIXED (fixed), box, 0, 0);
   /* Set a sane default in case there is no work area defined yet */
diff --git a/src/taku-category-bar.c b/src/taku-category-bar.c
index afbe90d..765c713 100644
--- a/src/taku-category-bar.c
+++ b/src/taku-category-bar.c
@@ -135,11 +135,13 @@ position_menu (GtkMenu *menu,
                int *x, int *y, gboolean *push_in, gpointer user_data)
 {
   GtkWidget *widget = GTK_WIDGET (user_data);
+  GtkAllocation allocation;
 
-  gdk_window_get_origin (widget->window, x, y);
+  gdk_window_get_origin (gtk_widget_get_window (widget), x, y);
+  gtk_widget_get_allocation (widget, &allocation);
 
-  *x += widget->allocation.x;
-  *y += widget->allocation.y + widget->allocation.height;
+  *x += allocation.x;
+  *y += allocation.y + allocation.height;
 
   *push_in = TRUE;
 }
@@ -172,6 +174,7 @@ popup_menu (GtkWidget *button, GdkEventButton *event, gpointer user_data)
   TakuCategoryBar *bar;
   TakuCategoryBarPrivate *priv;
   GtkWidget *menu;
+  GtkAllocation allocation;
   GList *l;
 
   bar = TAKU_CATEGORY_BAR (user_data);
@@ -183,7 +186,8 @@ popup_menu (GtkWidget *button, GdkEventButton *event, gpointer user_data)
 
   /* Create menu */
   menu = gtk_menu_new ();
-  gtk_widget_set_size_request (menu, GTK_WIDGET (button)->allocation.width, -1);
+  gtk_widget_get_allocation (button, &allocation);
+  gtk_widget_set_size_request (menu, allocation.width, -1);
 
   g_signal_connect (menu, "selection-done", G_CALLBACK (popdown_menu), button);
 
-- 
2.8.1


