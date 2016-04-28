Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 650DAE00DF2; Thu, 28 Apr 2016 06:04:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 027A2E00DE0
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 06:04:18 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2016 06:03:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="794230258"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga003.jf.intel.com with ESMTP; 28 Apr 2016 06:03:19 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 16:02:56 +0300
Message-Id: <16c49bd35a6623a1c6f777cedf2f4e949c8575e6.1461830592.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
References: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1461830592.git.jussi.kukkonen@intel.com>
References: <cover.1461830592.git.jussi.kukkonen@intel.com>
Subject: [matchbox-desktop-2][PATCH 03/16] fixup 1024d115181a182918197d280e0797566178d26f
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
X-List-Received-Date: Thu, 28 Apr 2016 13:04:57 -0000

From: Ross Burton <ross.burton@intel.com>

---
 libtaku/taku-launcher-tile.c | 4 ++--
 libtaku/taku-tile.c          | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/libtaku/taku-launcher-tile.c b/libtaku/taku-launcher-tile.c
index 56151b2..58deafb 100644
--- a/libtaku/taku-launcher-tile.c
+++ b/libtaku/taku-launcher-tile.c
@@ -115,9 +115,9 @@ reset_state (gpointer data)
 }
 
 static void
-taku_launcher_tile_clicked (GtkButton *button, gpointer user_data)
+taku_launcher_tile_clicked (GtkButton *tile, gpointer user_data)
 {
-  TakuLauncherTile *launcher = TAKU_LAUNCHER_TILE (button);
+  TakuLauncherTile *launcher = TAKU_LAUNCHER_TILE (tile);
 
   gtk_widget_set_state (GTK_WIDGET (tile), GTK_STATE_ACTIVE);
 
diff --git a/libtaku/taku-tile.c b/libtaku/taku-tile.c
index 4a3acb4..802eb5d 100644
--- a/libtaku/taku-tile.c
+++ b/libtaku/taku-tile.c
@@ -37,6 +37,8 @@ taku_tile_init (TakuTile *self)
 {
 }
 
+/* TODO steal GtkButton's draw function and comment out the focus draw code */
+
 GtkWidget *
 taku_tile_new (void)
 {
-- 
2.8.1


