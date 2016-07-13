Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CED6FE00E30; Wed, 13 Jul 2016 06:13:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA3E6E00E68
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 06:12:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 13 Jul 2016 06:12:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,357,1464678000"; d="scan'208";a="1016058612"
Received: from heimdall.fi.intel.com ([10.237.68.147])
	by orsmga002.jf.intel.com with ESMTP; 13 Jul 2016 06:12:30 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jul 2016 16:12:24 +0300
Message-Id: <aacd4e1e467758b863b54666219fec0d265c9aa6.1468415080.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <e936a1d0f406383d29b33f2fd94bc26798ebb9dd.1468415080.git.jussi.kukkonen@intel.com>
References: <e936a1d0f406383d29b33f2fd94bc26798ebb9dd.1468415080.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1468415080.git.jussi.kukkonen@intel.com>
References: <cover.1468415080.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 2/4] battery: Port to ScalingImage2
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
 applets/battery/battery-acpi.c |  1 +
 applets/battery/battery.c      | 10 ++++++----
 applets/battery/battery.h      |  2 --
 3 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/applets/battery/battery-acpi.c b/applets/battery/battery-acpi.c
index c44dd12..8431127 100644
--- a/applets/battery/battery-acpi.c
+++ b/applets/battery/battery-acpi.c
@@ -5,6 +5,7 @@
  */
 
 #include "battery.h"
+#include <glib.h>
 #include <libacpi.h>
 
 global_t global;
diff --git a/applets/battery/battery.c b/applets/battery/battery.c
index ade3ff6..c755856 100644
--- a/applets/battery/battery.c
+++ b/applets/battery/battery.c
@@ -7,9 +7,11 @@
  */
 
 #include "battery.h"
+#include <matchbox-panel/mb-panel.h>
+#include <matchbox-panel/mb-panel-scaling-image2.h>
 
 typedef struct {
-        MBPanelScalingImage *image;
+        MBPanelScalingImage2 *image;
         const char *last_icon;
         guint timeout_id;
 } BatteryApplet;
@@ -38,7 +40,7 @@ timeout (BatteryApplet *applet)
 
         applet->last_icon = icon;
 
-        mb_panel_scaling_image_set_icon (applet->image, icon);
+        mb_panel_scaling_image2_set_icon (applet->image, icon);
 
         /* Keep going */
         return TRUE;
@@ -59,8 +61,8 @@ mb_panel_applet_create (const char    *id,
 
         applet->last_icon = NULL;
 
-        image = mb_panel_scaling_image_new (orientation, NULL);
-        applet->image = MB_PANEL_SCALING_IMAGE (image);
+        image = mb_panel_scaling_image2_new (orientation, NULL);
+        applet->image = MB_PANEL_SCALING_IMAGE2 (image);
 
         gtk_widget_set_name (image, "MatchboxPanelBatteryMonitor");
 
diff --git a/applets/battery/battery.h b/applets/battery/battery.h
index 29a44ca..cf23431 100644
--- a/applets/battery/battery.h
+++ b/applets/battery/battery.h
@@ -8,8 +8,6 @@
 #define MB_APPLET_BATTERY_H
 
 #include <string.h>
-#include <matchbox-panel/mb-panel.h>
-#include <matchbox-panel/mb-panel-scaling-image.h>
 
 int pm_support(void);
 const char* pm_battery_icon(void);
-- 
2.8.1


