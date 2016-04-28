Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 976E6E00DF3; Thu, 28 Apr 2016 06:04:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2506CE00DD0
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 06:04:18 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2016 06:03:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="794230245"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga003.jf.intel.com with ESMTP; 28 Apr 2016 06:03:18 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 16:02:55 +0300
Message-Id: <db9c93f85c27ace0c109d8071ca6ecbfc34541e2.1461830592.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
References: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1461830592.git.jussi.kukkonen@intel.com>
References: <cover.1461830592.git.jussi.kukkonen@intel.com>
Subject: [matchbox-desktop-2][PATCH 02/16] taku-tile: make a subclass of GtkButton, remove all unique logic
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

---
 libtaku/taku-launcher-tile.c |   9 ++--
 libtaku/taku-tile.c          | 124 +++----------------------------------------
 libtaku/taku-tile.h          |  10 +---
 3 files changed, 13 insertions(+), 130 deletions(-)

diff --git a/libtaku/taku-launcher-tile.c b/libtaku/taku-launcher-tile.c
index b948724..56151b2 100644
--- a/libtaku/taku-launcher-tile.c
+++ b/libtaku/taku-launcher-tile.c
@@ -115,14 +115,14 @@ reset_state (gpointer data)
 }
 
 static void
-taku_launcher_tile_clicked (TakuTile *tile)
+taku_launcher_tile_clicked (GtkButton *button, gpointer user_data)
 {
-  TakuLauncherTile *launcher = TAKU_LAUNCHER_TILE (tile);
+  TakuLauncherTile *launcher = TAKU_LAUNCHER_TILE (button);
 
   gtk_widget_set_state (GTK_WIDGET (tile), GTK_STATE_ACTIVE);
 
   g_timeout_add (500, reset_state, tile);
-  
+
   taku_menu_item_launch (launcher->priv->item, GTK_WIDGET (tile));
 }
 
@@ -141,7 +141,6 @@ taku_launcher_tile_class_init (TakuLauncherTileClass *klass)
 
   g_type_class_add_private (klass, sizeof (TakuLauncherTilePrivate));
 
-  tile_class->clicked = taku_launcher_tile_clicked;
   tile_class->matches_filter = taku_launcher_tile_matches_filter;
 
   widget_class->style_set = taku_launcher_tile_style_set;
@@ -161,6 +160,8 @@ static void
 taku_launcher_tile_init (TakuLauncherTile *self)
 {
   self->priv = GET_PRIVATE (self);
+
+  g_signal_connect (self, "clicked", G_CALLBACK (taku_launcher_tile_clicked), NULL);
 }
 
 GtkWidget *
diff --git a/libtaku/taku-tile.c b/libtaku/taku-tile.c
index 52f7885..4a3acb4 100644
--- a/libtaku/taku-tile.c
+++ b/libtaku/taku-tile.c
@@ -16,137 +16,25 @@
  * Place - Suite 330, Boston, MA 02111-1307, USA.
  */
 
-#include <gtk/gtk.h>
-#include "taku-tile.h"
-
-G_DEFINE_ABSTRACT_TYPE (TakuTile, taku_tile, GTK_TYPE_EVENT_BOX);
-
-enum {
-  ACTIVATE,
-  CLICKED,
-  LAST_SIGNAL,
-};
-static guint signals[LAST_SIGNAL];
-
-static gboolean
-taku_tile_draw (GtkWidget *widget, cairo_t *cr, gpointer user_data)
-{
-  GtkStyleContext *context;
-  int width, height;
-
-  context = gtk_widget_get_style_context (widget);
-
-  width = gtk_widget_get_allocated_width (widget);
-  height = gtk_widget_get_allocated_height (widget);
-
-  if (gtk_style_context_get_state (context) != GTK_STATE_FLAG_ACTIVE &&
-      gtk_widget_has_focus (widget)) {
-    gtk_style_context_set_state (context, GTK_STATE_SELECTED);
-
-    gtk_render_background (context, cr, 0, 0, width, height);
-  }
-
-  return FALSE;
-}
-
 /*
- * The tile was clicked, so start the state animation and fire the signal.
+ * TODO: either admit that we only have launchers and merge this with
+ * TakuLauncherTile, or turn this into a GInterface and actually introduce
+ * alternative tiles (BackTile and hierarchical navigation?)
  */
-static void
-taku_tile_clicked (TakuTile *tile)
-{
-  g_return_if_fail (TAKU_IS_TILE (tile));
-
-  g_signal_emit (tile, signals[CLICKED], 0);
-}
-
-/*
- * This is called by GtkWidget when the tile is activated.  Generally this means
- * the user has focused the tile and pressed [return] or [space].
- */
-static void
-taku_tile_real_activate (TakuTile *tile)
-{
-  taku_tile_clicked (tile);
-}
 
-/*
- * Callback when mouse enters the tile.
- */
-static gboolean
-taku_tile_enter_notify (GtkWidget *widget, GdkEventCrossing *event)
-{
-  TakuTile *tile = (TakuTile *)widget;
-  tile->in_tile = TRUE;
-
-  return TRUE;
-}
-
-/*
- * Callback when mouse leaves the tile.
- */
-static gboolean
-taku_tile_leave_notify (GtkWidget *widget, GdkEventCrossing *event)
-{
-  TakuTile *tile = (TakuTile *)widget;
-  tile->in_tile = FALSE;
-
-  return TRUE;
-}
+#include <gtk/gtk.h>
+#include "taku-tile.h"
 
-/*
- * Callback when a button is released inside the tile.
- */
-static gboolean
-taku_tile_button_release (GtkWidget *widget, GdkEventButton *event)
-{
-  TakuTile *tile = (TakuTile *)widget;
-  if ((event->button == 1) && (tile->in_tile)) {
-    gtk_widget_grab_focus (widget);
-    taku_tile_clicked (tile);
-  }
-  
-  return TRUE;
-}
+G_DEFINE_ABSTRACT_TYPE (TakuTile, taku_tile, GTK_TYPE_BUTTON);
 
 static void
 taku_tile_class_init (TakuTileClass *klass)
 {
-  GtkWidgetClass *widget_class = GTK_WIDGET_CLASS (klass);
-
-  widget_class->button_release_event = taku_tile_button_release;
-  widget_class->enter_notify_event = taku_tile_enter_notify;
-  widget_class->leave_notify_event = taku_tile_leave_notify;
-
-  klass->activate = taku_tile_real_activate;
-
-  /* Hook up the activate signal so we get keyboard handling for free */
-  signals[ACTIVATE] = g_signal_new ("activate",
-                                    G_TYPE_FROM_CLASS (klass),
-                                    G_SIGNAL_RUN_FIRST | G_SIGNAL_ACTION,
-                                    G_STRUCT_OFFSET (TakuTileClass, activate),
-                                    NULL, NULL,
-                                    g_cclosure_marshal_VOID__VOID,
-                                    G_TYPE_NONE, 0);
-  widget_class->activate_signal = signals[ACTIVATE];
-
-  signals[CLICKED] = g_signal_new ("clicked",
-                                    G_TYPE_FROM_CLASS (klass),
-                                    G_SIGNAL_RUN_FIRST | G_SIGNAL_ACTION,
-                                    G_STRUCT_OFFSET (TakuTileClass, clicked),
-                                    NULL, NULL,
-                                    g_cclosure_marshal_VOID__VOID,
-                                    G_TYPE_NONE, 0);
 }
 
 static void
 taku_tile_init (TakuTile *self)
 {
-  gtk_widget_set_can_focus (GTK_WIDGET (self), TRUE);
-  gtk_event_box_set_visible_window (GTK_EVENT_BOX (self), FALSE);
-  gtk_container_set_border_width (GTK_CONTAINER (self), 6);
-
-  g_signal_connect (self, "draw", G_CALLBACK (taku_tile_draw), NULL);
 }
 
 GtkWidget *
diff --git a/libtaku/taku-tile.h b/libtaku/taku-tile.h
index 0bc6966..5c03089 100644
--- a/libtaku/taku-tile.h
+++ b/libtaku/taku-tile.h
@@ -46,17 +46,11 @@ G_BEGIN_DECLS
   TAKU_TYPE_TILE, TakuTileClass))
 
 typedef struct {
-  GtkEventBox parent;
-  /*< private >*/
-  /* TODO: move to private struct */
-  gboolean in_tile;
+  GtkButton parent;
 } TakuTile;
 
 typedef struct {
-  GtkEventBoxClass parent_class;
-
-  void (* activate) (TakuTile *tile);
-  void (* clicked) (TakuTile *tile);
+  GtkButtonClass parent_class;
 
   const char *(* get_sort_key) (TakuTile *tile);
   const char *(* get_search_key) (TakuTile *tile);
-- 
2.8.1


