Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1340CC46CD2
	for <webhook@archiver.kernel.org>; Sat, 30 Dec 2023 05:00:13 +0000 (UTC)
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web11.179116.1703912404849945960
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Dec 2023 21:00:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WgNxYJfQ;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6da202aa138so1409748b3a.2
        for <yocto@lists.yoctoproject.org>; Fri, 29 Dec 2023 21:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703912404; x=1704517204; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KfCrAxn+qVVomWZAVcoKxw5/zF1Ne58DSw43xSkBu64=;
        b=WgNxYJfQW1q+XCGKSMA40NRpzsn/yBJstOff3939cx9nUMhtteb2B1XIK6AwmGEyE+
         MZNIfaPOQR9VLq+hjb2NTOe4u89/0cDq4R9u2svfy9B61sXjVGZrK+mjOaqmCopLGkEb
         0Mt2JP+fNk9Cp1DiRq+WRr0VZ5yzjTBDYsGv5G+iNVvw4TkGXIpYsN/ziy9IjnC9TaH7
         vuOeC2c60N67ovkeR3HcNsVht8ae9+/ou7Gr2/6LLEqz1+5JEMQJI0UJluS3c68vW4+q
         6LLkJyroxsw5851YGDA7I2h0kC9C7CzBBD4iokapT1NCaBjyoJBlwFNU4b3bjgQ9Aoi4
         iUMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703912404; x=1704517204;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KfCrAxn+qVVomWZAVcoKxw5/zF1Ne58DSw43xSkBu64=;
        b=RDfrlcA+/1eQAKE/wQK+JCnE0Swi4R4+/g+TtMwQOZTr3g50ffeaR9qk5zYH8pn2ZG
         4bOMbd8C9xUTPyxuNraO0VO2a5Q904f9Lkqn0SHN5d3hwRwYtYcTHDHhcAnEtjvYKrCe
         /xFe9LLj6prYM2+9zFbol2n8V6ZofUCGzfxWxp8GqXQac0sQsa9ZFVmbAEFXoXSL/vXs
         wVcal3kz3/5rBRhvSUghv4pUUvE7X2iUFWvw5LZcwJDGbr1HF2eEXjHBWFP/XXaprSYL
         +viH20AqAlp4Gc+jzRPS19cvplkzbUWPrZeQbDXV0tBvqQ1Py+cQwQu8h2seYWMDIR3u
         JZNQ==
X-Gm-Message-State: AOJu0YxKYFer1N6SLLw9Hes3VB5P4ErRHrDD1zamWKDA1nIucyIMsEjA
	H1/+2fmiHUWsjGTU5gGr11v6ow2k44g=
X-Google-Smtp-Source: AGHT+IEZvwHAXtuaXq7P0aEy0bbxBmpyCuwPRoX4Q5Dp4PmPO2i7QuReepftIRrd840q2nQ5crZbxg==
X-Received: by 2002:a05:6a00:3984:b0:6da:5505:13c7 with SMTP id fi4-20020a056a00398400b006da550513c7mr1489146pfb.66.1703912403535;
        Fri, 29 Dec 2023 21:00:03 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:56fb:3e3a:cb3d:4a01])
        by smtp.gmail.com with ESMTPSA id s19-20020aa78293000000b006d9a9727a8esm12124536pfm.178.2023.12.29.21.00.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 21:00:03 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 1/7] requirements.txt: bump all to latest
Date: Fri, 29 Dec 2023 20:57:09 -0800
Message-Id: <d22770a95ec0f4b8782a6e309d173e3b58d187e6.1703911977.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1703911977.git.tim.orling@konsulko.com>
References: <cover.1703911977.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Dec 2023 05:00:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62052

Pin mysqlclient as greater than 2.1.1 changes behavior

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 40 ++++++++++++++++++++--------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/requirements.txt b/requirements.txt
index 62b3f7b..20bcd30 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1,8 +1,8 @@
-amqp==5.1.1
+amqp==5.2.0
 asgiref==3.7.2
 beautifulsoup4==4.12.2
-billiard==4.1.0
-celery==5.3.4
+billiard==4.2.0
+celery==5.3.6
 click==8.1.7
 click-didyoumean==0.3.0
 click-plugins==1.1.1
@@ -10,29 +10,29 @@ click-repl==0.3.0
 confusable-homoglyphs==3.2.0
 diff-match-patch==20230430
 Django>=4.2,<4.3
-django-appconf==1.0.5
-django-axes==6.1.0
-django-cors-headers==4.2.0
-django-ipware==5.0.0
+django-appconf==1.0.6
+django-axes==6.2.0
+django-cors-headers==4.3.1
+django-ipware==6.0.3
 django-ranged-response==0.2.0
 django-registration==3.4
-django-reversion==5.0.4
+django-reversion==5.0.9
 django-reversion-compare==0.16.2
-django-simple-captcha==0.5.20
+django-simple-captcha==0.6.0
 djangorestframework==3.14.0
-gitdb==4.0.10
-GitPython==3.1.37
-kombu==5.3.2
+gitdb==4.0.11
+GitPython==3.1.40
+kombu==5.3.4
 mysqlclient==2.1.1
-Pillow==10.0.1
-prompt-toolkit==3.0.39
+Pillow==10.1.0
+prompt-toolkit==3.0.43
 python-dateutil==2.8.2
-pytz==2023.3
+pytz==2023.3.post1
 six==1.16.0
-smmap==5.0.0
-soupsieve==2.4.1
+smmap==5.0.1
+soupsieve==2.5
 sqlparse==0.4.4
-typing_extensions==4.8.0
+typing_extensions==4.9.0
 tzdata==2023.3
-vine==5.0.0
-wcwidth==0.2.8
+vine==5.1.0
+wcwidth==0.2.12
-- 
2.34.1


