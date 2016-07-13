Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C924E00E4A; Wed, 13 Jul 2016 06:13:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53123E00E4C
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 06:12:57 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 13 Jul 2016 06:12:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,357,1464678000"; d="scan'208";a="1016058661"
Received: from heimdall.fi.intel.com ([10.237.68.147])
	by orsmga002.jf.intel.com with ESMTP; 13 Jul 2016 06:12:33 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jul 2016 16:12:26 +0300
Message-Id: <58aa93e480792787fb3c38400d0bce3a7cebf750.1468415080.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <e936a1d0f406383d29b33f2fd94bc26798ebb9dd.1468415080.git.jussi.kukkonen@intel.com>
References: <e936a1d0f406383d29b33f2fd94bc26798ebb9dd.1468415080.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1468415080.git.jussi.kukkonen@intel.com>
References: <cover.1468415080.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 4/4] launcher: Port to ScalingImage2
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
X-List-Received-Date: Wed, 13 Jul 2016 13:13:09 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 applets/launcher/launcher.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/applets/launcher/launcher.c b/applets/launcher/launcher.c
index 0ec8a43..d1ab8e4 100644
--- a/applets/launcher/launcher.c
+++ b/applets/launcher/launcher.c
@@ -12,7 +12,7 @@
 #include <gtk/gtk.h>
 #include <gdk/gdkx.h>
 #include <matchbox-panel/mb-panel.h>
-#include <matchbox-panel/mb-panel-scaling-image.h>
+#include <matchbox-panel/mb-panel-scaling-image2.h>
 
 #ifdef USE_LIBSN
   #define SN_API_NOT_YET_FROZEN 1
@@ -20,7 +20,7 @@
 #endif
 
 typedef struct {
-        GtkImage *image;
+        MBPanelScalingImage2 *image;
 
         gboolean button_down;
 
@@ -331,7 +331,7 @@ mb_panel_applet_create (const char    *id,
 
         gtk_widget_set_name (event_box, "MatchboxPanelLauncher");
 
-        image = mb_panel_scaling_image_new (orientation, icon);
+        image = mb_panel_scaling_image2_new (orientation, icon);
         g_free (icon);
 
         gtk_container_add (GTK_CONTAINER (event_box), image);
@@ -339,7 +339,7 @@ mb_panel_applet_create (const char    *id,
         /* Set up applet structure */
         applet = g_slice_new0 (LauncherApplet);
 
-        applet->image = GTK_IMAGE (image);
+        applet->image = MB_PANEL_SCALING_IMAGE2 (image);
         
         applet->button_down = FALSE;
 
-- 
2.8.1


