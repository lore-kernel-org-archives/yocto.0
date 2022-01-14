Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2972DC433EF
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:37 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
 [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web10.3824.1642139736081689180
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CnSGrVlO;
 spf=pass (domain: gmail.com, ip: 209.85.215.172,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id x20so1914553pgk.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=99hIEu4BSDUZZkx6XHj09NFiN7PfjLpdd6nvuiWukVM=;
        b=CnSGrVlOhZNbbEQlnHx1WRRPYsQ+NMpPorHWwGVW/Oo1dzWNed6mrpuuAhdRjvYKgn
         FMizKUkZECTMrxZvl99HdngWCsJSEFEQVX8gvA19uOU2ACATGsLrn2w4VCQmJqdoE5Iv
         9A6urJpLwX8wNgMQM6W3hmoqIlAdUXYIlqOV34H60r/PDp5TvjOvUiw/koUel2ew7dY8
         qP+RJQRRET/hEEw81XrGJQdtdMKpBYYPWNf2mb6E68iy7ixP/qOk4PjIuti+BcniNJqj
         REALcMocrEzggUUX10ANWRVz6db/zuz4ofpfzzSTwubw7d18BOLpLk2UUn+ZqGNoMOb/
         BQrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=99hIEu4BSDUZZkx6XHj09NFiN7PfjLpdd6nvuiWukVM=;
        b=rQScFcPpLW1wD/TJ/vHZuZWH8yEPpci7sfw6w6zRy6ni6zANQvn1I9qAacf21fZNjx
         9Zc3XuH/5dUMDEDg6OBbN/TKcoso6Nba+OriidO38Vy3zhIg+0PcJHXSretYw7vDRmvA
         YQPpA3mBF1soh9VcD59OOtolWnOJ4gqu+ji6bgfGg1plfzU8rtMXk9M9EVX9Jq3vXO1m
         3rzyv2ZpsmjybSkQtD8j2Hhsi8yRyx1d8siaZ/+3ZBgsravf2YU1XxJU6U2bHc7bDPxA
         M3eknAll0BXa1KUtQ7xsMfTslTcAqR4dQrsyolWoIKuSHboZh1qfGIS4IIkMd0fvpz31
         6mog==
X-Gm-Message-State: AOAM533l9RLgDh0skz0oxAafyYjaYCi0ewUTmBdsqPJziziPojp1kVyg
	V814PqR1Mj8kBbAUiLFjSKerDH/HXrU9Zg==
X-Google-Smtp-Source: 
 ABdhPJyEQYXicKD7gMlV63TluzO0YZZmUcB3yn/7Og9O20lAI3O3XehMm1tBeU7T/DHzrwGvE2h8zA==
X-Received: by 2002:a65:6241:: with SMTP id q1mr6771406pgv.98.1642139735229;
        Thu, 13 Jan 2022 21:55:35 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:34 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH 18/18] requirements.txt: bump all to latest
Date: Thu, 13 Jan 2022 21:54:41 -0800
Message-Id: 
 <f074aece703e4d5fc6292d6e1bbb992410d96d3e.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55869

Run pip-upgrade and update all to latest

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 36 ++++++++++++++++++------------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/requirements.txt b/requirements.txt
index 41a0b1e..77b1aa9 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1,27 +1,27 @@
-amqp==5.0.6
-beautifulsoup4==4.9.3
+amqp==5.0.9
+beautifulsoup4==4.10.0
 billiard==3.6.4.0
-celery==5.1.2
+celery==5.2.3
 confusable-homoglyphs==3.2.0
 Django>=3.2,<3.3
-django-appconf==1.0.4
-django-axes==5.20.0
+django-appconf==1.0.5
+django-axes==5.31.0
 django-bootstrap-pagination==1.7.1
-django-cors-headers==3.7.0
-django-ipware==3.0.2
+django-cors-headers==3.11.0
+django-ipware==4.0.2
 django-ranged-response==0.2.0
 django-registration==3.2
-django-reversion==4.0.0
-django-reversion-compare==0.14.0
+django-reversion==4.0.1
+django-reversion-compare==0.14.1
 django-simple-captcha==0.5.14
-djangorestframework==3.12.4
-gitdb==4.0.7
-GitPython==3.1.18
-kombu==5.1.0
-mysqlclient==2.0.3
-Pillow==8.3.1
-pytz==2021.1
+djangorestframework==3.13.1
+gitdb==4.0.9
+GitPython==3.1.26
+kombu==5.2.3
+mysqlclient==2.1.0
+Pillow==9.0.0
+pytz==2021.3
 six==1.16.0
-smmap==4.0.0
-soupsieve==2.2.1
+smmap==5.0.0
+soupsieve==2.3.1
 vine==5.0.0
-- 
2.30.2


