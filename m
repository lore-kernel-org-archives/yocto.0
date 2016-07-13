Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 241C9E00DA5; Wed, 13 Jul 2016 06:00:38 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97967E00D7B
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 06:00:36 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 13 Jul 2016 06:00:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,357,1464678000"; d="scan'208";a="1005989972"
Received: from heimdall.fi.intel.com ([10.237.68.147])
	by fmsmga001.fm.intel.com with ESMTP; 13 Jul 2016 06:00:34 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jul 2016 16:00:27 +0300
Message-Id: <1468414827-24315-1-git-send-email-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [sato-screenshot][PATCH] applet: Port to ScalingImage2
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
X-List-Received-Date: Wed, 13 Jul 2016 13:00:38 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 applet.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/applet.c b/applet.c
index 699a920..d403619 100644
--- a/applet.c
+++ b/applet.c
@@ -8,7 +8,7 @@
 
 #include <gtk/gtk.h>
 #include <matchbox-panel/mb-panel.h>
-#include <matchbox-panel/mb-panel-scaling-image.h>
+#include <matchbox-panel/mb-panel-scaling-image2.h>
 #include "screenshot-ui.h"
 
 static void
@@ -26,7 +26,7 @@ mb_panel_applet_create (const char *id, GtkOrientation orientation)
   gtk_widget_set_name (button, "MatchboxPanelScreenshot");
   gtk_button_set_relief (GTK_BUTTON (button), GTK_RELIEF_NONE);
 
-  image = mb_panel_scaling_image_new (orientation, "applet-screenshot");
+  image = mb_panel_scaling_image2_new (orientation, "applet-screenshot");
   gtk_container_add (GTK_CONTAINER (button), image);
 
   g_signal_connect (button, "clicked", G_CALLBACK (on_clicked), NULL);
-- 
2.8.1


