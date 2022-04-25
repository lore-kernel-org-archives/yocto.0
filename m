Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DDBC49EA4
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.8])
 by mx.groups.io with SMTP id smtpd.web09.26982.1650873626045359599
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:00:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@opensynergy.com
 header.s=tm-dkim-20210503141657 header.b=z1QfLzin;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.8,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.12.56_.trendmicro.com (unknown [172.21.180.2])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id 3A20210001756
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:24 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1650873623.699000
X-TM-MAIL-UUID: 96cca8a8-38e4-49ac-96ff-a981754ee4e0
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (unknown
 [104.47.12.56])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 AABF1100010B0
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YVoKV7p569WIyocwVSFmtrdeAO7WSGv9BNvSf9fvs0DWDplabwaWqYQQvfahPDjUIcqzc5ZZwdniT95VVYrvcFH38PZ5w+wgO7AlpcN0B0giFBtpMHK+DKuUTMnCxpifzUwpGpaGusxc7D3W+FtuwOPR42WosmQa56Dx7USfs2ea4TijtR1cr6K4gyxxos5lPd5LpRekzN+mmdxTIANCS6ZsvM+1F6ShPxtrGghG9J3w83C3ZZ+O1PoFaD30CLjgocABxhblWRQ6AbWSQHHJ1Wg4pHJO4NBLy305Xzg1ESJY648xjF0Yf/jtMrWsagYeKR0R8M5Y6H14QVKZy0ClkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3tRcmY/na5QFlqqRFunqrjnnidur0xfdCfZdfZfz94E=;
 b=FhnAp84WnVndy1LwWqg9L4W9xUo6tWe+MSExOPNRtReb7CfzjDiBj9alz7JiQscjLjfHs4FIBRBuyzOgNmCEeJNNv2wbQeVRGM+rMdv5zb3lEnh8uLP0PaK/J/mU02Mmn1USveLDhNo2p3tvuHb0itHZCgjy95j2a9kwJuCztvlsY4m0Zqe5JeVrhTLrKajH/cb7W5l+X9rMfr9PgM42Cb9wQ7Vw7IWj3XuCCUc49mJFTFcESHgYrq6YrIQ9vV7x19yWMuVcw76iU11x9xhlSXWuM+/ihNPwFvQbnfhwyfQwA4xhF5yuX2o8x4Wr6Ab9E2rb9yxeEJBq5MnwqfpyYw==
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
Subject: [psplash][RFC PATCH 06/14] Extract draw rect/image from psplash-fb
Date: Mon, 25 Apr 2022 10:59:46 +0300
Message-Id: <20220425075954.10427-7-vasyl.vavrychuk@opensynergy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 53428d5a-bb44-4070-1f28-08da2691a531
X-MS-TrafficTypeDiagnostic: DBAPR04MB7415:EE_
X-Microsoft-Antispam-PRVS: 
	<DBAPR04MB74150A920B7F4FB39D745C26ECF89@DBAPR04MB7415.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZKqp38FQmL5pWmU6nFDXUxdJmvJqcIUiMgA6tUQt9OfO3fZBalWQUbCcYSkwFotLitiW2w/z2T0R71l7LAQy1RyQfXaGW311bfBnxuNktSnavKW0qufGuUfJCAniKIy12WniEkjMwGr6NmP0mLQQbfKWmLNnIgKIrTwgzuUds5k8eDpVdBpNvb2idIv4dlthrPWMq42bJIaYYh3IO+zHGvZDsAWI/Oxbyb0u8OSN5M/58hsM9eo+ZiGs6FfiZhdWtZVHdKafA7NggKenGNe6Z5U9mYPYVUSC1pjUat3MoWwa1xoxRDqybvGiq4Ff31npkvwY87i6pngG0DdF71YSMsKi76oXzo8ZwfaNnF3ccSHsokcYOafZamZMZT6MJVfoXBnKYT43r77SBhD0inCnC/NUf0yfcuOeEHx7b0Q2x0SJ94MS+kZSfKf0R5qH2C/WqlXRA7gV+TE5+PtV6rBmAfGwQ06DrpLQDeenOWYtshWwHS+PGHJuqvZ/KaudMMr0PN8v6IJvCjVG+D6l2gaOHM/i8F4/HBZk7VEZR2o4UqZRbnBWQlhW0p5qEG8Nb3D0FjCGK8Mm1IqV+PzmY4vbY6Cm4yhT8rcpEQ+s0gJgyz1mLvvOXSgUHIrrKyc2R4iwnAuno3Pcus3AS6Yqc+9De7fpiWmrS5oPzYQgVJR5CSc=
X-Forefront-Antispam-Report: 
	CIP:217.66.60.4;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SR-MAIL-03.open-synergy.com;PTR:mx1.opensynergy.com;CAT:NONE;SFS:(13230001)(396003)(136003)(346002)(376002)(39830400003)(46966006)(36840700001)(107886003)(1076003)(40480700001)(186003)(2906002)(5660300002)(86362001)(26005)(70206006)(4326008)(8676002)(70586007)(2616005)(8936002)(508600001)(82310400005)(42186006)(83380400001)(6916009)(336012)(81166007)(36756003)(36860700001)(44832011)(316002)(47076005);DIR:OUT;SFP:1102;
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:00:20.9138
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 53428d5a-bb44-4070-1f28-08da2691a531
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=800fae25-9b1b-4edc-993d-c939c4e84a64;Ip=[217.66.60.4];Helo=[SR-MAIL-03.open-synergy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR05FT039.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7415
X-TM-AS-ERS: 104.47.12.56-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26854.006
X-TMASE-Result: 10--0.645700-4.000000
X-TMASE-MatchedRID: tgaipGrys3i1UOlz1sLXchF4zyLyne+ATJDl9FKHbrlAglB4aYxV4jhn
	UdH7vK7s76cfT8R97tpUdifX/ssRD8iuP7JEgBPGSHCU59h5KrEpA2ExuipmWq25ZjP2hWgvO4d
	dIrW9yRVtGpev2mVwX69odUR5cJBxVZwLM6NBHzSfNCkqvupbSEpO/ORUaZ3FmyiLZetSf8m2Ie
	O/ulJw0ft6/2HgfIgDVymkLM+r7VQ7AFczfjr/7OdSQRkaJTbL0izjYg8nXOv7NIDR7nyBmhZpU
	GdMmLK9z0ilKrutyKM=
X-TMASE-XGENCLOUD: 4ad741bb-177b-4d59-8a7e-68d156ad5150-0-0-200-0
X-TM-Deliver-Signature: 5F680C76AC0F4443A8C73B64BEB58772
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1650873624;
	bh=UpKZ4cUegiIJo6y7GnBEvWVT+0hqd84auIRFV+/Q8OM=; l=8033;
	h=From:To:Date;
	b=z1QfLzin7xz2pad7XjcT4EFODFV53Ab8SrLP3OAEHR6Ai68XUB5MFuAk8AV66DQE6
	 fTyDkqaSPWxl556HVexlkR3lZsM8tf5Nrh6dFOuJCLKm6K0cVGGPE7pdWqhH/h4eH7
	 MKshptH7dVrfnmC7wFdem1ouFErU0Twgqr186GPMGrCD5Ld+ETMeiMW3GAoESjciXM
	 ArKl2zqTY6VV1rHiOCm6keTPThhSL+u3Ult3KskrMq4optpkuGAbN9+z+qZFajmF9s
	 /BMDedB3lRJX5yWdaZwDMe81HSO7pW6gNWmmIvbc8QB9+xkNG14hUGadVWz9fCunSd
	 3qeuf3BcWjuRw==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56863

Signed-off-by: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
---
 psplash-draw.c | 70 ++++++++++++++++++++++++++++++++++++++++++++++++++
 psplash-draw.h | 20 +++++++++++++++
 psplash-fb.c   | 70 --------------------------------------------------
 psplash-fb.h   | 20 ---------------
 psplash.c      | 16 ++++++------
 5 files changed, 98 insertions(+), 98 deletions(-)

diff --git a/psplash-draw.c b/psplash-draw.c
index 570cfce..6887e22 100644
--- a/psplash-draw.c
+++ b/psplash-draw.c
@@ -118,3 +118,73 @@ psplash_plot_pixel(PSplashCanvas *canvas,
       }
   }
 }
+
+void
+psplash_draw_rect(PSplashCanvas *canvas,
+		  int            x,
+		  int            y,
+		  int            width,
+		  int            height,
+		  uint8          red,
+		  uint8          green,
+		  uint8          blue)
+{
+  int dx, dy;
+
+  for (dy=3D0; dy < height; dy++)
+    for (dx=3D0; dx < width; dx++)
+	psplash_plot_pixel(canvas, x+dx, y+dy, red, green, blue);
+}
+
+void
+psplash_draw_image(PSplashCanvas *canvas,
+		   int            x,
+		   int            y,
+		   int            img_width,
+		   int            img_height,
+		   int            img_bytes_per_pixel,
+		   int            img_rowstride,
+		   uint8         *rle_data)
+{
+  uint8       *p =3D rle_data;
+  int          dx =3D 0, dy =3D 0,  total_len;
+  unsigned int len;
+
+  total_len =3D img_rowstride * img_height;
+
+  /* FIXME: Optimise, check for over runs ... */
+  while ((p - rle_data) < total_len)
+    {
+      len =3D *(p++);
+
+      if (len & 128)
+	{
+	  len -=3D 128;
+
+	  if (len =3D=3D 0) break;
+
+	  do
+	    {
+	      if ((img_bytes_per_pixel < 4 || *(p+3)) && dx < img_width)
+	        psplash_plot_pixel(canvas, x+dx, y+dy, *(p), *(p+1), *(p+2));
+	      if (++dx * img_bytes_per_pixel >=3D img_rowstride) { dx=3D0; dy++=
; }
+	    }
+	  while (--len);
+
+	  p +=3D img_bytes_per_pixel;
+	}
+      else
+	{
+	  if (len =3D=3D 0) break;
+
+	  do
+	    {
+	      if ((img_bytes_per_pixel < 4 || *(p+3)) && dx < img_width)
+	        psplash_plot_pixel(canvas, x+dx, y+dy, *(p), *(p+1), *(p+2));
+	      if (++dx * img_bytes_per_pixel >=3D img_rowstride) { dx=3D0; dy++=
; }
+	      p +=3D img_bytes_per_pixel;
+	    }
+	  while (--len && (p - rle_data) < total_len);
+	}
+    }
+}
diff --git a/psplash-draw.h b/psplash-draw.h
index ab2d4d2..f8361da 100644
--- a/psplash-draw.h
+++ b/psplash-draw.h
@@ -48,4 +48,24 @@ psplash_plot_pixel(PSplashCanvas *canvas,
 		   uint8          green,
 		   uint8          blue);
=20
+void
+psplash_draw_rect(PSplashCanvas *canvas,
+		  int            x,
+		  int            y,
+		  int            width,
+		  int            height,
+		  uint8          red,
+		  uint8          green,
+		  uint8          blue);
+
+void
+psplash_draw_image(PSplashCanvas *canvas,
+		   int            x,
+		   int            y,
+		   int            img_width,
+		   int            img_height,
+		   int            img_bytes_per_pixel,
+		   int            img_rowstride,
+		   uint8         *rle_data);
+
 #endif
diff --git a/psplash-fb.c b/psplash-fb.c
index a7029c5..07839d5 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -339,76 +339,6 @@ psplash_fb_new (int angle, int fbdev_id)
   return NULL;
 }
=20
-void
-psplash_fb_draw_rect (PSplashFB    *fb,
-		      int          x,
-		      int          y,
-		      int          width,
-		      int          height,
-		      uint8        red,
-		      uint8        green,
-		      uint8        blue)
-{
-  int dx, dy;
-
-  for (dy=3D0; dy < height; dy++)
-    for (dx=3D0; dx < width; dx++)
-	psplash_plot_pixel(&fb->canvas, x+dx, y+dy, red, green, blue);
-}
-
-void
-psplash_fb_draw_image (PSplashFB    *fb,
-		       int          x,
-		       int          y,
-		       int          img_width,
-		       int          img_height,
-		       int          img_bytes_per_pixel,
-		       int          img_rowstride,
-		       uint8       *rle_data)
-{
-  uint8       *p =3D rle_data;
-  int          dx =3D 0, dy =3D 0,  total_len;
-  unsigned int len;
-
-  total_len =3D img_rowstride * img_height;
-
-  /* FIXME: Optimise, check for over runs ... */
-  while ((p - rle_data) < total_len)
-    {
-      len =3D *(p++);
-
-      if (len & 128)
-	{
-	  len -=3D 128;
-
-	  if (len =3D=3D 0) break;
-
-	  do
-	    {
-	      if ((img_bytes_per_pixel < 4 || *(p+3)) && dx < img_width)
-	        psplash_plot_pixel(&fb->canvas, x+dx, y+dy, *(p), *(p+1), *(p+2=
));
-	      if (++dx * img_bytes_per_pixel >=3D img_rowstride) { dx=3D0; dy++=
; }
-	    }
-	  while (--len);
-
-	  p +=3D img_bytes_per_pixel;
-	}
-      else
-	{
-	  if (len =3D=3D 0) break;
-
-	  do
-	    {
-	      if ((img_bytes_per_pixel < 4 || *(p+3)) && dx < img_width)
-	        psplash_plot_pixel(&fb->canvas, x+dx, y+dy, *(p), *(p+1), *(p+2=
));
-	      if (++dx * img_bytes_per_pixel >=3D img_rowstride) { dx=3D0; dy++=
; }
-	      p +=3D img_bytes_per_pixel;
-	    }
-	  while (--len && (p - rle_data) < total_len);
-	}
-    }
-}
-
 /* Font rendering code based on BOGL by Ben Pfaff */
=20
 static int
diff --git a/psplash-fb.h b/psplash-fb.h
index eb02c62..1eecb47 100644
--- a/psplash-fb.h
+++ b/psplash-fb.h
@@ -40,26 +40,6 @@ psplash_fb_destroy (PSplashFB *fb);
 PSplashFB*
 psplash_fb_new (int angle, int fbdev_id);
=20
-void
-psplash_fb_draw_rect (PSplashFB    *fb,
-		      int          x,
-		      int          y,
-		      int          width,
-		      int          height,
-		      uint8        red,
-		      uint8        green,
-		      uint8        blue);
-
-void
-psplash_fb_draw_image (PSplashFB    *fb,
-		       int          x,
-		       int          y,
-		       int          img_width,
-		       int          img_height,
-		       int          img_bytes_pre_pixel,
-		       int          img_rowstride,
-		       uint8       *rle_data);
-
 void
 psplash_fb_text_size (int                *width,
 		      int                *height,
diff --git a/psplash.c b/psplash.c
index f23f03d..2aeb583 100644
--- a/psplash.c
+++ b/psplash.c
@@ -47,7 +47,7 @@ psplash_draw_msg (PSplashFB *fb, const char *msg)
=20
   /* Clear */
=20
-  psplash_fb_draw_rect (fb,
+  psplash_draw_rect(&fb->canvas,
 			0,
 			SPLIT_LINE_POS(fb) - h,
 			fb->canvas.width,
@@ -77,19 +77,19 @@ psplash_draw_progress (PSplashFB *fb, int value)
   if (value > 0)
     {
       barwidth =3D (CLAMP(value,0,100) * width) / 100;
-      psplash_fb_draw_rect (fb, x + barwidth, y,
+      psplash_draw_rect(&fb->canvas, x + barwidth, y,
     			width - barwidth, height,
 			PSPLASH_BAR_BACKGROUND_COLOR);
-      psplash_fb_draw_rect (fb, x, y, barwidth,
+      psplash_draw_rect(&fb->canvas, x, y, barwidth,
 			    height, PSPLASH_BAR_COLOR);
     }
   else
     {
       barwidth =3D (CLAMP(-value,0,100) * width) / 100;
-      psplash_fb_draw_rect (fb, x, y,
+      psplash_draw_rect(&fb->canvas, x, y,
     			width - barwidth, height,
 			PSPLASH_BAR_BACKGROUND_COLOR);
-      psplash_fb_draw_rect (fb, x + width - barwidth,
+      psplash_draw_rect(&fb->canvas, x + width - barwidth,
 			    y, barwidth, height,
 			    PSPLASH_BAR_COLOR);
     }
@@ -301,11 +301,11 @@ main (int argc, char** argv)
 #endif
=20
   /* Clear the background with #ecece1 */
-  psplash_fb_draw_rect (fb, 0, 0, fb->canvas.width, fb->canvas.height,
+  psplash_draw_rect(&fb->canvas, 0, 0, fb->canvas.width, fb->canvas.heig=
ht,
                         PSPLASH_BACKGROUND_COLOR);
=20
   /* Draw the Poky logo  */
-  psplash_fb_draw_image (fb,
+  psplash_draw_image(&fb->canvas,
 			 (fb->canvas.width  - POKY_IMG_WIDTH)/2,
 #if PSPLASH_IMG_FULLSCREEN
 			 (fb->canvas.height - POKY_IMG_HEIGHT)/2,
@@ -321,7 +321,7 @@ main (int argc, char** argv)
=20
 #ifdef PSPLASH_SHOW_PROGRESS_BAR
   /* Draw progress bar border */
-  psplash_fb_draw_image (fb,
+  psplash_draw_image(&fb->canvas,
 			 (fb->canvas.width  - BAR_IMG_WIDTH)/2,
 			 SPLIT_LINE_POS(fb),
 			 BAR_IMG_WIDTH,
--=20
2.30.2


