Return-Path: <contact@jgueytat.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EAD1E00DE3; Sun, 22 May 2016 10:46:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51C9FE007E4
	for <yocto@yoctoproject.org>; Sun, 22 May 2016 10:46:27 -0700 (PDT)
Received: from mfilter25-d.gandi.net (mfilter25-d.gandi.net [217.70.178.153])
	by relay4-d.mail.gandi.net (Postfix) with ESMTP id A585D1720A9
	for <yocto@yoctoproject.org>; Sun, 22 May 2016 19:46:25 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter25-d.gandi.net
Received: from relay4-d.mail.gandi.net ([IPv6:::ffff:217.70.183.196])
	by mfilter25-d.gandi.net (mfilter25-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id F-FDhcfEeX3c for <yocto@yoctoproject.org>;
	Sun, 22 May 2016 19:46:24 +0200 (CEST)
X-Originating-IP: 77.154.202.160
Received: from localhost.localdomain (160.202.154.77.rev.sfr.net
	[77.154.202.160]) (Authenticated sender: contact@jgueytat.fr)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0AE9717209D
	for <yocto@yoctoproject.org>; Sun, 22 May 2016 19:46:23 +0200 (CEST)
From: Julien Gueytat <contact@jgueytat.fr>
To: yocto@yoctoproject.org
Date: Sun, 22 May 2016 19:46:23 +0200
Message-Id: <1463939183-14049-1-git-send-email-contact@jgueytat.fr>
X-Mailer: git-send-email 1.9.1
Subject: [psplash][PATCH] Add fbdev option to set the proper /dev/fbX.
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
X-List-Received-Date: Sun, 22 May 2016 17:46:32 -0000

It works exactly the same way than the angle parameter:
 * --angle <-> /etc/rotation file
 * --fbdev <-> /etc/fbdev file

Signed-off-by: Julien Gueytat <contact@jgueytat.fr>
---
 psplash-fb.c | 16 ++++++++++------
 psplash-fb.h |  4 ++--
 psplash.c    | 57 ++++++++++++++++++++++++++++++++-------------------------
 3 files changed, 44 insertions(+), 33 deletions(-)

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
index 04d3d49..992e199 100644
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
 
@@ -245,10 +251,10 @@ main (int argc, char** argv)
   if (mkfifo(PSPLASH_FIFO, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP))
     {
       if (errno!=EEXIST) 
-	{
-	  perror("mkfifo");
-	  exit(-1);
-	}
+	    {
+	      perror("mkfifo");
+	      exit(-1);
+	    }
     }
 
   pipe_fd = open (PSPLASH_FIFO,O_RDONLY|O_NONBLOCK);
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


