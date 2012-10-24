Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2161E0032E
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 09:29:02 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Oct 2012 09:29:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,640,1344236400"; d="scan'208";a="210055219"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.14.104])
	by orsmga001.jf.intel.com with ESMTP; 24 Oct 2012 09:29:02 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Oct 2012 09:29:00 -0700
Message-Id: <1351096141-20494-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH 1/2] psplash: Trivial, cleanup some comments.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 24 Oct 2012 16:29:02 -0000

From: Marc Ferland <ferlandm@sonatest.com>

This patch fixes some minor comment mistakes.

Signed-off-by: Marc Ferland <ferlandm@sonatest.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 psplash-colors.h  |    2 +-
 psplash-console.c |    2 +-
 psplash-console.h |    2 +-
 psplash-fb.c      |    2 +-
 psplash-fb.h      |    2 +-
 psplash-write.c   |    2 +-
 psplash.c         |    4 ++--
 psplash.h         |    2 +-
 8 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/psplash-colors.h b/psplash-colors.h
index d701089..d574afa 100644
--- a/psplash-colors.h
+++ b/psplash-colors.h
@@ -1,5 +1,5 @@
 /*
- *  pslash - a lightweight framebuffer splashscreen for embedded devices.
+ *  psplash - a lightweight framebuffer splashscreen for embedded devices.
  *
  *  Copyright (c) 2012 sleep(5) ltd
  *  Author: Tomas Frydrych <tomas@sleepfive.com>
diff --git a/psplash-console.c b/psplash-console.c
index 9b7dfb9..1ee49e6 100644
--- a/psplash-console.c
+++ b/psplash-console.c
@@ -1,5 +1,5 @@
 /* 
- *  pslash - a lightweight framebuffer splashscreen for embedded devices. 
+ *  psplash - a lightweight framebuffer splashscreen for embedded devices. 
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
diff --git a/psplash-console.h b/psplash-console.h
index c444d27..2cf7555 100644
--- a/psplash-console.h
+++ b/psplash-console.h
@@ -1,5 +1,5 @@
 /* 
- *  pslash - a lightweight framebuffer splashscreen for embedded devices. 
+ *  psplash - a lightweight framebuffer splashscreen for embedded devices. 
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
diff --git a/psplash-fb.c b/psplash-fb.c
index 71740cd..72505b0 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -1,5 +1,5 @@
 /*
- *  pslash - a lightweight framebuffer splashscreen for embedded devices.
+ *  psplash - a lightweight framebuffer splashscreen for embedded devices.
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
diff --git a/psplash-fb.h b/psplash-fb.h
index ef5b39e..244ab67 100644
--- a/psplash-fb.h
+++ b/psplash-fb.h
@@ -1,5 +1,5 @@
 /* 
- *  pslash - a lightweight framebuffer splashscreen for embedded devices. 
+ *  psplash - a lightweight framebuffer splashscreen for embedded devices. 
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
diff --git a/psplash-write.c b/psplash-write.c
index 3fdba95..1a81270 100644
--- a/psplash-write.c
+++ b/psplash-write.c
@@ -1,5 +1,5 @@
 /* 
- *  pslash - a lightweight framebuffer splashscreen for embedded devices. 
+ *  psplash - a lightweight framebuffer splashscreen for embedded devices. 
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
diff --git a/psplash.c b/psplash.c
index 09cf0d0..aa6568a 100644
--- a/psplash.c
+++ b/psplash.c
@@ -1,5 +1,5 @@
 /* 
- *  pslash - a lightweight framebuffer splashscreen for embedded devices. 
+ *  psplash - a lightweight framebuffer splashscreen for embedded devices. 
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
@@ -263,7 +263,7 @@ main (int argc, char** argv)
 	  goto fb_fail;
   }
 
-  /* Clear the background with #ecece1 */
+  /* Clear screen with background color */
   psplash_fb_draw_rect (fb, 0, 0, fb->width, fb->height,
                         PSPLASH_BACKGROUND_COLOR);
 
diff --git a/psplash.h b/psplash.h
index f78c117..9b60ce1 100644
--- a/psplash.h
+++ b/psplash.h
@@ -1,5 +1,5 @@
 /* 
- *  pslash - a lightweight framebuffer splashscreen for embedded devices. 
+ *  psplash - a lightweight framebuffer splashscreen for embedded devices. 
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
-- 
1.7.7.6


