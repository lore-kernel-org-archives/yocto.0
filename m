Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1157E00D74; Tue,  3 May 2016 06:33:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24464E00D6B
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 06:33:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 06:32:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="967683713"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by orsmga002.jf.intel.com with ESMTP; 03 May 2016 06:32:57 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 16:32:52 +0300
Message-Id: <d088866c00b29b36c7b191e4686c204806e78bda.1462281781.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <cover.1462281781.git.jussi.kukkonen@intel.com>
References: <cover.1462281781.git.jussi.kukkonen@intel.com>
Subject: [matchbox-desktop-2][PATCH 1/2] TakuCategoryBar: Avoid deprecated API
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
X-List-Received-Date: Tue, 03 May 2016 13:33:11 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 src/taku-category-bar.c | 27 ++++++---------------------
 1 file changed, 6 insertions(+), 21 deletions(-)

diff --git a/src/taku-category-bar.c b/src/taku-category-bar.c
index 93bda61..5900d54 100644
--- a/src/taku-category-bar.c
+++ b/src/taku-category-bar.c
@@ -192,7 +192,6 @@ popup_menu (GtkWidget *button, GdkEventButton *event, gpointer user_data)
 
     label = gtk_label_new (category->name);
     make_bold (GTK_LABEL (label));
-    gtk_misc_set_alignment (GTK_MISC (label), 0.5, 0.0);
     gtk_widget_show (label);
     gtk_container_add (GTK_CONTAINER (menu_item), label);
   }
@@ -216,16 +215,14 @@ static void
 taku_category_bar_init (TakuCategoryBar *bar)
 {
   TakuCategoryBarPrivate *priv;
-  GtkWidget *button, *arrow;
-  GtkSizeGroup *size_group;
+  GtkWidget *button;
 
   priv = GET_PRIVATE (bar);
 
-  size_group = gtk_size_group_new (GTK_SIZE_GROUP_VERTICAL);
-
   /* Previous button */
 
-  priv->prev_button = button = gtk_button_new ();
+  priv->prev_button = button = gtk_button_new_from_icon_name ("go-previous-symbolic",
+                                                              GTK_ICON_SIZE_BUTTON);
   gtk_widget_set_name (button, "MatchboxDesktopPrevButton");
   atk_object_set_name (gtk_widget_get_accessible (button), "GroupPrevious");
   gtk_button_set_relief (GTK_BUTTON (button), GTK_RELIEF_NONE);
@@ -233,11 +230,6 @@ taku_category_bar_init (TakuCategoryBar *bar)
   gtk_widget_show (button);
   gtk_box_pack_start (GTK_BOX (bar), button, FALSE, TRUE, 0);
 
-  arrow = gtk_arrow_new (GTK_ARROW_LEFT, GTK_SHADOW_NONE);
-  gtk_widget_show (arrow);
-  gtk_container_add (GTK_CONTAINER (button), arrow);
-  gtk_size_group_add_widget (size_group, arrow);
-
   /* Category name button */
   
   priv->popup_button = button = gtk_toggle_button_new ();
@@ -252,11 +244,11 @@ taku_category_bar_init (TakuCategoryBar *bar)
   make_bold (GTK_LABEL (priv->switcher_label));
   gtk_widget_show (GTK_WIDGET (priv->switcher_label));
   gtk_container_add (GTK_CONTAINER (button), GTK_WIDGET (priv->switcher_label));
-  gtk_size_group_add_widget (size_group, GTK_WIDGET (priv->switcher_label));
 
   /* Next button */
 
-  priv->next_button = button = gtk_button_new ();
+  priv->next_button = button = gtk_button_new_from_icon_name ("go-next-symbolic",
+                                                              GTK_ICON_SIZE_BUTTON);
   gtk_widget_set_name (button, "MatchboxDesktopNextButton");
   atk_object_set_name (gtk_widget_get_accessible (button), "GroupNext");
 
@@ -264,13 +256,6 @@ taku_category_bar_init (TakuCategoryBar *bar)
   g_signal_connect_swapped (button, "clicked", G_CALLBACK (next_category), bar);
   gtk_widget_show (button);
   gtk_box_pack_end (GTK_BOX (bar), button, FALSE, TRUE, 0);
-
-  arrow = gtk_arrow_new (GTK_ARROW_RIGHT, GTK_SHADOW_NONE);
-  gtk_widget_show (arrow);
-  gtk_container_add (GTK_CONTAINER (button), arrow);
-  gtk_size_group_add_widget (size_group, arrow);
-  
-  g_object_unref (size_group);
 }
 
 
@@ -324,7 +309,7 @@ taku_category_bar_get_current (TakuCategoryBar *bar)
 {
   TakuCategoryBarPrivate *priv;
 
-  g_return_if_fail (TAKU_IS_CATEGORY_BAR (bar));
+  g_return_val_if_fail (TAKU_IS_CATEGORY_BAR (bar), NULL);
   priv = GET_PRIVATE (bar);
 
   return (TakuLauncherCategory*)priv->current_category->data;
-- 
2.8.1


