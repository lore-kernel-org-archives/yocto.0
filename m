Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92D61E00DDA; Thu, 28 Apr 2016 06:05:34 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C58AE00DE7
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 06:04:27 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2016 06:03:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="794230410"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga003.jf.intel.com with ESMTP; 28 Apr 2016 06:03:27 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 16:03:02 +0300
Message-Id: <b773252c2c05637100467b9051815f0aa588d785.1461830592.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
References: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1461830592.git.jussi.kukkonen@intel.com>
References: <cover.1461830592.git.jussi.kukkonen@intel.com>
Subject: [matchbox-desktop-2][PATCH 09/16] More fixes
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
X-List-Received-Date: Thu, 28 Apr 2016 13:05:34 -0000

From: Ross Burton <ross.burton@intel.com>

---
 libtaku/taku-table.c | 34 ++++++++++++----------------------
 libtaku/taku-tile.c  |  2 ++
 libtaku/xutil.c      |  3 +--
 libtaku/xutil.h      |  2 +-
 src/desktop.c        | 17 ++++++++++-------
 5 files changed, 26 insertions(+), 32 deletions(-)

diff --git a/libtaku/taku-table.c b/libtaku/taku-table.c
index 058700e..fa7da18 100644
--- a/libtaku/taku-table.c
+++ b/libtaku/taku-table.c
@@ -190,19 +190,13 @@ reflow_foreach (gpointer widget, gpointer user_data)
   /* Filter out unwanted items */
   if (table->priv->filter != NULL) {
     if (!taku_tile_matches_filter (tile, table->priv->filter)) {
-      gtk_container_child_set (container, GTK_WIDGET (widget),
-                               "left-attach", 0,
-                               "top-attach", 0,
-                               "width", 1,
-                               "height", 1,
-                               NULL);
-      gtk_widget_hide (widget);
+      gtk_widget_set_child_visible (widget, FALSE);
       return;
     }
   }
 
   /* We want this item. Align. */
-  gtk_widget_show (widget);
+  gtk_widget_set_child_visible (widget, TRUE);
 
   gtk_container_child_set (container, GTK_WIDGET (widget),
                            "left-attach", table->priv->x,
@@ -247,12 +241,10 @@ reflow (TakuTable *table)
   for (i = g_sequence_get_length (table->priv->seq);
        i < table->priv->columns; i++) {
     GtkWidget *dummy = gtk_label_new (NULL);
-    gtk_widget_show (dummy);
+    gtk_widget_set_child_visible (dummy, TRUE);
 
-    gtk_grid_attach (GTK_GRID (table),
-                     dummy,
-                     table->priv->x, table->priv->y,
-                     1, 1);
+    gtk_grid_attach (GTK_GRID (table), dummy,
+                     table->priv->x, table->priv->y, 1, 1);
     table->priv->x++;
 
     table->priv->dummies = g_list_prepend (table->priv->dummies, dummy);
@@ -314,19 +306,18 @@ calculate_columns (GtkWidget *widget)
   TakuTable *table = TAKU_TABLE (widget);
   PangoContext *context;
   PangoFontMetrics *metrics;
-  int width, new_cols;
+  int table_width, width, new_cols;
   guint cell_text_width = DEFAULT_WIDTH;
-  GtkAllocation allocation;
 
-  gtk_widget_get_allocation (widget, &allocation);
+  table_width = gtk_widget_get_allocated_width (widget);
 
   /* If we are currently reflowing the tiles, or the final allocation hasn't
      been decided yet, return */
   if (!gtk_widget_get_realized (widget) ||
       table->priv->reflowing ||
-      allocation.width <= 1)
+      table_width <= 1) {
     return;
-
+  }
   context = gtk_widget_get_pango_context (widget);
   metrics = pango_context_get_metrics (context, gtk_widget_get_style (widget)->font_desc, NULL);
 
@@ -334,8 +325,7 @@ calculate_columns (GtkWidget *widget)
 
   width = PANGO_PIXELS
           (cell_text_width * pango_font_metrics_get_approximate_char_width (metrics));
-  new_cols = MAX (1, allocation.width / width);
-
+  new_cols = MAX (1, table_width / width);
   if (table->priv->columns != new_cols) {
     table->priv->columns = new_cols;
 
@@ -369,8 +359,8 @@ taku_table_unrealize (GtkWidget *widget)
 
 static void
 on_size_allocate (GtkWidget     *widget,
-                          GtkAllocation *allocation,
-                          gpointer       user_data)
+                  GtkAllocation *allocation,
+                  gpointer       user_data)
 {
   calculate_columns (widget);
 }
diff --git a/libtaku/taku-tile.c b/libtaku/taku-tile.c
index 802eb5d..974a164 100644
--- a/libtaku/taku-tile.c
+++ b/libtaku/taku-tile.c
@@ -35,6 +35,8 @@ taku_tile_class_init (TakuTileClass *klass)
 static void
 taku_tile_init (TakuTile *self)
 {
+  gtk_widget_set_hexpand (GTK_WIDGET (self), TRUE);
+  gtk_widget_set_vexpand (GTK_WIDGET (self), FALSE);
 }
 
 /* TODO steal GtkButton's draw function and comment out the focus draw code */
diff --git a/libtaku/xutil.c b/libtaku/xutil.c
index 2cc2bad..3cd36bb 100644
--- a/libtaku/xutil.c
+++ b/libtaku/xutil.c
@@ -44,9 +44,8 @@ net_workarea_changed (WorkAreaFunc cb, GdkWindow *window)
   int result, xres, real_format;
   unsigned long items_read, items_left;
   long *coords;
-
   Atom workarea_atom = gdk_x11_get_xatom_by_name ("_NET_WORKAREA");
-  
+
   gdk_error_trap_push ();
   result = XGetWindowProperty (gdk_x11_get_default_xdisplay (), GDK_ROOT_WINDOW (),
                                workarea_atom, 0L, 4L, False,
diff --git a/libtaku/xutil.h b/libtaku/xutil.h
index 8673c22..9ecb805 100644
--- a/libtaku/xutil.h
+++ b/libtaku/xutil.h
@@ -1,4 +1,4 @@
-/* 
+/*
  * Copyright (C) 2007 OpenedHand Ltd
  *
  * This program is free software; you can redistribute it and/or modify it under
diff --git a/src/desktop.c b/src/desktop.c
index b7858b7..db6e800 100644
--- a/src/desktop.c
+++ b/src/desktop.c
@@ -48,8 +48,10 @@ on_item_added (TakuMenu *menu, TakuMenuItem *item, gpointer null)
 
   tile = taku_launcher_tile_new_from_item (item);
 
-  if (tile)
+  if (tile) {
+    gtk_widget_show (tile);
     gtk_container_add (GTK_CONTAINER (table), tile);
+  }
 }
 
 static void
@@ -116,10 +118,11 @@ load_items (TakuMenu *menu)
     if (!l->data)
       continue;
     tile = taku_launcher_tile_new_from_item (l->data);
-    if (tile)
+    if (tile) {
+      gtk_widget_show (tile);
       gtk_container_add (GTK_CONTAINER (table), tile);
+    }
   }
-
 }
 
 #ifndef STANDALONE
@@ -192,7 +195,7 @@ create_desktop (void)
 #else
   x_monitor_workarea (gtk_widget_get_screen (window), workarea_changed);
 #endif
-  
+
   /* Navigation bar */
   bar = TAKU_CATEGORY_BAR (taku_category_bar_new ());
   gtk_widget_show (GTK_WIDGET (bar));
@@ -223,8 +226,8 @@ create_desktop (void)
   taku_category_bar_set_categories (bar, categories);
 
   g_signal_connect (menu, "item-added", G_CALLBACK (on_item_added), NULL);
-  g_signal_connect (menu, "item-removed", G_CALLBACK (on_item_removed), NULL);  
-  
+  g_signal_connect (menu, "item-removed", G_CALLBACK (on_item_removed), NULL);
+
   load_items (menu);
 
   return window;
@@ -235,7 +238,7 @@ destroy_desktop (void)
 {
   while (categories) {
     TakuLauncherCategory *category = categories->data;
-    
+
     taku_launcher_category_free (category);
 
     categories = g_list_delete_link (categories, categories);
-- 
2.8.1


