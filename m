Return-Path: <marc.ferland@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69F25E00282
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 08:23:53 -0700 (PDT)
Received: by yenl5 with SMTP id l5so3396075yen.35
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 08:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=8jgVVpWM/4drAo7eRM5JCbJwuD5kKW7FAnWJntyl6VI=;
	b=PGujODsEbKCjl6REUXCNvthf3z5qwssVbqVwPv39NgyXY9IlvK8wGEAVBaSb2Zsxgc
	lx+tzkg2mWPoz9RyCyfZYcdHTy/NdduH6/9VIQktG5Sv2XxN79PLb5jYY69DIbf+a1XD
	7aJ+GcFNU9omhQoOyiPH4XVVZM2bCdlIhgjpt3dYYZ9uy6G4OjtsUaDUvjMmEaNqi7LH
	zP0juvNHjz7V0VgjoUopN8WLXY9eo4Jbj18Rk9n8NgbZqm4LmuaNQdy5+Z/cBuBjum97
	UFXp9OCvVd4rvoXK/9PQNTc7uOKgp8VL9qqrZ5EPCECNJRyE3l77ChKXeDCueZcTCR8D
	jeiw==
Received: by 10.50.190.230 with SMTP id gt6mr1866077igc.48.1342711432816;
	Thu, 19 Jul 2012 08:23:52 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id y5sm4120383igb.11.2012.07.19.08.23.51
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 19 Jul 2012 08:23:52 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Thu, 19 Jul 2012 11:24:09 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: <yocto@yoctoproject.org>
Date: Thu, 19 Jul 2012 11:24:07 -0400
Message-Id: <1342711447-29134-1-git-send-email-ferlandm@sonatest.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH] psplash: Trivial, cleanup some comments.
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
X-List-Received-Date: Thu, 19 Jul 2012 15:23:53 -0000

This patch fixes some minor comment mistakes.

Signed-off-by: Marc Ferland <ferlandm@sonatest.com>
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
1.7.5.4


