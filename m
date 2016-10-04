Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A539E00932; Tue,  4 Oct 2016 00:38:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F39CE0083D
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 00:38:50 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga104.fm.intel.com with ESMTP; 04 Oct 2016 00:38:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,442,1473145200"; d="scan'208";a="15965092"
Received: from heimdall.fi.intel.com ([10.237.68.150])
	by fmsmga005.fm.intel.com with ESMTP; 04 Oct 2016 00:38:48 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Oct 2016 10:38:44 +0300
Message-Id: <20161004073844.4622-1-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.9.3
Subject: [matchbox-panel-2][PATCH] applets/systray: Allow icons to be smaller
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
X-List-Received-Date: Tue, 04 Oct 2016 07:38:53 -0000

Don't expand/fill the systray items, align them in the center of the
systray panel. This makes sure the icons are drawn at the size they
expect.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---

This is related to [YOCTO #9995]: GtkStatusIcon based systray items
render weirdly if the get allocated more space than they expected.


 applets/systray/systray.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/applets/systray/systray.c b/applets/systray/systray.c
index 39698a8..94a5753 100644
--- a/applets/systray/systray.c
+++ b/applets/systray/systray.c
@@ -29,8 +29,9 @@ on_realize (GtkWidget *widget, gpointer user_data)
   tray = (GtkWidget *)na_tray_new_for_screen (screen, orientation);
 
   gtk_widget_show (tray);
-
-  gtk_container_add (GTK_CONTAINER (widget), tray);
+  gtk_widget_set_valign (tray, GTK_ALIGN_CENTER);
+  gtk_widget_set_halign (tray, GTK_ALIGN_CENTER);
+  gtk_box_pack_start (GTK_BOX (widget), tray, FALSE, FALSE, 0);
 }
 
 G_MODULE_EXPORT GtkWidget *
-- 
2.9.3


