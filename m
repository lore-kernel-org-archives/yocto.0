Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 228B9C433F5
	for <webhook@archiver.kernel.org>; Wed, 20 Oct 2021 15:57:02 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
 [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web10.10106.1634745420644289939
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Oct 2021 08:57:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=scWdfAgn;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.171,
 mailfrom: steve@sakoman.com)
Received: by mail-pf1-f171.google.com with SMTP id f11so3308188pfc.12
        for <yocto@lists.yoctoproject.org>;
 Wed, 20 Oct 2021 08:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sCDAycJtA9dUpOZDLG7WZ+biMmY0dUjkxBIeZ11tXyQ=;
        b=scWdfAgnMaXKx6ES/e2BVmrxKENepE+ChMQ1efI3uwIZNlMOx+Weqr/GyQ376MrCKN
         ZmJWyP/4M1hc3/GmGqdnXwndivr2aww/L72krKcyVNiz4ospr4HSLlRT5gcaUr+0KeVZ
         vt2LhVxj6aZOy4Uu46rUU856agRWjPCMisfYAjSLv8FcVXMxt9dBtNbiZsrn1X+I8h/L
         AZlAW94yGA4a6jpdmKBa2tS9tFoiSMEjAznVtk31V4atqWuDvtE4eSuhQlDswsg6ku55
         xhBQyt0AmAdLOisUU43YxLEivjR1aempWyWTNZcQJpyXQD4xyxDZxOsVPXnfe9vRY7vo
         VE7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sCDAycJtA9dUpOZDLG7WZ+biMmY0dUjkxBIeZ11tXyQ=;
        b=LZa5pOy+JeTZbdjIPBwfQifueebRw4MsyCrFZ2lddNuQgZKZRT4WjO4FPlL6OHa/y1
         V54NSyt3/yDEEinC29KwIdasRJmHRJ8dXZCduOTuEDL1oypsQYz8sizS6aRkjqJweAjC
         EXLWTmny+9AQ7fWH0KCLKfNrQirkB/rd4s4oLfyzrECcboU6roe0/UrvMYcD2LScoAX0
         I0DR2c65uBvUb4fatXvZrVxuf4IEQMRZixQ6UxKsYFnGg0CYqFvrPdCgHCLF7ssTYLGe
         94SckLJQHFokWB76fExk57+kPu1pFsDUO1MU9QnLzoyXnyvOLmqeOW1lBg2rNgyIVU7a
         1ZYQ==
X-Gm-Message-State: AOAM5329iJ8AvzvsXQ1KjPuPap8P4kcFW6Yvb6/Xd77VOiPmj1K0Jhsp
	kjcVz/1S3FlcKBdfioPNd3X/YWy+WdE9o1QxJKY=
X-Google-Smtp-Source: 
 ABdhPJwm6u9pCEg4DDrZL0eZmzIizeL5UmQTSKV/2nM7mS5wCcGy94z5ucyVQgjao6HrQZevJbP1kQ==
X-Received: by 2002:a63:6a49:: with SMTP id f70mr56864pgc.199.1634745419574;
        Wed, 20 Oct 2021 08:56:59 -0700 (PDT)
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com.
 [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id
 z126sm2664951pgz.55.2021.10.20.08.56.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 08:56:59 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][dunfell 0/2] Patch review
Date: Wed, 20 Oct 2021 05:56:47 -1000
Message-Id: <cover.1634745310.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Oct 2021 15:57:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55107

This series enables fedora34 and debian11 workers for dunfell.

The following changes since commit 08020902bef43866e3c982422e4fbdace57cd01a:

  schedulers: Add honister release (2021-10-11 11:12:11 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/yocto-autobuilder2 contrib/sakoman
  http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder2/log/?h=contrib/sakoman

Steve Sakoman (2):
  config.py:  enable fedora34 workers for dunfell
  config.py: enable debian11 workers for dunfell

 config.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.25.1


