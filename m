Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CBEAE92FDA
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 02:44:54 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web10.4758.1696560293582594317
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Oct 2023 19:44:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dh9hokAl;
 spf=pass (domain: gmail.com, ip: 209.85.210.170, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-690b7cb71aeso1329917b3a.0
        for <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 19:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696560293; x=1697165093; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5bHtOJWbRaRtQ8GReWI6LlP9r26jxK+MQMrqNbuMVBM=;
        b=dh9hokAlV4ybYIE7FbUDmSkKoJJVWLi0s34q2M54jyX3+xZVLfDRByiTG2Cbooziac
         S8MquaZV0UJuW3JI1ux+adz44JAMflW40L0n+uAXNJC0hiV6APsKRggky261eGvy4nPc
         X2W98AtQcoy4Rnm6S0NqmPHIkNOPzinDtFVLHSyczvAmhrxmM/uZ1PVfKNgXwv0mVGqG
         UkBL1E4WQNehIlUpT6BuzK+NAZfEee3HI88Nev7Hd9bDAxLH7eZ4AWEp8+Xo0n2M9Eu+
         QQwbO6UrdL1rrvhhq4fcBFMFRKM+q4n5HKa2QEZacfzi6sa8bi52i/CUYrAdUvj6ujYg
         5+MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696560293; x=1697165093;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5bHtOJWbRaRtQ8GReWI6LlP9r26jxK+MQMrqNbuMVBM=;
        b=WNYtPyZISQmEwMmTmbvayrpOS3VTvuNUi92Bhdps0wJhAKytKprlIxbZ3HvS4wG1DQ
         Qppz/lkpnkkqalQtZdOq1k4cj+80wZtc3eJH2SkdnxDpGo5dhx2wYFChBls2YoMYiIpQ
         uSpwbXiqgl/kSiv81SujUppeVW/z1ws4ehiAEgdBQpkFStfHIPdLmQdpmric+tPnhOH+
         5Ww3e7J/zuDnantljrZwHfXXWOr5rOHM5qaWLelowqrvTOZINPhc7RqqKg6vPgVxFlAc
         cAKFv0cAa00rVMU0gejQZV+oNQX36C0lmuJk9jp/oJzKlh/801whEgFkLsRF6nPVLJVj
         WLww==
X-Gm-Message-State: AOJu0YxiBpDFrBOWV/L7KPTR3VD2NVpwYXijosg0cxcGD4uMwCDLrC1P
	tFS7L0wZlOGV6LPwOtmiFv2ty0f3HWg=
X-Google-Smtp-Source: AGHT+IHFO/jKs7LyehB7fTlGsFlT2iAXxIrjH98MRQ/YfzgNgsC0Y0yiTQleuAYqxCKD6uSxcLqqRw==
X-Received: by 2002:a05:6a20:1606:b0:140:61f8:53f6 with SMTP id l6-20020a056a20160600b0014061f853f6mr6026967pzj.29.1696560292782;
        Thu, 05 Oct 2023 19:44:52 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:4ca0:e9cf:d643:bafd])
        by smtp.gmail.com with ESMTPSA id fe21-20020a056a002f1500b00690d7da743dsm293303pfb.161.2023.10.05.19.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 19:44:52 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web 3/3] requirements: bump django-simple-captcha to 0.5.20
Date: Thu,  5 Oct 2023 19:44:02 -0700
Message-Id: <20231006024422.38381-3-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231006024422.38381-1-tim.orling@konsulko.com>
References: <20231006024422.38381-1-tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 02:44:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61257

https://raw.githubusercontent.com/mbi/django-simple-captcha/master/CHANGES

Version 0.5.20
--------------
* Still support Django 3.2 (#222, thanks @petrklus)

Version 0.5.19
--------------
* SECURITY ISSUE: reset the random seed after an image was generated (#221, thanks @ibuler)

Version 0.5.18
--------------
* Fix some typos in documentation (#210, thanks @stweil)
* Test against Django 4.2
* Stopped testing Django < 3.2
* BaseCaptchaTextInput should set autocomplete=off on the hashkey HiddenInput (#201, thanks @eerotal)
* Test against Django 4.2a
* Fix some deprecation warnings in Pillow 9.2+
* Removed old unused conditional imports
* Format code with pre-commit and black

Version 0.5.17
--------------
* English translation created from Spanish ones (#209, thanks @tpazderka)

Version 0.5.16
--------------
* Adds a migration missing from 0.5.15 (#208, thanks @atodorov)

Version 0.5.15
--------------
* Updated test matrix, drop tests against Python3.6, test against Python3.9
* Remove dependency on six
* Test against Django 4.0a1
* Test with Python 3.10 (Django 3.2 and Django 4.0)
* Remove warning for django 3.2 (#206, thanks @MiStErLu)

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 5cc07a4..18835b7 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -13,7 +13,7 @@ django-ranged-response==0.2.0
 django-registration==3.2
 django-reversion==4.0.1
 django-reversion-compare==0.14.1
-django-simple-captcha==0.5.14
+django-simple-captcha==0.5.20
 djangorestframework==3.13.1
 gitdb==4.0.9
 GitPython==3.1.37
-- 
2.34.1


