Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A43D6E00E25; Thu, 28 Apr 2016 06:05:38 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95028E00DC4
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 06:04:36 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2016 06:03:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="794230509"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga003.jf.intel.com with ESMTP; 28 Apr 2016 06:03:35 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 16:03:08 +0300
Message-Id: <2cd5c7ee8b8596f0e852e53b5843e9711c14f4b1.1461830592.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
References: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1461830592.git.jussi.kukkonen@intel.com>
References: <cover.1461830592.git.jussi.kukkonen@intel.com>
Subject: [matchbox-desktop-2][PATCH 15/16] Use a GtkFlowBox instead of TakuTable
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
X-List-Received-Date: Thu, 28 Apr 2016 13:05:38 -0000

Remove ~500 lines of code by using FlowBox instead of custom code

Also avoid using GtkFixed when in desktop mode

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 libtaku/Makefile.am          |   1 -
 libtaku/taku-launcher-tile.c |   8 +-
 libtaku/taku-launcher-tile.h |   2 +
 libtaku/taku-table.c         | 533 -------------------------------------------
 libtaku/taku-table.h         |  69 ------
 libtaku/taku-tile.c          |   2 +-
 src/desktop.c                | 121 +++++++---
 src/taku-category-bar.c      |  23 +-
 src/taku-category-bar.h      |   5 +-
 9 files changed, 118 insertions(+), 646 deletions(-)
 delete mode 100644 libtaku/taku-table.c
 delete mode 100644 libtaku/taku-table.h

diff --git a/libtaku/Makefile.am b/libtaku/Makefile.am
index 28f5da4..c457d9e 100644
--- a/libtaku/Makefile.am
+++ b/libtaku/Makefile.am
@@ -10,7 +10,6 @@ libtaku_a_SOURCES = \
 	taku-launcher-tile.c taku-launcher-tile.h \
 	taku-menu.h \
 	taku-menu-desktop.c \
-	taku-table.c taku-table.h \
 	taku-tile.c taku-tile.h \
 	xutil.c xutil.h \
 	taku-queue-source.c taku-queue-source.h
diff --git a/libtaku/taku-launcher-tile.c b/libtaku/taku-launcher-tile.c
index 58deafb..b453eac 100644
--- a/libtaku/taku-launcher-tile.c
+++ b/libtaku/taku-launcher-tile.c
@@ -104,7 +104,7 @@ taku_launcher_tile_finalize (GObject *object)
 }
 
 /*
- * Timeout callback to restore the state of the widget after the clicked state
+ * Timeout callback to restore the state of the widget after the activated state
  * change.
  */
 static gboolean
@@ -114,8 +114,8 @@ reset_state (gpointer data)
   return FALSE;
 }
 
-static void
-taku_launcher_tile_clicked (GtkButton *tile, gpointer user_data)
+void
+taku_launcher_tile_activate (TakuLauncherTile *tile)
 {
   TakuLauncherTile *launcher = TAKU_LAUNCHER_TILE (tile);
 
@@ -160,8 +160,6 @@ static void
 taku_launcher_tile_init (TakuLauncherTile *self)
 {
   self->priv = GET_PRIVATE (self);
-
-  g_signal_connect (self, "clicked", G_CALLBACK (taku_launcher_tile_clicked), NULL);
 }
 
 GtkWidget *
diff --git a/libtaku/taku-launcher-tile.h b/libtaku/taku-launcher-tile.h
index 62e8c74..c1b8cf9 100644
--- a/libtaku/taku-launcher-tile.h
+++ b/libtaku/taku-launcher-tile.h
@@ -72,6 +72,8 @@ GtkWidget* taku_launcher_tile_new (void);
 GtkWidget* taku_launcher_tile_new_from_item (TakuMenuItem *item);
 TakuMenuItem* taku_launcher_tile_get_item (TakuLauncherTile *tile);
 
+void taku_launcher_tile_activate (TakuLauncherTile *tile);
+
 void taku_launcher_tile_add_group (TakuLauncherTile *tile, TakuLauncherCategory *category);
 
 void taku_launcher_tile_remove_group (TakuLauncherTile *tile, TakuLauncherCategory *category);
diff --git a/libtaku/taku-table.c b/libtaku/taku-table.c
deleted file mode 100644
index fa7da18..0000000
--- a/libtaku/taku-table.c
+++ /dev/null
@@ -1,533 +0,0 @@
-/*
- * Copyright (C) 2007 OpenedHand Ltd
- *
- * This program is free software; you can redistribute it and/or modify it under
- * the terms of the GNU General Public License as published by the Free Software
- * Foundation; either version 2 of the License, or (at your option) any later
- * version.
- *
- * This program is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
- * details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc., 59 Temple
- * Place - Suite 330, Boston, MA 02111-1307, USA.
- */
-
-#include <config.h>
-#include <gtk/gtk.h>
-#include <string.h>
-#include "taku-table.h"
-#include "taku-tile.h"
-
-G_DEFINE_TYPE (TakuTable, taku_table, GTK_TYPE_GRID);
-
-#define GET_PRIVATE(o) \
-  (G_TYPE_INSTANCE_GET_PRIVATE ((o), TAKU_TYPE_TABLE, TakuTablePrivate))
-
-#define DEFAULT_WIDTH 30
-
-struct _TakuTablePrivate
-{
-  int columns;
-
-  int x, y;
-  gboolean reflowing;
-
-  GSequence *seq;
-
-  gpointer filter;
-
-  GList *dummies;
-
-  GtkIMContext *im_context;
-};
-
-/* Compare two tiles lexographically */
-static int
-compare_tiles (gconstpointer a,
-               gconstpointer b,
-               gpointer      user_data)
-{
-  const char *ka, *kb;
-
-  ka = taku_tile_get_sort_key (TAKU_TILE (a));
-  kb = taku_tile_get_sort_key (TAKU_TILE (b));
-
-  if (ka != NULL && kb == NULL)
-    return 1;
-  else if (ka == NULL && kb != NULL)
-    return -1;
-  else if (ka == NULL && kb == NULL)
-    return 0;
-  else
-    return strcmp (ka, kb);
-}
-
-/* Compare two tiles exactly */
-static int
-compare_tiles_exact (gconstpointer a,
-                     gconstpointer b,
-                     gpointer      user_data)
-{
-  int ret = compare_tiles (a, b, user_data);
-
-  if (ret == 0) {
-    if (a < b)
-      ret = -1;
-    else if (a > b)
-      ret = 1;
-  }
-
-  return ret;
-}
-
-/* Normalize strings for case and representation insensitive comparison */
-static char *
-utf8_normalize_and_casefold (const char *str)
-{
-  char *norm = g_utf8_normalize (str, -1, G_NORMALIZE_ALL);
-  char *fold = g_utf8_casefold (str, -1);
-  g_free (norm);
-  return fold;
-}
-
-/* Process keypress: Focus next tile which's primary text starts with the
- * entered character */
-static void
-im_context_commit_cb (GtkIMContext *context,
-                      const char   *str,
-                      gpointer      user_data)
-{
-  TakuTable *table = TAKU_TABLE (user_data);
-  GSequenceIter *begin_iter, *iter;
-  GtkWidget *toplevel, *focused;
-  char *norm_str;
-
-  norm_str = utf8_normalize_and_casefold (str);
-
-  toplevel = gtk_widget_get_toplevel (GTK_WIDGET (table));
-  focused = gtk_window_get_focus (GTK_WINDOW (toplevel));
-  if (focused)
-    begin_iter = g_sequence_search (table->priv->seq, 
-                                      focused, compare_tiles, NULL);
-  else
-    begin_iter = g_sequence_get_begin_iter (table->priv->seq);
-
-  iter = begin_iter;
-  do {
-    TakuTile *tile;
-    const char *text;
-    char *norm_text;
-
-    if (g_sequence_iter_is_end (iter)) {
-      iter = g_sequence_get_begin_iter (table->priv->seq);
-      if (iter == begin_iter)
-        break;
-    }
-
-    tile = g_sequence_get (iter);
-    if (!gtk_widget_get_visible (GTK_WIDGET (tile)))
-      goto next;
-
-    text = taku_tile_get_search_key (tile);
-    if (text == NULL)
-      goto next;
-
-    norm_text = utf8_normalize_and_casefold (text);
-
-    if (strncmp (norm_str, norm_text, strlen (norm_str)) == 0) {
-      g_free (norm_text);
-      gtk_widget_grab_focus (GTK_WIDGET (tile));
-      break;
-    }
-
-    g_free (norm_text);
-
-next:
-    iter = g_sequence_iter_next (iter);
-  } while (iter != begin_iter);
-
-  g_free (norm_str);
-}
-
-static gboolean
-on_tile_focus (GtkWidget *widget, GdkEventFocus *event, gpointer user_data)
-{
-  GtkWidget *container = GTK_WIDGET (user_data);
-  GtkWidget *viewport = gtk_widget_get_parent (container);
-  GtkAllocation widget_alloc, viewport_alloc;
-  GtkAdjustment *adjustment;
-
-  gtk_widget_get_allocation (widget, &widget_alloc);
-  gtk_widget_get_allocation (viewport, &viewport_alloc);
-
-  /* If the lowest point of the tile is lower than the height of the viewport,
-   * or if the top of the tile is higher than the viewport is... */
-  if (widget_alloc.y +
-      widget_alloc.height > viewport_alloc.height ||
-      widget_alloc.y < viewport_alloc.height) {
-    adjustment = gtk_scrollable_get_vadjustment (GTK_SCROLLABLE (viewport));
-
-    gtk_adjustment_clamp_page (adjustment,
-                               widget_alloc.y,
-                               widget_alloc.y +
-                               widget_alloc.height);
-  }
-
-  return FALSE;
-}
-
-static void
-reflow_foreach (gpointer widget, gpointer user_data)
-{
-  TakuTile *tile = TAKU_TILE (widget);
-  TakuTable *table = TAKU_TABLE (user_data);
-  GtkContainer *container = GTK_CONTAINER (user_data);
-
-  /* Filter out unwanted items */
-  if (table->priv->filter != NULL) {
-    if (!taku_tile_matches_filter (tile, table->priv->filter)) {
-      gtk_widget_set_child_visible (widget, FALSE);
-      return;
-    }
-  }
-
-  /* We want this item. Align. */
-  gtk_widget_set_child_visible (widget, TRUE);
-
-  gtk_container_child_set (container, GTK_WIDGET (widget),
-                           "left-attach", table->priv->x,
-                           "top-attach", table->priv->y,
-                           "width", 1,
-                           "height", 1,
-                           NULL);
-  if (++table->priv->x >= table->priv->columns) {
-    table->priv->x = 0;
-    table->priv->y++;
-  }
-}
-
-static void
-reflow (TakuTable *table)
-{
-  int i;
-
-  /* Only reflow when necessary */
-  if (!gtk_widget_get_realized (GTK_WIDGET (table)))
-    return;
-
-  /* Remove dummies */
-  while (table->priv->dummies) {
-    /* Call into the parent class straight away in order to bypass our
-     * own remove implementation. */
-    (* GTK_CONTAINER_CLASS (taku_table_parent_class)->remove)
-      (GTK_CONTAINER (table), table->priv->dummies->data);
-
-    table->priv->dummies = g_list_delete_link (table->priv->dummies,
-                                               table->priv->dummies);
-  }
-
-  /* Reflow children */
-  table->priv->x = table->priv->y = 0;
-
-  table->priv->reflowing = TRUE;
-  g_sequence_foreach (table->priv->seq, reflow_foreach, table);
-  table->priv->reflowing = FALSE;
-
-  /* Add dummy items if necessary to get required amount of columns */
-  for (i = g_sequence_get_length (table->priv->seq);
-       i < table->priv->columns; i++) {
-    GtkWidget *dummy = gtk_label_new (NULL);
-    gtk_widget_set_child_visible (dummy, TRUE);
-
-    gtk_grid_attach (GTK_GRID (table), dummy,
-                     table->priv->x, table->priv->y, 1, 1);
-    table->priv->x++;
-
-    table->priv->dummies = g_list_prepend (table->priv->dummies, dummy);
-  }
-}
-
-/*
- * Implementation of gtk_container_add, so that applications can just call that
- * and this class manages the position.
- */
-static void
-container_add (GtkContainer *container, GtkWidget *widget)
-{
-  TakuTable *self = TAKU_TABLE (container);
-
-  g_return_if_fail (self);
-  g_return_if_fail (TAKU_IS_TILE (widget));
-
-  g_sequence_insert_sorted (self->priv->seq, widget, compare_tiles, NULL);
-
-  gtk_grid_attach (GTK_GRID (container), widget, 0, 1, 1, 1);
-
-  reflow (self);
-
-  g_signal_connect (widget, "focus-in-event", G_CALLBACK (on_tile_focus), self);
-}
-
-static void
-container_remove (GtkContainer *container, GtkWidget *widget)
-{
-  TakuTable *self = TAKU_TABLE (container);
-  GSequenceIter *iter;
-
-  g_return_if_fail (self);
-
-  /* Find the appropriate iter first */
-  iter = g_sequence_search (self->priv->seq,
-                              widget, compare_tiles_exact, NULL);
-  iter = g_sequence_iter_prev (iter);
-  if (g_sequence_iter_is_end (iter) || g_sequence_get (iter) != widget) {
-    /* We have here a dummy, or something that is not contained */
-    (* GTK_CONTAINER_CLASS (taku_table_parent_class)->remove)
-                                                (container, widget);
-
-    return;
-  }
-
-  /* And then remove it */
-  g_sequence_remove (iter);
-
-  (* GTK_CONTAINER_CLASS (taku_table_parent_class)->remove) (container, widget);
-
-  reflow (self);
-}
-
-static void
-calculate_columns (GtkWidget *widget)
-{
-  TakuTable *table = TAKU_TABLE (widget);
-  PangoContext *context;
-  PangoFontMetrics *metrics;
-  int table_width, width, new_cols;
-  guint cell_text_width = DEFAULT_WIDTH;
-
-  table_width = gtk_widget_get_allocated_width (widget);
-
-  /* If we are currently reflowing the tiles, or the final allocation hasn't
-     been decided yet, return */
-  if (!gtk_widget_get_realized (widget) ||
-      table->priv->reflowing ||
-      table_width <= 1) {
-    return;
-  }
-  context = gtk_widget_get_pango_context (widget);
-  metrics = pango_context_get_metrics (context, gtk_widget_get_style (widget)->font_desc, NULL);
-
-  gtk_widget_style_get (widget, "cell-text-width", &cell_text_width, NULL);
-
-  width = PANGO_PIXELS
-          (cell_text_width * pango_font_metrics_get_approximate_char_width (metrics));
-  new_cols = MAX (1, table_width / width);
-  if (table->priv->columns != new_cols) {
-    table->priv->columns = new_cols;
-
-    reflow (table);
-  }
-
-  pango_font_metrics_unref (metrics);
-}
-
-static void
-taku_table_realize (GtkWidget *widget)
-{
-  TakuTable *self = TAKU_TABLE (widget);
-
-  (* GTK_WIDGET_CLASS (taku_table_parent_class)->realize) (widget);
-
-  gtk_im_context_set_client_window (self->priv->im_context, gtk_widget_get_window (widget));
-
-  calculate_columns (widget);
-}
-
-static void
-taku_table_unrealize (GtkWidget *widget)
-{
-  TakuTable *self = TAKU_TABLE (widget);
-
-  gtk_im_context_set_client_window (self->priv->im_context, NULL);
-
-  (* GTK_WIDGET_CLASS (taku_table_parent_class)->unrealize) (widget);
-}
-
-static void
-on_size_allocate (GtkWidget     *widget,
-                  GtkAllocation *allocation,
-                  gpointer       user_data)
-{
-  calculate_columns (widget);
-}
-
-static void
-taku_table_style_set (GtkWidget *widget,
-                      GtkStyle  *previous_style)
-{
-  (* GTK_WIDGET_CLASS (taku_table_parent_class)->style_set)
-    (widget, previous_style);
-
-  calculate_columns (widget);
-}
-
-static int
-taku_table_focus_in_event (GtkWidget *widget, GdkEventFocus *event)
-{
-  TakuTable *self = TAKU_TABLE (widget);
-
-  gtk_im_context_focus_in (self->priv->im_context);
-
-  (* GTK_WIDGET_CLASS (taku_table_parent_class)->focus_in_event)
-    (widget, event);
-
-  return FALSE;
-}
-
-static int
-taku_table_focus_out_event (GtkWidget *widget, GdkEventFocus *event)
-{
-  TakuTable *self = TAKU_TABLE (widget);
-
-  gtk_im_context_focus_out (self->priv->im_context);
-
-  (* GTK_WIDGET_CLASS (taku_table_parent_class)->focus_out_event)
-    (widget, event);
-
-  return FALSE;
-}
-
-static gboolean
-taku_table_key_press_event (GtkWidget   *widget,
-                            GdkEventKey *event)
-{
-  TakuTable *table = TAKU_TABLE (widget);
-
-  if (gtk_im_context_filter_keypress (table->priv->im_context, event))
-    return TRUE;
-
-  return (* GTK_WIDGET_CLASS (taku_table_parent_class)->key_press_event)
-           (widget, event);
-}
-
-static void
-taku_table_grab_focus (GtkWidget *widget)
-{
-  TakuTable *table = TAKU_TABLE (widget);
-  GSequenceIter *iter;
-
-  iter = g_sequence_get_begin_iter (table->priv->seq);
-  while (!g_sequence_iter_is_end (iter)) {
-    GtkWidget *widget = g_sequence_get (iter);
-
-    if (gtk_widget_get_visible (widget)) {
-      gtk_widget_grab_focus (widget);
-
-      break;
-    }
-
-    iter = g_sequence_iter_next (iter);
-  }
-}
-
-static void
-taku_table_finalize (GObject *object)
-{
-  TakuTable *table = TAKU_TABLE (object);
-
-  g_sequence_free (table->priv->seq);
-
-  g_list_free (table->priv->dummies);
-
-  g_object_unref (table->priv->im_context);
-
-  G_OBJECT_CLASS (taku_table_parent_class)->finalize (object);
-}
-
-static void
-taku_table_class_init (TakuTableClass *klass)
-{
-  GObjectClass *object_class = G_OBJECT_CLASS (klass);
-  GtkWidgetClass *widget_class = GTK_WIDGET_CLASS (klass);
-  GtkContainerClass *container_class = GTK_CONTAINER_CLASS (klass);
-
-  g_type_class_add_private (klass, sizeof (TakuTablePrivate));
-
-  object_class->finalize     = taku_table_finalize;
-
-  widget_class->realize         = taku_table_realize;
-  widget_class->unrealize       = taku_table_unrealize;
-  widget_class->style_set       = taku_table_style_set;
-  widget_class->focus_in_event  = taku_table_focus_in_event;
-  widget_class->focus_out_event = taku_table_focus_out_event;
-  widget_class->key_press_event = taku_table_key_press_event;
-  widget_class->grab_focus      = taku_table_grab_focus;
-
-  container_class->add    = container_add;
-  container_class->remove = container_remove;
-
-  gtk_widget_class_install_style_property (widget_class, g_param_spec_uint
-                                           ("cell-text-width", "cell text width",
-                                            "Width of the tiles in characters",
-                                            0, G_MAXUINT, DEFAULT_WIDTH,
-                                            G_PARAM_READABLE));
-
-}
-
-static void
-taku_table_init (TakuTable *self)
-{
-  self->priv = GET_PRIVATE (self);
-
-  g_signal_connect (self, "size-allocate", G_CALLBACK (on_size_allocate), NULL);
-
-  g_object_set (self,
-                "border-width", 6,
-                "row-spacing", 6,
-                "column-spacing", 6,
-                "row-homogeneous", TRUE,
-                "column-homogeneous", TRUE,
-                NULL);
-
-  self->priv->columns = 0;
-
-  self->priv->reflowing = FALSE;
-
-  self->priv->seq = g_sequence_new (NULL);
-
-  self->priv->filter = NULL;
-
-  self->priv->dummies = NULL;
-
-  self->priv->im_context = gtk_im_multicontext_new ();
-  g_signal_connect (self->priv->im_context, "commit",
-                    G_CALLBACK (im_context_commit_cb), self);
-}
-
-GtkWidget *
-taku_table_new (void)
-{
-  return g_object_new (TAKU_TYPE_TABLE, NULL);
-}
-
-void
-taku_table_set_filter (TakuTable *table, gpointer filter)
-{
-  g_return_if_fail (TAKU_IS_TABLE (table));
-
-  table->priv->filter = filter;
-
-  reflow (table);
-}
-
-gpointer
-taku_table_get_filter (TakuTable *table)
-{
-  g_return_val_if_fail (TAKU_IS_TABLE (table), NULL);
-
-  return table->priv->filter;
-}
diff --git a/libtaku/taku-table.h b/libtaku/taku-table.h
deleted file mode 100644
index 585c5d4..0000000
--- a/libtaku/taku-table.h
+++ /dev/null
@@ -1,69 +0,0 @@
-/*
- * Copyright (C) 2007 OpenedHand Ltd
- *
- * This program is free software; you can redistribute it and/or modify it under
- * the terms of the GNU General Public License as published by the Free Software
- * Foundation; either version 2 of the License, or (at your option) any later
- * version.
- *
- * This program is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
- * details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc., 59 Temple
- * Place - Suite 330, Boston, MA 02111-1307, USA.
- */
-
-#ifndef _TAKU_TABLE
-#define _TAKU_TABLE
-
-#include <gtk/gtk.h>
-
-G_BEGIN_DECLS
-
-#define TAKU_TYPE_TABLE taku_table_get_type()
-
-#define TAKU_TABLE(obj) \
-  (G_TYPE_CHECK_INSTANCE_CAST ((obj), \
-  TAKU_TYPE_TABLE, TakuTable))
-
-#define TAKU_TABLE_CLASS(klass) \
-  (G_TYPE_CHECK_CLASS_CAST ((klass), \
-  TAKU_TYPE_TABLE, TakuTableClass))
-
-#define TAKU_IS_TABLE(obj) \
-  (G_TYPE_CHECK_INSTANCE_TYPE ((obj), \
-  TAKU_TYPE_TABLE))
-
-#define TAKU_IS_TABLE_CLASS(klass) \
-  (G_TYPE_CHECK_CLASS_TYPE ((klass), \
-  TAKU_TYPE_TABLE))
-
-#define TAKU_TABLE_GET_CLASS(obj) \
-  (G_TYPE_INSTANCE_GET_CLASS ((obj), \
-  TAKU_TYPE_TABLE, TakuTableClass))
-
-typedef struct _TakuTablePrivate TakuTablePrivate;
-
-typedef struct {
-  GtkGrid parent;
-  TakuTablePrivate *priv;
-} TakuTable;
-
-typedef struct {
-  GtkGridClass parent_class;
-} TakuTableClass;
-
-GType taku_table_get_type (void);
-
-GtkWidget* taku_table_new (void);
-
-void taku_table_set_filter (TakuTable *table, gpointer filter);
-
-gpointer taku_table_get_filter (TakuTable *table);
-
-G_END_DECLS
-
-#endif /* _TAKU_TABLE */
diff --git a/libtaku/taku-tile.c b/libtaku/taku-tile.c
index 974a164..64dd3d7 100644
--- a/libtaku/taku-tile.c
+++ b/libtaku/taku-tile.c
@@ -25,7 +25,7 @@
 #include <gtk/gtk.h>
 #include "taku-tile.h"
 
-G_DEFINE_ABSTRACT_TYPE (TakuTile, taku_tile, GTK_TYPE_BUTTON);
+G_DEFINE_ABSTRACT_TYPE (TakuTile, taku_tile, GTK_TYPE_BIN);
 
 static void
 taku_tile_class_init (TakuTileClass *klass)
diff --git a/src/desktop.c b/src/desktop.c
index 0b055c8..ddb2786 100644
--- a/src/desktop.c
+++ b/src/desktop.c
@@ -26,7 +26,6 @@
 #include <ctype.h>
 
 #include "libtaku/taku-menu.h"
-#include "libtaku/taku-table.h"
 #include "libtaku/taku-icon-tile.h"
 #include "libtaku/taku-launcher-tile.h"
 #include "taku-category-bar.h"
@@ -37,7 +36,7 @@
 
 static GList *categories;
 static TakuCategoryBar *bar;
-static TakuTable *table;
+static GtkWidget *table;
 static TakuMenu *menu;
 static GtkWidget *fixed, *box;
 
@@ -88,16 +87,14 @@ focus_cb (GtkWidget *widget, GtkDirectionType direction, gpointer user_data)
 
   if (direction == GTK_DIR_LEFT) {
     taku_category_bar_previous (bar);
-
-    gtk_widget_grab_focus (GTK_WIDGET (table));
-
+    gtk_widget_child_focus (table, GTK_DIR_LEFT);
     return TRUE;
   } else if (direction == GTK_DIR_RIGHT) {
     taku_category_bar_next (bar);
-
-    gtk_widget_grab_focus (GTK_WIDGET (table));
-
+    gtk_widget_child_focus (table, GTK_DIR_RIGHT);
     return TRUE;
+  } else if (direction == GTK_DIR_UP) {
+    gtk_flow_box_unselect_all (GTK_FLOW_BOX (table));
   }
 
   return FALSE;
@@ -140,6 +137,56 @@ workarea_changed (int x, int y, int w, int h)
   gtk_fixed_move (GTK_FIXED (fixed), box, x, y);
 }
 
+static void table_size_allocate_cb (GtkWidget    *table,
+                                    GdkRectangle *allocation,
+                                    gpointer      user_data)
+{
+  gtk_flow_box_set_min_children_per_line (GTK_FLOW_BOX (table), allocation->width / 200); 
+}
+
+static gboolean
+table_filter (GtkFlowBoxChild *child, gpointer user_data)
+{
+  TakuTile *tile = TAKU_TILE (gtk_bin_get_child (GTK_BIN (child)));
+
+  return taku_tile_matches_filter (tile, taku_category_bar_get_current (bar));
+}
+
+static gint
+table_sort (GtkFlowBoxChild *child1,
+            GtkFlowBoxChild *child2,
+            gpointer user_data)
+{
+  GtkWidget *a, *b;
+  const char *ka, *kb;
+
+  a = gtk_bin_get_child (GTK_BIN(child1));
+  b = gtk_bin_get_child (GTK_BIN(child2));
+  ka = taku_tile_get_sort_key (TAKU_TILE (a));
+  kb = taku_tile_get_sort_key (TAKU_TILE (b));
+
+  if (ka != NULL && kb == NULL)
+    return 1;
+  else if (ka == NULL && kb != NULL)
+    return -1;
+  else if (ka == NULL && kb == NULL)
+    return 0;
+  else
+    return strcmp (ka, kb);
+}
+
+static void
+table_child_activated_cb (GtkFlowBox *table,
+                          GtkFlowBoxChild *child,
+                          gpointer userdata)
+{
+  GtkWidget *tile;
+
+  tile = gtk_bin_get_child (GTK_BIN (child));
+  if (TAKU_IS_LAUNCHER_TILE (tile))
+    taku_launcher_tile_activate (TAKU_LAUNCHER_TILE (tile));
+}
+
 GtkWidget *
 create_desktop (DesktopMode mode)
 {
@@ -157,6 +204,10 @@ create_desktop (DesktopMode mode)
 
   screen = gtk_widget_get_screen (window);
 
+  /* Main VBox */
+  box = gtk_box_new (GTK_ORIENTATION_VERTICAL, 0);
+  gtk_widget_show (box);
+
   switch (mode) {
   case MODE_DESKTOP:
     gtk_window_fullscreen (GTK_WINDOW (window));
@@ -170,34 +221,32 @@ create_desktop (DesktopMode mode)
     height = gdk_screen_get_height (screen);
     gtk_window_set_default_size (GTK_WINDOW (window), width, height);
     gtk_window_move (GTK_WINDOW (window), 0, 0);
+
+    /* This fixed is used to position the desktop itself in the work area */
+    fixed = gtk_fixed_new ();
+    gtk_widget_show (fixed);
+    gtk_container_add (GTK_CONTAINER (window), fixed);
+    gtk_fixed_put (GTK_FIXED (fixed), box, 0, 0);
+
+    /* Set a sane default in case there is no work area defined yet */
+    workarea_changed (0, 0, width, height);
+    if (mode == MODE_DESKTOP || mode == MODE_TITLEBAR) {
+      x_monitor_workarea (screen, workarea_changed);
+    }
+
     break;
   case MODE_WINDOW:
     width = 640;
     height = 480;
     gtk_window_set_default_size (GTK_WINDOW (window), width, height);
     g_signal_connect (window, "delete-event", G_CALLBACK (gtk_main_quit), NULL);
-    /* TODO: fake workarea_changed calls on window resize */
+    gtk_container_add (GTK_CONTAINER (window), box);
     break;
   default:
     g_assert_not_reached ();
   }
   gtk_widget_show (window);
 
-  /* This fixed is used to position the desktop itself in the work area */
-  fixed = gtk_fixed_new ();
-  gtk_widget_show (fixed);
-  gtk_container_add (GTK_CONTAINER (window), fixed);
-
-  /* Main VBox */
-  box = gtk_box_new (GTK_ORIENTATION_VERTICAL, 0);
-  gtk_widget_show (box);
-  gtk_fixed_put (GTK_FIXED (fixed), box, 0, 0);
-
-  /* Set a sane default in case there is no work area defined yet */
-  workarea_changed (0, 0, width, height);
-  if (mode == MODE_DESKTOP || mode == MODE_TITLEBAR) {
-    x_monitor_workarea (screen, workarea_changed);
-  }
 
   /* Navigation bar */
   bar = TAKU_CATEGORY_BAR (taku_category_bar_new ());
@@ -212,20 +261,36 @@ create_desktop (DesktopMode mode)
   gtk_box_pack_start (GTK_BOX (box), scrolled, TRUE, TRUE, 0);
 
   viewport = gtk_viewport_new (NULL, NULL);
+  gtk_widget_set_valign (viewport, GTK_ALIGN_START);
   gtk_viewport_set_shadow_type (GTK_VIEWPORT (viewport),
                                 GTK_SHADOW_NONE);
   gtk_widget_show (viewport);
   gtk_container_add (GTK_CONTAINER (scrolled), viewport);
 
-  table = TAKU_TABLE (taku_table_new ());
+  table = gtk_flow_box_new ();
+  gtk_flow_box_set_homogeneous (GTK_FLOW_BOX (table), TRUE);
+  gtk_flow_box_set_row_spacing (GTK_FLOW_BOX (table), 6);
+  gtk_flow_box_set_column_spacing (GTK_FLOW_BOX (table), 6);
+  g_signal_connect (table, "child-activated",
+                    G_CALLBACK (table_child_activated_cb), NULL);
+  g_signal_connect (table, "size-allocate",
+                    G_CALLBACK (table_size_allocate_cb), NULL);
   g_signal_connect_after (table, "focus", G_CALLBACK (focus_cb), NULL);
-  gtk_widget_show (GTK_WIDGET (table));
-  gtk_container_add (GTK_CONTAINER (viewport), GTK_WIDGET (table));
+  gtk_flow_box_set_filter_func (GTK_FLOW_BOX (table),
+                                (GtkFlowBoxFilterFunc)table_filter,
+                                bar, NULL);
+  gtk_flow_box_set_sort_func (GTK_FLOW_BOX (table),
+                              (GtkFlowBoxSortFunc)table_sort,
+                              NULL, NULL);
+  gtk_widget_show (table);
+  gtk_container_add (GTK_CONTAINER (viewport), table);
+  gtk_flow_box_set_vadjustment (GTK_FLOW_BOX (table),
+                                gtk_scrollable_get_vadjustment (GTK_SCROLLABLE(viewport)));
 
   menu = taku_menu_get_default ();
   categories = taku_menu_get_categories (menu);
 
-  taku_category_bar_set_table (bar, table);
+  taku_category_bar_set_table (bar, GTK_FLOW_BOX (table));
   taku_category_bar_set_categories (bar, categories);
 
   g_signal_connect (menu, "item-added", G_CALLBACK (on_item_added), NULL);
diff --git a/src/taku-category-bar.c b/src/taku-category-bar.c
index e5c5533..93bda61 100644
--- a/src/taku-category-bar.c
+++ b/src/taku-category-bar.c
@@ -21,12 +21,11 @@
 #include <glib/gi18n.h>
 #include <gtk/gtk.h>
 
-#include "libtaku/taku-table.h"
 #include "libtaku/taku-launcher-tile.h"
 
 #include "taku-category-bar.h"
 
-G_DEFINE_TYPE (TakuCategoryBar, taku_category_bar, GTK_TYPE_HBOX);
+G_DEFINE_TYPE (TakuCategoryBar, taku_category_bar, GTK_TYPE_BOX);
 
 #define GET_PRIVATE(o) \
   (G_TYPE_INSTANCE_GET_PRIVATE ((o), TAKU_TYPE_CATEGORY_BAR, TakuCategoryBarPrivate))
@@ -34,7 +33,7 @@ G_DEFINE_TYPE (TakuCategoryBar, taku_category_bar, GTK_TYPE_HBOX);
 #define LIST_DATA "taku-category-bar:list"
 
 typedef struct {
-  TakuTable *table;
+  GtkFlowBox *table;
   GList *categories;
   GList *current_category;
   GtkWidget *prev_button, *popup_button, *next_button;
@@ -78,9 +77,8 @@ set_category (TakuCategoryBar *bar, GList *category_list_item)
   category = category_list_item->data;
 
   gtk_label_set_text (priv->switcher_label, category->name);
-  taku_table_set_filter (priv->table, category);
-
   priv->current_category = category_list_item;
+  gtk_flow_box_invalidate_filter (priv->table);
 }
 
 static void
@@ -285,12 +283,12 @@ taku_category_bar_new (void)
 }
 
 void
-taku_category_bar_set_table (TakuCategoryBar *bar, TakuTable *table)
+taku_category_bar_set_table (TakuCategoryBar *bar, GtkFlowBox *table)
 {
   TakuCategoryBarPrivate *priv;
 
   g_return_if_fail (TAKU_IS_CATEGORY_BAR (bar));
-  g_return_if_fail (TAKU_IS_TABLE (table));
+  g_return_if_fail (GTK_IS_FLOW_BOX (table));
 
   priv = GET_PRIVATE (bar);
   
@@ -321,6 +319,17 @@ taku_category_bar_set_categories (TakuCategoryBar *bar, GList *categories)
   }
 }
 
+TakuLauncherCategory*
+taku_category_bar_get_current (TakuCategoryBar *bar)
+{
+  TakuCategoryBarPrivate *priv;
+
+  g_return_if_fail (TAKU_IS_CATEGORY_BAR (bar));
+  priv = GET_PRIVATE (bar);
+
+  return (TakuLauncherCategory*)priv->current_category->data;
+}
+
 void
 taku_category_bar_next (TakuCategoryBar *bar)
 {
diff --git a/src/taku-category-bar.h b/src/taku-category-bar.h
index 0bc2693..ff93e86 100644
--- a/src/taku-category-bar.h
+++ b/src/taku-category-bar.h
@@ -20,7 +20,7 @@
 #define _TAKU_CATEGORY_BAR
 
 #include <gtk/gtk.h>
-#include <libtaku/taku-table.h>
+#include "libtaku/taku-launcher-tile.h"
 
 G_BEGIN_DECLS
 
@@ -58,9 +58,10 @@ GType taku_category_bar_get_type (void);
 
 GtkWidget* taku_category_bar_new (void);
 
-void taku_category_bar_set_table (TakuCategoryBar *bar, TakuTable *table);
+void taku_category_bar_set_table (TakuCategoryBar *bar, GtkFlowBox *table);
 void taku_category_bar_set_categories (TakuCategoryBar *bar, GList *categories);
 
+TakuLauncherCategory* taku_category_bar_get_current (TakuCategoryBar *bar);
 void taku_category_bar_next (TakuCategoryBar *bar);
 void taku_category_bar_previous (TakuCategoryBar *bar);
 
-- 
2.8.1


