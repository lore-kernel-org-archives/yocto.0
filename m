Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73416E00DFA; Mon, 11 Jul 2016 03:52:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED727E00DF2
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 03:52:05 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 11 Jul 2016 03:52:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,346,1464678000"; d="scan'208";a="732493219"
Received: from heimdall.fi.intel.com ([10.237.68.147])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Jul 2016 03:52:03 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jul 2016 13:51:56 +0300
Message-Id: <ec40860b1e5560a9afc16573c67ae4ec69cd999b.1468233661.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <cover.1468233661.git.jussi.kukkonen@intel.com>
References: <cover.1468233661.git.jussi.kukkonen@intel.com>
Subject: [libmatchbox][PATCH 1/4] Don't use deprecated XKeycodeToKeysym
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
X-List-Received-Date: Mon, 11 Jul 2016 10:52:07 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 libmb/mbmenu.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/libmb/mbmenu.c b/libmb/mbmenu.c
index d25397b..5e4106e 100644
--- a/libmb/mbmenu.c
+++ b/libmb/mbmenu.c
@@ -23,6 +23,8 @@
 #include "config.h"
 #endif
 
+#include <X11/XKBlib.h>
+
 #include "mbmenu.h"
 
 #define MBMAX(x,y) ((x>y)?(x):(y))
@@ -802,7 +804,7 @@ mb_menu_handle_xevent(MBMenu *mb, XEvent *an_event)
     {
     case KeyPress:
       MENUDBG("%s() Keyevent recieved\n", __func__ );
-      switch (key = XKeycodeToKeysym (mb->dpy, an_event->xkey.keycode, 0))
+      switch (key = XkbKeycodeToKeysym (mb->dpy, an_event->xkey.keycode, 0, 0))
 	{
 	case XK_Left:
 	  if (mb->active_depth > 0)
-- 
2.8.1


