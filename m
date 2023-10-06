Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F17AE9410C
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 19:59:38 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web10.3926.1696622369909636780
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 12:59:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hxq5KcuP;
 spf=pass (domain: gmail.com, ip: 209.85.216.52, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-27777174297so1801148a91.3
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 12:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696622369; x=1697227169; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4rYJi+AvGeIiHWz79DKQXyhkLiXhEbTCdMNVp3nS4jQ=;
        b=hxq5KcuP4wRln5UHp5krES4/Y3kXIUeO11Nl54HkPIdoK77Qq3BKcx4U4DvOHgGKTt
         kGBtBnQnsFMc+wH8D8f1OraUsOm2saGaZxGfF7aZvrjMLLHsUMTc3Sti1g6oRKFraUnE
         5FYVfQd2HDQG3994h+yKk5p/WBTkMAzKTapzuuY9vMsgfqKWrjjlsc/kTnS5asVzL9lJ
         n9t7D9EYd5JFbrUgeFoeAjoTPjbgRqjzqUcgBojUdMipelb8+0sZm0mSP4pCi8MUymif
         SUOjDl6kUC50Wisxk5dUoLOvf4yaANTizm+wW7Xz2LBmA8TTnHZI+Eh9LxEPMjfwPDW0
         uEZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696622369; x=1697227169;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4rYJi+AvGeIiHWz79DKQXyhkLiXhEbTCdMNVp3nS4jQ=;
        b=wN7UjYKAOjoyOXews3srZyzVtBX8A80clZYGxDFMNtR4jkfkt/t4UZfskTLBc4Pevs
         tm1IbQsBKLeNNdmknM0bw+qIUA9Ez0+6v8flHxHDez/1HeXjn4wFyTHfjxKRM7nSISTB
         q/2K608Dmo4TxVXnMaDEdJMrEt+mW4IhvsHqWFHgj2+NoUACjH9Ms1k98s1BGlKitT5Y
         xJUdqA5yT/QNththllHv94yJEZ8RzdTvO6jsxu5GyQFzUZDZLaKZ+X47QCoZZEYWdVcm
         M90H2uCm5TaxoS55BLXvUJAoSwmnOW92hWMMu0dNo/4aJKaLj1bhMEmKbCOR4shsBZSS
         Tcfg==
X-Gm-Message-State: AOJu0YwWQQK42ZjJCP/Skyxr08HHPk5eNVZvbaERqXGQsh6y4epcGtJ5
	hF1yVWhgcK/u/vz47/ZiiCgeiPLZI/I=
X-Google-Smtp-Source: AGHT+IHW740/KHuGXaro37q+zlA27ADXHlUvDnsiLAH6poCFuLN53DI6C5hjtuTK9xvkgUbL0gV+cQ==
X-Received: by 2002:a17:90a:8b0f:b0:276:785f:7edd with SMTP id y15-20020a17090a8b0f00b00276785f7eddmr9407414pjn.25.1696622369029;
        Fri, 06 Oct 2023 12:59:29 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:4ca0:e9cf:d643:bafd])
        by smtp.gmail.com with ESMTPSA id 6-20020a17090a1a0600b00263dfe9b972sm6420971pjk.0.2023.10.06.12.59.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 12:59:28 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web 02/10] docker-compose.yml: bump mariadb from 10.3 to 10.4
Date: Fri,  6 Oct 2023 12:59:05 -0700
Message-Id: <bb79b3885e535f40aefcd27fee83d5f4fc1035c2.1696621423.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1696621423.git.tim.orling@konsulko.com>
References: <cover.1696621423.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 19:59:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61266

Django 4.2 requires a minimum of 10.4

https://docs.djangoproject.com/en/4.2/releases/4.2/#dropped-support-for-mariadb-10-3

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 docker-compose.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/docker-compose.yml b/docker-compose.yml
index 2dfff41..e57f59d 100644
--- a/docker-compose.yml
+++ b/docker-compose.yml
@@ -1,7 +1,7 @@
 version: '3'
 services:
   layersdb:
-    image: mariadb:10.3
+    image: mariadb:10.4
     command: --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci --wait_timeout=28800 --max_allowed_packet=128M
     environment:
      - "MYSQL_DATABASE=layersdb"
-- 
2.34.1


