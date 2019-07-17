Return-Path: <mickael.tansorier@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADC93E00D7E; Wed, 17 Jul 2019 09:01:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 756 seconds by postgrey-1.32 at yocto-www;
	Wed, 17 Jul 2019 09:01:01 PDT
Received: from idris.smile.fr (idris.smile.fr [91.216.209.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14F24E00C9E
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 09:01:01 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by idris.smile.fr (Postfix) with ESMTP id 341161F4D852;
	Wed, 17 Jul 2019 17:48:24 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at smile.fr
Received: from idris.smile.fr ([127.0.0.1])
	by localhost (bluemind-mta.prod.vitry.intranet [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id 3G+6kpsUOxx5; Wed, 17 Jul 2019 17:48:23 +0200 (CEST)
Received: from P-ASN-Amnesia.nantes.intranet
	(static-css-ccs-204145.business.bouyguestelecom.com
	[176.157.204.145])
	by idris.smile.fr (Postfix) with ESMTPSA id B9C9D1F403CC;
	Wed, 17 Jul 2019 17:48:23 +0200 (CEST)
From: =?UTF-8?q?Micka=C3=ABl=20Tansorier?= <mickael.tansorier@smile.fr>
To: yocto@yoctoproject.org
Date: Wed, 17 Jul 2019 17:48:16 +0200
Message-Id: <20190717154816.9842-1-mickael.tansorier@smile.fr>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [psplash][PATCH] bmp: Add option to print bmp image
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
X-List-Received-Date: Wed, 17 Jul 2019 16:01:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add option to load image in `psplash` command line.
Image is bmp3 format. If this image can not be found or
loading fail, default image is print.

bmp_layout.h: describe bmp3 file inspire of bmp_layout.h
from u-boot.
psplash-fb.{c|h}: add function to draw GBR888 image.
psplash.c: Add option to read bmp image and print it
if loading file is right.

Signed-off-by: Mickaël Tansorier <mickael.tansorier@smile.fr>
---
 bmp_layout.h | 35 +++++++++++++++++++
 psplash-fb.c | 25 ++++++++++++++
 psplash-fb.h |  9 +++++
 psplash.c    | 95 ++++++++++++++++++++++++++++++++++++++++++++++++++--
 4 files changed, 161 insertions(+), 3 deletions(-)
 create mode 100644 bmp_layout.h

diff --git a/bmp_layout.h b/bmp_layout.h
new file mode 100644
index 0000000..f397ef9
--- /dev/null
+++ b/bmp_layout.h
@@ -0,0 +1,35 @@
+/* Layout of a bmp file */
+/* format = bmp3        */
+
+#ifndef _BMP_LAYOUT_H_
+#define _BMP_LAYOUT_H_
+
+#define BMP_IMG_BYTES_PER_PIXEL 3
+
+struct __attribute__((__packed__)) bmp_header {
+	/* Header */
+	char signature[2];
+	__u32	file_size;
+	__u32	reserved;
+	__u32	data_offset;
+	/* InfoHeader */
+	__u32	size;
+	__u32	width;
+	__u32	height;
+	__u16	planes;
+	__u16	bit_count;
+	__u32	compression;
+	__u32	image_size;
+	__u32	x_pixels_per_m;
+	__u32	y_pixels_per_m;
+	__u32	colors_used;
+	__u32	colors_important;
+};
+
+struct bmp_image {
+	struct bmp_header header;
+	/* ColorTable */
+	uint8 * data;
+};
+
+#endif /* _BMP_LAYOUT_H_ */
diff --git a/psplash-fb.c b/psplash-fb.c
index c064d18..307d6a8 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -441,6 +441,31 @@ psplash_fb_draw_image (PSplashFB    *fb,
     }
 }
 
+void
+psplash_fb_draw_image_raw_GBR888 (PSplashFB    *fb,
+		       int          x,
+		       int          y,
+		       int          img_width,
+		       int          img_height,
+		       int          img_bytes_per_pixel,
+		       uint8       *rle_data)
+{
+  uint8       *p = rle_data;
+  int          dx = 0, dy = 0,  total_len;
+  int          img_rowstride = img_bytes_per_pixel*img_width;
+
+  total_len = img_rowstride * img_height;
+  /* Start at the end of pointer */
+  p += (total_len - 1);
+
+  while ((p - rle_data) >= 0)
+    {
+		psplash_fb_plot_pixel (fb, x-dx, y+dy, *(p), *(p-1), *(p-2));
+		if (++dx * img_bytes_per_pixel >= img_rowstride) { dx=0; dy++; }
+			p -= img_bytes_per_pixel;
+    }
+}
+
 /* Font rendering code based on BOGL by Ben Pfaff */
 
 static int
diff --git a/psplash-fb.h b/psplash-fb.h
index d0dce10..297add8 100644
--- a/psplash-fb.h
+++ b/psplash-fb.h
@@ -77,6 +77,15 @@ psplash_fb_draw_image (PSplashFB    *fb,
 		       int          img_rowstride,
 		       uint8       *rle_data);
 
+void
+psplash_fb_draw_image_raw_GBR888 (PSplashFB    *fb,
+		       int          x,
+		       int          y,
+		       int          img_width,
+		       int          img_height,
+		       int          img_bytes_pre_pixel,
+		       uint8       *rle_data);
+
 void
 psplash_fb_text_size (int                *width,
 		      int                *height,
diff --git a/psplash.c b/psplash.c
index 992e199..f8a92b6 100644
--- a/psplash.c
+++ b/psplash.c
@@ -24,6 +24,7 @@
 #include "psplash-poky-img.h"
 #include "psplash-bar-img.h"
 #include "radeon-font.h"
+#include "bmp_layout.h"
 
 #define SPLIT_LINE_POS(fb)                                  \
 	(  (fb)->height                                     \
@@ -40,6 +41,59 @@ psplash_exit (int UNUSED(signum))
   psplash_console_reset ();
 }
 
+struct bmp_image *read_image_bmp(char *image_name)
+{
+  FILE *file;
+  size_t read;
+  struct bmp_image *bmp;
+
+  file = fopen(image_name, "rb");
+  if (file != NULL)
+    {
+      bmp = malloc(sizeof(struct bmp_image));
+
+      /* Read header */
+      read = fread(&bmp->header, sizeof(struct bmp_header), 1, file);
+      if (read != 1)
+        {
+          printf("Error: Fail to read header\n");
+          free(bmp);
+          fclose(file);
+          return NULL;
+        }
+
+      /* Read BMP image signature */
+      if (bmp->header.signature[0] != 'B' && bmp->header.signature[1] != 'M')
+        {
+          printf("Error: File format is not correct.\n");
+          free(bmp);
+          fclose(file);
+          return NULL;
+        }
+
+      bmp->data = malloc(sizeof(uint8) * bmp->header.image_size);
+
+      /* Read data image */
+      read = fread(bmp->data, sizeof(uint8), (bmp->header.image_size), file);
+      if (read != bmp->header.image_size)
+        {
+          printf("Error: Cannot read data image.\n");
+          free(bmp);
+          fclose(file);
+          return NULL;
+        }
+
+      fclose(file);
+    }
+  else
+    {
+      printf("Error: Cannot open %s.\n",image_name);
+      return NULL;
+	}
+
+  return bmp;
+}
+
 void
 psplash_draw_msg (PSplashFB *fb, const char *msg)
 {
@@ -208,6 +262,8 @@ main (int argc, char** argv)
   int        pipe_fd, i = 0, angle = 0, fbdev_id = 0, ret = 0;
   PSplashFB *fb;
   bool       disable_console_switch = FALSE;
+  char       image_name[255] = "";
+  struct bmp_image *bmp = NULL;
 
   signal(SIGHUP, psplash_exit);
   signal(SIGINT, psplash_exit);
@@ -233,10 +289,16 @@ main (int argc, char** argv)
         fbdev_id = atoi(argv[i]);
         continue;
       }
+    if (!strcmp(argv[i],"-i") || !strcmp(argv[i],"--image"))
+      {
+        if (++i >= argc) goto fail;
+        strcpy(image_name,argv[i]);
+        continue;
+      }
 
     fail:
       fprintf(stderr, 
-              "Usage: %s [-n|--no-console-switch][-a|--angle <0|90|180|270>][-f|--fbdev <0..9>]\n", 
+              "Usage: %s [-n|--no-console-switch][-a|--angle <0|90|180|270>][-f|--fbdev <0..9>][-i|--image <bmp_image>]\n",
               argv[0]);
       exit(-1);
   }
@@ -278,8 +340,31 @@ main (int argc, char** argv)
   psplash_fb_draw_rect (fb, 0, 0, fb->width, fb->height,
                         PSPLASH_BACKGROUND_COLOR);
 
-  /* Draw the Poky logo  */
-  psplash_fb_draw_image (fb, 
+  if (strcmp(image_name,"") != 0)
+    {
+      bmp = read_image_bmp(image_name);
+    }
+
+  if (bmp != NULL)
+    {
+	  /* Draw loaded logo */
+      psplash_fb_draw_image_raw_GBR888 (fb,
+			 (fb->width  + bmp->header.width)/2,
+#if PSPLASH_IMG_FULLSCREEN
+			 (fb->height - bmp->header.height)/2,
+#else
+			 (fb->height * PSPLASH_IMG_SPLIT_NUMERATOR
+			  / PSPLASH_IMG_SPLIT_DENOMINATOR - bmp->header.height)/2,
+#endif
+			 bmp->header.width,
+			 bmp->header.height,
+			 BMP_IMG_BYTES_PER_PIXEL,
+			 bmp->data);
+    }
+  else
+    {
+      /* Draw the Poky logo  */
+      psplash_fb_draw_image (fb,
 			 (fb->width  - POKY_IMG_WIDTH)/2, 
 #if PSPLASH_IMG_FULLSCREEN
 			 (fb->height - POKY_IMG_HEIGHT)/2,
@@ -292,6 +377,7 @@ main (int argc, char** argv)
 			 POKY_IMG_BYTES_PER_PIXEL,
 			 POKY_IMG_ROWSTRIDE,
 			 POKY_IMG_RLE_PIXEL_DATA);
+    }
 
   /* Draw progress bar border */
   psplash_fb_draw_image (fb, 
@@ -320,5 +406,8 @@ main (int argc, char** argv)
   if (!disable_console_switch)
     psplash_console_reset ();
 
+  if(bmp!=NULL)
+    free(bmp);
+
   return ret;
 }
-- 
2.22.0


