Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24CAEC46CD2
	for <webhook@archiver.kernel.org>; Tue,  2 Jan 2024 18:07:39 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.35397.1704218848928216046
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jan 2024 10:07:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=t6Gp+VcK;
 spf=pass (domain: smile.fr, ip: 209.85.128.43, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40d88f9e602so15635655e9.3
        for <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 10:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1704218846; x=1704823646; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t4QFTTEtfjjGojd85WSckmUCeYnE9F/AZ8zhLi/h/+o=;
        b=t6Gp+VcKrzetimFpmAPXbsZWPylGEg9R/5KwQffFhdMBQAJBYak/ApO089zA7i1AyM
         UIDyFtT2kQLLWjgbHNGZbISBL+Bv9UYkiUNT2Dzr8W3hAJLVpk2mrK3GGzUhycekzTN6
         TaW0T1iShdw0SRLSTDJDxoeWz/7T7nVTPzfV9a6IbA9RFFpQ5z2pAnCyHe36za74EtWO
         peeD6vLxdGs3UdYh4yjPQVrgsr+TjYEKsFic7hSGlTAan0Wc4r8qZ/inNlhyiXaqZ7Gq
         zeVBVzW9rqZhEwV9ZwEljPLfXaDJniZnba4ojcxWpMDhot1giVwUKgqxewN4VzZGqn0e
         ee1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704218846; x=1704823646;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t4QFTTEtfjjGojd85WSckmUCeYnE9F/AZ8zhLi/h/+o=;
        b=tpVqT9Zft7qMWIbNU6OkkezgbggOOZvQZJf9MAw5Cv7wDTT0VTNIHaro1NcoprIu9x
         Yr03h1Uolqg/l/aXy5w8Lsn78wAMsVnEEZA4AYglNUF0v5zzlikvZbcYjgSYVHkV1L2K
         M7WE7Af14OnnhShErPdVxU7ckEDSbYHN19SJTb5AMrUJQFRzyNCZEPF7+iBgnkaC0Hm5
         6dUSVgkY2Ewx++CXSVexxhhqQFew42jrfYIK74gUua+XIq2VgBWrZRFlqJnBbxG8LLnB
         VxAMA8GlzTYJORounJvpYD9Tqo3mQ3JMNL//2Tfl5P8mToD0QFmVL6hBfy7phnGEpmWB
         RSag==
X-Gm-Message-State: AOJu0Yz/PednCFyKiQgvYBDG/DyenY+wXVOSVcbMJakqa/i3GeANJhZE
	2rx5A1iA2/EX33b/LItNeiYHkHj30CYdruegJ4G/p8Ob3zmZWA==
X-Google-Smtp-Source: AGHT+IHsiUvIgjMhTSSAYolAN3t4O2jag/h1cWslhjO1uo4KcFT1dycdF1udLBTVbOTODiYRrEsrCg==
X-Received: by 2002:a05:600c:4e02:b0:40d:8da5:db15 with SMTP id b2-20020a05600c4e0200b0040d8da5db15mr494158wmq.46.1704218846267;
        Tue, 02 Jan 2024 10:07:26 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id l17-20020a05600c4f1100b0040d85a304desm10823749wmq.35.2024.01.02.10.07.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 10:07:26 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [yocto-autobuilder-helper][dunfell][PATCH] config.json: Make meta-oe source mirror config wider coverage
Date: Tue,  2 Jan 2024 19:07:06 +0100
Message-Id: <20240102180706.41264-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 18:07:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62066

Some recipes depend on DISTRO_FEATURES, commercial licensing or compiler
config like fortran. Set these things so that we get wider soruce mirror
coverage and fewer warnings.

'commercial' license usage is ok here since we're not building and then
shipping any binaries or using it, only mirroring the source code.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 93d47af8abbc6558f9a098a0c7fa6c0e901424a9)
Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
Backport: new->old override syntax
---
This should fix the warnings of the AB meta-oe-mirror/dunfell builds
---
 config.json | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 3520e9a..1a92c80 100644
--- a/config.json
+++ b/config.json
@@ -1100,7 +1100,11 @@
             ],
             "extravars" : [ 
                 "PNBLACKLIST[dvb-apps] = '1'",
-                "PNBLACKLIST[tvheadend] = '1'"
+                "PNBLACKLIST[tvheadend] = '1'",
+                "LICENSE_FLAGS_ACCEPTED = 'commercial'",
+                "DISTRO_FEATURES_append = ' pam systemd usrmerge'",
+                "FORTRAN_forcevariable = ',fortran'",
+                "RUNTIMETARGET_append_pn-gcc-runtime = ' libquadmath'"
             ],
             "step1" : {
                 "shortname" : "Sources pre-fetching",
-- 
2.39.2


