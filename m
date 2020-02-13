Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.4626.1581589839532881318
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 02:30:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.ro header.s=google header.b=iuOPGEKm;
 spf=none, err=SPF record not found (domain: gherzan.ro, ip: 140.211.169.56, mailfrom: andrei@gherzan.ro)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0ABF8E01604; Thu, 13 Feb 2020 02:30:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.66 listed in list.dnswl.org]
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B986EE015FC
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2020 02:30:37 -0800 (PST)
Received: by mail-wm1-f66.google.com with SMTP id p17so6022406wma.1
        for <yocto@yoctoproject.org>; Thu, 13 Feb 2020 02:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.ro; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=6QSK6mY/Sa+VkyDGoXJhaJqIf6BWeVK4FR+fO88iwBk=;
        b=iuOPGEKmf7daJghsAlBn2yJ2vBE53NdgIEV9Vc7nsk/slEkf/97kQBEIwrZ+wcdcaO
         iicC9SNBKTp13JJir6U+tNWSbJYu2FcgpTR6DhrbfpxEfWx3fIe/LmJwnFw0qAbcWDx1
         3GnKMplymt+Da+nXy5JMr6Fke9AB9nYCuiWc6dfG/SsMozVgvoBMeI1mgGU4ksR4ZOPI
         cLJAqOVYa+pbXPo0lUPol9MmgADAP2lWuWZh/IGjF5KjsWGaSXndpQ7ZFkC7fO+vsPxh
         VQvOl42XfUi8qEM8s3rm+F/fRIK0dXGXjP4ltw3DbpuxpuA+UGCa+ZP5otsKA31CTVa0
         rMxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6QSK6mY/Sa+VkyDGoXJhaJqIf6BWeVK4FR+fO88iwBk=;
        b=GtfE56wS48AcHkuAhb7d91oVLBDG4vRLjc1EOYvu9ro7SKXD+XsoBVBsQ2ShCP5fOK
         GNvjwaYkobPwoVfF7lYqepX6fsNphbHnIIWGMABka13HjV1E0PUKZ69sYfJ/DEFbgKA6
         7cWI+iRpKWHZ9caPNgodYwKpyuUyzaTNp/3x0bqKPvmEsEKxUaPzp5TF/4ZkXVKR3RPn
         C5aFpuWrEs/APmzYJqfuPHU5JmT2zaDezG1zwmgMRHgwYNfgdrtfh7oxyjBfly1ib3Xg
         /zwLL2mvuLueNHoK6EhtbW0/0/Q2+19Vlr3nrDk+fYhlIchO90kryAc02hfYlX+LSujl
         5Pfw==
X-Gm-Message-State: APjAAAXDRmELQhMgAdg7v4SmDOlfphwaVQgdcSJIgsr9su8LUncfznEm
	YTTr7BHSbXP+L2P32sv2nvOPE3om+nw=
X-Google-Smtp-Source: APXvYqzhMyrmzUS4Tlo2nzSQXnKSjg/Q169I1ogVgRuP794OvLQLjUx64DPCZJxzBF8KxpUChPy0YQ==
X-Received: by 2002:a7b:c93a:: with SMTP id h26mr5325254wml.83.1581589836361;
        Thu, 13 Feb 2020 02:30:36 -0800 (PST)
Received: from agherzan-lnxU.hanoverdisplays.com ([81.145.148.228])
        by smtp.gmail.com with ESMTPSA id q124sm14805852wme.2.2020.02.13.02.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2020 02:30:35 -0800 (PST)
From: "Andrei Gherzan" <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Cc: Andrei Gherzan <andrei@gherzan.ro>
Subject: [psplash][PATCH 1/1] psplash-fb: Avoid racing issues on reading fb0
Date: Thu, 13 Feb 2020 10:30:00 +0000
Message-Id: <20200213103000.1594-1-andrei@gherzan.ro>
X-Mailer: git-send-email 2.17.1

When starting psplash as early as possible in the boot process, the fb
device node might not be ready. This patch adds a loop on reading the
fb0 device with a timeout of 5 seconds.

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 psplash-fb.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/psplash-fb.c b/psplash-fb.c
index 6603572..6700a3b 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -137,6 +137,7 @@ psplash_fb_new (int angle, int fbdev_id)
   struct fb_fix_screeninfo fb_fix;
   int                      off;
   char                     fbdev[9] = "/dev/fb0";
+  int retries = 0;
 
   PSplashFB *fb = NULL;
 
@@ -156,7 +157,9 @@ psplash_fb_new (int angle, int fbdev_id)
 
   fb->fd = -1;
 
-  if ((fb->fd = open (fbdev, O_RDWR)) < 0)
+  while ((fb->fd = open(fbdev, O_RDWR)) < 0 && retries++ <= 100)
+	  usleep(50000);
+  if (fb->fd < 0)
     {
       fprintf(stderr,
               "Error opening %s\n",
-- 
2.17.1

