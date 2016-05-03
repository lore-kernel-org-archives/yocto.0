Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9971E00DCB; Tue,  3 May 2016 04:32:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40410E00DE1
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:31:50 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:31:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489866"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:31:21 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:44 +0300
Message-Id: <86aacc1ab906519f3fc901dc4aebea692a619e03.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 25/25] windowselector: Port to ScalingImage2
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
X-List-Received-Date: Tue, 03 May 2016 11:32:08 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 applets/windowselector/windowselector.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/applets/windowselector/windowselector.c b/applets/windowselector/windowselector.c
index 9c1dadf..d269355 100644
--- a/applets/windowselector/windowselector.c
+++ b/applets/windowselector/windowselector.c
@@ -15,7 +15,7 @@
 #include <gdk/gdkx.h>
 
 #include <matchbox-panel/mb-panel.h>
-#include <matchbox-panel/mb-panel-scaling-image.h>
+#include <matchbox-panel/mb-panel-scaling-image2.h>
 
 #define DEFAULT_WINDOW_ICON_NAME "application-x-executable"
 
@@ -792,7 +792,7 @@ mb_panel_applet_create (const char    *id,
 
         switch (applet->mode) {
         case MODE_STATIC_ICON:
-                applet->image = mb_panel_scaling_image_new (orientation,
+                applet->image = mb_panel_scaling_image2_new (orientation,
                         "panel-task-switcher");
                 gtk_container_add (GTK_CONTAINER (applet->button),
                                 applet->image);
-- 
2.8.1


