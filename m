Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88108C3DA79
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 17:56:52 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web10.89709.1705341404129298884
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 09:56:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TZ4cQIHg;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-5c6bd3100fcso3793543a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 09:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705341403; x=1705946203; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sJ37Vw16WXn6bnyCc+cTdkiu8/TxaoJDqxtOEeb8yqI=;
        b=TZ4cQIHg43yzJmlu012FYGSGzhObD3ksH4kLt9oQQ2D3+FuCyJNDhed/MR/JS2Zo5/
         wMWuzKa39eeKrW60LW9ry0vJlyzgTcjtYS9p6n4CxA6WuPqkLcX2EovzBluNPukFTZiF
         l87n/RwFw2jLQSIkjrgbJykBnKmJuK0z00Zq0a1ULlU3cqb75B/qtuC7DVZqMqzM0tYt
         HLn/laatIBI0WaKtve8TvGWwaMqTTJsYJ/FFzBmuy4D6C95MU9+otlORIIf8OxTVWgkA
         nBks1hfPXqd8Piv235in4AEBjbwl7lVO3NlSXkbI63FNUsrWYp/pZb/3aq9KWNcqBpIX
         8/yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705341403; x=1705946203;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sJ37Vw16WXn6bnyCc+cTdkiu8/TxaoJDqxtOEeb8yqI=;
        b=c74xElF5XymRJmd/EbsJeva4I2F2P/MI8E38IhF9dJw5PNi2qo+gyB5EyZc2hPzsyg
         REsTUexyYDiUojw962pJhLk60DshcRlIlDAnDhqNQjdGozt12naKI1kbwLA+uah9Ytji
         MpQBGPD7qqLPrHS0AKrgaaQqmVAKUwZhiZsbxZ/mxnQcAvkNq4kBpfe+/QW18I0j93ez
         OwbglGKjGOJK1ES4tggo+TtdByxwzoR+xkcwLbAIzwDy5+pX7ugnXee0O4P4VMpMKxth
         u0EiCqpW2DKxASJc9si30ZKzsQvkG0YG92P3X+G02DeVODPXC6URRcCy3VuIImV+DZ3l
         NMJA==
X-Gm-Message-State: AOJu0YyJOP8s6UhUT2boa3357wugnYV1Co8HkAQAIruBW6Eu35spWXOm
	F3bKrA29HCTyDWuzZ7TgefAWmGxA+g8=
X-Google-Smtp-Source: AGHT+IE4DKzFtfVxJWzpCfN+yY9d+zc8scQdk7fRY5KXDJWhndUjmXvcobkVmz5oWsaHnihisMOu4A==
X-Received: by 2002:a17:902:f7c9:b0:1d5:ba6d:552a with SMTP id h9-20020a170902f7c900b001d5ba6d552amr1190415plw.90.1705341403133;
        Mon, 15 Jan 2024 09:56:43 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:9093:7b1b:b931:af99])
        by smtp.gmail.com with ESMTPSA id h12-20020a170902f7cc00b001d59432a29csm6282455plw.282.2024.01.15.09.56.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 09:56:42 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 4/6] requirements.txt: bump all to latest
Date: Mon, 15 Jan 2024 09:56:30 -0800
Message-Id: <412bd6a14f616586808df2621a71cda98847c313.1705341088.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705341088.git.tim.orling@konsulko.com>
References: <cover.1705341088.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 17:56:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62150

Bump all the dependencies to latest, using
pur -r requirements.txt

We are now able to build the mysqlclient==2.2.1 package,
so the only constraint is Django>=4.2,<4.3 to keep us
pinned at the desired LTS version.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/requirements.txt b/requirements.txt
index 20bcd30..ac06cfb 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -11,20 +11,20 @@ confusable-homoglyphs==3.2.0
 diff-match-patch==20230430
 Django>=4.2,<4.3
 django-appconf==1.0.6
-django-axes==6.2.0
+django-axes==6.3.0
 django-cors-headers==4.3.1
 django-ipware==6.0.3
 django-ranged-response==0.2.0
 django-registration==3.4
-django-reversion==5.0.9
+django-reversion==5.0.10
 django-reversion-compare==0.16.2
 django-simple-captcha==0.6.0
 djangorestframework==3.14.0
 gitdb==4.0.11
-GitPython==3.1.40
+GitPython==3.1.41
 kombu==5.3.4
-mysqlclient==2.1.1
-Pillow==10.1.0
+mysqlclient==2.2.1
+Pillow==10.2.0
 prompt-toolkit==3.0.43
 python-dateutil==2.8.2
 pytz==2023.3.post1
@@ -33,6 +33,6 @@ smmap==5.0.1
 soupsieve==2.5
 sqlparse==0.4.4
 typing_extensions==4.9.0
-tzdata==2023.3
+tzdata==2023.4
 vine==5.1.0
-wcwidth==0.2.12
+wcwidth==0.2.13
-- 
2.34.1


