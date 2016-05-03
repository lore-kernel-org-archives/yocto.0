Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BE02E00D74; Tue,  3 May 2016 04:31:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE32EE00D94
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:31:09 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:31:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489762"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:31:08 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:34 +0300
Message-Id: <f4e5f5580a85a7143c7c53753f16b74b7587da55.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 15/25] mb-panel: allow resizing, but hide the grip
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
X-List-Received-Date: Tue, 03 May 2016 11:31:23 -0000

From: Ross Burton <ross.burton@intel.com>

---
 matchbox-panel/mb-panel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/matchbox-panel/mb-panel.c b/matchbox-panel/mb-panel.c
index 1d6832f..ea1bb19 100644
--- a/matchbox-panel/mb-panel.c
+++ b/matchbox-panel/mb-panel.c
@@ -374,7 +374,7 @@ main (int argc, char **argv)
         window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
         gtk_widget_set_name (window, "MatchboxPanel");
         gtk_window_set_type_hint (GTK_WINDOW (window), GDK_WINDOW_TYPE_HINT_DOCK);
-        gtk_window_set_resizable (GTK_WINDOW (window), FALSE);
+        gtk_window_set_has_resize_grip (GTK_WINDOW (window), FALSE);
 
         /* No key focus please */
         gtk_window_set_accept_focus (GTK_WINDOW (window), FALSE);
-- 
2.8.1


