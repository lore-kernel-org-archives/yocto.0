Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52004C49EA2
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.4])
 by mx.groups.io with SMTP id smtpd.web10.26690.1650873625220909175
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:00:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@opensynergy.com
 header.s=tm-dkim-20210503141657 header.b=fOKs8YS+;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.4,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.8.57_.trendmicro.com (unknown [172.21.194.146])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id 345C7100022EA
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:23 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1650873622.552000
X-TM-MAIL-UUID: 63ddfc28-a6f2-436a-af6f-9e2115adb232
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (unknown
 [104.47.8.57])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 86DF110002929
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gD7Ln5+6akcAIf4cN61i7HALt58GIrLCXe1CYyX4AOjCl1Vh5kkHMloRQk1kdMVzCIjz5gYgb3Qi0xYhjJfPSqzZ5aMAwa4v+pMWJ2Bg2W/h9hjYHUiOOrIORi72J/guhHpgaKHjtXE1Z4hczxFeP2syH5kPWiZpY9nuIYCLDZpoCDiqOD32+QI6ja1Zc7rsgw0Gb4J9HOXyV7YJcuev6RqXXKZQFwMKqaCD0uGPB6m7Q77lFo8SHPMVTS2a5YsKl2/T69Acl6dY8pp/UO9jxYlr0FQhyeQ8m5o0x64n27XhOKEccnaEOUcWZQxwx9YLSClH/pRTy+tj3Cm//yOebQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jzBBXgUvJ+7FEum6vlWtj0STIWorwKLq4yMwrDlbZac=;
 b=eS3ronOWOwLVqLhsoepiWOh9FfITxSm0nu816V8ooUL9+veN/5NTlUov1EXfKSHCSZYw42BObC3aMidcqm21igJ/SBy/C3ZbSSHY2WjXnYteuoRL8xP3VcPRmgR7Z6qktTWZN6hMAAateRjmfKasJKtV638ar0aN/x/LPEJ8s8+9WxyVh19jdy7Zcqc6aPNGypTkRjhCAsv6pSAJP9bafk25yJHGSVf6mqLOr8/E7RatULyePU2og2hW1O/rck37irmDTfZnL13pEIPZydCmbxEPjzNWhP8RNgz6nUwfv1ODcpWnKIQyugAsncvlK1mOnxmb/V41w2yd3NWIr+mtqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 217.66.60.4) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=opensynergy.com; dmarc=pass (p=none sp=none pct=100)
 action=none header.from=opensynergy.com; dkim=none (message not signed);
 arc=none
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 217.66.60.4)
 smtp.mailfrom=opensynergy.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=opensynergy.com;
Received-SPF: Pass (protection.outlook.com: domain of opensynergy.com
 designates 217.66.60.4 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.66.60.4; helo=SR-MAIL-03.open-synergy.com;
From: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
To: yocto@lists.yoctoproject.org
Cc: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
Subject: [psplash][RFC PATCH 05/14] Extract plot pixel from psplash-fb
Date: Mon, 25 Apr 2022 10:59:45 +0300
Message-Id: <20220425075954.10427-6-vasyl.vavrychuk@opensynergy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 78c64070-12b5-4136-4b42-08da2691a4ff
X-MS-TrafficTypeDiagnostic: AM0PR04MB5602:EE_
X-Microsoft-Antispam-PRVS: 
	<AM0PR04MB56024C3221492300075C82A6ECF89@AM0PR04MB5602.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jsR1DPd4cE20cwwtE6W8/RtBqCBXtc30Mz9Ml0Mj2md8qnSbnwYRJp3i9VRszxvj2KSdzJmlMWIC7Pwt/X81jyLSp4FdvMVzcKJM+eLdOWg93WE5M7lt20oe7r8kMgXcyKI3dei0jut8Ar2zhZ9xyVGosYQD34oSoXjkWX+6mI4Ilfjnm3+ifyKzsDJ/JxtUON7xHZ4Jxy1zWxg+Hs+cxoCaIrEsMwECahZ1ZVzwLpGQap8eqiKhuWmYHqL8CQY898HrVQnm7HNoPAb7G4OG2PsiOTG5DBrZJorYuRmlTTpEThBlmM/50Vie/7agzXZFtjG43blYaUlnQAa6w3AY5AAJQnxZbWgvUHy9WeSRO7RrH4Bw6u7H63yFWjw5+LvBmEPumFH3XSTyUubSwIprZkYtd/pYqZHyDS8zU/TG9lv+jgXGMqNxUfrfFjPLaZ3ryfh+Fblq5PcobsQlU4o7Dl4rdX8yZwufxtFPv9FMm58bvW8TlLLRzw4ykp0GtgnbSczcpAzp5DjO/2nd0cc3a3y1i1CvDCvNF5zjpvXDoMprRNl55VpTOdJTGOsJR/mnkXfck0ZUoQyTNM1x2mbqtscra+nbfMddfZueOSDREkx51AZMmwnzeoYdp0xSkRwSEjOotTQ4ZswsCBhxg4QcB1KfhxofgOTKSKdM9eViwiYeflVFkkEheR0hALQ8f6iz
X-Forefront-Antispam-Report: 
	CIP:217.66.60.4;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SR-MAIL-03.open-synergy.com;PTR:mx1.opensynergy.com;CAT:NONE;SFS:(13230001)(346002)(376002)(136003)(396003)(39830400003)(36840700001)(46966006)(4326008)(86362001)(2616005)(8676002)(81166007)(30864003)(44832011)(26005)(2906002)(83380400001)(36860700001)(5660300002)(1076003)(508600001)(8936002)(42186006)(82310400005)(36756003)(316002)(186003)(40480700001)(70206006)(336012)(70586007)(107886003)(6916009)(47076005);DIR:OUT;SFP:1102;
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:00:20.5873
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 78c64070-12b5-4136-4b42-08da2691a4ff
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=800fae25-9b1b-4edc-993d-c939c4e84a64;Ip=[217.66.60.4];Helo=[SR-MAIL-03.open-synergy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR05FT009.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5602
X-TM-AS-ERS: 104.47.8.57-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26854.006
X-TMASE-Result: 10--6.057900-4.000000
X-TMASE-MatchedRID: mU/J5maPYndaPCzml0uYFk7nLUqYrlslFIuBIWrdOePfUZT83lbkELNA
	b6BbLCYFIJ0D3Hhbi4Qef9c7rUhRihNSYeRE3U64CtzGvPCy/m5SuvtBzlaEqFH3rkvzbWPMlYu
	iBD2rlTc5bYnA9LjsLWs8jfVB5CrplFKRvEp4lzjknMSTG9lH+M/I/m8aIlgMmS0TtehjpJJzWe
	vD8c5nkctIYRBUGpVAR9K0Q1TPp1Q23LDAh/mSxV07myvEBAIZiK5qg1cmsr/+Aw16GgqpO3w6H
	06bMgivNPgy0T0qydVUdifX/ssRD/PxwD+/KEW2lXePXNM4FjMzNsXWBvGVBk+Ce+Qfci980beU
	y1EUccni8zVgXoAltpWD5DDAqPadSwOSQ/fMiOrdB/CxWTRRu4as+d5/8j56eLMHTOI5Rs5IHvj
	YONNJpl/Y+4pjRdG3L39Xd682RqFW4YAcfB4u2w==
X-TMASE-XGENCLOUD: e93a92f6-ac35-92f1-9423-da4e12e37e20-0-0-200-0
X-TM-Deliver-Signature: 240188846702982F51367A32375DEAE8
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1650873623;
	bh=K5nWcnlak1nWnIs0TnWhAyYBKhDeyu/XjLAiyyZ0k6k=; l=19274;
	h=From:To:Date;
	b=fOKs8YS+32bHlRE42a30ekHRXLIkST3r/8hM5u0QpZMuMEUEKBu7GJ1uuoU67XXCr
	 stH759c5ybQzzsCMj8/EOrss+W6KZgyVN3ObmwgGV5VNRSVGzdrA4Y8ANKigQnEtE/
	 OepVeVvIm2Hi64eLxSaXRi2RyC+z3vDekC6IojfgU4EzE7mIqow1cOfwnh92a4LaHu
	 xdTw669ez2i2LnIHgFuHq6fyWYAl6UFL6BNUNxpI4aOn8KKSzbE/LdtlZYWkWM0Crs
	 wzQK41aMI08Np65TENTPtyrnaMkDvCuIVa3tf/p6h88FPckH64V3Y4I8Hp/Kho3Ahc
	 eRg5utF1vlzQg==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56861

psplash_fb_plot_pixel is in fact framebuffer independent.

Signed-off-by: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
---
 Makefile.am    |   3 +-
 psplash-draw.c | 120 +++++++++++++++++++++++++++++++
 psplash-draw.h |  51 +++++++++++++
 psplash-fb.c   | 191 +++++++++++--------------------------------------
 psplash-fb.h   |  25 ++-----
 psplash.c      |  20 +++---
 6 files changed, 229 insertions(+), 181 deletions(-)
 create mode 100644 psplash-draw.c
 create mode 100644 psplash-draw.h

diff --git a/Makefile.am b/Makefile.am
index 310e126..375b926 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -5,7 +5,8 @@ AM_CFLAGS =3D $(GCC_FLAGS) $(EXTRA_GCC_FLAGS) -D_GNU_SOUR=
CE -DFONT_HEADER=3D\"$(FONT
 psplash_SOURCES =3D psplash.c psplash.h psplash-fb.c psplash-fb.h \
                   psplash-console.c psplash-console.h           \
 		  psplash-colors.h psplash-config.h		\
-		  psplash-poky-img.h psplash-bar-img.h $(FONT_NAME)-font.h
+		  psplash-poky-img.h psplash-bar-img.h $(FONT_NAME)-font.h \
+		  psplash-draw.c psplash-draw.h
 BUILT_SOURCES =3D psplash-poky-img.h psplash-bar-img.h
=20
 psplash_write_SOURCES =3D psplash-write.c psplash.h
diff --git a/psplash-draw.c b/psplash-draw.c
new file mode 100644
index 0000000..570cfce
--- /dev/null
+++ b/psplash-draw.c
@@ -0,0 +1,120 @@
+/*
+ *  pslash - a lightweight framebuffer splashscreen for embedded devices=
.
+ *
+ *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
+ *
+ *  SPDX-License-Identifier: GPL-2.0-or-later
+ *
+ */
+
+#include "psplash-draw.h"
+
+#define OFFSET(canvas, x, y) (((y) * (canvas)->stride) + ((x) * ((canvas=
)->bpp >> 3)))
+
+/* TODO: change to 'static inline' as psplash_fb_plot_pixel was before *=
/
+void
+psplash_plot_pixel(PSplashCanvas *canvas,
+		   int            x,
+		   int            y,
+		   uint8          red,
+		   uint8          green,
+		   uint8          blue)
+{
+  /* Always write to back data (data) which points to the right data wit=
h or
+   * without double buffering support */
+  int off;
+
+  if (x < 0 || x > canvas->width-1 || y < 0 || y > canvas->height-1)
+    return;
+
+  switch (canvas->angle)
+    {
+    case 270:
+      off =3D OFFSET (canvas, canvas->height - y - 1, x);
+      break;
+    case 180:
+      off =3D OFFSET (canvas, canvas->width - x - 1, canvas->height - y =
- 1);
+      break;
+    case 90:
+      off =3D OFFSET (canvas, y, canvas->width - x - 1);
+      break;
+    case 0:
+    default:
+      off =3D OFFSET (canvas, x, y);
+      break;
+    }
+
+  if (canvas->rgbmode =3D=3D RGB565 || canvas->rgbmode =3D=3D RGB888) {
+    switch (canvas->bpp)
+      {
+      case 24:
+#if __BYTE_ORDER =3D=3D __BIG_ENDIAN
+        *(canvas->data + off + 0) =3D red;
+        *(canvas->data + off + 1) =3D green;
+        *(canvas->data + off + 2) =3D blue;
+#else
+        *(canvas->data + off + 0) =3D blue;
+        *(canvas->data + off + 1) =3D green;
+        *(canvas->data + off + 2) =3D red;
+#endif
+        break;
+      case 32:
+        *(volatile uint32_t *) (canvas->data + off)
+          =3D (red << 16) | (green << 8) | (blue);
+        break;
+
+      case 16:
+        *(volatile uint16_t *) (canvas->data + off)
+	  =3D ((red >> 3) << 11) | ((green >> 2) << 5) | (blue >> 3);
+        break;
+      default:
+        /* depth not supported yet */
+        break;
+      }
+  } else if (canvas->rgbmode =3D=3D BGR565 || canvas->rgbmode =3D=3D BGR=
888) {
+    switch (canvas->bpp)
+      {
+      case 24:
+#if __BYTE_ORDER =3D=3D __BIG_ENDIAN
+        *(canvas->data + off + 0) =3D blue;
+        *(canvas->data + off + 1) =3D green;
+        *(canvas->data + off + 2) =3D red;
+#else
+        *(canvas->data + off + 0) =3D red;
+        *(canvas->data + off + 1) =3D green;
+        *(canvas->data + off + 2) =3D blue;
+#endif
+        break;
+      case 32:
+        *(volatile uint32_t *) (canvas->data + off)
+          =3D (blue << 16) | (green << 8) | (red);
+        break;
+      case 16:
+        *(volatile uint16_t *) (canvas->data + off)
+	  =3D ((blue >> 3) << 11) | ((green >> 2) << 5) | (red >> 3);
+        break;
+      default:
+        /* depth not supported yet */
+        break;
+      }
+  } else {
+    switch (canvas->bpp)
+      {
+      case 32:
+        *(volatile uint32_t *) (canvas->data + off)
+	  =3D ((red >> (8 - canvas->red_length)) << canvas->red_offset)
+	      | ((green >> (8 - canvas->green_length)) << canvas->green_offset)
+	      | ((blue >> (8 - canvas->blue_length)) << canvas->blue_offset);
+        break;
+      case 16:
+        *(volatile uint16_t *) (canvas->data + off)
+	  =3D ((red >> (8 - canvas->red_length)) << canvas->red_offset)
+	      | ((green >> (8 - canvas->green_length)) << canvas->green_offset)
+	      | ((blue >> (8 - canvas->blue_length)) << canvas->blue_offset);
+        break;
+      default:
+        /* depth not supported yet */
+        break;
+      }
+  }
+}
diff --git a/psplash-draw.h b/psplash-draw.h
new file mode 100644
index 0000000..ab2d4d2
--- /dev/null
+++ b/psplash-draw.h
@@ -0,0 +1,51 @@
+/*
+ *  pslash - a lightweight framebuffer splashscreen for embedded devices=
.
+ *
+ *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
+ *
+ *  SPDX-License-Identifier: GPL-2.0-or-later
+ *
+ */
+
+#ifndef _HAVE_PSPLASH_CANVAS_H
+#define _HAVE_PSPLASH_CANVAS_H
+
+#include "psplash.h"
+
+enum RGBMode {
+    RGB565,
+    BGR565,
+    RGB888,
+    BGR888,
+    GENERIC,
+};
+
+typedef struct PSplashCanvas
+{
+  int            width, height;
+  int            bpp;
+  int            stride;
+  char		*data;
+
+  int            angle;
+
+  enum RGBMode   rgbmode;
+  int            red_offset;
+  int            red_length;
+  int            green_offset;
+  int            green_length;
+  int            blue_offset;
+  int            blue_length;
+}
+PSplashCanvas;
+
+/* TODO: Remove after rest of drawing functions migrated to psplash-draw=
.c */
+void
+psplash_plot_pixel(PSplashCanvas *canvas,
+		   int            x,
+		   int            y,
+		   uint8          red,
+		   uint8          green,
+		   uint8          blue);
+
+#endif
diff --git a/psplash-fb.c b/psplash-fb.c
index 5dea82a..a7029c5 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -42,10 +42,11 @@ psplash_fb_flip(PSplashFB *fb, int sync)
     tmp =3D fb->fdata;
     fb->fdata =3D fb->bdata;
     fb->bdata =3D tmp;
+    fb->canvas.data =3D fb->bdata;
=20
     /* Sync new front to new back when requested */
     if (sync) {
-      memcpy(fb->bdata, fb->fdata, fb->stride * fb->real_height);
+      memcpy(fb->bdata, fb->fdata, fb->canvas.stride * fb->real_height);
     }
   }
 }
@@ -220,42 +221,42 @@ psplash_fb_new (int angle, int fbdev_id)
     }
   }
=20
-  fb->real_width  =3D fb->width  =3D fb_var.xres;
-  fb->real_height =3D fb->height =3D fb_var.yres;
-  fb->bpp    =3D fb_var.bits_per_pixel;
-  fb->stride =3D fb_fix.line_length;
+  fb->real_width  =3D fb->canvas.width  =3D fb_var.xres;
+  fb->real_height =3D fb->canvas.height =3D fb_var.yres;
+  fb->canvas.bpp    =3D fb_var.bits_per_pixel;
+  fb->canvas.stride =3D fb_fix.line_length;
   fb->type   =3D fb_fix.type;
   fb->visual =3D fb_fix.visual;
=20
-  fb->red_offset =3D fb_var.red.offset;
-  fb->red_length =3D fb_var.red.length;
-  fb->green_offset =3D fb_var.green.offset;
-  fb->green_length =3D fb_var.green.length;
-  fb->blue_offset =3D fb_var.blue.offset;
-  fb->blue_length =3D fb_var.blue.length;
-
-  if (fb->red_offset =3D=3D 11 && fb->red_length =3D=3D 5 &&
-      fb->green_offset =3D=3D 5 && fb->green_length =3D=3D 6 &&
-      fb->blue_offset =3D=3D 0 && fb->blue_length =3D=3D 5) {
-         fb->rgbmode =3D RGB565;
-  } else if (fb->red_offset =3D=3D 0 && fb->red_length =3D=3D 5 &&
-      fb->green_offset =3D=3D 5 && fb->green_length =3D=3D 6 &&
-      fb->blue_offset =3D=3D 11 && fb->blue_length =3D=3D 5) {
-         fb->rgbmode =3D BGR565;
-  } else if (fb->red_offset =3D=3D 16 && fb->red_length =3D=3D 8 &&
-      fb->green_offset =3D=3D 8 && fb->green_length =3D=3D 8 &&
-      fb->blue_offset =3D=3D 0 && fb->blue_length =3D=3D 8) {
-         fb->rgbmode =3D RGB888;
-  } else if (fb->red_offset =3D=3D 0 && fb->red_length =3D=3D 8 &&
-      fb->green_offset =3D=3D 8 && fb->green_length =3D=3D 8 &&
-      fb->blue_offset =3D=3D 16 && fb->blue_length =3D=3D 8) {
-         fb->rgbmode =3D BGR888;
+  fb->canvas.red_offset =3D fb_var.red.offset;
+  fb->canvas.red_length =3D fb_var.red.length;
+  fb->canvas.green_offset =3D fb_var.green.offset;
+  fb->canvas.green_length =3D fb_var.green.length;
+  fb->canvas.blue_offset =3D fb_var.blue.offset;
+  fb->canvas.blue_length =3D fb_var.blue.length;
+
+  if (fb->canvas.red_offset =3D=3D 11 && fb->canvas.red_length =3D=3D 5 =
&&
+      fb->canvas.green_offset =3D=3D 5 && fb->canvas.green_length =3D=3D=
 6 &&
+      fb->canvas.blue_offset =3D=3D 0 && fb->canvas.blue_length =3D=3D 5=
) {
+         fb->canvas.rgbmode =3D RGB565;
+  } else if (fb->canvas.red_offset =3D=3D 0 && fb->canvas.red_length =3D=
=3D 5 &&
+      fb->canvas.green_offset =3D=3D 5 && fb->canvas.green_length =3D=3D=
 6 &&
+      fb->canvas.blue_offset =3D=3D 11 && fb->canvas.blue_length =3D=3D =
5) {
+         fb->canvas.rgbmode =3D BGR565;
+  } else if (fb->canvas.red_offset =3D=3D 16 && fb->canvas.red_length =3D=
=3D 8 &&
+      fb->canvas.green_offset =3D=3D 8 && fb->canvas.green_length =3D=3D=
 8 &&
+      fb->canvas.blue_offset =3D=3D 0 && fb->canvas.blue_length =3D=3D 8=
) {
+         fb->canvas.rgbmode =3D RGB888;
+  } else if (fb->canvas.red_offset =3D=3D 0 && fb->canvas.red_length =3D=
=3D 8 &&
+      fb->canvas.green_offset =3D=3D 8 && fb->canvas.green_length =3D=3D=
 8 &&
+      fb->canvas.blue_offset =3D=3D 16 && fb->canvas.blue_length =3D=3D =
8) {
+         fb->canvas.rgbmode =3D BGR888;
   } else {
-         fb->rgbmode =3D GENERIC;
+         fb->canvas.rgbmode =3D GENERIC;
   }
=20
   DBG("width: %i, height: %i, bpp: %i, stride: %i",
-      fb->width, fb->height, fb->bpp, fb->stride);
+      fb->canvas.width, fb->canvas.height, fb->canvas.bpp, fb->canvas.st=
ride);
=20
   fb->base =3D (char *) mmap ((caddr_t) NULL,
 			    fb_fix.smem_len,
@@ -279,16 +280,17 @@ psplash_fb_new (int angle, int fbdev_id)
     if (fb->fb_var.yoffset =3D=3D 0) {
       printf("to back\n");
       fb->fdata =3D fb->data;
-      fb->bdata =3D fb->data + fb->stride * fb->height;
+      fb->bdata =3D fb->data + fb->canvas.stride * fb->canvas.height;
     } else {
       printf("to front\n");
-      fb->fdata =3D fb->data + fb->stride * fb->height;
+      fb->fdata =3D fb->data + fb->canvas.stride * fb->canvas.height;
       fb->bdata =3D fb->data;
     }
   } else {
     fb->fdata =3D fb->data;
     fb->bdata =3D fb->data;
   }
+  fb->canvas.data =3D fb->bdata;
=20
 #if 0
   /* FIXME: No support for 8pp as yet  */
@@ -312,14 +314,14 @@ psplash_fb_new (int angle, int fbdev_id)
   status =3D 2;
 #endif
=20
-  fb->angle =3D angle;
+  fb->canvas.angle =3D angle;
=20
-  switch (fb->angle)
+  switch (angle)
     {
     case 270:
     case 90:
-      fb->width  =3D fb->real_height;
-      fb->height =3D fb->real_width;
+      fb->canvas.width  =3D fb->real_height;
+      fb->canvas.height =3D fb->real_width;
       break;
     case 180:
     case 0:
@@ -337,115 +339,6 @@ psplash_fb_new (int angle, int fbdev_id)
   return NULL;
 }
=20
-#define OFFSET(fb,x,y) (((y) * (fb)->stride) + ((x) * ((fb)->bpp >> 3)))
-
-static inline void
-psplash_fb_plot_pixel (PSplashFB    *fb,
-		       int          x,
-		       int          y,
-		       uint8        red,
-		       uint8        green,
-		       uint8        blue)
-{
-  /* Always write to back data (bdata) which points to the right data wi=
th or
-   * without double buffering support */
-  int off;
-
-  if (x < 0 || x > fb->width-1 || y < 0 || y > fb->height-1)
-    return;
-
-  switch (fb->angle)
-    {
-    case 270:
-      off =3D OFFSET (fb, fb->height - y - 1, x);
-      break;
-    case 180:
-      off =3D OFFSET (fb, fb->width - x - 1, fb->height - y - 1);
-      break;
-    case 90:
-      off =3D OFFSET (fb, y, fb->width - x - 1);
-      break;
-    case 0:
-    default:
-      off =3D OFFSET (fb, x, y);
-      break;
-    }
-
-  if (fb->rgbmode =3D=3D RGB565 || fb->rgbmode =3D=3D RGB888) {
-    switch (fb->bpp)
-      {
-      case 24:
-#if __BYTE_ORDER =3D=3D __BIG_ENDIAN
-        *(fb->bdata + off + 0) =3D red;
-        *(fb->bdata + off + 1) =3D green;
-        *(fb->bdata + off + 2) =3D blue;
-#else
-        *(fb->bdata + off + 0) =3D blue;
-        *(fb->bdata + off + 1) =3D green;
-        *(fb->bdata + off + 2) =3D red;
-#endif
-        break;
-      case 32:
-        *(volatile uint32_t *) (fb->bdata + off)
-          =3D (red << 16) | (green << 8) | (blue);
-        break;
-
-      case 16:
-        *(volatile uint16_t *) (fb->bdata + off)
-	  =3D ((red >> 3) << 11) | ((green >> 2) << 5) | (blue >> 3);
-        break;
-      default:
-        /* depth not supported yet */
-        break;
-      }
-  } else if (fb->rgbmode =3D=3D BGR565 || fb->rgbmode =3D=3D BGR888) {
-    switch (fb->bpp)
-      {
-      case 24:
-#if __BYTE_ORDER =3D=3D __BIG_ENDIAN
-        *(fb->bdata + off + 0) =3D blue;
-        *(fb->bdata + off + 1) =3D green;
-        *(fb->bdata + off + 2) =3D red;
-#else
-        *(fb->bdata + off + 0) =3D red;
-        *(fb->bdata + off + 1) =3D green;
-        *(fb->bdata + off + 2) =3D blue;
-#endif
-        break;
-      case 32:
-        *(volatile uint32_t *) (fb->bdata + off)
-          =3D (blue << 16) | (green << 8) | (red);
-        break;
-      case 16:
-        *(volatile uint16_t *) (fb->bdata + off)
-	  =3D ((blue >> 3) << 11) | ((green >> 2) << 5) | (red >> 3);
-        break;
-      default:
-        /* depth not supported yet */
-        break;
-      }
-  } else {
-    switch (fb->bpp)
-      {
-      case 32:
-        *(volatile uint32_t *) (fb->bdata + off)
-	  =3D ((red >> (8 - fb->red_length)) << fb->red_offset)
-	      | ((green >> (8 - fb->green_length)) << fb->green_offset)
-	      | ((blue >> (8 - fb->blue_length)) << fb->blue_offset);
-        break;
-      case 16:
-        *(volatile uint16_t *) (fb->bdata + off)
-	  =3D ((red >> (8 - fb->red_length)) << fb->red_offset)
-	      | ((green >> (8 - fb->green_length)) << fb->green_offset)
-	      | ((blue >> (8 - fb->blue_length)) << fb->blue_offset);
-        break;
-      default:
-        /* depth not supported yet */
-        break;
-      }
-  }
-}
-
 void
 psplash_fb_draw_rect (PSplashFB    *fb,
 		      int          x,
@@ -460,7 +353,7 @@ psplash_fb_draw_rect (PSplashFB    *fb,
=20
   for (dy=3D0; dy < height; dy++)
     for (dx=3D0; dx < width; dx++)
-	psplash_fb_plot_pixel (fb, x+dx, y+dy, red, green, blue);
+	psplash_plot_pixel(&fb->canvas, x+dx, y+dy, red, green, blue);
 }
=20
 void
@@ -493,7 +386,7 @@ psplash_fb_draw_image (PSplashFB    *fb,
 	  do
 	    {
 	      if ((img_bytes_per_pixel < 4 || *(p+3)) && dx < img_width)
-	        psplash_fb_plot_pixel (fb, x+dx, y+dy, *(p), *(p+1), *(p+2));
+	        psplash_plot_pixel(&fb->canvas, x+dx, y+dy, *(p), *(p+1), *(p+2=
));
 	      if (++dx * img_bytes_per_pixel >=3D img_rowstride) { dx=3D0; dy++=
; }
 	    }
 	  while (--len);
@@ -507,7 +400,7 @@ psplash_fb_draw_image (PSplashFB    *fb,
 	  do
 	    {
 	      if ((img_bytes_per_pixel < 4 || *(p+3)) && dx < img_width)
-	        psplash_fb_plot_pixel (fb, x+dx, y+dy, *(p), *(p+1), *(p+2));
+	        psplash_plot_pixel(&fb->canvas, x+dx, y+dy, *(p), *(p+1), *(p+2=
));
 	      if (++dx * img_bytes_per_pixel >=3D img_rowstride) { dx=3D0; dy++=
; }
 	      p +=3D img_bytes_per_pixel;
 	    }
@@ -613,7 +506,7 @@ psplash_fb_draw_text (PSplashFB         *fb,
 	  for (cx =3D 0; cx < w; cx++)
 	    {
 	      if (g & 0x80000000)
-		psplash_fb_plot_pixel (fb, x+dx+cx, y+dy+cy,
+		psplash_plot_pixel(&fb->canvas, x+dx+cx, y+dy+cy,
 				       red, green, blue);
 	      g <<=3D 1;
 	    }
diff --git a/psplash-fb.h b/psplash-fb.h
index 4d5c460..eb02c62 100644
--- a/psplash-fb.h
+++ b/psplash-fb.h
@@ -11,25 +11,16 @@
 #define _HAVE_PSPLASH_FB_H
=20
 #include <linux/fb.h>
-#include "psplash.h"
-
-enum RGBMode {
-    RGB565,
-    BGR565,
-    RGB888,
-    BGR888,
-    GENERIC,
-};
+#include "psplash-draw.h"
=20
 typedef struct PSplashFB
 {
+  PSplashCanvas  canvas;
+
   int            fd;
   struct fb_var_screeninfo fb_var;
   int            type;
   int            visual;
-  int            width, height;
-  int            bpp;
-  int            stride;
   char		*data;
   char		*base;
=20
@@ -38,16 +29,8 @@ typedef struct PSplashFB
   char		*bdata;
   char		*fdata;
=20
-  int            angle, fbdev_id;
+  int            fbdev_id;
   int            real_width, real_height;
-
-  enum RGBMode   rgbmode;
-  int            red_offset;
-  int            red_length;
-  int            green_offset;
-  int            green_length;
-  int            blue_offset;
-  int            blue_length;
 }
 PSplashFB;
=20
diff --git a/psplash.c b/psplash.c
index 18c012b..f23f03d 100644
--- a/psplash.c
+++ b/psplash.c
@@ -22,10 +22,10 @@
 #include FONT_HEADER
=20
 #define SPLIT_LINE_POS(fb)                                  \
-	(  (fb)->height                                     \
+	(  (fb)->canvas.height                              \
 	 - ((  PSPLASH_IMG_SPLIT_DENOMINATOR                \
 	     - PSPLASH_IMG_SPLIT_NUMERATOR)                 \
-	    * (fb)->height / PSPLASH_IMG_SPLIT_DENOMINATOR) \
+	    * (fb)->canvas.height / PSPLASH_IMG_SPLIT_DENOMINATOR) \
 	)
=20
 void
@@ -50,12 +50,12 @@ psplash_draw_msg (PSplashFB *fb, const char *msg)
   psplash_fb_draw_rect (fb,
 			0,
 			SPLIT_LINE_POS(fb) - h,
-			fb->width,
+			fb->canvas.width,
 			h,
 			PSPLASH_BACKGROUND_COLOR);
=20
   psplash_fb_draw_text (fb,
-			(fb->width-w)/2,
+			(fb->canvas.width-w)/2,
 			SPLIT_LINE_POS(fb) - h,
 			PSPLASH_TEXT_COLOR,
 			&FONT_DEF,
@@ -69,7 +69,7 @@ psplash_draw_progress (PSplashFB *fb, int value)
   int x, y, width, height, barwidth;
=20
   /* 4 pix border */
-  x      =3D ((fb->width  - BAR_IMG_WIDTH)/2) + 4 ;
+  x      =3D ((fb->canvas.width  - BAR_IMG_WIDTH)/2) + 4 ;
   y      =3D SPLIT_LINE_POS(fb) + 4;
   width  =3D BAR_IMG_WIDTH - 8;
   height =3D BAR_IMG_HEIGHT - 8;
@@ -301,16 +301,16 @@ main (int argc, char** argv)
 #endif
=20
   /* Clear the background with #ecece1 */
-  psplash_fb_draw_rect (fb, 0, 0, fb->width, fb->height,
+  psplash_fb_draw_rect (fb, 0, 0, fb->canvas.width, fb->canvas.height,
                         PSPLASH_BACKGROUND_COLOR);
=20
   /* Draw the Poky logo  */
   psplash_fb_draw_image (fb,
-			 (fb->width  - POKY_IMG_WIDTH)/2,
+			 (fb->canvas.width  - POKY_IMG_WIDTH)/2,
 #if PSPLASH_IMG_FULLSCREEN
-			 (fb->height - POKY_IMG_HEIGHT)/2,
+			 (fb->canvas.height - POKY_IMG_HEIGHT)/2,
 #else
-			 (fb->height * PSPLASH_IMG_SPLIT_NUMERATOR
+			 (fb->canvas.height * PSPLASH_IMG_SPLIT_NUMERATOR
 			  / PSPLASH_IMG_SPLIT_DENOMINATOR - POKY_IMG_HEIGHT)/2,
 #endif
 			 POKY_IMG_WIDTH,
@@ -322,7 +322,7 @@ main (int argc, char** argv)
 #ifdef PSPLASH_SHOW_PROGRESS_BAR
   /* Draw progress bar border */
   psplash_fb_draw_image (fb,
-			 (fb->width  - BAR_IMG_WIDTH)/2,
+			 (fb->canvas.width  - BAR_IMG_WIDTH)/2,
 			 SPLIT_LINE_POS(fb),
 			 BAR_IMG_WIDTH,
 			 BAR_IMG_HEIGHT,
--=20
2.30.2


