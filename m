Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76E29E94115
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 19:59:38 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web11.4025.1696622377779933295
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 12:59:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=k7fiUCIx;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-27b22de9b5bso1439930a91.3
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 12:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696622377; x=1697227177; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9L0GazQtmEt9N5p4ompJs/RTz4OcexBJZRwDsxBUJHM=;
        b=k7fiUCIxBx0//8+u7rdOzN7q92kn7dRsCL8bsxuKzFLerXmYSVgH4jvu+lK/9ni+xN
         WsZHN75Zf0A6fCysMbdb2mE+mTxj6+SK3q5J0O9RCcvnf3bJHxHF1i3BUVKoEhglk8jW
         gcEzbn3ixQq0aFlL6AZ2f3jg2vdnpHBGB5/t7REowLzhNTkH0S6oO9VwyxodVdNwR+Rx
         8JXb2S2DjPFn98qIZpHzqlVD3hb34pOnqlTV7XJXGMayiFQiSpQ5MvEm4iQJIFSpDtvv
         vDzHlo3xBIqn0XYhPGfxhpeUZgeFjLGb2uHfwuwTm9K1XwLdz/+sbC+iLaikV7skp8Yc
         FFsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696622377; x=1697227177;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9L0GazQtmEt9N5p4ompJs/RTz4OcexBJZRwDsxBUJHM=;
        b=EP1a90dYLnm0L3Lz285G03G+6DDk9Sj8sVEqbcsoWPlkbyQA1h4eMFcBLKHkGfEsdX
         n20/tjhXyuhBchZkY6fOgYpb/iVEo5zkrK27crhripqe6c9D+QdwfsltSw0dXs4LJo9k
         bTpDFIYbQAu1xAqn5sPmI9xK5d6htt1JMqVklUid9LEvqKlQKDIrLHnYzYHxYXzO4p2T
         v88lnia4TrCvzMhTV1M5ZeRieoVezGWy8TtPC97nmU8GKiw+iOxGLw6nbNZr0anWnXuY
         D4yVBkfEhpCupT0r2svjgX5I9tZurhPJVDrK2/JPbMXGl29idhpzQiwpHIngEotJOplR
         najA==
X-Gm-Message-State: AOJu0YwkSKvqQU6yOp9mBKHGyEXiQFVjjPdJtG5T4MDUQaws2Kv1/mu3
	9vbUTuIwp2yDx0U/rEzT/qtqcc1BMRs=
X-Google-Smtp-Source: AGHT+IHAx9eFK9aZax13PywDYoyjZ2o+nRz3zt+UcSaa2Z3ysGQYL6OURCqOb3K+9BxLHqizoSM5aw==
X-Received: by 2002:a17:90a:bc48:b0:26b:5461:8dd5 with SMTP id t8-20020a17090abc4800b0026b54618dd5mr8372717pjv.42.1696622376910;
        Fri, 06 Oct 2023 12:59:36 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:4ca0:e9cf:d643:bafd])
        by smtp.gmail.com with ESMTPSA id 6-20020a17090a1a0600b00263dfe9b972sm6420971pjk.0.2023.10.06.12.59.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 12:59:36 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web 07/10] requirements.txt: upgrade all to latest
Date: Fri,  6 Oct 2023 12:59:10 -0700
Message-Id: <eceb742205ab8bb332dcd05eaad6147b48ce2145.1696621423.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1696621423.git.tim.orling@konsulko.com>
References: <cover.1696621423.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 19:59:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61271

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/requirements.txt b/requirements.txt
index 40f696c..612e9cc 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1,26 +1,26 @@
-amqp==5.0.9
-beautifulsoup4==4.10.0
-billiard==3.6.4.0
-celery==5.2.3
+amqp==5.1.1
+beautifulsoup4==4.12.2
+billiard==4.1.0
+celery==5.3.4
 confusable-homoglyphs==3.2.0
 Django>=4.2,<4.3
 django-appconf==1.0.5
-django-axes==5.31.0
-django-cors-headers==3.11.0
-django-ipware==4.0.2
+django-axes==6.1.0
+django-cors-headers==4.2.0
+django-ipware==5.0.0
 django-ranged-response==0.2.0
-django-registration==3.2
-django-reversion==4.0.1
-django-reversion-compare==0.14.1
+django-registration==3.4
+django-reversion==5.0.4
+django-reversion-compare==0.16.2
 django-simple-captcha==0.5.20
-djangorestframework==3.13.1
-gitdb==4.0.9
+djangorestframework==3.14.0
+gitdb==4.0.10
 GitPython==3.1.37
-kombu==5.2.3
-mysqlclient==2.1.0
+kombu==5.3.2
+mysqlclient==2.1.1
 Pillow==10.0.1
-pytz==2021.3
+pytz==2023.3
 six==1.16.0
 smmap==5.0.0
-soupsieve==2.3.1
+soupsieve==2.4.1
 vine==5.0.0
-- 
2.34.1


