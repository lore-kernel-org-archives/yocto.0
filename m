Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24EDBC433F5
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:30 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web10.3819.1642139728981156684
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NCYrA9SC;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id
 l16-20020a17090a409000b001b2e9628c9cso13172038pjg.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=4eTzM08QA0V2O1QmyTo6bMAHoTfqYNUV3jMqzOoK8cI=;
        b=NCYrA9SCcGSHA1B1DSZT6oCunoPIY+rgc9OqlKX64UaITtkSrNvP/zEj5UOanJ18ak
         xvRIMQViOhPI2Bwi+xXYNz2ZkKWBhzIEruhkvCqLmz7h+MD9Sldk0N/KSL1J6QTn1arP
         tctPjVF3b4Z6lNICms9heOdXgNuR+WANcsopmQgryRliF8pC/VqmQ8GMOTEuMgGMV8xC
         D5RvB449QJ+A9I45U6nMW5xI6XmY0+Eazs0hu3XDfdgVIskAmmkl7K4dFz91+PJWvGQk
         z/Ey0XAdwEtxq+Q+MYHNBtahGXi29jSIb0VmugUUO+U3kClmZrtRHzS3zf9QFj0KO175
         Vw5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4eTzM08QA0V2O1QmyTo6bMAHoTfqYNUV3jMqzOoK8cI=;
        b=acv/WunnOaG1Blz1UsQhc1nAMpEUHA/ox7KFOajp8VzCD3zjP0eP/PgOgMCmD03D4S
         m4m+5KCY20LLLP1pAlW/ZGXO+REP7BCmrpgOZqiCCPj0zE4k1WnfOlEwlej8JmXH2QVv
         QrPHQ1OvtJaNaOlARTG5M6MVLrLMmfrbjqkoPm333/IrHkBh6ftKwrh4v1L0rwcuvOtH
         p+pJzfIR6FN6/K7SSENGQsFnBURNiCpEH6k6I6ROfsCLL1mV5qc7W14ORBMdxaiW3Gxg
         tUlNZfbWwajuNGannuOkwul+af9ph8ABgWP03Bq+Il69h7AwZefHIdMgwjyd9B/oiJa0
         NUqA==
X-Gm-Message-State: AOAM531OuI0YzEOwb5atR3PzxhbJBsNrYwi1QnrY0j51+ZcNti/2Ci9/
	sYYeQ7ibyGHInRQWAIBnMWG4L6s001NXkw==
X-Google-Smtp-Source: 
 ABdhPJxEMTPXR+3LHygpsh1YzYBqrqHwBoH+2eLk9BlRLhQsQP0hV0Bag3mGDR7+QPXzj5wcDuh07A==
X-Received: by 2002:a17:902:daca:b0:14a:505b:87b7 with SMTP id
 q10-20020a170902daca00b0014a505b87b7mr8291617plx.113.1642139728269;
        Thu, 13 Jan 2022 21:55:28 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:27 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH v2 13/18] README.devel: update versions
Date: Thu, 13 Jan 2022 21:54:36 -0800
Message-Id: 
 <8f648093c78376238cf572b8c90335984fc8a76b.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55864

This updated code-base should be compatible with
Django 3.1 and obviously 3.2 (but not 3.0 or earlier).

Django 3.2 requires Python 3.6+.

With the upgrade to Celery 5, it is safer to recommend
RabbitMQ 3.8.x, since that is what we are using.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 README.devel | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/README.devel b/README.devel
index 347dafc..78fbfbb 100644
--- a/README.devel
+++ b/README.devel
@@ -7,9 +7,9 @@ covered in the main README.
 
 In order to run this application standalone, you will need:
 
-* Python 3.5+
-* Django 2.2.x
-* RabbitMQ 3.7.x
+* Python 3.6+
+* Django 3.2.x (not compatible with 3.0 or older)
+* RabbitMQ 3.8.x
 * For production usage, a web server set up to host Django applications
   (not needed for local-only testing/development)
 * A database system supported by Django (SQLite, MariaDB/MySQL, etc.).
-- 
2.30.2


