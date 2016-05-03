Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80FCEE00D79; Tue,  3 May 2016 04:31:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6260AE00DCA
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:31:17 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:31:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489826"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:31:16 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:40 +0300
Message-Id: <6b4e29917e42052de8c20851501abf533a691699.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 21/25] Don't use deprecated GtkMisc
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

These changes should not affect fucntionality

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 applets/notify/mb-notification.c | 2 +-
 applets/systray/fixedtip.c       | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/applets/notify/mb-notification.c b/applets/notify/mb-notification.c
index e440ec9..c73b21f 100644
--- a/applets/notify/mb-notification.c
+++ b/applets/notify/mb-notification.c
@@ -85,7 +85,7 @@ mb_notification_init (MbNotification *self)
   gtk_box_pack_start (GTK_BOX (box), priv->image, FALSE, FALSE, 0);
 
   priv->label = gtk_label_new (NULL);
-  gtk_misc_set_alignment (GTK_MISC (priv->label), 0.0, 0.5);
+  gtk_label_set_xalign (GTK_LABEL (priv->label), 0.0);
   gtk_box_pack_start (GTK_BOX (box), priv->label, TRUE, TRUE, 0);
 }
 
diff --git a/applets/systray/fixedtip.c b/applets/systray/fixedtip.c
index 861e4ab..ce19067 100644
--- a/applets/systray/fixedtip.c
+++ b/applets/systray/fixedtip.c
@@ -116,7 +116,6 @@ na_fixed_tip_init (NaFixedTip *fixedtip)
 
   label = gtk_label_new (NULL);
   gtk_label_set_line_wrap (GTK_LABEL (label), TRUE);
-  gtk_misc_set_alignment (GTK_MISC (label), 0.5, 0.5);
   gtk_widget_show (label);
   gtk_container_add (GTK_CONTAINER (fixedtip), label);
   fixedtip->priv->label = label;
-- 
2.8.1


