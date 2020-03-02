Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.18026.1583169883785354278
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2020 09:24:43 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@konsulko.com header.s=google header.b=S6eutm6Y;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: scott.murray@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6422BE017A6; Mon,  2 Mar 2020 09:24:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com [209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0775BE017A5
	for <yocto@yoctoproject.org>; Mon,  2 Mar 2020 09:24:42 -0800 (PST)
Received: by mail-qt1-f194.google.com with SMTP id j23so507508qtr.11
        for <yocto@yoctoproject.org>; Mon, 02 Mar 2020 09:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=T6C5zFDK8ZAaxD3yZON8sIWeKRF/kPV1PUzRPfh9oIU=;
        b=S6eutm6Ydwmo37mQF5cQvzpZqo4QkC4ksG7oc6Ft5ErSNSskRcylYsXjJ8lYMWcXLa
         wyS4domrWr4m5dv7/+xZvXmACR3TEL959Mxd2KDgfK3Z5Xpn/9hO03vZ9ARXPdb943M6
         q1a28IUD91Ey0pjbj2rrSe5PDW5lrjkZHTUlc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=T6C5zFDK8ZAaxD3yZON8sIWeKRF/kPV1PUzRPfh9oIU=;
        b=TimwZxKlgPZV2DdYKwB+Whb99Z2ljdy3s66H7jYLbmhrWATi5w1Pl7sVXjl8TCctTT
         LRW+ykpSaFQH8xnYhdrgRjnKQaVIm5IAj2ByNQy1Wj0AFxHIbh27uIKsOyydE+TWJKK8
         qjBOEWu4W3WIvTHja376+WKpltxrxlCogRuJextrJ2Zx9AXw/ZhPGwcR4Kdhs0CKtTXw
         zwUqTHmh8lq7uCvmLKyQYyBwoeioF6Lv3Iof4SMDOIZZQv81YbeKwWyW4g8rf9lLRyGO
         9fiCiq4qJ6KC/Zf7+Lx25OOQtiK6aveEvY+vWAVLymLpz7DXYntq2oBF900ie0qzGxR/
         zpNg==
X-Gm-Message-State: ANhLgQ2R9ApnfwtmTABfp7lQLri1ixPd3w94+b02qfEI3pMWTTCYEmT2
	TECH9ONe+VT59rTAEA5nMacVlkjHYrw=
X-Google-Smtp-Source: ADFU+vtuFxEs55qfSMSPqWVHRkdMpuKyGOzLikiRN7wXbNmOdYl9x6WulCQIWMiI5PgC1DSoazUdmw==
X-Received: by 2002:ac8:60cf:: with SMTP id i15mr735817qtm.33.1583169881306;
        Mon, 02 Mar 2020 09:24:41 -0800 (PST)
Received: from ghidorah.spiteful.org (198-84-179-103.cpe.teksavvy.com. [198.84.179.103])
        by smtp.gmail.com with ESMTPSA id i64sm8578682qke.56.2020.03.02.09.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2020 09:24:40 -0800 (PST)
From: "Scott Murray" <scott.murray@konsulko.com>
To: yocto@yoctoproject.org
Cc: Scott Murray <scott.murray@konsulko.com>
Subject: [psplash][PATCH 2/2] Fix psplash-systemd failures
Date: Mon,  2 Mar 2020 12:40:39 -0500
Message-Id: <20200302174039.1451551-3-scott.murray@konsulko.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302174039.1451551-1-scott.murray@konsulko.com>
References: <20200302174039.1451551-1-scott.murray@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

To avoid racing on FIFO creation between psplash and psplash-systemd,
enhance the systemd support by adding a call to sd_notify in psplash
after the FIFO is created. That will alow setting the psplash-start
systemd unit type to "notify" to avoid the race.

Signed-off-by: Scott Murray <scott.murray@konsulko.com>
---
 Makefile.am | 2 ++
 psplash.c   | 7 +++++++
 2 files changed, 9 insertions(+)

diff --git a/Makefile.am b/Makefile.am
index 5f3fc42..310e126 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -11,6 +11,8 @@ BUILT_SOURCES =3D psplash-poky-img.h psplash-bar-img.h
 psplash_write_SOURCES =3D psplash-write.c psplash.h
=20
 if HAVE_SYSTEMD
+psplash_CPPFLAGS =3D $(SYSTEMD_CFLAGS) -DHAVE_SYSTEMD
+psplash_LDFLAGS=3D $(SYSTEMD_LIBS)
 bin_PROGRAMS +=3D psplash-systemd
 psplash_systemd_CPPFLAGS =3D $(SYSTEMD_CFLAGS)
 psplash_systemd_LDFLAGS=3D $(SYSTEMD_LIBS)
diff --git a/psplash.c b/psplash.c
index e5dff16..1a56629 100644
--- a/psplash.c
+++ b/psplash.c
@@ -15,6 +15,9 @@
 #include "psplash-colors.h"
 #include "psplash-poky-img.h"
 #include "psplash-bar-img.h"
+#ifdef HAVE_SYSTEMD
+#include <systemd/sd-daemon.h>
+#endif
 #include FONT_HEADER
=20
 #define SPLIT_LINE_POS(fb)                                  \
@@ -285,6 +288,10 @@ main (int argc, char** argv)
 	  goto fb_fail;
     }
=20
+#ifdef HAVE_SYSTEMD
+  sd_notify(0, "READY=3D1");
+#endif
+
   /* Clear the background with #ecece1 */
   psplash_fb_draw_rect (fb, 0, 0, fb->width, fb->height,
                         PSPLASH_BACKGROUND_COLOR);
--=20
2.24.1

