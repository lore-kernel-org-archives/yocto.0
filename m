Return-Path: <contact@jgueytat.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86EFFE00DD1; Tue, 31 May 2016 15:07:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FDE3E00DCF
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 15:07:38 -0700 (PDT)
Received: from mfilter43-d.gandi.net (mfilter43-d.gandi.net [217.70.178.174])
	by relay2-d.mail.gandi.net (Postfix) with ESMTP id CF989C5A61
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2016 00:07:37 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter43-d.gandi.net
Received: from relay2-d.mail.gandi.net ([IPv6:::ffff:217.70.183.194])
	by mfilter43-d.gandi.net (mfilter43-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id ngFOdj_7hP82 for <yocto@yoctoproject.org>;
	Wed,  1 Jun 2016 00:07:36 +0200 (CEST)
X-Originating-IP: 37.71.25.165
Received: from Happy.wifirst.net (165.25.71.37.rev.sfr.net [37.71.25.165])
	(Authenticated sender: contact@jgueytat.fr)
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 417AAC5A5F
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2016 00:07:36 +0200 (CEST)
From: Julien Gueytat <contact@jgueytat.fr>
To: yocto@yoctoproject.org
Date: Wed,  1 Jun 2016 00:07:35 +0200
Message-Id: <1464732455-28307-2-git-send-email-contact@jgueytat.fr>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1464732455-28307-1-git-send-email-contact@jgueytat.fr>
References: <1464732455-28307-1-git-send-email-contact@jgueytat.fr>
Subject: [psplash][PATCH 2/2] Add --fbdev option to psplash like --rotation.
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
X-List-Received-Date: Tue, 31 May 2016 22:07:42 -0000

A new fbdev file is needed and should be overrided if needed.
The number contained in fbdev will be used as X in /dev/fbX.

By overriding fbdev you can have a splash screen on another
framebuffer than /dev/fbO.

Signed-off-by: Julien Gueytat <contact@jgueytat.fr>
---
 AUTHORS      |  1 +
 psplash-fb.c | 16 ++++++++++------
 psplash-fb.h |  4 ++--
 psplash.c    | 49 ++++++++++++++++++++++++++++---------------------
 4 files changed, 41 insertions(+), 29 deletions(-)

diff --git a/AUTHORS b/AUTHORS
index 953d867..1a9d938 100644
--- a/AUTHORS
+++ b/AUTHORS
@@ -1,6 +1,7 @@
 List of contributors (in alphabetical order):
 
 Aws Ismail <aws.ismail@windriver.com>
+Julien Gueytat <contact@jgueytat.fr>
 Juro Bystricky <juro.bystricky@intel.com>
 Khem Raj <raj.khem@gmail.com>
 Matthew Allum <mallum@openedhand.com>
diff --git a/psplash-fb.c b/psplash-fb.c
index 8daaf6f..d344e5a 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -99,18 +99,20 @@ attempt_to_change_pixel_format (PSplashFB *fb,
 }
 
 PSplashFB*
-psplash_fb_new (int angle)
+psplash_fb_new (int angle, int fbdev_id)
 {
   struct fb_var_screeninfo fb_var;
   struct fb_fix_screeninfo fb_fix;
   int                      off;
-  char                    *fbdev;
+  char                     fbdev[9] = "/dev/fb0";
 
   PSplashFB *fb = NULL;
 
-  fbdev = getenv("FBDEV");
-  if (fbdev == NULL)
-    fbdev = "/dev/fb0";
+  if (fbdev_id > 0 && fbdev_id < 10)
+    {
+        // Conversion from integer to ascii.
+        fbdev[7] = fbdev_id + 48;
+    }
 
   if ((fb = malloc (sizeof(PSplashFB))) == NULL)
     {
@@ -124,7 +126,9 @@ psplash_fb_new (int angle)
 
   if ((fb->fd = open (fbdev, O_RDWR)) < 0)
     {
-      perror ("Error opening /dev/fb0");
+      fprintf(stderr,
+              "Error opening %s\n",
+              fbdev);
       goto fail;
     }
 
diff --git a/psplash-fb.h b/psplash-fb.h
index a4a0f4c..d0dce10 100644
--- a/psplash-fb.h
+++ b/psplash-fb.h
@@ -38,7 +38,7 @@ typedef struct PSplashFB
   char		*data;
   char		*base;
 
-  int            angle;
+  int            angle, fbdev_id;
   int            real_width, real_height;
 
   enum RGBMode   rgbmode;
@@ -55,7 +55,7 @@ void
 psplash_fb_destroy (PSplashFB *fb);
 
 PSplashFB*
-psplash_fb_new (int angle);
+psplash_fb_new (int angle, int fbdev_id);
 
 void
 psplash_fb_draw_rect (PSplashFB    *fb, 
diff --git a/psplash.c b/psplash.c
index 507202f..992e199 100644
--- a/psplash.c
+++ b/psplash.c
@@ -205,35 +205,41 @@ int
 main (int argc, char** argv) 
 {
   char      *tmpdir;
-  int        pipe_fd, i = 0, angle = 0, ret = 0;
+  int        pipe_fd, i = 0, angle = 0, fbdev_id = 0, ret = 0;
   PSplashFB *fb;
   bool       disable_console_switch = FALSE;
-  
+
   signal(SIGHUP, psplash_exit);
   signal(SIGINT, psplash_exit);
   signal(SIGQUIT, psplash_exit);
 
-  while (++i < argc)
-    {
-      if (!strcmp(argv[i],"-n") || !strcmp(argv[i],"--no-console-switch"))
-        {
-	  disable_console_switch = TRUE;
-	  continue;
-	}
+  while (++i < argc) {
+    if (!strcmp(argv[i],"-n") || !strcmp(argv[i],"--no-console-switch"))
+      {
+        disable_console_switch = TRUE;
+        continue;
+      }
+
+    if (!strcmp(argv[i],"-a") || !strcmp(argv[i],"--angle"))
+      {
+        if (++i >= argc) goto fail;
+        angle = atoi(argv[i]);
+        continue;
+      }
+
+    if (!strcmp(argv[i],"-f") || !strcmp(argv[i],"--fbdev"))
+      {
+        if (++i >= argc) goto fail;
+        fbdev_id = atoi(argv[i]);
+        continue;
+      }
 
-      if (!strcmp(argv[i],"-a") || !strcmp(argv[i],"--angle"))
-        {
-	  if (++i >= argc) goto fail;
-	  angle = atoi(argv[i]);
-	  continue;
-	}
-      
     fail:
       fprintf(stderr, 
-	      "Usage: %s [-n|--no-console-switch][-a|--angle <0|90|180|270>]\n", 
-	      argv[0]);
+              "Usage: %s [-n|--no-console-switch][-a|--angle <0|90|180|270>][-f|--fbdev <0..9>]\n", 
+              argv[0]);
       exit(-1);
-    }
+  }
 
   tmpdir = getenv("TMPDIR");
 
@@ -262,10 +268,11 @@ main (int argc, char** argv)
   if (!disable_console_switch)
     psplash_console_switch ();
 
-  if ((fb = psplash_fb_new(angle)) == NULL) {
+  if ((fb = psplash_fb_new(angle,fbdev_id)) == NULL)
+    {
 	  ret = -1;
 	  goto fb_fail;
-  }
+    }
 
   /* Clear the background with #ecece1 */
   psplash_fb_draw_rect (fb, 0, 0, fb->width, fb->height,
-- 
1.9.1


