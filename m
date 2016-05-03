Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7170E00D79; Tue,  3 May 2016 04:31:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C0D4E00D96
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:31:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:31:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489738"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:31:06 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:32 +0300
Message-Id: <ce7506fbcd3e34412aa349784cb2fa5fdd486e75.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 13/25] scaling-image: fix whitespace
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
X-List-Received-Date: Tue, 03 May 2016 11:31:20 -0000

From: Ross Burton <ross.burton@intel.com>

---
 matchbox-panel/mb-panel-scaling-image.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/matchbox-panel/mb-panel-scaling-image.c b/matchbox-panel/mb-panel-scaling-image.c
index 25aa041..dc76b06 100644
--- a/matchbox-panel/mb-panel-scaling-image.c
+++ b/matchbox-panel/mb-panel-scaling-image.c
@@ -1,3 +1,4 @@
+/* -*- Mode: C; tab-width: 8; indent-tabs-mode: nil; c-basic-offset: 8 -*- */
 /*
  * (C) 2006, 2007 OpenedHand Ltd.
  *
@@ -158,7 +159,7 @@ clear_cache (MBPanelScalingImage *image)
 {
         if (!image->priv->caching)
                 return;
-        
+
         g_hash_table_foreach_remove (image->priv->cache,
                                      return_true,
                                      NULL);
@@ -208,18 +209,18 @@ find_icon (GtkIconTheme *icon_theme,
 
         prefixed = g_strconcat ("panel-", stripped, NULL);
 
-        info = gtk_icon_theme_lookup_icon (icon_theme, 
+        info = gtk_icon_theme_lookup_icon (icon_theme,
                                            prefixed,
                                            size,
                                            0);
 
         if (info == NULL) {
-          info = gtk_icon_theme_lookup_icon (icon_theme, 
+          info = gtk_icon_theme_lookup_icon (icon_theme,
                                              stripped,
                                              size,
                                              0);
         }
-        
+
         g_free (stripped);
         g_free (prefixed);
 
@@ -318,7 +319,7 @@ mb_panel_scaling_image_size_allocate (GtkWidget *widget,
 
         widget_class = GTK_WIDGET_CLASS (mb_panel_scaling_image_parent_class);
         widget_class->size_allocate (widget, allocation);
-        
+
         reload_icon (image, FALSE);
 }
 
@@ -328,7 +329,7 @@ mb_panel_scaling_image_realize (GtkWidget *widget)
         GtkWidgetClass *widget_class;
 
         reload_icon (MB_PANEL_SCALING_IMAGE (widget), TRUE);
-        
+
         widget_class = GTK_WIDGET_CLASS (mb_panel_scaling_image_parent_class);
         widget_class->realize (widget);
 }
@@ -382,7 +383,7 @@ mb_panel_scaling_image_screen_changed (GtkWidget *widget,
 
                 reload_icon (MB_PANEL_SCALING_IMAGE (widget), TRUE);
         }
-        
+
         widget_class = GTK_WIDGET_CLASS (mb_panel_scaling_image_parent_class);
         widget_class->screen_changed (widget, old_screen);
 }
@@ -513,7 +514,7 @@ const char *
 mb_panel_scaling_image_get_icon (MBPanelScalingImage *image)
 {
         g_return_val_if_fail (MB_PANEL_IS_SCALING_IMAGE (image), NULL);
-        
+
         return image->priv->icon;
 }
 
@@ -522,7 +523,7 @@ mb_panel_scaling_image_get_icon (MBPanelScalingImage *image)
  * @image: A #MBPanelScalingImage
  * @caching: TRUE if image caching is desired
  *
- * Sets the caching mode to @caching. If @caching is TRUE, 
+ * Sets the caching mode to @caching. If @caching is TRUE,
  * #GdkPixbuf objects previously loaded by @image will be kept around.
  * Use this if you want to quickly alternate between a fixed set of images.
  *
@@ -562,6 +563,6 @@ gboolean
 mb_panel_scaling_image_get_caching (MBPanelScalingImage *image)
 {
         g_return_val_if_fail (MB_PANEL_IS_SCALING_IMAGE (image), FALSE);
-        
+
         return image->priv->caching;
 }
-- 
2.8.1


