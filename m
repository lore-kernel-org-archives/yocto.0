Return-Path: <anibal@limonsoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7D70C46CD2
	for <webhook@archiver.kernel.org>; Sat, 27 Jan 2024 19:23:54 +0000 (UTC)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
 by mx.groups.io with SMTP id smtpd.web10.22796.1706383425159028946
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Jan 2024 11:23:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@limonsoftware-com.20230601.gappssmtp.com header.s=20230601 header.b=3Zgl9EDD;
 spf=pass (domain: limonsoftware.com, ip: 209.85.161.54, mailfrom: anibal@limonsoftware.com)
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-59a2dde1cfcso44500eaf.1
        for <yocto@lists.yoctoproject.org>; Sat, 27 Jan 2024 11:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=limonsoftware-com.20230601.gappssmtp.com; s=20230601; t=1706383424; x=1706988224; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8E2mw7fZqPQGaGVgraJvcZsJ+747JQM9CJlZ2c+T0vU=;
        b=3Zgl9EDDA2mFpiie4PALVsmfxKD5AduAGUHV013BucsSg99w5B+wcJR5K+hYkdbg0M
         9tVa6I7i2sxWa+9oYA6+txYSzqvSyX6rQF6bNKB0mudUA4zIzTa42p+tEACGuNBLkGQA
         6peKRucvUQcLL5aGgeu/08Giywnux3LKBGlsbwgfVedJMFw2FOd48GEu/08k49r7f8jg
         T+biLkKIv94wUlQib3TJv8/rYNP+l/LABowDugQw/fd7vRCWVFq5wkgInnvE20r2TRhV
         HVCOScrx+iMCwpJC3ORD7REbOpiHgqcZZccB1gtAltyvMhLxsgHjnpvmwd9CamicBV+S
         2Eqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706383424; x=1706988224;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8E2mw7fZqPQGaGVgraJvcZsJ+747JQM9CJlZ2c+T0vU=;
        b=XvwX3l2h2OSVutEnBbcl6Bkth7OoG/Z+gVw8ZjwlnrmGtTHUT4P9LRntXqJ8q9HzqF
         4T7EeFdoYFrpMCSpcL5mnySTJqEVBA0b5kbcMuutqhtkf/h91gzJBnhLkoEW3vseUywE
         fG+TnNeULjOyYGpGakQnft2NHiTmLmBMLwlwd+djj6CL0xLZY4TdR8mlSiCXgvFgtU/i
         IM9BhWAKsDnXkxRq1ic89lXwOQFNsMqYkYbgURZ283FlUkcnTZzt8TX+2BrfVHbwrXjU
         dA0PxAygUVojCliz6gIcrtVc0c3dhC0Qyr9hzaWYU/ZxvA2qstG7v0MA9cVkjcAHlXEd
         BNWw==
X-Gm-Message-State: AOJu0Yz7M2TLJtolBF2OEYE1nLkLR1N8T0YvTxz+xiWDezrMqjd6sMiz
	8Wm0lR9P9dydOQoSBD6qhbZGIoiCc29thze1y+Y1nNb6WgZIR72FMuPN7wfzJG/85SfmohEgXtQ
	k
X-Google-Smtp-Source: AGHT+IEZ6yBFJcO0m3NmS7XJ0U6I7696C4brElCbjKhOu5eufda4UkszAlyEzI+TH+klbtC7GaICjg==
X-Received: by 2002:a05:6830:33a8:b0:6dc:8160:3168 with SMTP id dw8-20020a05683033a800b006dc81603168mr1167756otb.39.1706383424152;
        Sat, 27 Jan 2024 11:23:44 -0800 (PST)
Received: from localhost.localdomain ([2806:10b7:3:10a9:bcea:6138:f9fd:313f])
        by smtp.gmail.com with ESMTPSA id h10-20020a4ac44a000000b00599f1741917sm64558ooq.43.2024.01.27.11.23.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 11:23:43 -0800 (PST)
From: Anibal Limon <anibal@limonsoftware.com>
To: yocto@lists.yoctoproject.org
Cc: richard.purdie@linuxfoundation.org,
	JPEWhacker@gmail.com,
	randy.macleod@windriver.com,
	Anibal Limon <anibal@limonsoftware.com>
Subject: [yocto][ptest-runner 1/2] utils.c: get_available_ptests fix security flags compilation
Date: Sat, 27 Jan 2024 13:23:37 -0600
Message-ID: <20240127192338.776610-1-anibal@limonsoftware.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 27 Jan 2024 19:23:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62310

When get_available_ptests uses realpath to support symlinks, this is
expected to not fail because usage of stack memory, if fails prints the
error and exit.

Signed-off-by: Anibal Limon <anibal@limonsoftware.com>
---
 utils.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/utils.c b/utils.c
index 59b8b77..54394cc 100644
--- a/utils.c
+++ b/utils.c
@@ -118,7 +118,10 @@ get_available_ptests(const char *dir)
 	int saved_errno = -1; /* Initalize to invalid errno. */
 	char realdir[PATH_MAX];
 
-	realpath(dir, realdir);
+	if (realpath(dir, realdir) == NULL) {
+		fprintf(stderr, "ERROR: get_available_ptests failed to get realpath, %s\n", strerror(errno));
+		exit(1);
+	}
 
 	do
 	{
-- 
2.43.0


