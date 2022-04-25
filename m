Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72E5CC54EFE
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.31])
 by mx.groups.io with SMTP id smtpd.web08.26839.1650873624550436630
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:00:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@opensynergy.com
 header.s=tm-dkim-20210503141657 header.b=L8+azsJD;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.31,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.14.58_.trendmicro.com (unknown [172.21.163.172])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id D26EE10000653
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:22 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1650873622.136000
X-TM-MAIL-UUID: 7f79fb24-0a69-4d7b-a35f-4949a22009cf
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (unknown
 [104.47.14.58])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 2182E100024E9
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kOt2mBdlC1IVq4Sc8kWalvjDB1it6LDKkyAmhTu0zD5JP89iYDFcN0jWrkGnyBoxWAcAdiQN9Shf1bnoajJQQY9d0yiDVrd+TGO1ow6Eop/BKjsBdj89EEbdUYKop9QJW9tjKtJRr2CemDf/AfKj4KzUbt4Ph5Wr+MufDRFrLChp2g4uTSd1ZO6sK/GXHVPBuAzttj1yrn0bF6ze4B7jvVkSqBetQKnAoJQOj5tvf7nnLN/YVBP5gueZTr7u1lsLZJ72NoknrTqWfnhGwm4hTDhWWJwWEYssvfA3KINoUk2qkMO/9en+A3QusW5wNHQFoh85YuQp1ymElZq4IEajBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=arHfyEZqinnsPzKufkSsE45zf+hOZ4B/piYJGybjBn4=;
 b=asJzUOg9W01kH4JG/u3cWa3PM/juPJbk/IVUJ4JovKqMYPJsEwT6ICOx03jTmGTKeYjfLAobwf4ts5uTMRoWpWTw4qF9cl7r7VxhWOihHJCSVH9xPAOtUnFw9HACELPQKooqV15qBVk0pfPco8e9Vjq6KubKgTzHTZq6V6jRzt0q1k3EmcWKIIUpQWMrLTGvo8Ap7QHBPJcXW+4mPD7BSVVIHzanfxAbspHR5pAD6yBDA6uyIJ7w8BM96Bpt/XUG3/tkPFTo5Q3DCTCvKSgmOThfzKqLm9oHBu/icOqzS54zqhh59dUxtqGRBfx3/1+ZLEUuxOGGBPOZUU0HTq/4bg==
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
Subject: [psplash][RFC PATCH 01/14] Trim trailing spaces
Date: Mon, 25 Apr 2022 10:59:41 +0300
Message-Id: <20220425075954.10427-2-vasyl.vavrychuk@opensynergy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 63787c9d-fb90-4684-6269-08da2691a44c
X-MS-TrafficTypeDiagnostic: AM9PR04MB8340:EE_
X-Microsoft-Antispam-PRVS: 
	<AM9PR04MB8340671DDFF7EF095DD697D6ECF89@AM9PR04MB8340.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	VQvvRJJJBk0dyGx44Ffp3Mrn8XLQloVNpdAEa/d0VkuJ98bD7sXZB+SHlQG4LPEYp3o2c3EqYDIkHqwBLp2QBJpOE8NV5SPqeLLEtvlEWMdawGeJwcyN2vxdtSAOlX8sj6FemIBQUOc/4AW9E7gWRC1TLh1YL8O5Sc2yJby5gX4+/6iDup3RC/FwKvdRo8rTjo+ykDAk0/9czNyoHxJX/+5/5CsDkNvw3Y6lrmXY4Ja80Y4SMCJqjpcUV+TXywilJpb83LbxGcJ0lqhe2ZMSaFutHNLgWLy4GLpN94RsWASHohMItxOVYfa3/GEdiPVMTUKe5WvlVJMjQ0RgbpX8AO5MXPUPffDcswiZvyYO4riZ8RvFV92LriueHXmXsWCsS42fRt+Zogqdxw99p6QQxy3MK9VOToZIrBzxeR2xNndyfzW88O7HxDmnNH5IC1Li0uwiCIpFRpxz9l2F1rPQtjFLz73HmUOjCNkc0JNgyMNzOXtT8CTi+FTU3P3peloZrr4VVBBadVlaOVCsR/OvwTrHCnIUxuKB3UFet+vNF+3mHmVKqzNxLJkUvbhdulOciroXyvb9M9BspBXPRi8tmzCuUDKE7n1rBKVkXc33m/sz8FMNYq9XSFXXzAuQZf72GQw6609MqwEwXsb7hUZAzmVkaqnYIMqt4OTxqB5sEBLWecNVbKPubI8wstHSyTMY
X-Forefront-Antispam-Report: 
	CIP:217.66.60.4;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SR-MAIL-03.open-synergy.com;PTR:mx1.opensynergy.com;CAT:NONE;SFS:(13230001)(136003)(396003)(376002)(39830400003)(346002)(36840700001)(46966006)(70206006)(70586007)(82310400005)(2906002)(81166007)(6916009)(316002)(8676002)(42186006)(4326008)(30864003)(44832011)(5660300002)(8936002)(508600001)(36860700001)(86362001)(107886003)(1076003)(186003)(36756003)(26005)(83380400001)(336012)(2616005)(40480700001)(47076005);DIR:OUT;SFP:1102;
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:00:19.4148
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 63787c9d-fb90-4684-6269-08da2691a44c
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=800fae25-9b1b-4edc-993d-c939c4e84a64;Ip=[217.66.60.4];Helo=[SR-MAIL-03.open-synergy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM6EUR05FT009.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8340
X-TM-AS-ERS: 104.47.14.58-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26854.006
X-TMASE-Result: 10--15.398400-4.000000
X-TMASE-MatchedRID: 4qV+NBuSyTCRmYpU4vHLUk7nLUqYrlslFIuBIWrdOePfUZT83lbkEMs0
	A8Och09B72CHleXBH4Mug4wH5ynJhrqIXLlnBtio9DGkDtq4vAz4uJ1REX4MHWu8v+VuTbszZ8s
	oRbuqWwcoYeKRT/uGFMuHgW1QxPEa3c6pD8uG0BV3IYxRexpgADAuMzu3eJGjIZvN+3iLe807h1
	0itb3JFfmNDPvp636/BPT3/NC+4NKg8gEDnq22YxMxKDqgAFSzk45XNF39dU48cwBuO6HB3wcE3
	AwiiNlyqjNOPAGUK/apKt810hIw5W5j5yYKSZJ9tw+xHnsmQjMzNsXWBvGVBhh1mpCXNVC8Bk0s
	RysFrTAAcM5TB53eImb8g1GpLkmuYDVHXGJx4TvwlvzzUUaf2WKO5oaZLIN/LX3qyf3ewG8tPHt
	LgxWl9uaK4gXXzQ8VuXFEQJaCEz7+OhQWBlKflRRFJJyf5BJe3QfwsVk0UbtuRXh7bFKB7umgcz
	IC6sNnB1AsMJxqqFttPwr1iVZ8RsKlKzjDR72cNkUSDDq742k=
X-TMASE-XGENCLOUD: 661a9eba-753d-4609-83f3-e1b39e15d8b0-0-0-200-0
X-TM-Deliver-Signature: B33B9A816B7EE4F6042B00803CFE4FAD
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1650873622;
	bh=fQ4BdbyxLy5n35tvUvpPmbmIUSs79r7Zm4LlSguMKcY=; l=14715;
	h=From:To:Date;
	b=L8+azsJDKY2c16HJUGN+yzXwXvRZfi7tVcOb3cS46hqhzEdQ6aTmeADIKgnRdZi84
	 shY1+sqB0XQghtGBedaITQSi+uo2vcd87cy+CPPD5iqAClrQ4KrfaUfMtVKWUpuYZc
	 s7bKBdz9Bs6BlL6x/YZIAQvnmtrpiasBslnMnwaMUWyWjCD2vCQWXUNuS0+rBkZOW6
	 5dGLdpKPtymkDT+oClnwOzbbDfvT02NKyKpXG0Zgg3/5S7ounn3krgVzzRmDUrL7bI
	 DcjWFUjANNJSVeCPgqYV3MeB1ntI3MKGGVw0SBG+wejfDJV3kQN3wljMuT1B9Zvq97
	 VkDwRLev5IVIA==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56859

Signed-off-by: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
---
 psplash-console.c | 34 +++++++++++-----------
 psplash-console.h |  8 ++---
 psplash-fb.c      |  4 +--
 psplash-fb.h      | 34 +++++++++++-----------
 psplash-write.c   | 14 ++++-----
 psplash.c         | 74 +++++++++++++++++++++++------------------------
 psplash.h         |  4 +--
 7 files changed, 86 insertions(+), 86 deletions(-)

diff --git a/psplash-console.c b/psplash-console.c
index 3a40620..c00c6fe 100644
--- a/psplash-console.c
+++ b/psplash-console.c
@@ -1,5 +1,5 @@
-/*=20
- *  pslash - a lightweight framebuffer splashscreen for embedded devices=
.=20
+/*
+ *  pslash - a lightweight framebuffer splashscreen for embedded devices=
.
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
@@ -27,12 +27,12 @@ vt_request (int UNUSED(sig))
 	perror("Error cannot switch away from console");
       Visible =3D 0;
=20
-      /* FIXME:=20
-       * We likely now want to signal the main loop as to exit	=20
+      /* FIXME:
+       * We likely now want to signal the main loop as to exit
        * and we've now likely switched to the X tty. Note, this
        * seems to happen anyway atm due to select() call getting
        * a signal interuption error - not sure if this is really
-       * reliable however.=20
+       * reliable however.
       */
     }
   else
@@ -49,7 +49,7 @@ psplash_console_ignore_switches (void)
 {
   struct sigaction    act;
   struct vt_mode      vt_mode;
- =20
+
   if (ioctl(ConsoleFd, VT_GETMODE, &vt_mode) < 0)
     {
       perror("Error VT_SETMODE failed");
@@ -60,7 +60,7 @@ psplash_console_ignore_switches (void)
   sigemptyset (&act.sa_mask);
   act.sa_flags =3D 0;
   sigaction (SIGUSR1, &act, 0);
- =20
+
   vt_mode.mode =3D VT_AUTO;
   vt_mode.relsig =3D 0;
   vt_mode.acqsig =3D 0;
@@ -74,7 +74,7 @@ psplash_console_handle_switches (void)
 {
   struct sigaction    act;
   struct vt_mode      vt_mode;
-=20
+
   if (ioctl(ConsoleFd, VT_GETMODE, &vt_mode) < 0)
     {
       perror("Error VT_SETMODE failed");
@@ -85,7 +85,7 @@ psplash_console_handle_switches (void)
   sigemptyset (&act.sa_mask);
   act.sa_flags =3D 0;
   sigaction (SIGUSR1, &act, 0);
- =20
+
   vt_mode.mode   =3D VT_PROCESS;
   vt_mode.relsig =3D SIGUSR1;
   vt_mode.acqsig =3D SIGUSR1;
@@ -94,8 +94,8 @@ psplash_console_handle_switches (void)
     perror("Error VT_SETMODE failed");
 }
=20
-void=20
-psplash_console_switch (void)=20
+void
+psplash_console_switch (void)
 {
   char           vtname[10];
   int            fd;
@@ -114,9 +114,9 @@ psplash_console_switch (void)
       close(fd);
       return;
     }
- =20
+
   close(fd);
- =20
+
   sprintf(vtname,"/dev/tty%d", VTNum);
=20
   if ((ConsoleFd =3D open(vtname, O_RDWR|O_NDELAY, 0)) < 0)
@@ -134,12 +134,12 @@ psplash_console_switch (void)
=20
   if (ioctl(ConsoleFd, VT_ACTIVATE, VTNum) !=3D 0)
     perror("Error VT_ACTIVATE failed");
- =20
+
   if (ioctl(ConsoleFd, VT_WAITACTIVE, VTNum) !=3D 0)
     perror("Error VT_WAITACTIVE failed\n");
=20
   psplash_console_handle_switches ();
- =20
+
   if (ioctl(ConsoleFd, KDSETMODE, KD_GRAPHICS) < 0)
     perror("Error KDSETMODE KD_GRAPHICS failed\n");
=20
@@ -156,7 +156,7 @@ psplash_console_reset (void)
     return;
=20
   /* Back to text mode */
-  ioctl(ConsoleFd, KDSETMODE, KD_TEXT);=20
+  ioctl(ConsoleFd, KDSETMODE, KD_TEXT);
=20
   psplash_console_ignore_switches ();
=20
@@ -175,7 +175,7 @@ psplash_console_reset (void)
=20
   /* Cleanup */
=20
-  close(ConsoleFd);=20
+  close(ConsoleFd);
=20
   if ((fd =3D open ("/dev/tty0", O_RDWR|O_NDELAY, 0)) >=3D 0)
     {
diff --git a/psplash-console.h b/psplash-console.h
index c893bf2..ad51ef2 100644
--- a/psplash-console.h
+++ b/psplash-console.h
@@ -1,5 +1,5 @@
-/*=20
- *  pslash - a lightweight framebuffer splashscreen for embedded devices=
.=20
+/*
+ *  pslash - a lightweight framebuffer splashscreen for embedded devices=
.
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
@@ -10,8 +10,8 @@
 #ifndef _HAVE_PSPLASH_CONSOLE_H
 #define _HAVE_PSPLASH_CONSOLE_H
=20
-void=20
-psplash_console_switch (void);=20
+void
+psplash_console_switch (void);
=20
 void
 psplash_console_reset (void);
diff --git a/psplash-fb.c b/psplash-fb.c
index 2babb5f..1d2d7db 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -429,13 +429,13 @@ psplash_fb_plot_pixel (PSplashFB    *fb,
       {
       case 32:
         *(volatile uint32_t *) (fb->bdata + off)
-	  =3D ((red >> (8 - fb->red_length)) << fb->red_offset)=20
+	  =3D ((red >> (8 - fb->red_length)) << fb->red_offset)
 	      | ((green >> (8 - fb->green_length)) << fb->green_offset)
 	      | ((blue >> (8 - fb->blue_length)) << fb->blue_offset);
         break;
       case 16:
         *(volatile uint16_t *) (fb->bdata + off)
-	  =3D ((red >> (8 - fb->red_length)) << fb->red_offset)=20
+	  =3D ((red >> (8 - fb->red_length)) << fb->red_offset)
 	      | ((green >> (8 - fb->green_length)) << fb->green_offset)
 	      | ((blue >> (8 - fb->blue_length)) << fb->blue_offset);
         break;
diff --git a/psplash-fb.h b/psplash-fb.h
index 16e2b20..eafa293 100644
--- a/psplash-fb.h
+++ b/psplash-fb.h
@@ -1,5 +1,5 @@
-/*=20
- *  pslash - a lightweight framebuffer splashscreen for embedded devices=
.=20
+/*
+ *  pslash - a lightweight framebuffer splashscreen for embedded devices=
.
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
@@ -20,11 +20,11 @@ enum RGBMode {
=20
 typedef struct PSplashFB
 {
-  int            fd;		=09
+  int            fd;
   struct fb_var_screeninfo fb_var;
-  struct termios save_termios;	       =20
-  int            type;		       =20
-  int            visual;	=09
+  struct termios save_termios;
+  int            type;
+  int            visual;
   int            width, height;
   int            bpp;
   int            stride;
@@ -56,20 +56,20 @@ PSplashFB*
 psplash_fb_new (int angle, int fbdev_id);
=20
 void
-psplash_fb_draw_rect (PSplashFB    *fb,=20
-		      int          x,=20
-		      int          y,=20
-		      int          width,=20
+psplash_fb_draw_rect (PSplashFB    *fb,
+		      int          x,
+		      int          y,
+		      int          width,
 		      int          height,
 		      uint8        red,
 		      uint8        green,
 		      uint8        blue);
=20
 void
-psplash_fb_draw_image (PSplashFB    *fb,=20
-		       int          x,=20
-		       int          y,=20
-		       int          img_width,=20
+psplash_fb_draw_image (PSplashFB    *fb,
+		       int          x,
+		       int          y,
+		       int          img_width,
 		       int          img_height,
 		       int          img_bytes_pre_pixel,
 		       int          img_rowstride,
@@ -82,9 +82,9 @@ psplash_fb_text_size (int                *width,
 		      const char         *text);
=20
 void
-psplash_fb_draw_text (PSplashFB         *fb,=20
-		      int                x,=20
-		      int                y,=20
+psplash_fb_draw_text (PSplashFB         *fb,
+		      int                x,
+		      int                y,
 		      uint8              red,
 		      uint8              green,
 		      uint8              blue,
diff --git a/psplash-write.c b/psplash-write.c
index a12467a..eee0ea3 100644
--- a/psplash-write.c
+++ b/psplash-write.c
@@ -1,5 +1,5 @@
-/*=20
- *  pslash - a lightweight framebuffer splashscreen for embedded devices=
.=20
+/*
+ *  pslash - a lightweight framebuffer splashscreen for embedded devices=
.
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
@@ -19,7 +19,7 @@
 #include <errno.h>
 #include "psplash.h"
=20
-int main(int argc, char **argv)=20
+int main(int argc, char **argv)
 {
   char *rundir;
   int   pipe_fd;
@@ -29,17 +29,17 @@ int main(int argc, char **argv)
   if (!rundir)
     rundir =3D "/run";
=20
-  if (argc!=3D2)=20
+  if (argc!=3D2)
     {
       fprintf(stderr, "Wrong number of arguments\n");
       exit(-1);
     }
- =20
+
   chdir(rundir);
- =20
+
   if ((pipe_fd =3D open (PSPLASH_FIFO,O_WRONLY|O_NONBLOCK)) =3D=3D -1)
     {
-      /* Silently error out instead of covering the boot process in=20
+      /* Silently error out instead of covering the boot process in
          errors when psplash has exitted due to a VC switch */
       /* perror("Error unable to open fifo"); */
       exit (-1);
diff --git a/psplash.c b/psplash.c
index ee1af6b..838ac13 100644
--- a/psplash.c
+++ b/psplash.c
@@ -1,9 +1,9 @@
-/*=20
- *  pslash - a lightweight framebuffer splashscreen for embedded devices=
.=20
+/*
+ *  pslash - a lightweight framebuffer splashscreen for embedded devices=
.
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
- *  Parts of this file ( fifo handling ) based on 'usplash' copyright=20
+ *  Parts of this file ( fifo handling ) based on 'usplash' copyright
  *  Matthew Garret.
  *
  *  SPDX-License-Identifier: GPL-2.0-or-later
@@ -46,15 +46,15 @@ psplash_draw_msg (PSplashFB *fb, const char *msg)
=20
   /* Clear */
=20
-  psplash_fb_draw_rect (fb,=20
-			0,=20
-			SPLIT_LINE_POS(fb) - h,=20
+  psplash_fb_draw_rect (fb,
+			0,
+			SPLIT_LINE_POS(fb) - h,
 			fb->width,
 			h,
 			PSPLASH_BACKGROUND_COLOR);
=20
   psplash_fb_draw_text (fb,
-			(fb->width-w)/2,=20
+			(fb->width-w)/2,
 			SPLIT_LINE_POS(fb) - h,
 			PSPLASH_TEXT_COLOR,
 			&FONT_DEF,
@@ -70,13 +70,13 @@ psplash_draw_progress (PSplashFB *fb, int value)
   /* 4 pix border */
   x      =3D ((fb->width  - BAR_IMG_WIDTH)/2) + 4 ;
   y      =3D SPLIT_LINE_POS(fb) + 4;
-  width  =3D BAR_IMG_WIDTH - 8;=20
+  width  =3D BAR_IMG_WIDTH - 8;
   height =3D BAR_IMG_HEIGHT - 8;
=20
   if (value > 0)
     {
       barwidth =3D (CLAMP(value,0,100) * width) / 100;
-      psplash_fb_draw_rect (fb, x + barwidth, y,=20
+      psplash_fb_draw_rect (fb, x + barwidth, y,
     			width - barwidth, height,
 			PSPLASH_BAR_BACKGROUND_COLOR);
       psplash_fb_draw_rect (fb, x, y, barwidth,
@@ -85,7 +85,7 @@ psplash_draw_progress (PSplashFB *fb, int value)
   else
     {
       barwidth =3D (CLAMP(-value,0,100) * width) / 100;
-      psplash_fb_draw_rect (fb, x, y,=20
+      psplash_fb_draw_rect (fb, x, y,
     			width - barwidth, height,
 			PSPLASH_BAR_BACKGROUND_COLOR);
       psplash_fb_draw_rect (fb, x + width - barwidth,
@@ -93,18 +93,18 @@ psplash_draw_progress (PSplashFB *fb, int value)
 			    PSPLASH_BAR_COLOR);
     }
=20
-  DBG("value: %i, width: %i, barwidth :%i\n", value,=20
+  DBG("value: %i, width: %i, barwidth :%i\n", value,
 		width, barwidth);
 }
 #endif /* PSPLASH_SHOW_PROGRESS_BAR */
=20
-static int=20
+static int
 parse_command (PSplashFB *fb, char *string)
 {
   char *command;
=20
   DBG("got cmd %s", string);
-=09
+
   if (strcmp(string,"QUIT") =3D=3D 0)
     return 1;
=20
@@ -116,7 +116,7 @@ parse_command (PSplashFB *fb, char *string)
=20
       if (arg)
         psplash_draw_msg (fb, arg);
-    }=20
+    }
  #ifdef PSPLASH_SHOW_PROGRESS_BAR
   else  if (!strcmp(command,"PROGRESS"))
     {
@@ -124,9 +124,9 @@ parse_command (PSplashFB *fb, char *string)
=20
       if (arg)
         psplash_draw_progress (fb, atoi(arg));
-    }=20
+    }
 #endif
-  else if (!strcmp(command,"QUIT"))=20
+  else if (!strcmp(command,"QUIT"))
     {
       return 1;
     }
@@ -135,8 +135,8 @@ parse_command (PSplashFB *fb, char *string)
   return 0;
 }
=20
-void=20
-psplash_main (PSplashFB *fb, int pipe_fd, int timeout)=20
+void
+psplash_main (PSplashFB *fb, int pipe_fd, int timeout)
 {
   int            err;
   ssize_t        length =3D 0;
@@ -154,14 +154,14 @@ psplash_main (PSplashFB *fb, int pipe_fd, int timeo=
ut)
=20
   end =3D command;
=20
-  while (1)=20
+  while (1)
     {
-      if (timeout !=3D 0)=20
+      if (timeout !=3D 0)
 	err =3D select(pipe_fd+1, &descriptors, NULL, NULL, &tv);
       else
 	err =3D select(pipe_fd+1, &descriptors, NULL, NULL, NULL);
-     =20
-      if (err <=3D 0)=20
+
+      if (err <=3D 0)
 	{
 	  /*
 	  if (errno =3D=3D EINTR)
@@ -169,10 +169,10 @@ psplash_main (PSplashFB *fb, int pipe_fd, int timeo=
ut)
 	  */
 	  return;
 	}
-     =20
+
       length +=3D read (pipe_fd, end, sizeof(command) - (end - command))=
;
=20
-      if (length =3D=3D 0)=20
+      if (length =3D=3D 0)
 	{
 	  /* Reopen to see if there's anything more for us */
 	  close(pipe_fd);
@@ -208,10 +208,10 @@ psplash_main (PSplashFB *fb, int pipe_fd, int timeo=
ut)
=20
     out:
       end =3D &command[length];
-   =20
+
       tv.tv_sec =3D timeout;
       tv.tv_usec =3D 0;
-     =20
+
       FD_ZERO(&descriptors);
       FD_SET(pipe_fd,&descriptors);
     }
@@ -219,8 +219,8 @@ psplash_main (PSplashFB *fb, int pipe_fd, int timeout=
)
   return;
 }
=20
-int=20
-main (int argc, char** argv)=20
+int
+main (int argc, char** argv)
 {
   char      *rundir;
   int        pipe_fd, i =3D 0, angle =3D 0, fbdev_id =3D 0, ret =3D 0;
@@ -253,8 +253,8 @@ main (int argc, char** argv)
       }
=20
     fail:
-      fprintf(stderr,=20
-              "Usage: %s [-n|--no-console-switch][-a|--angle <0|90|180|2=
70>][-f|--fbdev <0..9>]\n",=20
+      fprintf(stderr,
+              "Usage: %s [-n|--no-console-switch][-a|--angle <0|90|180|2=
70>][-f|--fbdev <0..9>]\n",
               argv[0]);
       exit(-1);
   }
@@ -268,7 +268,7 @@ main (int argc, char** argv)
=20
   if (mkfifo(PSPLASH_FIFO, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP))
     {
-      if (errno!=3DEEXIST)=20
+      if (errno!=3DEEXIST)
 	    {
 	      perror("mkfifo");
 	      exit(-1);
@@ -276,8 +276,8 @@ main (int argc, char** argv)
     }
=20
   pipe_fd =3D open (PSPLASH_FIFO,O_RDONLY|O_NONBLOCK);
- =20
-  if (pipe_fd=3D=3D-1)=20
+
+  if (pipe_fd=3D=3D-1)
     {
       perror("pipe open");
       exit(-2);
@@ -301,8 +301,8 @@ main (int argc, char** argv)
                         PSPLASH_BACKGROUND_COLOR);
=20
   /* Draw the Poky logo  */
-  psplash_fb_draw_image (fb,=20
-			 (fb->width  - POKY_IMG_WIDTH)/2,=20
+  psplash_fb_draw_image (fb,
+			 (fb->width  - POKY_IMG_WIDTH)/2,
 #if PSPLASH_IMG_FULLSCREEN
 			 (fb->height - POKY_IMG_HEIGHT)/2,
 #else
@@ -317,8 +317,8 @@ main (int argc, char** argv)
=20
 #ifdef PSPLASH_SHOW_PROGRESS_BAR
   /* Draw progress bar border */
-  psplash_fb_draw_image (fb,=20
-			 (fb->width  - BAR_IMG_WIDTH)/2,=20
+  psplash_fb_draw_image (fb,
+			 (fb->width  - BAR_IMG_WIDTH)/2,
 			 SPLIT_LINE_POS(fb),
 			 BAR_IMG_WIDTH,
 			 BAR_IMG_HEIGHT,
diff --git a/psplash.h b/psplash.h
index 1c42ec7..3739ca3 100644
--- a/psplash.h
+++ b/psplash.h
@@ -1,5 +1,5 @@
-/*=20
- *  pslash - a lightweight framebuffer splashscreen for embedded devices=
.=20
+/*
+ *  pslash - a lightweight framebuffer splashscreen for embedded devices=
.
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
--=20
2.30.2


