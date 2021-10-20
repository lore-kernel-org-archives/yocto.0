Return-Path: <zach.welch@timesys.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CACCBC433F5
	for <webhook@archiver.kernel.org>; Wed, 20 Oct 2021 20:52:30 +0000 (UTC)
Received: from abbott.mandolincreekfarm.com (abbott.mandolincreekfarm.com
 [192.173.156.27])
 by mx.groups.io with SMTP id smtpd.web08.133.1634763149207666047
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Oct 2021 13:52:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 _spf.google.com}: parse error for token
 &{10 18 _netblocks2.google.com}: limit exceeded (domain: timesys.com,
 ip: 192.173.156.27, mailfrom: zach.welch@timesys.com)
Received: from timesys (fluffy.mandolincreekfarm.com [192.173.156.26])
	by abbott.mandolincreekfarm.com (Postfix) with SMTP id 4AD0FE2053E;
	Wed, 20 Oct 2021 13:52:25 -0700 (PDT)
Received: by timesys (sSMTP sendmail emulation);
 Wed, 20 Oct 2021 13:52:24 -0700
From: Zachary T Welch <zach.welch@timesys.com>
To: yocto@lists.yoctoproject.org
Cc: Zachary T Welch <zach.welch@timesys.com>
Subject: [psplash][PATCH] Improve warnings from probing for double buffering
Date: Wed, 20 Oct 2021 13:51:54 -0700
Message-Id: <20211020205154.18972-1-zach.welch@timesys.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Oct 2021 20:52:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55110

Adds missing newline characters in output, while clarifying that these
messages are warnings that may be safely ignored.

Signed-off-by: Zachary T Welch <zach.welch@timesys.com>
---
 psplash-fb.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/psplash-fb.c b/psplash-fb.c
index 6603572..2babb5f 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -197,7 +197,8 @@ psplash_fb_new (int angle, int fbdev_id)
=20
   /* Setup double virtual resolution for double buffering */
   if (ioctl(fb->fd, FBIOPAN_DISPLAY, &fb_var) =3D=3D -1) {
-    fprintf(stderr, "FBIOPAN_DISPLAY not supported, double buffering dis=
abled");
+    fprintf(stderr, "warning: FBIOPAN_DISPLAY not supported, "
+                    "double buffering disabled\n");
   } else {
     if (fb_var.yres_virtual =3D=3D fb_var.yres * 2) {
       DBG("Virtual resolution already double");
@@ -205,7 +206,8 @@ psplash_fb_new (int angle, int fbdev_id)
     } else {
       fb_var.yres_virtual =3D fb_var.yres * 2;
       if (ioctl(fb->fd, FBIOPUT_VSCREENINFO, &fb_var) =3D=3D -1) {
-        fprintf(stderr, "FBIOPUT_VSCREENINFO failed, double buffering di=
sabled");
+        fprintf(stderr, "warning: FBIOPUT_VSCREENINFO failed, "
+                        "double buffering disabled\n");
       } else {
         if (ioctl(fb->fd, FBIOGET_FSCREENINFO, &fb_fix) =3D=3D -1) {
           perror(" Error getting the fixed framebuffer info");
--=20
2.33.1


