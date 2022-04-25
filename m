Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63915C49ED8
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from repostorp.tmes.trendmicro.eu (repostorp.tmes.trendmicro.eu
 [18.185.115.139])
 by mx.groups.io with SMTP id smtpd.web12.26780.1650873627813712402
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:00:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@opensynergy.com
 header.s=tm-dkim-20210503141657 header.b=FXVxwGey;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.139,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.17.104_.trendmicro.com (unknown [172.21.180.2])
	by repostorp.tmes.trendmicro.eu (Postfix) with SMTP id BEECC10000304
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:24 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1650873623.699000
X-TM-MAIL-UUID: cf09b989-2061-46f1-b097-019d70cb3191
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (unknown
 [104.47.17.104])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 AAD8F100010B4
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CxCzfTJstBycfClmW1q0+5dTkbl9AH4nwGtTengT3ViV32ijtVOpu+Rs3Ar09OxKBiQHjJx+RR964akfU81h0A5uuCKN8IgMWRCfQLLdjiA04A7DChnQDE5qmjl89wyrOso5d3PZA9ZUmfsF6EUZnoCPlOT2rq5OZ0ie8YRCyOezgBnicBiFMlWIY3NyVIu0PhQNy0ZEOaLsVgZ4U3s3pwbTH4b4G6zLihr3xgiFjq/02kQl5RxRUnvunE+XABA+mvQRG9D2m5dd12t8ALcLp78yuZ6cMAzEo3svXPlnT+XOb0nDlIFOwFVkuovd5Cez/QNvKDERUhDE3MTgHp1FHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=07T6mAIQuK7KAOKIFjw1qwvvJ51W9GWI2xpI1hlnj6g=;
 b=KsG632fYJyDwOpF6bQNPaXlbz1OP/JYmBGONxNwgd4GuzodgVDbPP6HZplt5XKL7JcFc/b9Z2eoTL55pP849sLBPxB5vQjE3aZvUu0x04+OmfzleZgfSMZg7w65IdZhp5EVNcy2n/XcttcyKf9wMNOgr4XoA64yOYND/dMBDMy7Lfq+OR/qL4dL214VWKh4UdXqzrXOxOYNG24nx6fOyf9iIHLclWPfmTWGwEHaSVl6iNqyrApOwTgA/99HLIPMiHjhRIM4tuyo17D7kcRKe/mrZ+atkyT6p1d+kQ3rQKXTiBxFB7sJh2ZjKFSA8odEjlAN0cERz6w18aeY/cD9oJA==
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
Subject: [psplash][RFC PATCH 08/14] psplash.c: Make
 psplash_draw_{msg,progress} independent of FB
Date: Mon, 25 Apr 2022 10:59:48 +0300
Message-Id: <20220425075954.10427-9-vasyl.vavrychuk@opensynergy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 30847632-0cbc-4199-ca7d-08da2691a569
X-MS-TrafficTypeDiagnostic: DB7PR04MB4395:EE_
X-Microsoft-Antispam-PRVS: 
	<DB7PR04MB43959E7E4F6A696741AAB91DECF89@DB7PR04MB4395.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	g0VG+vUTrbo6+7nGlWKbXLv+rHnfLRnC21rITgZxKqqlltljM0/BXFne0Il1mN4mXTDpygOVPt3j2KGXLzsiBFtg+HHuTon5/QQecuPQI0F19fpFkwGWKMxMYCLPF2CZaG4rn9g74O3zrR7eWhaHb8Y1G0o+ote0GBWJV/8c3gq+5cv/8gT0u8jRomwOWBo9hZ/O/lYivf+qVIzbO2lsOjLNceUVQbTWLvzlJD2hl8FFQqQtwCtDLF7jWIQwqy4Q7OQxYM5EBLBrK5JFTGSYe5nFe8XYWg4HCP56ZvJFZkmKno12tXGf1Td1kxPzZZkr4aaQ+FB9LbFjTnOwgdrvDC3qv5iOhjXawm0gljtmpUDLyb1j076klaS+ML7VmuzKHVlpr7tVatvkFTjclP5MZmV0ibDuw/b7NOYznPFdYTIbn62rfXgiGINlYDldrwIcnYS8b6n1V0o8oMMcjoTqrQ6s8l4awSENaaz5BoyJ6AxVZFr5yigJq0DafceAfCXYbdA8ovVr10aGEVt/ZhuYRgzLm9c090YbRw082jEf37ZYe4jmCwGBkq0AOrLIsM7Die4uW9FnRspfEEdy/ctwoYgKbM4yZn/h5zA8Le3KOueIRhbNox9ccQRgT8hG671SSxlgPxwXY/yOjW1XNBtHl0yDMzdVhD+z2eMKAGkRN463uq4j12FQxJfRNrPn/H3Z
X-Forefront-Antispam-Report: 
	CIP:217.66.60.4;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SR-MAIL-03.open-synergy.com;PTR:mx1.opensynergy.com;CAT:NONE;SFS:(13230001)(376002)(346002)(396003)(39830400003)(136003)(36840700001)(46966006)(2906002)(81166007)(36756003)(82310400005)(5660300002)(40480700001)(70586007)(42186006)(6916009)(70206006)(316002)(508600001)(8676002)(26005)(36860700001)(86362001)(83380400001)(8936002)(44832011)(4326008)(186003)(336012)(47076005)(2616005)(1076003)(107886003);DIR:OUT;SFP:1102;
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:00:21.2852
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 30847632-0cbc-4199-ca7d-08da2691a569
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=800fae25-9b1b-4edc-993d-c939c4e84a64;Ip=[217.66.60.4];Helo=[SR-MAIL-03.open-synergy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM6EUR05FT031.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4395
X-TM-AS-ERS: 104.47.17.104-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26854.006
X-TMASE-Result: 11-5.242400-4.000000
X-TMASE-MatchedRID: fG9GIPJoGIEv+0FNnM7lDQPZZctd3P4B1jd10P+8LE9dKWx22BOmiWL0
	6liIG52auUxcEq68iwMVQaIxyJ2Ho/VACeiFsAcySs47mbT7SAT1q+x7zkhJWtxDe8KhkxJB1w6
	ADg6BQG+igA0wY1tPCCYSZkru5yf1+4GoV6huZip+yskgwrfsC30tCKdnhB58FMkUvzgg/cWfop
	0ytGwvXiq2rl3dzGQ1uzMYY7Xys2op1jeTZflVcthtQn0jOeJ+YsLtk+EV7nbefSnsJ/n5IA==
X-TMASE-XGENCLOUD: 414fc9a4-160f-4eef-b731-2739e3b8dec5-0-0-200-0
X-TM-Deliver-Signature: 6609B2C84E511462625395F2A2FDBE33
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1650873624;
	bh=/tE1/yq50GddQvOmFZRV7GVrkIc0b/F7caC/KEjg5EM=; l=5653;
	h=From:To:Date;
	b=FXVxwGey6oq86VQX5yMemZOSfgemh2NYPxAeW8Dqmjm2C8pGl8v2t1iz4PsMm5URs
	 /KWxdhsnOB6crFfhrpCP/m38WKZfWmecMGFlHWjaQbPCpQruQh9vRaMAfLSJIBdvRZ
	 7Tyd51tHfxRhF6sdz6CBQ5Crzifz2Lm8KW9H1pcHozwGrGcWcgyQygUibrdYAtW6G6
	 ZC1P7Nb/kBcZIikmlmj2IdZuGe3sAfMxgSaooIDboYQqty7zmLnDy7jLHeeUdiM9lQ
	 Klw4okuHMunSF9cM7b1r0KRAMVep4+O8RONxeWSLa1CAKK8IC5zH+kHJMe4XJjVTD4
	 KGNoAGbchBOHg==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56866

Signed-off-by: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
---
 psplash.c | 64 ++++++++++++++++++++++++++++---------------------------
 1 file changed, 33 insertions(+), 31 deletions(-)

diff --git a/psplash.c b/psplash.c
index 1a5e543..c234d46 100644
--- a/psplash.c
+++ b/psplash.c
@@ -21,11 +21,11 @@
 #endif
 #include FONT_HEADER
=20
-#define SPLIT_LINE_POS(fb)                                  \
-	(  (fb)->canvas.height                              \
-	 - ((  PSPLASH_IMG_SPLIT_DENOMINATOR                \
-	     - PSPLASH_IMG_SPLIT_NUMERATOR)                 \
-	    * (fb)->canvas.height / PSPLASH_IMG_SPLIT_DENOMINATOR) \
+#define SPLIT_LINE_POS(canvas)                                  \
+	(  (canvas)->height                                     \
+	 - ((  PSPLASH_IMG_SPLIT_DENOMINATOR                    \
+	     - PSPLASH_IMG_SPLIT_NUMERATOR)                     \
+	    * (canvas)->height / PSPLASH_IMG_SPLIT_DENOMINATOR) \
 	)
=20
 void
@@ -37,7 +37,7 @@ psplash_exit (int UNUSED(signum))
 }
=20
 void
-psplash_draw_msg (PSplashFB *fb, const char *msg)
+psplash_draw_msg(PSplashCanvas *canvas, const char *msg)
 {
   int w, h;
=20
@@ -47,16 +47,16 @@ psplash_draw_msg (PSplashFB *fb, const char *msg)
=20
   /* Clear */
=20
-  psplash_draw_rect(&fb->canvas,
+  psplash_draw_rect(canvas,
 			0,
-			SPLIT_LINE_POS(fb) - h,
-			fb->canvas.width,
+			SPLIT_LINE_POS(canvas) - h,
+			canvas->width,
 			h,
 			PSPLASH_BACKGROUND_COLOR);
=20
-  psplash_draw_text(&fb->canvas,
-			(fb->canvas.width-w)/2,
-			SPLIT_LINE_POS(fb) - h,
+  psplash_draw_text(canvas,
+			(canvas->width-w)/2,
+			SPLIT_LINE_POS(canvas) - h,
 			PSPLASH_TEXT_COLOR,
 			&FONT_DEF,
 			msg);
@@ -64,32 +64,32 @@ psplash_draw_msg (PSplashFB *fb, const char *msg)
=20
 #ifdef PSPLASH_SHOW_PROGRESS_BAR
 void
-psplash_draw_progress (PSplashFB *fb, int value)
+psplash_draw_progress(PSplashCanvas *canvas, int value)
 {
   int x, y, width, height, barwidth;
=20
   /* 4 pix border */
-  x      =3D ((fb->canvas.width  - BAR_IMG_WIDTH)/2) + 4 ;
-  y      =3D SPLIT_LINE_POS(fb) + 4;
+  x      =3D ((canvas->width  - BAR_IMG_WIDTH)/2) + 4 ;
+  y      =3D SPLIT_LINE_POS(canvas) + 4;
   width  =3D BAR_IMG_WIDTH - 8;
   height =3D BAR_IMG_HEIGHT - 8;
=20
   if (value > 0)
     {
       barwidth =3D (CLAMP(value,0,100) * width) / 100;
-      psplash_draw_rect(&fb->canvas, x + barwidth, y,
+      psplash_draw_rect(canvas, x + barwidth, y,
     			width - barwidth, height,
 			PSPLASH_BAR_BACKGROUND_COLOR);
-      psplash_draw_rect(&fb->canvas, x, y, barwidth,
+      psplash_draw_rect(canvas, x, y, barwidth,
 			    height, PSPLASH_BAR_COLOR);
     }
   else
     {
       barwidth =3D (CLAMP(-value,0,100) * width) / 100;
-      psplash_draw_rect(&fb->canvas, x, y,
+      psplash_draw_rect(canvas, x, y,
     			width - barwidth, height,
 			PSPLASH_BAR_BACKGROUND_COLOR);
-      psplash_draw_rect(&fb->canvas, x + width - barwidth,
+      psplash_draw_rect(canvas, x + width - barwidth,
 			    y, barwidth, height,
 			    PSPLASH_BAR_COLOR);
     }
@@ -116,7 +116,7 @@ parse_command (PSplashFB *fb, char *string)
       char *arg =3D strtok(NULL, "\0");
=20
       if (arg)
-        psplash_draw_msg (fb, arg);
+        psplash_draw_msg(&fb->canvas, arg);
     }
  #ifdef PSPLASH_SHOW_PROGRESS_BAR
   else  if (!strcmp(command,"PROGRESS"))
@@ -124,7 +124,7 @@ parse_command (PSplashFB *fb, char *string)
       char *arg =3D strtok(NULL, "\0");
=20
       if (arg)
-        psplash_draw_progress (fb, atoi(arg));
+        psplash_draw_progress(&fb->canvas, atoi(arg));
     }
 #endif
   else if (!strcmp(command,"QUIT"))
@@ -226,6 +226,7 @@ main (int argc, char** argv)
   char      *rundir;
   int        pipe_fd, i =3D 0, angle =3D 0, fbdev_id =3D 0, ret =3D 0;
   PSplashFB *fb;
+  PSplashCanvas *canvas;
   bool       disable_console_switch =3D FALSE;
=20
   signal(SIGHUP, psplash_exit);
@@ -295,22 +296,23 @@ main (int argc, char** argv)
 	  ret =3D -1;
 	  goto fb_fail;
     }
+  canvas =3D &fb->canvas;
=20
 #ifdef HAVE_SYSTEMD
   sd_notify(0, "READY=3D1");
 #endif
=20
   /* Clear the background with #ecece1 */
-  psplash_draw_rect(&fb->canvas, 0, 0, fb->canvas.width, fb->canvas.heig=
ht,
+  psplash_draw_rect(canvas, 0, 0, canvas->width, canvas->height,
                         PSPLASH_BACKGROUND_COLOR);
=20
   /* Draw the Poky logo  */
-  psplash_draw_image(&fb->canvas,
-			 (fb->canvas.width  - POKY_IMG_WIDTH)/2,
+  psplash_draw_image(canvas,
+			 (canvas->width  - POKY_IMG_WIDTH)/2,
 #if PSPLASH_IMG_FULLSCREEN
-			 (fb->canvas.height - POKY_IMG_HEIGHT)/2,
+			 (canvas->height - POKY_IMG_HEIGHT)/2,
 #else
-			 (fb->canvas.height * PSPLASH_IMG_SPLIT_NUMERATOR
+			 (canvas->height * PSPLASH_IMG_SPLIT_NUMERATOR
 			  / PSPLASH_IMG_SPLIT_DENOMINATOR - POKY_IMG_HEIGHT)/2,
 #endif
 			 POKY_IMG_WIDTH,
@@ -321,20 +323,20 @@ main (int argc, char** argv)
=20
 #ifdef PSPLASH_SHOW_PROGRESS_BAR
   /* Draw progress bar border */
-  psplash_draw_image(&fb->canvas,
-			 (fb->canvas.width  - BAR_IMG_WIDTH)/2,
-			 SPLIT_LINE_POS(fb),
+  psplash_draw_image(canvas,
+			 (canvas->width  - BAR_IMG_WIDTH)/2,
+			 SPLIT_LINE_POS(canvas),
 			 BAR_IMG_WIDTH,
 			 BAR_IMG_HEIGHT,
 			 BAR_IMG_BYTES_PER_PIXEL,
 			 BAR_IMG_ROWSTRIDE,
 			 BAR_IMG_RLE_PIXEL_DATA);
=20
-  psplash_draw_progress (fb, 0);
+  psplash_draw_progress(canvas, 0);
 #endif
=20
 #ifdef PSPLASH_STARTUP_MSG
-  psplash_draw_msg (fb, PSPLASH_STARTUP_MSG);
+  psplash_draw_msg(canvas, PSPLASH_STARTUP_MSG);
 #endif
=20
   /* Scene set so let's flip the buffers. */
--=20
2.30.2


