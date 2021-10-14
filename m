Return-Path: <pavel@zhukoff.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 112F0C433F5
	for <webhook@archiver.kernel.org>; Thu, 14 Oct 2021 06:41:02 +0000 (UTC)
Received: from forward106j.mail.yandex.net (forward106j.mail.yandex.net
 [5.45.198.249])
 by mx.groups.io with SMTP id smtpd.web08.5881.1634193660517569065
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 23:41:01 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@zhukoff.net
 header.s=mail header.b=wzscyJRb;
 spf=pass (domain: zhukoff.net, ip: 5.45.198.249, mailfrom: pavel@zhukoff.net)
Received: from sas2-77ef6549fc66.qloud-c.yandex.net
 (sas2-77ef6549fc66.qloud-c.yandex.net
 [IPv6:2a02:6b8:c08:b922:0:640:77ef:6549])
	by forward106j.mail.yandex.net (Yandex) with ESMTP id 975B9136A708;
	Thu, 14 Oct 2021 09:40:56 +0300 (MSK)
Received: from sas2-34ddad429748.qloud-c.yandex.net
 (2a02:6b8:c08:b787:0:640:34dd:ad42 [2a02:6b8:c08:b787:0:640:34dd:ad42])
	by sas2-77ef6549fc66.qloud-c.yandex.net (mxback/Yandex) with ESMTP id
 Z3YacNCDPw-euE89eAj;
	Thu, 14 Oct 2021 09:40:56 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zhukoff.net; s=mail;
 t=1634193656;
	bh=zsDJX9jZ38wpMx0xdAX7E6RcN2aj+J9bEkIlfJKB+uE=;
	h=Date:Subject:To:From:Message-Id:Cc;
	b=wzscyJRb4qu0LKrz67OB/IEFuHLs71tzHOm3mjQyaGlnWEggFyljrblliqYGIdtGg
	 M9LCUKwV+DBKkYV6s2LwtSkD+sXPplOwlA7v3xrMbGSa8fuuDTKwZ2znckBDxDNg2M
	 WD0Vo+gq39fh9gEYmoXsyTqTX823Y1lQRQT2s9Hk=
Authentication-Results: sas2-77ef6549fc66.qloud-c.yandex.net;
 dkim=pass header.i=@zhukoff.net
Received: by sas2-34ddad429748.qloud-c.yandex.net (smtp/Yandex) with ESMTPS id
 dfR4AHzWeg-etGaulhO;
	Thu, 14 Oct 2021 09:40:55 +0300
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(Client certificate not present)
X-Yandex-Fwd: 2
From: Pavel Zhukov <pavel@zhukoff.net>
To: yocto@lists.yoctoproject.org
Cc: Pavel Zhukov <pavel.zhukov@huawei.com>,
	pavel@zhukoff.net
Subject: [psplash][PATCH] Add configure options to disable progress bar
Date: Thu, 14 Oct 2021 08:40:51 +0200
Message-Id: <20211014064051.16475-1-pavel@zhukoff.net>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Oct 2021 06:41:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55066

From: Pavel Zhukov <pavel.zhukov@huawei.com>

Progress bar can overlap with products logos, added
--disable-progress-bar configure option to disable progress
bar completely without patching the code.
Default behaviour is to show progress bar

Signed-off-by: Pavel Zhukov <pavel.zhukov@huawei.com>
---
 configure.ac     |  8 ++++++++
 psplash-config.h |  5 +++++
 psplash.c        | 14 ++++++++++----
 3 files changed, 23 insertions(+), 4 deletions(-)

diff --git a/configure.ac b/configure.ac
index 2d836a1..2a7da91 100644
--- a/configure.ac
+++ b/configure.ac
@@ -37,6 +37,14 @@ AS_IF([test x$disable_startup_msg =3D xtrue], [
     EXTRA_GCC_FLAGS=3D"$EXTRA_GCC_FLAGS -DPSPLASH_DISABLE_STARTUP_MSG"
 ])
=20
+AC_ARG_ENABLE([progress-bar],
+    AS_HELP_STRING([--disable-progress-bar], [Disable progress bar]),
+    [disable_progress_bar=3Dtrue],
+    [disable_progress_bar=3Dfalse])
+AS_IF([test x$disable_progress_bar =3D xtrue], [
+    EXTRA_GCC_FLAGS=3D"$EXTRA_GCC_FLAGS -DPSPLASH_DISABLE_PROGRESS_BAR"
+])
+
 AC_ARG_ENABLE([img-fullscreen],
     AS_HELP_STRING([--enable-img-fullscreen], [Enable the logo image in =
fullscreen mode)]),
     [img_fullscreen=3Dtrue],
diff --git a/psplash-config.h b/psplash-config.h
index 0ba8440..eb90ef3 100644
--- a/psplash-config.h
+++ b/psplash-config.h
@@ -21,6 +21,11 @@
 #define PSPLASH_IMG_FULLSCREEN 0
 #endif
=20
+/* Bool indicated if the progress bar should be disabled */
+#ifndef PSPLASH_DISABLE_PROGRESS_BAR
+#define PSPLASH_SHOW_PROGRESS_BAR 1
+#endif
+
 /* Position of the image split from top edge, numerator of fraction */
 #define PSPLASH_IMG_SPLIT_NUMERATOR 5
=20
diff --git a/psplash.c b/psplash.c
index 1a56629..ee1af6b 100644
--- a/psplash.c
+++ b/psplash.c
@@ -61,6 +61,7 @@ psplash_draw_msg (PSplashFB *fb, const char *msg)
 			msg);
 }
=20
+#ifdef PSPLASH_SHOW_PROGRESS_BAR
 void
 psplash_draw_progress (PSplashFB *fb, int value)
 {
@@ -95,6 +96,7 @@ psplash_draw_progress (PSplashFB *fb, int value)
   DBG("value: %i, width: %i, barwidth :%i\n", value,=20
 		width, barwidth);
 }
+#endif /* PSPLASH_SHOW_PROGRESS_BAR */
=20
 static int=20
 parse_command (PSplashFB *fb, char *string)
@@ -108,20 +110,22 @@ parse_command (PSplashFB *fb, char *string)
=20
   command =3D strtok(string," ");
=20
-  if (!strcmp(command,"PROGRESS"))=20
+  if (!strcmp(command,"MSG"))
     {
       char *arg =3D strtok(NULL, "\0");
=20
       if (arg)
-        psplash_draw_progress (fb, atoi(arg));
+        psplash_draw_msg (fb, arg);
     }=20
-  else if (!strcmp(command,"MSG"))=20
+ #ifdef PSPLASH_SHOW_PROGRESS_BAR
+  else  if (!strcmp(command,"PROGRESS"))
     {
       char *arg =3D strtok(NULL, "\0");
=20
       if (arg)
-        psplash_draw_msg (fb, arg);
+        psplash_draw_progress (fb, atoi(arg));
     }=20
+#endif
   else if (!strcmp(command,"QUIT"))=20
     {
       return 1;
@@ -311,6 +315,7 @@ main (int argc, char** argv)
 			 POKY_IMG_ROWSTRIDE,
 			 POKY_IMG_RLE_PIXEL_DATA);
=20
+#ifdef PSPLASH_SHOW_PROGRESS_BAR
   /* Draw progress bar border */
   psplash_fb_draw_image (fb,=20
 			 (fb->width  - BAR_IMG_WIDTH)/2,=20
@@ -322,6 +327,7 @@ main (int argc, char** argv)
 			 BAR_IMG_RLE_PIXEL_DATA);
=20
   psplash_draw_progress (fb, 0);
+#endif
=20
 #ifdef PSPLASH_STARTUP_MSG
   psplash_draw_msg (fb, PSPLASH_STARTUP_MSG);
--=20
2.31.1


