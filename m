Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A42C54EC4
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.31])
 by mx.groups.io with SMTP id smtpd.web09.26983.1650873626369858797
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:00:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@opensynergy.com
 header.s=tm-dkim-20210503141657 header.b=fFWgbkPj;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.31,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.14.58_.trendmicro.com (unknown [172.21.163.172])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id 0814010000BDE
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:25 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1650873624.339000
X-TM-MAIL-UUID: 5319408f-23f1-4bd2-be07-c9eb8d7cc9e1
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (unknown
 [104.47.14.58])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 52ECE100010B0
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SVpldZvBQb6Q7p2xiXvua7GrEIK8XqNV7SBc10r9Cg4dx3qYgiWiK7X773gbpn6fMhejyAg1qpJ3AfWgFfWycTwTw0be9a20BI9Qnk3hg7oRRS0Q4Q/9BBvBH41sVaepq+Zw0DmJ0U4tlIY55+0yvZggCR0zvnKDrwT/Ov3PWD5b4ep+rC8e4N4D3jpzbWJEFP/atEzzq9rndMhwDbHJ5+YTJciOiaaKCnBltkjK0L/8UWhUhbhyN4I/eqGYrrH/lAwTlXW6A1hLH1GM5WFv39hui6fOizchwpwJugYp7f7xa16zxsp/gAawzobMYL8Ch1gs8GDxbRgGHGumE0ZDrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lUS1w6ev0HMfCB8lWjBi64Y4X3B1rkQyWYj62s98HHc=;
 b=WNjeXkZQHRk5Upox/ROti/bcnn9LDbK7VYqYTm05FLe/bVQ3ivimBVKoDcFHEhAsdC89Roy72/WnrArmbiJlvbcxXsolYTjMv2LztDk0meLmmIy37IVtGdhoXh1APTM4laJKx+zZLAru5EHurmBuETJjaHky88lHxC21Wh0zGxRIm1TQCHdJ7D/t3QBuJJplIZ8SFgQvK64FeIWWXYyIA9g1whYCl7Ek4dybbKYJT2QPJ2aMssma3UumeHwQItpstMxM5HF9f0n0kfcLOd7Fhb/+SfgYtuK67tucnFcLPozYOuqQoS1IVBwv6/xByrn0E2Vu6F/5G6N43njpJJAJPQ==
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
Subject: [psplash][RFC PATCH 07/14] Extract draw font from psplash-fb
Date: Mon, 25 Apr 2022 10:59:47 +0300
Message-Id: <20220425075954.10427-8-vasyl.vavrychuk@opensynergy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: d4538494-0a24-4304-1d32-08da2691a559
X-MS-TrafficTypeDiagnostic: AM0PR04MB6898:EE_
X-Microsoft-Antispam-PRVS: 
	<AM0PR04MB689874987B8DB25BCFF445BCECF89@AM0PR04MB6898.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ENFS7y2dUWYZ8EF0pZ5HqRHlEU+Hv766jsJeVRjfagk6ONLRTtlapDXrgwSB0WF7/ZBFBM057kZFXJB4onT49skCHuPghZ0YcHvWBoPSM/zBvmyi0bI1IjNd8Uu17flq4VqlFgVxnklMjtBhq8v0uHODJaorXvJ/+jAhZleI3lBljUoZYRTqwuKCR5RNLhSiYEs8IoHJ8hIgNg2eh80oKSYTU0dmu3ZM+S8+LmA+h+I4HTpPoUI7EkHgAfQN3J5MsK5VB49vksJ/2DRUPoMEmdG/59Cx90pWcSUaeXb2OoWypckiM4rrjLHlk3p+65o7N/D34JrKzI/MeIM225Jj0pGBrUnJ6xBriZC1t/MUsj1XaxLdPqg6w/zFCvuRW2LNsLZdk+6sj9tQ3gab3NDgjnr5UIX7sfHnACec4b458sz9Un2QIONDB58qxO+qLW5/pbJJMiQ32IfnK795K14bo/iNfEMSIgiufi/63n8+6BptPV1B+FErXvfEEvAkJk8TQy5k6H4BWRI19SBY1G3kU9ThkdsVfIXXgJ8s5ZflI3Bt14Hw5vKtOum+2t6XMwMP+EpPH7natqCKw2Ild0dBQrjbSZKx881ASrBPF6OvdYuj2vc0VVpyXLUZI/PdXPsWAiDZMSERqfi/3AJwcQVVfvTA5PeFqYYMst3CNYHPwJ61KVzG7BVEt2Fax5uNjI0q
X-Forefront-Antispam-Report: 
	CIP:217.66.60.4;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SR-MAIL-03.open-synergy.com;PTR:mx1.opensynergy.com;CAT:NONE;SFS:(13230001)(396003)(39830400003)(376002)(136003)(346002)(46966006)(36840700001)(4326008)(2906002)(40480700001)(8676002)(5660300002)(508600001)(107886003)(2616005)(336012)(186003)(83380400001)(47076005)(1076003)(86362001)(8936002)(82310400005)(26005)(36860700001)(70206006)(70586007)(6916009)(81166007)(316002)(42186006)(44832011)(36756003);DIR:OUT;SFP:1102;
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:00:21.1759
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 d4538494-0a24-4304-1d32-08da2691a559
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=800fae25-9b1b-4edc-993d-c939c4e84a64;Ip=[217.66.60.4];Helo=[SR-MAIL-03.open-synergy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR05FT024.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6898
X-TM-AS-ERS: 104.47.14.58-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26854.006
X-TMASE-Result: 10--3.091300-4.000000
X-TMASE-MatchedRID: +rFemiuRQom1UOlz1sLXchF4zyLyne+ATJDl9FKHbrmqA3rusLu26qnM
	w2roCh9qhPscUcu6CfxpsU1us5N/4flhKX4Mv8JUSs47mbT7SASISKNNH1lESd9RjZujPiSk9zD
	JVgZmvsjY4Fl6uZXggNXoG9vFAKs3uWAlzT4Obx4K3Ma88LL+buOaAxDXuHnr3MX35z3GRpvT3f
	37uQB4Lugc6mX1lwNHkRoxEQkO3VF1H8bw68oiD23U7j2vVURrxEHRux+uk8h+ICquNi0WJLiXd
	lupaFev7x5lC7m4+c6vVKGGaqVeCrbVKBuwEg48ftwZ3X11IV0=
X-TMASE-XGENCLOUD: 67a876ae-a5a8-4848-bdfe-57d2c7615526-0-0-200-0
X-TM-Deliver-Signature: A9437BBFD0E33C8551D71E9B85FEA3A9
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1650873624;
	bh=BoQ8wBylaPtF0d0c9QQvQzno/tOg6fEq78qhEdFLQx8=; l=7919;
	h=From:To:Date;
	b=fFWgbkPjv3YfWthh/xovH27KN1c+GFaGs5HZMsxFrALnS9MiBU+DJ7qF78tUSXBug
	 RoYMpdO3XDqIBBhk8WKof+mkem22eKyZffJxKSaK60IxX+oTrVRmDbMVUwxDdRcu1H
	 zuGOG/4abeNRFgMQzkQ+OVhAdtgTG21sTZ28KGYIzxrnHd5ltVdfR6rJ8kLkJjeeap
	 ho/0ynxMABz5AE0OIfxQ0iZYo6Cog8iynslP9sc8hmArnfvyn/cycKWKLnJ3hiaFUB
	 ZjnnE+dYBP9oGt0sZgixnEWIRc2gqU7k/5qEtIZas/fJHN44KqxFlBJaYKWhcilZWV
	 z8Z2CZcN/eHXQ==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56864

Signed-off-by: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
---
 psplash-draw.c | 109 ++++++++++++++++++++++++++++++++++++++++++++++++-
 psplash-draw.h |  25 ++++++++----
 psplash-fb.c   | 108 ------------------------------------------------
 psplash-fb.h   |  16 --------
 psplash.c      |   4 +-
 5 files changed, 125 insertions(+), 137 deletions(-)

diff --git a/psplash-draw.c b/psplash-draw.c
index 6887e22..aa9887a 100644
--- a/psplash-draw.c
+++ b/psplash-draw.c
@@ -11,8 +11,7 @@
=20
 #define OFFSET(canvas, x, y) (((y) * (canvas)->stride) + ((x) * ((canvas=
)->bpp >> 3)))
=20
-/* TODO: change to 'static inline' as psplash_fb_plot_pixel was before *=
/
-void
+static inline void
 psplash_plot_pixel(PSplashCanvas *canvas,
 		   int            x,
 		   int            y,
@@ -188,3 +187,109 @@ psplash_draw_image(PSplashCanvas *canvas,
 	}
     }
 }
+
+/* Font rendering code based on BOGL by Ben Pfaff */
+
+static int
+psplash_font_glyph (const PSplashFont *font, wchar_t wc, u_int32_t **bit=
map)
+{
+  int mask =3D font->index_mask;
+  int i;
+
+  for (;;)
+    {
+      for (i =3D font->offset[wc & mask]; font->index[i]; i +=3D 2)
+	{
+	  if ((wchar_t)(font->index[i] & ~mask) =3D=3D (wc & ~mask))
+	    {
+	      if (bitmap !=3D NULL)
+		*bitmap =3D &font->content[font->index[i+1]];
+	      return font->index[i] & mask;
+	    }
+	}
+    }
+  return 0;
+}
+
+void
+psplash_text_size(int                *width,
+		  int                *height,
+		  const PSplashFont  *font,
+		  const char         *text)
+{
+  char   *c =3D (char*)text;
+  wchar_t wc;
+  int     k, n, w, h, mw;
+
+  n =3D strlen (text);
+  mw =3D h =3D w =3D 0;
+
+  mbtowc (0, 0, 0);
+  for (; (k =3D mbtowc (&wc, c, n)) > 0; c +=3D k, n -=3D k)
+    {
+      if (*c =3D=3D '\n')
+	{
+	  if (w > mw)
+	    mw =3D w;
+	  w =3D 0;
+	  h +=3D font->height;
+	  continue;
+	}
+
+      w +=3D psplash_font_glyph (font, wc, NULL);
+    }
+
+  *width  =3D (w > mw) ? w : mw;
+  *height =3D (h =3D=3D 0) ? font->height : h;
+}
+
+void
+psplash_draw_text(PSplashCanvas     *canvas,
+		  int                x,
+		  int                y,
+		  uint8              red,
+		  uint8              green,
+		  uint8              blue,
+		  const PSplashFont *font,
+		  const char        *text)
+{
+  int     h, w, k, n, cx, cy, dx, dy;
+  char   *c =3D (char*)text;
+  wchar_t wc;
+
+  n =3D strlen (text);
+  h =3D font->height;
+  dx =3D dy =3D 0;
+
+  mbtowc (0, 0, 0);
+  for (; (k =3D mbtowc (&wc, c, n)) > 0; c +=3D k, n -=3D k)
+    {
+      u_int32_t *glyph =3D NULL;
+
+      if (*c =3D=3D '\n')
+	{
+	  dy +=3D h;
+	  dx  =3D 0;
+	  continue;
+	}
+
+      w =3D psplash_font_glyph (font, wc, &glyph);
+
+      if (glyph =3D=3D NULL)
+	continue;
+
+      for (cy =3D 0; cy < h; cy++)
+	{
+	  u_int32_t g =3D *glyph++;
+
+	  for (cx =3D 0; cx < w; cx++)
+	    {
+	      if (g & 0x80000000)
+		psplash_plot_pixel(canvas, x+dx+cx, y+dy+cy, red, green, blue);
+	      g <<=3D 1;
+	    }
+	}
+
+      dx +=3D w;
+    }
+}
diff --git a/psplash-draw.h b/psplash-draw.h
index f8361da..44546b0 100644
--- a/psplash-draw.h
+++ b/psplash-draw.h
@@ -39,15 +39,6 @@ typedef struct PSplashCanvas
 }
 PSplashCanvas;
=20
-/* TODO: Remove after rest of drawing functions migrated to psplash-draw=
.c */
-void
-psplash_plot_pixel(PSplashCanvas *canvas,
-		   int            x,
-		   int            y,
-		   uint8          red,
-		   uint8          green,
-		   uint8          blue);
-
 void
 psplash_draw_rect(PSplashCanvas *canvas,
 		  int            x,
@@ -68,4 +59,20 @@ psplash_draw_image(PSplashCanvas *canvas,
 		   int            img_rowstride,
 		   uint8         *rle_data);
=20
+void
+psplash_text_size(int                *width,
+		  int                *height,
+		  const PSplashFont  *font,
+		  const char         *text);
+
+void
+psplash_draw_text(PSplashCanvas     *canvas,
+		  int                x,
+		  int                y,
+		  uint8              red,
+		  uint8              green,
+		  uint8              blue,
+		  const PSplashFont *font,
+		  const char        *text);
+
 #endif
diff --git a/psplash-fb.c b/psplash-fb.c
index 07839d5..dd50a5a 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -338,111 +338,3 @@ psplash_fb_new (int angle, int fbdev_id)
=20
   return NULL;
 }
-
-/* Font rendering code based on BOGL by Ben Pfaff */
-
-static int
-psplash_font_glyph (const PSplashFont *font, wchar_t wc, u_int32_t **bit=
map)
-{
-  int mask =3D font->index_mask;
-  int i;
-
-  for (;;)
-    {
-      for (i =3D font->offset[wc & mask]; font->index[i]; i +=3D 2)
-	{
-	  if ((wchar_t)(font->index[i] & ~mask) =3D=3D (wc & ~mask))
-	    {
-	      if (bitmap !=3D NULL)
-		*bitmap =3D &font->content[font->index[i+1]];
-	      return font->index[i] & mask;
-	    }
-	}
-    }
-  return 0;
-}
-
-void
-psplash_fb_text_size (int                *width,
-		      int                *height,
-		      const PSplashFont  *font,
-		      const char         *text)
-{
-  char   *c =3D (char*)text;
-  wchar_t wc;
-  int     k, n, w, h, mw;
-
-  n =3D strlen (text);
-  mw =3D h =3D w =3D 0;
-
-  mbtowc (0, 0, 0);
-  for (; (k =3D mbtowc (&wc, c, n)) > 0; c +=3D k, n -=3D k)
-    {
-      if (*c =3D=3D '\n')
-	{
-	  if (w > mw)
-	    mw =3D w;
-	  w =3D 0;
-	  h +=3D font->height;
-	  continue;
-	}
-
-      w +=3D psplash_font_glyph (font, wc, NULL);
-    }
-
-  *width  =3D (w > mw) ? w : mw;
-  *height =3D (h =3D=3D 0) ? font->height : h;
-}
-
-void
-psplash_fb_draw_text (PSplashFB         *fb,
-		      int                x,
-		      int                y,
-		      uint8              red,
-		      uint8              green,
-		      uint8              blue,
-		      const PSplashFont *font,
-		      const char        *text)
-{
-  int     h, w, k, n, cx, cy, dx, dy;
-  char   *c =3D (char*)text;
-  wchar_t wc;
-
-  n =3D strlen (text);
-  h =3D font->height;
-  dx =3D dy =3D 0;
-
-  mbtowc (0, 0, 0);
-  for (; (k =3D mbtowc (&wc, c, n)) > 0; c +=3D k, n -=3D k)
-    {
-      u_int32_t *glyph =3D NULL;
-
-      if (*c =3D=3D '\n')
-	{
-	  dy +=3D h;
-	  dx  =3D 0;
-	  continue;
-	}
-
-      w =3D psplash_font_glyph (font, wc, &glyph);
-
-      if (glyph =3D=3D NULL)
-	continue;
-
-      for (cy =3D 0; cy < h; cy++)
-	{
-	  u_int32_t g =3D *glyph++;
-
-	  for (cx =3D 0; cx < w; cx++)
-	    {
-	      if (g & 0x80000000)
-		psplash_plot_pixel(&fb->canvas, x+dx+cx, y+dy+cy,
-				       red, green, blue);
-	      g <<=3D 1;
-	    }
-	}
-
-      dx +=3D w;
-    }
-}
-
diff --git a/psplash-fb.h b/psplash-fb.h
index 1eecb47..1b16bd5 100644
--- a/psplash-fb.h
+++ b/psplash-fb.h
@@ -40,22 +40,6 @@ psplash_fb_destroy (PSplashFB *fb);
 PSplashFB*
 psplash_fb_new (int angle, int fbdev_id);
=20
-void
-psplash_fb_text_size (int                *width,
-		      int                *height,
-		      const PSplashFont  *font,
-		      const char         *text);
-
-void
-psplash_fb_draw_text (PSplashFB         *fb,
-		      int                x,
-		      int                y,
-		      uint8              red,
-		      uint8              green,
-		      uint8              blue,
-		      const PSplashFont *font,
-		      const char        *text);
-
 void
 psplash_fb_flip(PSplashFB *fb, int sync);
=20
diff --git a/psplash.c b/psplash.c
index 2aeb583..1a5e543 100644
--- a/psplash.c
+++ b/psplash.c
@@ -41,7 +41,7 @@ psplash_draw_msg (PSplashFB *fb, const char *msg)
 {
   int w, h;
=20
-  psplash_fb_text_size (&w, &h, &FONT_DEF, msg);
+  psplash_text_size(&w, &h, &FONT_DEF, msg);
=20
   DBG("displaying '%s' %ix%i\n", msg, w, h);
=20
@@ -54,7 +54,7 @@ psplash_draw_msg (PSplashFB *fb, const char *msg)
 			h,
 			PSPLASH_BACKGROUND_COLOR);
=20
-  psplash_fb_draw_text (fb,
+  psplash_draw_text(&fb->canvas,
 			(fb->canvas.width-w)/2,
 			SPLIT_LINE_POS(fb) - h,
 			PSPLASH_TEXT_COLOR,
--=20
2.30.2


