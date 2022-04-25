Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EF8C54F65
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.23])
 by mx.groups.io with SMTP id smtpd.web10.26704.1650873650796267774
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:00:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@opensynergy.com
 header.s=tm-dkim-20210503141657 header.b=kvN4VhXa;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.23,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.18.111_.trendmicro.com (unknown [172.21.163.172])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id 7585B1000065A
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:49 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1650873627.931000
X-TM-MAIL-UUID: efa81cc7-dc89-4917-8f24-61339bc5f3d0
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (unknown
 [104.47.18.111])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 E36FC100029CE
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PrKlrDJpW5or4ZUTzGSVwP6iqa0dO/Zofv3tmdVQNJyLbjBJpzbJ5BaGKLNRBgcmvsyrzCE3id4g6SUkedLbxBT94POiA0WnuOicKthbnSGZQADb/1AkjkneGiFdaTNd3ADv78H77Ap4YR+g87GKHCDZyyQYTaTWmTt1X4YCjt2ehFuzxjWgzeTybuEQ6pfVoYbLWACR6mcFLSzNKfMWSNBwm3MXFsweuXMjBAxrhattbJvn5eS9pUg/0Zn6lo5yz2/gFZPiBYyBab0xQYV3umbz02cPJB1YhV5KunR9D+M6DF41k81QQhQh/kIq1CTE3Z/7HsxyiSZ7Rb6l4aH1AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s1u9CZn+pCL/M1Qsg0zIYrGjqV+CZASVcTITTXTcetY=;
 b=O2t7xBp2eVjNlKOnKSkmpkshT1V4U1LOaTapDizHx8fgmcU4MLVrdhEKFdNO3RUHRjqYfokqxrDT+dEqpvhlQueF4CoWsqAIPOc47vfqqDuy8fYfr+FwBhrpnp4w05+ziSqKcl3pgpsq4pcX6WayIoDUfp4ZnuSep7SEfPXvCu/bJtA1FM+lr2EVM1lJcJxY2ZrSBm7FCXBUvyveyAuEuNI2f67chb+ODYzk3AKVpRwsL6e/sshcR6yV1wDWUFMCobPAe5kI5afao0FC/Z8OvqNbT+a6kKyCeiNal5DnNQHAz0TvOFP+RcG/qChXbbfx3BmVkwYkZtLvw61qrLiVpw==
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
Subject: [psplash][RFC PATCH 09/14] Rework flip as function pointer
Date: Mon, 25 Apr 2022 10:59:49 +0300
Message-Id: <20220425075954.10427-10-vasyl.vavrychuk@opensynergy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 89e900c5-dccb-40e7-53f0-08da2691a5ad
X-MS-TrafficTypeDiagnostic: VI1PR04MB3279:EE_
X-Microsoft-Antispam-PRVS: 
	<VI1PR04MB32792F6641F52EA2804473BBECF89@VI1PR04MB3279.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	N1adde3vFz6+IWSwuJlW0d+A0HnbMBbOIaVNbTsDFxqiLHhxxcxI/1r8g/Kp+PXBq2vVp5YaO2JMO1yS2dQHmjqBrHcu4EiNo0XPiEL5hCBdtiQnRh9vM49nV7J73dQgeGpB47aIbcEbOf1JB6I9UAGcbMUlVsD3X7DcTfEvCGYbfn/aVPlR7Yd1inf4Ijkh8uzKXzagLT4LfVjdlILC73Rog08rqmwJPTl+Lcm0CGpceUrzn6UUnarFlsqzpjYDfbyFxu/rOXQQgmfcsr6hjJdnYNO8YUY/dAgOPrRZLNl7Ml7g7m59Cs6LWabcVKvuytwBAe2SJq4soRc9tjvwmZZqgS1t8S6PPsyXmU0yz0kBznSm/42lgdNqi4HQGWO3fDkIhkuchYEqdUaqS4fLQGZf44560KEK/3iQUE7ZTOXL7dbBwq+W3Eo6zXaPFD2LXSr/LA6g1M/hsBHwjEpc/vwRlY2q2U2M7gHfcAi2kM6z7bebAPcyZncCTKdm3CqsiVFqx17NOsvloeei/1HvCL7qzyfhshnwoJ1keTh7lr6GxXUPI2wurm36N78f8FQEs3IQUjRmE62AgrN2xZGs4e+va8vXib3/VBRiR3JyScFdg/k5WF1S6fNFkxggMcib1sFOFb49IQDFr5eGf0dHh1d23MRQipfbz2eifVgAsJedbq2VNmd9WjTSeGqRv/nb
X-Forefront-Antispam-Report: 
	CIP:217.66.60.4;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SR-MAIL-03.open-synergy.com;PTR:mx1.opensynergy.com;CAT:NONE;SFS:(13230001)(136003)(396003)(376002)(346002)(39830400003)(46966006)(36840700001)(40480700001)(42186006)(508600001)(70206006)(86362001)(81166007)(6916009)(316002)(83380400001)(2906002)(107886003)(4326008)(8676002)(2616005)(36756003)(70586007)(1076003)(186003)(47076005)(336012)(5660300002)(8936002)(26005)(82310400005)(36860700001)(44832011);DIR:OUT;SFP:1102;
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:00:21.7278
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 89e900c5-dccb-40e7-53f0-08da2691a5ad
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=800fae25-9b1b-4edc-993d-c939c4e84a64;Ip=[217.66.60.4];Helo=[SR-MAIL-03.open-synergy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR05FT009.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3279
X-TM-AS-ERS: 104.47.18.111-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26854.006
X-TMASE-Result: 10--3.857500-4.000000
X-TMASE-MatchedRID: nFBGW9VXCz7iATtmJziXs7nHu4BcYSmtwTlc9CcHMZerwqxtE531VIPc
	XuILVCbaiRWGvcr6dQYgwsEf6dBaBax/TSRv9EiNDnkURiAlfT2ZIt4iAQN6P+2N+fLk/cblcRF
	tLs5mkQMPNxz2EvpSIOCK9EyBltlmrzydp5JZYFkMlstlDZ8gF0pO/ORUaZ3FmyiLZetSf8m2Ie
	O/ulJw0cFwgTvxipFajoczmuoPCq0/wimOYKcUHshLhSsiu1SSuFQx0ldRtJvoB2OOazjJIA9kB
	bbSZ9tr
X-TMASE-XGENCLOUD: fcaebcf0-98d1-9165-98b0-a60e6b058e37-0-0-200-0
X-TM-Deliver-Signature: 30E0C57B5A8CF0A6CFE5AABB819EA0B1
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1650873649;
	bh=WOloovGi4/mME8qjbNAlSsj+HvzRZPjB8tvH2Wo7f1s=; l=3529;
	h=From:To:Date;
	b=kvN4VhXaivZ92cQLOih/NeU+3o1xL9TTE3IebRD8NGlT16yAnADQSCHO6LcE3K31z
	 +mA9UdWNaZIdPjBjlY2tBexK9X2Xoy4AoDHcZgWHK5f7fO2U8cwFok5fe9YuddF87j
	 SgPjcUwGxCYN1hv0fBZ8b0t/u6bzh9k5vGEIbEOr4j9qP7UoeXsV76m06AjG/Io0Uy
	 I1bcwzCOLVUPmXu4MXNiNDusQJdf5JEPy+xZjbZwtC73Z5VMFWNc8OSMWHnCDynDoH
	 ZIBTcQtNJIDQof3VWM+9JM8fPxEd7fXvdeo9SmPowj+/Wpwmv27zs1vDlZkKs2SX5k
	 FU+ZNGA0e8aUA==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56872

It allows making parse_command and psplash_main independent of FB.

Signed-off-by: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
---
 psplash-draw.h |  3 +++
 psplash-fb.c   |  8 +++++---
 psplash-fb.h   |  3 ---
 psplash.c      | 16 ++++++++--------
 4 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/psplash-draw.h b/psplash-draw.h
index 44546b0..292ddd9 100644
--- a/psplash-draw.h
+++ b/psplash-draw.h
@@ -36,6 +36,9 @@ typedef struct PSplashCanvas
   int            green_length;
   int            blue_offset;
   int            blue_length;
+
+  void          *priv;
+  void (*flip)(struct PSplashCanvas *canvas, int sync);
 }
 PSplashCanvas;
=20
diff --git a/psplash-fb.c b/psplash-fb.c
index dd50a5a..d41c477 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -18,9 +18,10 @@ psplash_wait_for_vsync(PSplashFB *fb)
     fprintf(stderr, "Error, FB vsync ioctl [%d]\n", err);
 }
=20
-void
-psplash_fb_flip(PSplashFB *fb, int sync)
+static void
+psplash_fb_flip(PSplashCanvas *canvas, int sync)
 {
+  PSplashFB *fb =3D canvas->priv;
   char *tmp;
=20
   if (fb->double_buffering) {
@@ -154,7 +155,8 @@ psplash_fb_new (int angle, int fbdev_id)
     }
=20
   memset (fb, 0, sizeof(PSplashFB));
-
+  fb->canvas.priv =3D fb;
+  fb->canvas.flip =3D psplash_fb_flip;
   fb->fd =3D -1;
=20
   if ((fb->fd =3D open (fbdev, O_RDWR)) < 0)
diff --git a/psplash-fb.h b/psplash-fb.h
index 1b16bd5..979d23a 100644
--- a/psplash-fb.h
+++ b/psplash-fb.h
@@ -40,7 +40,4 @@ psplash_fb_destroy (PSplashFB *fb);
 PSplashFB*
 psplash_fb_new (int angle, int fbdev_id);
=20
-void
-psplash_fb_flip(PSplashFB *fb, int sync);
-
 #endif
diff --git a/psplash.c b/psplash.c
index c234d46..036dfb1 100644
--- a/psplash.c
+++ b/psplash.c
@@ -100,7 +100,7 @@ psplash_draw_progress(PSplashCanvas *canvas, int valu=
e)
 #endif /* PSPLASH_SHOW_PROGRESS_BAR */
=20
 static int
-parse_command (PSplashFB *fb, char *string)
+parse_command(PSplashCanvas *canvas, char *string)
 {
   char *command;
=20
@@ -116,7 +116,7 @@ parse_command (PSplashFB *fb, char *string)
       char *arg =3D strtok(NULL, "\0");
=20
       if (arg)
-        psplash_draw_msg(&fb->canvas, arg);
+        psplash_draw_msg(canvas, arg);
     }
  #ifdef PSPLASH_SHOW_PROGRESS_BAR
   else  if (!strcmp(command,"PROGRESS"))
@@ -124,7 +124,7 @@ parse_command (PSplashFB *fb, char *string)
       char *arg =3D strtok(NULL, "\0");
=20
       if (arg)
-        psplash_draw_progress(&fb->canvas, atoi(arg));
+        psplash_draw_progress(canvas, atoi(arg));
     }
 #endif
   else if (!strcmp(command,"QUIT"))
@@ -132,12 +132,12 @@ parse_command (PSplashFB *fb, char *string)
       return 1;
     }
=20
-  psplash_fb_flip(fb, 0);
+  canvas->flip(canvas, 0);
   return 0;
 }
=20
 void
-psplash_main (PSplashFB *fb, int pipe_fd, int timeout)
+psplash_main(PSplashCanvas *canvas, int pipe_fd, int timeout)
 {
   int            err;
   ssize_t        length =3D 0;
@@ -200,7 +200,7 @@ psplash_main (PSplashFB *fb, int pipe_fd, int timeout=
)
 	    continue;
           }
=20
-	if (parse_command(fb, cmd))
+	if (parse_command(canvas, cmd))
 	  return;
=20
 	length -=3D cmdlen;
@@ -345,9 +345,9 @@ main (int argc, char** argv)
    * text and progress bar change which overwrite the specific areas wit=
h every
    * update.
    */
-  psplash_fb_flip(fb, 1);
+  canvas->flip(canvas, 1);
=20
-  psplash_main (fb, pipe_fd, 0);
+  psplash_main(canvas, pipe_fd, 0);
=20
   psplash_fb_destroy (fb);
=20
--=20
2.30.2


