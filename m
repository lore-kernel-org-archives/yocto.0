Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41980E00D72; Tue, 12 Apr 2016 04:43:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9010E00C8D
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 04:43:31 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Apr 2016 04:43:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,473,1455004800"; d="scan'208";a="953244112"
Received: from heimdall.fi.intel.com ([10.237.68.144])
	by orsmga002.jf.intel.com with ESMTP; 12 Apr 2016 04:43:30 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Apr 2016 14:43:39 +0300
Message-Id: <1460461420-29917-1-git-send-email-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.0.rc3
Subject: [matchbox-wm][PATCH 1/2] wm: disregard Caps/Num/Scroll-lock when handling keypresses
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
X-List-Received-Date: Tue, 12 Apr 2016 11:43:34 -0000

<alt>-Tab and other keybindings should work even when the various
locks are on.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 src/wm.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/src/wm.c b/src/wm.c
index 2d05ff0..00d88c5 100644
--- a/src/wm.c
+++ b/src/wm.c
@@ -1074,6 +1074,7 @@ wm_handle_keypress(Wm *w, XKeyEvent *e)
 #ifndef NO_KBD
   MBConfigKbdEntry *entry =  w->config->kb->entrys;
   Client *p = NULL;
+  int state = e->state;
 
 #ifdef USE_LIBSN
   Bool found = False;
@@ -1094,11 +1095,14 @@ wm_handle_keypress(Wm *w, XKeyEvent *e)
 	   return;
 	 }
        }
-   
+
+   /* Don't care about Caps/Num/Scroll lock here */
+   state &= ~w->config->kb->lock_mask;
+
    while (entry != NULL)
      {
        if (XKeycodeToKeysym(w->dpy, e->keycode, entry->index) == entry->key
-	   && e->state == entry->ModifierMask )
+	   && state == entry->ModifierMask )
 	{
 	  switch (entry->action) 
 	    {
-- 
2.8.0.rc3


