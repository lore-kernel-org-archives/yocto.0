Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2E39E00E36; Wed, 13 Jul 2016 06:13:05 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE6E4E00E59
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 06:12:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 13 Jul 2016 06:12:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,357,1464678000"; d="scan'208";a="1016058600"
Received: from heimdall.fi.intel.com ([10.237.68.147])
	by orsmga002.jf.intel.com with ESMTP; 13 Jul 2016 06:12:29 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jul 2016 16:12:23 +0300
Message-Id: <e936a1d0f406383d29b33f2fd94bc26798ebb9dd.1468415080.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <cover.1468415080.git.jussi.kukkonen@intel.com>
References: <cover.1468415080.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 1/4] mb-panel: Remove leftover call from old ScalingImage
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
X-List-Received-Date: Wed, 13 Jul 2016 13:13:05 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 matchbox-panel/mb-panel-scaling-image2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/matchbox-panel/mb-panel-scaling-image2.c b/matchbox-panel/mb-panel-scaling-image2.c
index 8cdc3a1..258f1e4 100644
--- a/matchbox-panel/mb-panel-scaling-image2.c
+++ b/matchbox-panel/mb-panel-scaling-image2.c
@@ -220,7 +220,6 @@ reload_icon (MBPanelScalingImage2 *image, gboolean force)
 
         if (!image->priv->icon) {
                 g_clear_object (&image->priv->pixbuf);
-                gtk_image_set_from_pixbuf (GTK_IMAGE (image), NULL);
                 gtk_widget_queue_resize (GTK_WIDGET (image));
                 return;
         }
-- 
2.8.1


