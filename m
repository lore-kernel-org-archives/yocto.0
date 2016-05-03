Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BD37E00DA9; Tue,  3 May 2016 04:31:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA850E00D54
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:30:57 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:30:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489612"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:30:56 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:25 +0300
Message-Id: <94c26252f3996d31dc4daa6a6f2b1c73b4c58900.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 06/25] launcher: port to GTK+ 3
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
X-List-Received-Date: Tue, 03 May 2016 11:31:12 -0000

From: Ross Burton <ross.burton@intel.com>

---
 applets/launcher/launcher.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/applets/launcher/launcher.c b/applets/launcher/launcher.c
index 7e12814..0ec8a43 100644
--- a/applets/launcher/launcher.c
+++ b/applets/launcher/launcher.c
@@ -143,6 +143,7 @@ button_release_event_cb (GtkWidget      *event_box,
 {
         int x, y;
         pid_t child_pid = 0;
+        GtkAllocation allocation;
 #ifdef USE_LIBSN
         SnLauncherContext *context;
 #endif
@@ -154,16 +155,17 @@ button_release_event_cb (GtkWidget      *event_box,
 
         /* Only process if the button was released inside the button */
         gtk_widget_translate_coordinates (event_box,
-                                          event_box->parent,
+                                          gtk_widget_get_parent (event_box),
                                           event->x,
                                           event->y,
                                           &x,
                                           &y);
 
-        if (x < event_box->allocation.x ||
-            x > event_box->allocation.x + event_box->allocation.width ||
-            y < event_box->allocation.y ||
-            y > event_box->allocation.y + event_box->allocation.height)
+        gtk_widget_get_allocation (event_box, &allocation);
+        if (x < allocation.x ||
+            x > allocation.x + allocation.width ||
+            y < allocation.y ||
+            y > allocation.y + allocation.height)
                 return TRUE;
 
 #ifdef USE_LIBSN
-- 
2.8.1


