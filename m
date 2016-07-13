Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD972E00E4A; Wed, 13 Jul 2016 06:13:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22DFEE00E11
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 06:12:57 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 13 Jul 2016 06:12:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,357,1464678000"; d="scan'208";a="1016058624"
Received: from heimdall.fi.intel.com ([10.237.68.147])
	by orsmga002.jf.intel.com with ESMTP; 13 Jul 2016 06:12:31 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jul 2016 16:12:25 +0300
Message-Id: <1ac71e562548c3db28ac4a68803ed8b85b778024.1468415080.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <e936a1d0f406383d29b33f2fd94bc26798ebb9dd.1468415080.git.jussi.kukkonen@intel.com>
References: <e936a1d0f406383d29b33f2fd94bc26798ebb9dd.1468415080.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1468415080.git.jussi.kukkonen@intel.com>
References: <cover.1468415080.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 3/4] startup: Port to ScalingImage2
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
X-List-Received-Date: Wed, 13 Jul 2016 13:13:07 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 applets/startup/startup.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/applets/startup/startup.c b/applets/startup/startup.c
index 1b304da..026dce2 100644
--- a/applets/startup/startup.c
+++ b/applets/startup/startup.c
@@ -38,7 +38,7 @@
 
 #include <string.h>
 #include <matchbox-panel/mb-panel.h>
-#include <matchbox-panel/mb-panel-scaling-image.h>
+#include <matchbox-panel/mb-panel-scaling-image2.h>
 
 #define TIMEOUT 20
 #define HOURGLASS_PIXMAPS 8
@@ -50,7 +50,7 @@ typedef struct LaunchItem {
 } LaunchItem;
 
 typedef struct {
-        MBPanelScalingImage *image;
+        MBPanelScalingImage2 *image;
         GdkWindow *root_window;
         SnDisplay *sn_display;
         SnMonitorContext *sn_context;
@@ -201,7 +201,7 @@ timeout (StartupApplet *applet)
         sprintf (icon, "%s/hourglass-%i.png", DATADIR,
                  applet->hourglass_cur_frame_n);
 
-        mb_panel_scaling_image_set_icon (applet->image, icon);
+        mb_panel_scaling_image2_set_icon (applet->image, icon);
 
         free (icon);
 
@@ -261,10 +261,8 @@ mb_panel_applet_create (const char    *id,
         applet->hourglass_shown = FALSE;
 
         /* Create image */
-        applet->image = MB_PANEL_SCALING_IMAGE
-                              (mb_panel_scaling_image_new (orientation, NULL));
-        mb_panel_scaling_image_set_caching (applet->image, TRUE);
-
+        applet->image = MB_PANEL_SCALING_IMAGE2
+                              (mb_panel_scaling_image2_new (orientation, NULL));
         gtk_widget_set_name (GTK_WIDGET(applet->image),
                              "MatchboxPanelStartupMonitor");
 
-- 
2.8.1


