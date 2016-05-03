Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC099E00D8A; Tue,  3 May 2016 04:32:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17A2FE00DC1
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:31:49 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:31:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489841"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:31:18 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:42 +0300
Message-Id: <bdde1837ec98cd92d82cfb8b0d5568dd054220ca.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 23/25] Draw systray icons in their actual locations
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
X-List-Received-Date: Tue, 03 May 2016 11:32:06 -0000

Cairo context is now in widget-relative coordinates instead of
window-relative: undo that transform so the icon draw code actually
draws inside the window.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 applets/systray/na-tray.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/applets/systray/na-tray.c b/applets/systray/na-tray.c
index 7da908f..714bd90 100644
--- a/applets/systray/na-tray.c
+++ b/applets/systray/na-tray.c
@@ -538,6 +538,8 @@ static void
 na_tray_draw_box (GtkWidget *box,
 		  cairo_t   *cr)
 {
+  /* Transform to window-relative coordinates */
+  gtk_cairo_transform_to_window (cr, box, gtk_widget_get_window (box));
   gtk_container_foreach (GTK_CONTAINER (box), na_tray_draw_icon, cr);
 }
 
-- 
2.8.1


