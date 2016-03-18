Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D5EFE00C75; Fri, 18 Mar 2016 08:12:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF24AE00C29
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 08:12:02 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 18 Mar 2016 08:12:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,355,1455004800"; d="scan'208";a="940231707"
Received: from heimdall.fi.intel.com ([10.237.68.41])
	by fmsmga002.fm.intel.com with ESMTP; 18 Mar 2016 08:11:56 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 18 Mar 2016 17:11:42 +0200
Message-Id: <1458313902-3214-1-git-send-email-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [matchbox-wm][PATCH] ewmh: Fix data type of a few XChangeProperty calls
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
X-List-Received-Date: Fri, 18 Mar 2016 15:12:06 -0000

XChangeProperty documentation: "If the specified format is 32, the
property data must be a long array."

Using int can lead to bogus data being used on platforms where long
actually is different from int.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---

Yocto-specific reference: Sato does not really use the other cases
but _NET_SHOW_DESKTOP corruption lead to problems like [YOCTO #9284]
and [YOCTO #9026].

 src/ewmh.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/src/ewmh.c b/src/ewmh.c
index 31ac969..a736037 100644
--- a/src/ewmh.c
+++ b/src/ewmh.c
@@ -136,7 +136,7 @@ ewmh_init(Wm *w)
 void
 ewmh_init_props(Wm *w)
 {
-  int num_desktops = 1;
+  long num_desktops = 1;
   
   set_compliant(w);
   set_supported(w);
@@ -455,15 +455,18 @@ ewmh_update_lists(Wm *w)
   */
   if (w->config->super_modal)
     {
+      long modals = w->n_modals_present;
+      long modal_blockers = w->n_modal_blocker_wins;
+
       XChangeProperty(w->dpy, w->root, 
 		      w->atoms[_MB_NUM_MODAL_WINDOWS_PRESENT],
 		      XA_CARDINAL, 32, PropModeReplace,
-		      (unsigned char *)&w->n_modals_present, 1);
+		      (unsigned char *)&modals, 1);
 
       XChangeProperty(w->dpy, w->root, 
 		      w->atoms[_MB_NUM_SYSTEM_MODAL_WINDOWS_PRESENT],
 		      XA_CARDINAL, 32, PropModeReplace,
-		      (unsigned char *)&w->n_modal_blocker_wins, 1);
+		      (unsigned char *)&modal_blockers, 1);
     }
 }
 
@@ -472,7 +475,7 @@ ewmh_update_desktop_hint(Wm *w)
 {
    /* Desktop showing hint */
 
-   int val = (w->flags & DESKTOP_RAISED_FLAG) ? 1 : 0;
+   long val = (w->flags & DESKTOP_RAISED_FLAG) ? 1 : 0;
 
    XChangeProperty(w->dpy, w->root, w->atoms[_NET_SHOW_DESKTOP],
 		   XA_CARDINAL, 32, PropModeReplace, 
-- 
2.7.0


