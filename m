Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B68EDE00D79; Tue,  3 May 2016 04:31:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E361E00D7B
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:31:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:31:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489753"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:31:07 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:33 +0300
Message-Id: <547e5d593daf7e0f300e6c444a32cdd878b96db7.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 14/25] scaling-image: port to GTK+ 3 API
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
X-List-Received-Date: Tue, 03 May 2016 11:31:22 -0000

From: Ross Burton <ross.burton@intel.com>

---
 matchbox-panel/mb-panel-scaling-image.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/matchbox-panel/mb-panel-scaling-image.c b/matchbox-panel/mb-panel-scaling-image.c
index dc76b06..56d2d78 100644
--- a/matchbox-panel/mb-panel-scaling-image.c
+++ b/matchbox-panel/mb-panel-scaling-image.c
@@ -240,16 +240,16 @@ find_icon (GtkIconTheme *icon_theme,
 static void
 reload_icon (MBPanelScalingImage *image, gboolean force)
 {
+        GtkAllocation alloc;
         int size;
         char *file;
         GdkPixbuf *pixbuf;
         GError *error;
 
         /* Determine the required icon size */
-        if (image->priv->orientation == GTK_ORIENTATION_HORIZONTAL)
-                size = GTK_WIDGET (image)->allocation.height;
-        else
-                size = GTK_WIDGET (image)->allocation.width;
+        gtk_widget_get_allocation (GTK_WIDGET (image), &alloc);
+        size = image->priv->orientation == GTK_ORIENTATION_HORIZONTAL
+                ? alloc.height : alloc.width;
 
         if (!force && size == image->priv->size) {
                 return;
@@ -302,7 +302,9 @@ static void
 icon_theme_changed_cb (GtkIconTheme   *icon_theme,
                        MBPanelScalingImage *image)
 {
-        if (!gtk_widget_get_realized (GTK_WIDGET (image)))
+        GtkWidget *widget = GTK_WIDGET (image);
+
+        if (!gtk_widget_get_realized (widget))
                 return;
 
         clear_cache (image);
@@ -320,7 +322,9 @@ mb_panel_scaling_image_size_allocate (GtkWidget *widget,
         widget_class = GTK_WIDGET_CLASS (mb_panel_scaling_image_parent_class);
         widget_class->size_allocate (widget, allocation);
 
-        reload_icon (image, FALSE);
+        if (gtk_widget_get_realized (widget)) {
+                reload_icon (image, FALSE);
+        }
 }
 
 static void
-- 
2.8.1


