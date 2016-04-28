Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2B4AE00DFC; Thu, 28 Apr 2016 06:05:34 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6B3AE00DDC
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 06:04:24 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2016 06:03:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="794230397"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga003.jf.intel.com with ESMTP; 28 Apr 2016 06:03:26 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 16:03:01 +0300
Message-Id: <54e6474b85e4fbbafbab16333a10cf02adcc05e7.1461830592.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
References: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1461830592.git.jussi.kukkonen@intel.com>
References: <cover.1461830592.git.jussi.kukkonen@intel.com>
Subject: [matchbox-desktop-2][PATCH 08/16] taku-table: port to GtkGrid
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
 libtaku/taku-table.c | 44 ++++++++++++++++++++------------------------
 libtaku/taku-table.h |  7 +++----
 2 files changed, 23 insertions(+), 28 deletions(-)

diff --git a/libtaku/taku-table.c b/libtaku/taku-table.c
index 67f630e..058700e 100644
--- a/libtaku/taku-table.c
+++ b/libtaku/taku-table.c
@@ -1,4 +1,4 @@
-/* 
+/*
  * Copyright (C) 2007 OpenedHand Ltd
  *
  * This program is free software; you can redistribute it and/or modify it under
@@ -20,8 +20,9 @@
 #include <gtk/gtk.h>
 #include <string.h>
 #include "taku-table.h"
+#include "taku-tile.h"
 
-G_DEFINE_TYPE (TakuTable, taku_table, GTK_TYPE_TABLE);
+G_DEFINE_TYPE (TakuTable, taku_table, GTK_TYPE_GRID);
 
 #define GET_PRIVATE(o) \
   (G_TYPE_INSTANCE_GET_PRIVATE ((o), TAKU_TYPE_TABLE, TakuTablePrivate))
@@ -191,9 +192,9 @@ reflow_foreach (gpointer widget, gpointer user_data)
     if (!taku_tile_matches_filter (tile, table->priv->filter)) {
       gtk_container_child_set (container, GTK_WIDGET (widget),
                                "left-attach", 0,
-                               "right-attach", 1,
                                "top-attach", 0,
-                               "bottom-attach", 1,
+                               "width", 1,
+                               "height", 1,
                                NULL);
       gtk_widget_hide (widget);
       return;
@@ -205,9 +206,9 @@ reflow_foreach (gpointer widget, gpointer user_data)
 
   gtk_container_child_set (container, GTK_WIDGET (widget),
                            "left-attach", table->priv->x,
-                           "right-attach", table->priv->x + 1,
                            "top-attach", table->priv->y,
-                           "bottom-attach", table->priv->y + 1,
+                           "width", 1,
+                           "height", 1,
                            NULL);
   if (++table->priv->x >= table->priv->columns) {
     table->priv->x = 0;
@@ -248,23 +249,14 @@ reflow (TakuTable *table)
     GtkWidget *dummy = gtk_label_new (NULL);
     gtk_widget_show (dummy);
 
-    gtk_table_attach (GTK_TABLE (table),
-                      dummy,
-                      table->priv->x,
-                      table->priv->x + 1,
-                      table->priv->y,
-                      table->priv->y + 1,
-                      GTK_FILL | GTK_EXPAND,
-                      GTK_FILL,
-                      0,
-                      0);
+    gtk_grid_attach (GTK_GRID (table),
+                     dummy,
+                     table->priv->x, table->priv->y,
+                     1, 1);
     table->priv->x++;
 
     table->priv->dummies = g_list_prepend (table->priv->dummies, dummy);
   }
-
-  /* Crop table */
-  gtk_table_resize (GTK_TABLE (table), 1, 1);
 }
 
 /*
@@ -281,8 +273,7 @@ container_add (GtkContainer *container, GtkWidget *widget)
 
   g_sequence_insert_sorted (self->priv->seq, widget, compare_tiles, NULL);
 
-  gtk_table_attach (GTK_TABLE (container), widget, 0, 1, 0, 1,
-                    GTK_EXPAND | GTK_FILL, GTK_FILL, 0, 0);
+  gtk_grid_attach (GTK_GRID (container), widget, 0, 1, 1, 1);
 
   reflow (self);
 
@@ -504,9 +495,14 @@ taku_table_init (TakuTable *self)
 
   g_signal_connect (self, "size-allocate", G_CALLBACK (on_size_allocate), NULL);
 
-  gtk_container_set_border_width (GTK_CONTAINER (self), 6);
-  gtk_table_set_row_spacings (GTK_TABLE (self), 6);
-  gtk_table_set_col_spacings (GTK_TABLE (self), 6);
+  g_object_set (self,
+                "border-width", 6,
+                "row-spacing", 6,
+                "column-spacing", 6,
+                "row-homogeneous", TRUE,
+                "column-homogeneous", TRUE,
+                NULL);
+
   self->priv->columns = 0;
 
   self->priv->reflowing = FALSE;
diff --git a/libtaku/taku-table.h b/libtaku/taku-table.h
index 625ebd9..585c5d4 100644
--- a/libtaku/taku-table.h
+++ b/libtaku/taku-table.h
@@ -1,4 +1,4 @@
-/* 
+/*
  * Copyright (C) 2007 OpenedHand Ltd
  *
  * This program is free software; you can redistribute it and/or modify it under
@@ -20,7 +20,6 @@
 #define _TAKU_TABLE
 
 #include <gtk/gtk.h>
-#include "taku-tile.h"
 
 G_BEGIN_DECLS
 
@@ -49,12 +48,12 @@ G_BEGIN_DECLS
 typedef struct _TakuTablePrivate TakuTablePrivate;
 
 typedef struct {
-  GtkTable parent;
+  GtkGrid parent;
   TakuTablePrivate *priv;
 } TakuTable;
 
 typedef struct {
-  GtkTableClass parent_class;
+  GtkGridClass parent_class;
 } TakuTableClass;
 
 GType taku_table_get_type (void);
-- 
2.8.1


