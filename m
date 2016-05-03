Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65662E00D7A; Tue,  3 May 2016 04:31:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 211C7E00D6B
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:31:16 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:31:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489818"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:31:14 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:39 +0300
Message-Id: <e70994e3293f78e407ca1d04bb7a9d2eab8e6e27.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 20/25] Fix a crash on startup
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

---
 matchbox-panel/mb-panel-scaling-image2.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/matchbox-panel/mb-panel-scaling-image2.c b/matchbox-panel/mb-panel-scaling-image2.c
index 5692ce1..8cdc3a1 100644
--- a/matchbox-panel/mb-panel-scaling-image2.c
+++ b/matchbox-panel/mb-panel-scaling-image2.c
@@ -327,8 +327,10 @@ mb_panel_scaling_image2_draw (GtkWidget *widget, cairo_t *cr)
 {
         MBPanelScalingImage2 *image = MB_PANEL_SCALING_IMAGE2 (widget);
 
-        gdk_cairo_set_source_pixbuf (cr, image->priv->pixbuf, 0.0, 0.0);
-        cairo_paint (cr);
+        if (image->priv->pixbuf) {
+                gdk_cairo_set_source_pixbuf (cr, image->priv->pixbuf, 0.0, 0.0);
+                cairo_paint (cr);
+        }
         return TRUE;
 }
 
-- 
2.8.1


