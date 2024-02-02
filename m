Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F532C47258
	for <webhook@archiver.kernel.org>; Fri,  2 Feb 2024 04:31:36 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web11.16072.1706848294342142816
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 20:31:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WMYxLBbZ;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-296043e44caso1380291a91.0
        for <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 20:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706848294; x=1707453094; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fz3kh/ZVDZ9R52E0cZ85I6uzauaiv9GXvMj6Fql6iDU=;
        b=WMYxLBbZQvTB+f9927b3p3h7vLgP+t0S7712q5ns2ces/xFSkJ+XSBrvlHs0J1QLQT
         n3/nf/T+C4ratamFBCANvfW919/i7V1c5JMJFdrBVErtX3QGFGCSjfm3VEyfVM+Of3tR
         RP7NYRZAEaCktusBZpIFXQrn6tseQEcLOGF+KKq1qqS+tlzjtMHTlfL3WcJz8AHAZ5Cf
         yBeVU9OvaidzKcKwB3l+Mh9YUCyDu1FRndOH/I3psB9JKP8zKlNOxZ6bOiWar+J9Zg7p
         32vp4gin+6YXHNhftAdtBnrPC1eTbYxcIrV8hn6WnehOJDQhRlh5vCvZHGTGXc0liRw2
         U+pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706848294; x=1707453094;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fz3kh/ZVDZ9R52E0cZ85I6uzauaiv9GXvMj6Fql6iDU=;
        b=uK4lPZwMC8CoZZ1YMaRzrSJfORU+aMbHUCpSl8B+KgVPvm8SXYJNY4luab958mPIus
         ibQu/mvSHJKVGHshcbZBaQDGkke7+iplDY360+E2DFi5gnr861gdSeZLGBB+3c+xcsMw
         lVVdzXrfMKrri26+MaUUixaRaSBGgEepYvT/9jaMjuFrhsJTsXWplFjW732blvXcYcFE
         VIhp/yczW2jtHT8QgfkQylLc+LUy1rissGlyY4Vo4qwJ69lTgW76V1obmJXk5tPhY3Jt
         Tl1eZwhyawx7X96VogOgifwtyku6lShZnJAdXIrshQctUlIIvmizNSWyP39D+Zbjgf1J
         Tujw==
X-Gm-Message-State: AOJu0Yw80v+7S+utVkmM3UZTXRdYXSqUn78nuXGJ5lyUcOhX4mW/rsH7
	wBLnSkzwH+mZRojb5wbklG1kfo+YcZdF3LvBUnjuQwpKFun7IvAP
X-Google-Smtp-Source: AGHT+IFOU+rgJheugVxhkDUhceVIsCACjkTsrHWwcoRyFL6WCCFnl8m5F9tpOJ5fTR+0fc8uFSBdfw==
X-Received: by 2002:a17:90a:e610:b0:296:2ffc:4f58 with SMTP id j16-20020a17090ae61000b002962ffc4f58mr1133716pjy.16.1706848293643;
        Thu, 01 Feb 2024 20:31:33 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCW/b04ShCOe78jjyzouErFA+tNV5Wen1DlPH/HcsGej41wNCexBsiiyM9ugs9HHNcEHXaGG+jWEDKEXwC2ldj+IwJuY37mz+NCNOleG
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9d80:4380::f76c])
        by smtp.gmail.com with ESMTPSA id fy18-20020a17090b021200b00295fac343cfsm3475976pjb.8.2024.02.01.20.31.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 20:31:33 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: openembedded-core@lists.openembedded.org,
	yocto@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>
Subject: [pseudo][PATCH] pseudolog.c: Fix build warnings seen with gcc-14
Date: Thu,  1 Feb 2024 20:31:30 -0800
Message-ID: <20240202043130.398590-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Feb 2024 04:31:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62378

Define _XOPEN_SOURCE or we do not get strptime() signature defined
resulting in implicit-function-declaration which is an error in gcc-14

Swap the parameters of calloc call to fix calloc-transposed-args warning

pseudolog.c: In function 'plog_trait':
pseudolog.c:378:34: warning: 'calloc' sizes specified with 'sizeof' in the earlier argument and not in the later argument [-Wcalloc-transposed-args]
  378 |         new_trait = calloc(sizeof(*new_trait), 1);
      |                                  ^
pseudolog.c:378:34: note: earlier argument should specify number of elements, later size of each element

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 pseudolog.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/pseudolog.c b/pseudolog.c
index 1101f28..ad04753 100644
--- a/pseudolog.c
+++ b/pseudolog.c
@@ -8,7 +8,8 @@
  */
 /* We need _XOPEN_SOURCE for strptime(), but if we define that,
  * we then don't get S_IFSOCK... _GNU_SOURCE turns on everything. */
-#define _GNU_SOURCE
+#define _DEFAULT_SOURCE
+#define _XOPEN_SOURCE
 
 #include <ctype.h>
 #include <limits.h>
@@ -374,7 +375,7 @@ plog_trait(int opt, char *string) {
 		pseudo_diag("invalid empty string for -%c\n", opt);
 		return 0;
 	}
-	new_trait = calloc(sizeof(*new_trait), 1);
+	new_trait = calloc(1, sizeof(*new_trait));
 	if (!new_trait) {
 		pseudo_diag("Couldn't allocate requested trait (for -%c %s)\n",
 			opt, string ? string : "<nil>");
-- 
2.43.0


