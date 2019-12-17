Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1840.1576578163763725790
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 02:22:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.ro header.s=google header.b=dmYgvW7w;
 spf=none, err=SPF record not found (domain: gherzan.ro, ip: 140.211.169.56, mailfrom: andrei@gherzan.ro)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A02C9E01261; Tue, 17 Dec 2019 02:22:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0AC6E007E1
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 02:22:42 -0800 (PST)
Received: by mail-wr1-f65.google.com with SMTP id y17so10666351wrh.5
        for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 02:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.ro; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=st8rD9F17hJbP+fBfC31Sr8aOINNitL9wgwgajb2oHo=;
        b=dmYgvW7wVPP8LMkty138jbYcBOyRvnP0MpUbDAqBVCOv0AmWsx/UdCIh+ZWeEnMREb
         xteQ5DjkBdyfDNNTLgwtWZlVaBmvStFmMg4xIy0a8QvTsqBO07qghs26qqwGLQI/9fJp
         Ii5YloQF1HEmBjzPymiaPvKN3crbKJIcns8yOZ65YIbNC4eRn4ustvCtYKfvQTaINz0t
         Bffq06qzMMM3v2VQfStxg5y3lzu+4nUWMeNi/PtLO/i1NoKLt3XjhBBDoDcnF90tksFo
         NI+o7Bu1nr8gv/xaO1q8+egkx/n5Aj+ByGEpzNz5to+0oxmsU5EpheNRDCKLMsSyvMo0
         C0eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=st8rD9F17hJbP+fBfC31Sr8aOINNitL9wgwgajb2oHo=;
        b=EIzmvv6ATIcHcNbRueODZyrMFBzsJNgdz1l76WNDhBRE2JD5fvMqNW/xigi++iyvBt
         Sl2k91ILHD1m9MwbFhdjsLEvISXG3Ojpypvr+gki85QY4I82bTU2GVxsnCIlVA5+pGF1
         XsN5Eqzxpq9D8mjbLXvv8DhxgUU4y6eTkfN9y0fgLU99iYss48UIjrw1QmDzdP4BWcRK
         EGewG8/r/+ofIw2vbo9RZendP08YLRgATGOqb1lE+wZTjvONgL+ukpBTl2+kuVqdFa3l
         4H3sX2UkFRfu/FuE+C6acvF+Ex37eYH3iPp8F9JMkXd/O+zaNrgSS9WfcTCnrv2Y/Tk3
         aezQ==
X-Gm-Message-State: APjAAAVJm/GBDn76I/1qDTamv9bUIU31gQh/4aIL9kIRhlLo3oZDmry7
	exyxskixYs5cC8lfHhxDl5v5hmaR58M=
X-Google-Smtp-Source: APXvYqwjxrQk2h276kckfdbHgf2aXMgr18lDSvyQIHsBHjl/+8BodgCLHXMsnyirhiYWckFy3DTF6g==
X-Received: by 2002:adf:cf0a:: with SMTP id o10mr34630608wrj.325.1576578161198;
        Tue, 17 Dec 2019 02:22:41 -0800 (PST)
Received: from agherzan-lnxU.hanover.local ([81.145.148.228])
        by smtp.gmail.com with ESMTPSA id c17sm24566978wrr.87.2019.12.17.02.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 02:22:40 -0800 (PST)
From: "Andrei Gherzan" <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Cc: Andrei Gherzan <agherzan@hanoverdisplays.com>
Subject: [psplash][PATCH 2/3] Double buffering support
Date: Tue, 17 Dec 2019 10:22:36 +0000
Message-Id: <20191217102237.29511-2-andrei@gherzan.ro>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217102237.29511-1-andrei@gherzan.ro>
References: <20191217102237.29511-1-andrei@gherzan.ro>

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

