Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25D7BC433F5
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:24 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
 [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web08.3885.1642139723353647275
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Sgf+DVr1;
 spf=pass (domain: gmail.com, ip: 209.85.210.180,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id m21so1870118pfd.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=t9aJ8RadYnY0JpUeb11d7QQhH19UPBU9Xs89RHpIH2E=;
        b=Sgf+DVr13IwZbl5+ZE/Q9NJ/5lgapZiappgzQ5YeuDee433/18lduA07P3uz7/nrJg
         v2B8v1aJ8hnq5Dl9Abc24zy33ONcTC9JaZMSE+FlT0ogZ0qd5rjua+GNWFCPRrltIM2h
         FtF3WWrUJf3ravL4Jfwfcs6mn5337E+PSTerND1gxcF8CzwAhYS3zAM2zCudn6/p+igV
         Xauq3gR4h7SGuDkyOrNW9GzeDZdJBDRbVinv/bQoc/1Qy7THASmn7eLP4TC9NoUVILxp
         uLPku50X4vU3us/pUkMTWkumieI0hP5a9UKNNTo/fDDY8IrG5Wtr8rJVdbCCGXP3KsOU
         AiZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=t9aJ8RadYnY0JpUeb11d7QQhH19UPBU9Xs89RHpIH2E=;
        b=yG+2YEGNrNTlR5oBxxlYXUc9gUA0y966I8GwNmqQzhIvlUmrKMVxLaZo/cK1/Dkw/1
         MHaAtIAZb6kcQqAyKE6NgvMMqzI9Afa9WjA6cpH4pP7Qf/f6XjQwlqaUPJi8fz9Q8u/L
         UBYl3iBhoTyAgBo9NIyySUQK5XUJP7Ds2uOLByDSrzBZ+IHFbJIp6wrsDiG4t//jkFTZ
         BIXY4fHWUzSP+BHfI854r8OEZMjr4fPKsuqSjRDqNCaZuvmo7VyVn4c9Bfn2qGNQHX0Y
         xmZXI1PDdhAeX81jJq0CBlGqayDkCTYgC2CquylOKPkhiqRc1GU8/dHJVcsSj5cy8qjo
         b1Ww==
X-Gm-Message-State: AOAM533XgM7wP1CinpFdVnuEOgzBLcpXb1BkA8qsnq4NVOiE3+NJ/yjY
	XWYJ2a45qeA+C7tAv6bRpFreL7rrpnoGIA==
X-Google-Smtp-Source: 
 ABdhPJxO6WgzPagIb4t1kInRLDJBHaNXew2a+sMsUqe59KLWAas+ZSzG2wtNxdty+7Mj/vuE6Zdgkw==
X-Received: by 2002:a63:cd49:: with SMTP id a9mr6763067pgj.607.1642139722604;
        Thu, 13 Jan 2022 21:55:22 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:22 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH v2 09/18] requirements.txt: update all to latest
Date: Thu, 13 Jan 2022 21:54:32 -0800
Message-Id: 
 <08d7f96e10549530b12334c782855533bc7e7c1d.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55860

Since we are on a "modern" version of Python in
Debian buster container (3.7) and a modern version
of Django (3.1.x) we should be able to run with
the latest of all dependencies.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/requirements.txt b/requirements.txt
index 865960c..7704ac0 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1,27 +1,27 @@
-amqp==2.6.1
+amqp==5.0.6
 beautifulsoup4==4.9.3
-billiard==3.6.1.0
-celery==4.3.0
+billiard==3.6.4.0
+celery==5.1.2
 confusable-homoglyphs==3.2.0
 Django>=3.1,<3.2
 django-appconf==1.0.4
-django-axes==5.13.1
+django-axes==5.20.0
 django-bootstrap-pagination==1.7.1
-django-cors-headers==3.2.1
+django-cors-headers==3.7.0
 django-ipware==3.0.2
 django-ranged-response==0.2.0
-django-registration==3.1.2
-django-reversion==3.0.9
+django-registration==3.2
+django-reversion==4.0.0
 django-reversion-compare==0.14.0
 django-simple-captcha==0.5.14
 djangorestframework==3.12.4
-gitdb2==2.0.6
-GitPython==2.1.13
-kombu==4.6.3
-mysqlclient==1.4.6
-Pillow==6.2.1
-pytz==2019.3
-six==1.12.0
-smmap2==2.0.5
-soupsieve==1.9.4
-vine==1.3.0
+gitdb==4.0.7
+GitPython==3.1.18
+kombu==5.1.0
+mysqlclient==2.0.3
+Pillow==8.3.1
+pytz==2021.1
+six==1.16.0
+smmap==4.0.0
+soupsieve==2.2.1
+vine==5.0.0
-- 
2.30.2


