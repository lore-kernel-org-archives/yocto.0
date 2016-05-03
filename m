Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 733E0E00D77; Tue,  3 May 2016 04:31:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C98BCE00DA9
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:31:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:31:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489806"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:31:13 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:38 +0300
Message-Id: <87654d05f20ec08cbca3fd61fba539516d031aa4.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 19/25] showdesktop: port to use scaling-image2
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
X-List-Received-Date: Tue, 03 May 2016 11:31:24 -0000

From: Ross Burton <ross.burton@intel.com>

---
 applets/showdesktop/showdesktop.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/applets/showdesktop/showdesktop.c b/applets/showdesktop/showdesktop.c
index e40ebc3..14f9d96 100644
--- a/applets/showdesktop/showdesktop.c
+++ b/applets/showdesktop/showdesktop.c
@@ -11,11 +11,11 @@
 #include <gdk/gdkx.h>
 #include <X11/Xatom.h>
 #include <matchbox-panel/mb-panel.h>
-#include <matchbox-panel/mb-panel-scaling-image.h>
+#include <matchbox-panel/mb-panel-scaling-image2.h>
 
 typedef struct {
         GtkButton *button;
-        MBPanelScalingImage *image;
+        MBPanelScalingImage2 *image;
 
         gboolean active;
 
@@ -45,15 +45,11 @@ show_desktop_applet_free (ShowDesktopApplet *applet)
 static void
 set_active (ShowDesktopApplet *applet, gboolean active)
 {
-        const char *icon;
-
         applet->active = active;
 
         /* TODO: remove this function and instead use a toggle button? */
 
-        icon = "panel-user-desktop";
-
-        mb_panel_scaling_image_set_icon (applet->image, icon);
+        mb_panel_scaling_image2_set_icon (applet->image, "panel-user-desktop");
 }
 
 /* Sync @applet with the _NET_SHOWING_DESKTOP root window property */
@@ -206,8 +202,8 @@ mb_panel_applet_create (const char    *id,
 
         gtk_widget_set_name (button, "MatchboxPanelShowDesktop");
 
-        image = mb_panel_scaling_image_new (orientation, NULL);
-        applet->image = MB_PANEL_SCALING_IMAGE (image);
+        image = mb_panel_scaling_image2_new (orientation, NULL);
+        applet->image = MB_PANEL_SCALING_IMAGE2 (image);
 
         gtk_container_add (GTK_CONTAINER (button), image);
 
-- 
2.8.1


