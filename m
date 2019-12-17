Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1805.1576577975759575682
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 02:19:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.ro header.s=google header.b=TSUy+NE9;
 spf=none, err=SPF record not found (domain: gherzan.ro, ip: 140.211.169.56, mailfrom: andrei@gherzan.ro)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DCDBE01261; Tue, 17 Dec 2019 02:19:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2801FE0125D
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 02:19:34 -0800 (PST)
Received: by mail-wm1-f68.google.com with SMTP id p17so2459283wma.1
        for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 02:19:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.ro; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=st8rD9F17hJbP+fBfC31Sr8aOINNitL9wgwgajb2oHo=;
        b=TSUy+NE9+nbPhnQDRULqiy36Sp/gDJ2R572Ouvj0gQ9LuHKJuN9MboEWsQJnfnd8ay
         qhnHMQfg3bwNYdyPZVIY9mk9PXoN/QVOYJUBpYQVpyYovbZlwrCcwuWFB+N/lTlU91gP
         43r2CBV7bvfyE7bbBEScRgF34QQVNcPwqthAzGRFVam75FLevp/r8bwAUPyzFC+wj43Y
         EzUb8jbx/sk56njLa5eO8g+6k5M2uIrOeCkAGDXtvnVbkf83HixbkEwSf9oPycC9P2ze
         Q0iqMlYBWHOMR+iLI3bMby9zEJQb5BJz974he/SNE8RzaKa1Kz1mqWVo2mhfjt5vu70C
         n9FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=st8rD9F17hJbP+fBfC31Sr8aOINNitL9wgwgajb2oHo=;
        b=LJ1m2s1acgA5n5pUSpr/3zSPWbsWCQtCoMQ65RMutl6G7ZlQKjIZHNzlTlTRFDgaYv
         7BDeYezU0W9FQOP03NC/Z6mlB13rx6aVqqTZB6nX6h/9bYVvQFrCTS1TvERAwqXuanoH
         CONqEYL9n7nWK5uydp7bVMx+XWxxEbE14/yisTG7YgZOniB8jElqLXVsdBzuKvTIQOHq
         xY27D1+Vb/QVSg8G86I50+bfrVXCZre3+ALOUoAi41DHwhHG0o7h21Xp7GLfJmeZV3ef
         OTawsjrpcu1aO9uQo80lmNWYZJODoE0OEvJDhyZ3mHEkR3lfeAN2frd+zSk6CZiity4q
         byXA==
X-Gm-Message-State: APjAAAUlzZeYUM6LRd+pn1mOC8nWZb4RLmYGL7lZP+xTTRmFHjOb+Put
	G7KM3aOf9p5mVGgvOuWzLeQoxB4hMg4=
X-Google-Smtp-Source: APXvYqyHeJXWBDwXA9LcmOd0QXTPUXGiFQ8ZRPFC2jky0xL6z2hnQHZp8ah7mNu5UfTNjXZ/ryLuFg==
X-Received: by 2002:a1c:7dc4:: with SMTP id y187mr4380530wmc.161.1576577972929;
        Tue, 17 Dec 2019 02:19:32 -0800 (PST)
Received: from agherzan-lnxU.hanover.local ([81.145.148.228])
        by smtp.gmail.com with ESMTPSA id d8sm24759223wre.13.2019.12.17.02.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 02:19:32 -0800 (PST)
From: "Andrei Gherzan" <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Cc: Andrei Gherzan <agherzan@hanoverdisplays.com>
Subject: [PATCH 2/3] Double buffering support
Date: Tue, 17 Dec 2019 10:19:16 +0000
Message-Id: <20191217101917.29395-2-andrei@gherzan.ro>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217101917.29395-1-andrei@gherzan.ro>
References: <20191217101917.29395-1-andrei@gherzan.ro>

From: Andrei Gherzan <agherzan@hanoverdisplays.com>

'psplash' uses only one buffer which can cause tearing artifacts. This
change uses the FBIOPAN_DISPLAY ioctl as a way to handle page flipping
and also does that after a vsync interrupt to remove any tearing issues.

Signed-off-by: Andrei Gherzan <agherzan@hanoverdisplays.com>
---
 psplash-fb.c | 121 ++++++++++++++++++++++++++++++++++++++++++---------
 psplash-fb.h |   8 ++++
 psplash.c    |  10 ++++-
 3 files changed, 118 insertions(+), 21 deletions(-)

diff --git a/psplash-fb.c b/psplash-fb.c
index c064d18..3cb5d2d 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -18,6 +18,46 @@
 #include <endian.h>
 #include "psplash.h"
 
+static void
+psplash_wait_for_vsync(PSplashFB *fb)
+{
+  int err = ioctl(fb->fd, FBIO_WAITFORVSYNC, 0);
+  if (err != 0)
+    fprintf(stderr, "Error, FB vsync ioctl [%d]\n", err);
+}
+
+void
+psplash_fb_flip(PSplashFB *fb, int sync)
+{
+  char *tmp;
+
+  if (fb->double_buffering) {
+
+    /* Carry out the flip after a vsync */
+    psplash_wait_for_vsync(fb);
+
+    /* Switch the current activate area in fb */
+    if (fb->fb_var.yoffset == 0 ) {
+      fb->fb_var.yoffset = fb->real_height;
+    } else {
+      fb->fb_var.yoffset = 0;
+    }
+    if (ioctl(fb->fd, FBIOPAN_DISPLAY, &fb->fb_var) == -1 ) {
+      fprintf(stderr, "psplash_fb_flip: FBIOPAN_DISPLAY failed\n");
+    }
+
+    /* Switch the front and back data pointers */
+    tmp = fb->fdata;
+    fb->fdata = fb->bdata;
+    fb->bdata = tmp;
+
+    /* Sync new front to new back when requested */
+    if (sync) {
+      memcpy(fb->bdata, fb->fdata, fb->stride * fb->real_height);
+    }
+  }
+}
+
 void
 psplash_fb_destroy (PSplashFB *fb)
 {
@@ -163,6 +203,29 @@ psplash_fb_new (int angle, int fbdev_id)
       goto fail;
     }
 
+  /* Setup double virtual resolution for double buffering */
+  if (ioctl(fb->fd, FBIOPAN_DISPLAY, &fb_var) == -1) {
+    fprintf(stderr, "FBIOPAN_DISPLAY not supported, double buffering disabled");
+  } else {
+    if (fb_var.yres_virtual == fb_var.yres * 2) {
+      DBG("Virtual resolution already double");
+      fb->double_buffering = 1;
+    } else {
+      fb_var.yres_virtual = fb_var.yres * 2;
+      if (ioctl(fb->fd, FBIOPUT_VSCREENINFO, &fb_var) == -1) {
+        fprintf(stderr, "FBIOPUT_VSCREENINFO failed, double buffering disabled");
+      } else {
+        if (ioctl(fb->fd, FBIOGET_FSCREENINFO, &fb_fix) == -1) {
+          perror(" Error getting the fixed framebuffer info");
+          goto fail;
+        } else {
+          DBG("Virtual resolution set to double");
+          fb->double_buffering = 1;
+        }
+      }
+    }
+  }
+
   fb->real_width  = fb->width  = fb_var.xres;
   fb->real_height = fb->height = fb_var.yres;
   fb->bpp    = fb_var.bits_per_pixel;
@@ -201,8 +264,7 @@ psplash_fb_new (int angle, int fbdev_id)
       fb->width, fb->height, fb->bpp, fb->stride);
 
   fb->base = (char *) mmap ((caddr_t) NULL,
-			    /*fb_fix.smem_len */
-			    fb->stride * fb->height,
+			    fb_fix.smem_len,
 			    PROT_READ|PROT_WRITE,
 			    MAP_SHARED,
 			    fb->fd, 0);
@@ -217,6 +279,23 @@ psplash_fb_new (int angle, int fbdev_id)
 
   fb->data = fb->base + off;
 
+  if (fb->double_buffering) {
+    /* fb_var is needed when flipping the buffers */
+    memcpy(&fb->fb_var, &fb_var, sizeof(struct fb_var_screeninfo));
+    if (fb->fb_var.yoffset == 0) {
+      printf("to back\n");
+      fb->fdata = fb->data;
+      fb->bdata = fb->data + fb->stride * fb->height;
+    } else {
+      printf("to front\n");
+      fb->fdata = fb->data + fb->stride * fb->height;
+      fb->bdata = fb->data;
+    }
+  } else {
+    fb->fdata = fb->data;
+    fb->bdata = fb->data;
+  }
+
 #if 0
   /* FIXME: No support for 8pp as yet  */
   if (visual == FB_VISUAL_PSEUDOCOLOR
@@ -274,6 +353,8 @@ psplash_fb_plot_pixel (PSplashFB    *fb,
 		       uint8        green,
 		       uint8        blue)
 {
+  /* Always write to back data (bdata) which points to the right data with or
+   * without double buffering support */
   int off;
 
   if (x < 0 || x > fb->width-1 || y < 0 || y > fb->height-1)
@@ -301,22 +382,22 @@ psplash_fb_plot_pixel (PSplashFB    *fb,
       {
       case 24:
 #if __BYTE_ORDER == __BIG_ENDIAN
-        *(fb->data + off + 0) = red;
-        *(fb->data + off + 1) = green;
-        *(fb->data + off + 2) = blue;
+        *(fb->bdata + off + 0) = red;
+        *(fb->bdata + off + 1) = green;
+        *(fb->bdata + off + 2) = blue;
 #else
-        *(fb->data + off + 0) = blue;
-        *(fb->data + off + 1) = green;
-        *(fb->data + off + 2) = red;
+        *(fb->bdata + off + 0) = blue;
+        *(fb->bdata + off + 1) = green;
+        *(fb->bdata + off + 2) = red;
 #endif
         break;
       case 32:
-        *(volatile uint32_t *) (fb->data + off)
+        *(volatile uint32_t *) (fb->bdata + off)
           = (red << 16) | (green << 8) | (blue);
         break;
 
       case 16:
-        *(volatile uint16_t *) (fb->data + off)
+        *(volatile uint16_t *) (fb->bdata + off)
 	  = ((red >> 3) << 11) | ((green >> 2) << 5) | (blue >> 3);
         break;
       default:
@@ -328,21 +409,21 @@ psplash_fb_plot_pixel (PSplashFB    *fb,
       {
       case 24:
 #if __BYTE_ORDER == __BIG_ENDIAN
-        *(fb->data + off + 0) = blue;
-        *(fb->data + off + 1) = green;
-        *(fb->data + off + 2) = red;
+        *(fb->bdata + off + 0) = blue;
+        *(fb->bdata + off + 1) = green;
+        *(fb->bdata + off + 2) = red;
 #else
-        *(fb->data + off + 0) = red;
-        *(fb->data + off + 1) = green;
-        *(fb->data + off + 2) = blue;
+        *(fb->bdata + off + 0) = red;
+        *(fb->bdata + off + 1) = green;
+        *(fb->bdata + off + 2) = blue;
 #endif
         break;
       case 32:
-        *(volatile uint32_t *) (fb->data + off)
+        *(volatile uint32_t *) (fb->bdata + off)
           = (blue << 16) | (green << 8) | (red);
         break;
       case 16:
-        *(volatile uint16_t *) (fb->data + off)
+        *(volatile uint16_t *) (fb->bdata + off)
 	  = ((blue >> 3) << 11) | ((green >> 2) << 5) | (red >> 3);
         break;
       default:
@@ -353,13 +434,13 @@ psplash_fb_plot_pixel (PSplashFB    *fb,
     switch (fb->bpp)
       {
       case 32:
-        *(volatile uint32_t *) (fb->data + off)
+        *(volatile uint32_t *) (fb->bdata + off)
 	  = ((red >> (8 - fb->red_length)) << fb->red_offset) 
 	      | ((green >> (8 - fb->green_length)) << fb->green_offset)
 	      | ((blue >> (8 - fb->blue_length)) << fb->blue_offset);
         break;
       case 16:
-        *(volatile uint16_t *) (fb->data + off)
+        *(volatile uint16_t *) (fb->bdata + off)
 	  = ((red >> (8 - fb->red_length)) << fb->red_offset) 
 	      | ((green >> (8 - fb->green_length)) << fb->green_offset)
 	      | ((blue >> (8 - fb->blue_length)) << fb->blue_offset);
diff --git a/psplash-fb.h b/psplash-fb.h
index d0dce10..2f0cdff 100644
--- a/psplash-fb.h
+++ b/psplash-fb.h
@@ -29,6 +29,7 @@ enum RGBMode {
 typedef struct PSplashFB
 {
   int            fd;			
+  struct fb_var_screeninfo fb_var;
   struct termios save_termios;	        
   int            type;		        
   int            visual;		
@@ -38,6 +39,11 @@ typedef struct PSplashFB
   char		*data;
   char		*base;
 
+  /* Support for double buffering */
+  int		double_buffering;
+  char		*bdata;
+  char		*fdata;
+
   int            angle, fbdev_id;
   int            real_width, real_height;
 
@@ -93,5 +99,7 @@ psplash_fb_draw_text (PSplashFB         *fb,
 		      const PSplashFont *font,
 		      const char        *text);
 
+void
+psplash_fb_flip(PSplashFB *fb, int sync);
 
 #endif
diff --git a/psplash.c b/psplash.c
index f6442f1..61122fc 100644
--- a/psplash.c
+++ b/psplash.c
@@ -126,6 +126,7 @@ parse_command (PSplashFB *fb, char *string)
       return 1;
     }
 
+  psplash_fb_flip(fb, 0);
   return 0;
 }
 
@@ -309,8 +310,15 @@ main (int argc, char** argv)
   psplash_draw_msg (fb, PSPLASH_STARTUP_MSG);
 #endif
 
-  psplash_main (fb, pipe_fd, 0);
+  /* Scene set so let's flip the buffers. */
+  /* The first time we also synchronize the buffers so we can build on an
+   * existing scene. After the first scene is set in both buffers, only the
+   * text and progress bar change which overwrite the specific areas with every
+   * update.
+   */
+  psplash_fb_flip(fb, 1);
 
+  psplash_main (fb, pipe_fd, 0);
 
   psplash_fb_destroy (fb);
 
-- 
2.17.1

