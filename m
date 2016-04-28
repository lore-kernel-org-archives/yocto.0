Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2EE2E00DF8; Thu, 28 Apr 2016 06:05:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F016E00DCA
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 06:04:21 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2016 06:03:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="794230323"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga003.jf.intel.com with ESMTP; 28 Apr 2016 06:03:22 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 16:02:58 +0300
Message-Id: <a4faaf6d65a7ca54aa6d67f1e472995286b84b90.1461830592.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
References: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1461830592.git.jussi.kukkonen@intel.com>
References: <cover.1461830592.git.jussi.kukkonen@intel.com>
Subject: [matchbox-desktop-2][PATCH 05/16] taku-category-bar: don't try to make the arrows square
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
X-List-Received-Date: Thu, 28 Apr 2016 13:05:00 -0000

From: Ross Burton <ross.burton@intel.com>

---
 src/taku-category-bar.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/src/taku-category-bar.c b/src/taku-category-bar.c
index 765c713..e5c5533 100644
--- a/src/taku-category-bar.c
+++ b/src/taku-category-bar.c
@@ -66,15 +66,6 @@ make_bold (GtkLabel *label)
   gtk_label_set_attributes (label, list);
 }
 
-/* Make sure arrows request a square amount of space */
-static void
-arrow_size_request (GtkWidget      *widget,
-                    GtkRequisition *requisition,
-                    gpointer        user_data)
-{
-  requisition->width = requisition->height;
-}
-
 /* Changes the current category: Updates the switcher label and table filter */
 static void
 set_category (TakuCategoryBar *bar, GList *category_list_item)
@@ -245,7 +236,6 @@ taku_category_bar_init (TakuCategoryBar *bar)
   gtk_box_pack_start (GTK_BOX (bar), button, FALSE, TRUE, 0);
 
   arrow = gtk_arrow_new (GTK_ARROW_LEFT, GTK_SHADOW_NONE);
-  g_signal_connect (arrow, "size-request", G_CALLBACK (arrow_size_request), NULL);
   gtk_widget_show (arrow);
   gtk_container_add (GTK_CONTAINER (button), arrow);
   gtk_size_group_add_widget (size_group, arrow);
@@ -278,7 +268,6 @@ taku_category_bar_init (TakuCategoryBar *bar)
   gtk_box_pack_end (GTK_BOX (bar), button, FALSE, TRUE, 0);
 
   arrow = gtk_arrow_new (GTK_ARROW_RIGHT, GTK_SHADOW_NONE);
-  g_signal_connect (arrow, "size-request", G_CALLBACK (arrow_size_request), NULL);
   gtk_widget_show (arrow);
   gtk_container_add (GTK_CONTAINER (button), arrow);
   gtk_size_group_add_widget (size_group, arrow);
-- 
2.8.1


