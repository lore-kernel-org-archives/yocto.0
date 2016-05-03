Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32815E00D71; Tue,  3 May 2016 06:33:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29A0CE00D7B
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 06:33:08 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 06:33:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="967683735"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by orsmga002.jf.intel.com with ESMTP; 03 May 2016 06:32:58 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 16:32:53 +0300
Message-Id: <600eba8debaaf68c10ae5764931fb41d3bb228a8.1462281781.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <d088866c00b29b36c7b191e4686c204806e78bda.1462281781.git.jussi.kukkonen@intel.com>
References: <d088866c00b29b36c7b191e4686c204806e78bda.1462281781.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462281781.git.jussi.kukkonen@intel.com>
References: <cover.1462281781.git.jussi.kukkonen@intel.com>
Subject: [matchbox-desktop-2][PATCH 2/2] TakuIconTile: Avoid deprecated icon API
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
X-List-Received-Date: Tue, 03 May 2016 13:33:12 -0000

Don't use a named icon size: that is no longer supported.

Instead add style property "taku-icon-size" to TakuIconTile
and use that.
---
 libtaku/taku-icon-tile.c     | 24 +++++++++++++++++++-----
 libtaku/taku-launcher-tile.c | 32 +++++++++++++++++---------------
 libtaku/taku-menu-desktop.c  |  8 ++------
 libtaku/taku-menu.h          |  3 +--
 src/desktop.c                |  4 ----
 5 files changed, 39 insertions(+), 32 deletions(-)

diff --git a/libtaku/taku-icon-tile.c b/libtaku/taku-icon-tile.c
index 2e562aa..110db6b 100644
--- a/libtaku/taku-icon-tile.c
+++ b/libtaku/taku-icon-tile.c
@@ -63,14 +63,14 @@ tile_arrange (TakuIconTile *tile)
     
     switch (orientation) {
     case GTK_ORIENTATION_VERTICAL :
-      gtk_misc_set_alignment (GTK_MISC (tile->priv->primary), 0.5, 0.5);
-      gtk_misc_set_alignment (GTK_MISC (tile->priv->secondary), 0.5, 0.5);
+      gtk_label_set_xalign (GTK_LABEL (tile->priv->primary), 0.5);
+      gtk_label_set_xalign (GTK_LABEL (tile->priv->secondary), 0.5);
       box = gtk_box_new (GTK_ORIENTATION_VERTICAL, 6);
       break;
     default:
     case GTK_ORIENTATION_HORIZONTAL :
-      gtk_misc_set_alignment (GTK_MISC (tile->priv->primary), 0.0, 0.5);
-      gtk_misc_set_alignment (GTK_MISC (tile->priv->secondary), 0.0, 0.5);
+      gtk_label_set_xalign (GTK_LABEL (tile->priv->primary), 0.0);
+      gtk_label_set_xalign (GTK_LABEL (tile->priv->secondary), 0.0);
       box = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 6);
       break;
     }
@@ -243,6 +243,15 @@ taku_icon_tile_class_init (TakuIconTileClass *klass)
                                                               GTK_TYPE_ORIENTATION,
                                                               GTK_ORIENTATION_HORIZONTAL,
                                                               G_PARAM_READABLE));
+  gtk_widget_class_install_style_property (widget_class,
+                                           g_param_spec_uint ("taku-icon-size",
+                                                              "Taku icon size",
+                                                              "Icon size used by all Taku Icons",
+                                                              0,
+                                                              256,
+                                                              64,
+                                                              G_PARAM_READABLE));
+
 }
 
 static void
@@ -311,10 +320,15 @@ taku_icon_tile_set_pixbuf (TakuIconTile *tile, GdkPixbuf *pixbuf)
 void
 taku_icon_tile_set_icon_name (TakuIconTile *tile, const char *name)
 {
+  uint size;
   g_return_if_fail (TAKU_IS_ICON_TILE (tile));
 
+  gtk_widget_style_get (GTK_WIDGET (tile),
+                        "taku-icon-size", &size,
+                        NULL);
+
   gtk_image_set_from_icon_name (GTK_IMAGE (tile->priv->icon),
-                                name, gtk_icon_size_from_name ("taku-icon"));
+                                name, size);
 }
 
 void
diff --git a/libtaku/taku-launcher-tile.c b/libtaku/taku-launcher-tile.c
index b453eac..e7f58f3 100644
--- a/libtaku/taku-launcher-tile.c
+++ b/libtaku/taku-launcher-tile.c
@@ -38,8 +38,6 @@ struct _TakuLauncherTilePrivate
   gboolean loading_icon; /* If the icon is queued to be loaded */
 };
 
-/* Icon size ID for the TakuIcon size */
-static GtkIconSize icon_size;
 /* Queue of tiles with pending icons to load */
 static GQueue queue = G_QUEUE_INIT;
 
@@ -50,6 +48,7 @@ load_icon (gpointer data)
   TakuLauncherTile *tile;
   GdkPixbuf *pixbuf;
   int i;
+  guint size;
   
   /* Per iteration, load a few icons at once */
   for (i = 0; i < 5; i++) {
@@ -58,8 +57,11 @@ load_icon (gpointer data)
     if (tile == NULL) {
       return TRUE;
     }
-    
-    pixbuf = taku_menu_item_get_icon (tile->priv->item, (GtkWidget*)tile, icon_size);
+
+    gtk_widget_style_get (GTK_WIDGET (tile),
+                          "taku-icon-size", &size,
+                          NULL);
+    pixbuf = taku_menu_item_get_icon (tile->priv->item, size);
     
     if (pixbuf) {
       taku_icon_tile_set_pixbuf (TAKU_ICON_TILE (tile), pixbuf);
@@ -110,7 +112,7 @@ taku_launcher_tile_finalize (GObject *object)
 static gboolean
 reset_state (gpointer data)
 {
-  gtk_widget_set_state (GTK_WIDGET (data), GTK_STATE_NORMAL);
+  gtk_widget_unset_state_flags (GTK_WIDGET (data), GTK_STATE_FLAG_ACTIVE);
   return FALSE;
 }
 
@@ -119,7 +121,7 @@ taku_launcher_tile_activate (TakuLauncherTile *tile)
 {
   TakuLauncherTile *launcher = TAKU_LAUNCHER_TILE (tile);
 
-  gtk_widget_set_state (GTK_WIDGET (tile), GTK_STATE_ACTIVE);
+  gtk_widget_set_state_flags (GTK_WIDGET (tile), GTK_STATE_FLAG_ACTIVE, FALSE);
 
   g_timeout_add (500, reset_state, tile);
 
@@ -147,12 +149,6 @@ taku_launcher_tile_class_init (TakuLauncherTileClass *klass)
 
   object_class->finalize = taku_launcher_tile_finalize;
 
-  /* Lookup the icon size from the theme */
-  icon_size = gtk_icon_size_from_name ("taku-icon");
-  if (icon_size == GTK_ICON_SIZE_INVALID) {
-    g_warning ("taku-icon size not registered, falling back");
-    icon_size = GTK_ICON_SIZE_BUTTON;
-  }
   taku_idle_queue_add (&queue, load_icon, NULL);
 }
 
@@ -174,17 +170,23 @@ taku_launcher_tile_new_from_item (TakuMenuItem *item)
 {
   TakuLauncherTile *tile;
   GList *l;
+  uint size;
 
   tile = TAKU_LAUNCHER_TILE (taku_launcher_tile_new ());
   tile->priv->item = item;
-  
+
+ 
+  gtk_widget_style_get (GTK_WIDGET (tile),
+                        "taku-icon-size", &size,
+                        NULL);
+ 
   taku_icon_tile_set_primary (TAKU_ICON_TILE (tile), 
                               taku_menu_item_get_name (item));
   taku_icon_tile_set_secondary (TAKU_ICON_TILE (tile),
                                 taku_menu_item_get_description (item));
   taku_icon_tile_set_pixbuf (TAKU_ICON_TILE (tile),
-                             gtk_widget_render_icon (GTK_WIDGET (tile), GTK_STOCK_REFRESH, icon_size, NULL));
-                                                     
+                             get_icon ("view-refresh", size));
+
   /* Don't need to update the icon here, because we'll get a style-set signal
      when the widget is realised which will update the icon. */
 
diff --git a/libtaku/taku-menu-desktop.c b/libtaku/taku-menu-desktop.c
index 03801d6..93c8a56 100644
--- a/libtaku/taku-menu-desktop.c
+++ b/libtaku/taku-menu-desktop.c
@@ -122,15 +122,11 @@ taku_menu_item_get_description (TakuMenuItem *item)
 }
 
 GdkPixbuf*
-taku_menu_item_get_icon (TakuMenuItem *item, GtkWidget *widget, GtkIconSize size)
+taku_menu_item_get_icon (TakuMenuItem *item, int size)
 {
-  int width = 64;
-
   g_return_val_if_fail (item, NULL);
 
-  gtk_icon_size_lookup (size, &width, NULL);
-
-  return get_icon (item->icon_name, width);
+  return get_icon (item->icon_name, size);
 }
 
 GList*
diff --git a/libtaku/taku-menu.h b/libtaku/taku-menu.h
index 1452458..9f78064 100644
--- a/libtaku/taku-menu.h
+++ b/libtaku/taku-menu.h
@@ -103,8 +103,7 @@ taku_menu_item_get_description (TakuMenuItem *item);
 
 GdkPixbuf*
 taku_menu_item_get_icon (TakuMenuItem *item, 
-                         GtkWidget *widget, 
-                         GtkIconSize size);
+                         int           size);
 
 GList*
 taku_menu_item_get_categories (TakuMenuItem *item);
diff --git a/src/desktop.c b/src/desktop.c
index 8234e8c..a1943eb 100644
--- a/src/desktop.c
+++ b/src/desktop.c
@@ -194,10 +194,6 @@ create_desktop (DesktopMode mode)
   GdkScreen *screen;
   int width, height;
 
-  /* Register the magic taku-icon size so that it can be controlled from the
-     theme. */
-  gtk_icon_size_register ("taku-icon", 64, 64);
-
   window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
   gtk_widget_set_name (window, "TakuWindow");
   gtk_window_set_title (GTK_WINDOW (window), _("Desktop"));
-- 
2.8.1


