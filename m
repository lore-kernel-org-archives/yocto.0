Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06C4FE00E5F; Fri, 29 Apr 2016 03:51:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69475E00E5B
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 03:51:21 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 29 Apr 2016 03:51:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,551,1455004800"; d="scan'208";a="955454318"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2016 03:51:20 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Apr 2016 13:51:21 +0300
Message-Id: <570f4f447c75829576e4c22cf3ce8ce676a80936.1461926785.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <cover.1461926785.git.jussi.kukkonen@intel.com>
References: <cover.1461926785.git.jussi.kukkonen@intel.com>
Subject: [matchbox-config-gtk][PATCH 1/1] Port to Gtk+3
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
X-List-Received-Date: Fri, 29 Apr 2016 10:51:24 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 appearance/mb-appearance.c | 4 ++--
 configure.ac               | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/appearance/mb-appearance.c b/appearance/mb-appearance.c
index 34640b4..6dfe98e 100644
--- a/appearance/mb-appearance.c
+++ b/appearance/mb-appearance.c
@@ -381,14 +381,14 @@ main (int argc, char **argv) {
   gtk_tree_sortable_set_sort_column_id (GTK_TREE_SORTABLE (theme_store), COL_NAME, GTK_SORT_ASCENDING);
 
   dialog = gtk_dialog_new_with_buttons (_("Appearance"), NULL, 
-                                        GTK_DIALOG_NO_SEPARATOR,
+                                        0,
                                         GTK_STOCK_CLOSE, GTK_RESPONSE_CLOSE,
                                         NULL);
   g_signal_connect (dialog, "response", G_CALLBACK (gtk_main_quit), NULL);
 
   gtk_window_set_resizable (GTK_WINDOW (dialog), FALSE);
 
-  box = GTK_BOX (GTK_DIALOG (dialog)->vbox);
+  box = GTK_BOX (gtk_dialog_get_content_area (GTK_DIALOG (dialog)));
   gtk_box_set_spacing (box, 6);
   gtk_container_set_border_width (GTK_CONTAINER (dialog), 6);
 
diff --git a/configure.ac b/configure.ac
index b6d6034..882e319 100644
--- a/configure.ac
+++ b/configure.ac
@@ -7,7 +7,7 @@ AC_ISC_POSIX
 AC_PROG_CC
 AC_STDC_HEADERS
 
-PKG_CHECK_MODULES(GTK, gtk+-2.0)
+PKG_CHECK_MODULES(GTK, gtk+-3.0)
 PKG_CHECK_MODULES(GCONF, gconf-2.0)
 
 CFLAGS="$CFLAGS -Wall"
-- 
2.8.1


