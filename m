Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DD6FE00D7B; Wed, 13 Jul 2016 07:01:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D3A3E00CB5
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 07:01:18 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 13 Jul 2016 07:01:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,357,1464678000"; d="scan'208";a="1006026864"
Received: from heimdall.fi.intel.com ([10.237.68.147])
	by fmsmga001.fm.intel.com with ESMTP; 13 Jul 2016 07:01:15 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jul 2016 17:01:06 +0300
Message-Id: <1468418466-26115-1-git-send-email-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [matchbox-keyboard][PATCH] applet: Port to ScalingImage2
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
X-List-Received-Date: Wed, 13 Jul 2016 14:01:22 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 applet/applet.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/applet/applet.c b/applet/applet.c
index 0de5634..69cc600 100644
--- a/applet/applet.c
+++ b/applet/applet.c
@@ -19,7 +19,7 @@
 
 #include <gtk/gtk.h>
 #include <matchbox-panel/mb-panel.h>
-#include <matchbox-panel/mb-panel-scaling-image.h>
+#include <matchbox-panel/mb-panel-scaling-image2.h>
 #include <gtk-im/im-protocol.h>
 
 static void
@@ -35,9 +35,10 @@ mb_panel_applet_create (const char *id, GtkOrientation orientation)
 
   box = gtk_event_box_new ();
   gtk_event_box_set_visible_window (GTK_EVENT_BOX (box), FALSE);
+  gtk_event_box_set_above_child (GTK_EVENT_BOX (box), TRUE);
   gtk_widget_set_name (box, "MatchboxPanelKeyboard");
 
-  image = mb_panel_scaling_image_new (orientation, "matchbox-keyboard");
+  image = mb_panel_scaling_image2_new (orientation, "matchbox-keyboard");
   gtk_container_add (GTK_CONTAINER (box), image);
 
   g_signal_connect (box, "button-release-event", G_CALLBACK (on_toggled), NULL);
-- 
2.8.1


