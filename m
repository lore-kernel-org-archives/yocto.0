Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32E09C433FE
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:26 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web10.3812.1642139720142969740
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SDsrwNRq;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id
 c14-20020a17090a674e00b001b31e16749cso20998146pjm.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=EK48na2iWSwMdxaR7W8TAO018wzQAYjJB4Z3n+Tf1Mc=;
        b=SDsrwNRqCe6YvLukO1pPr6egDXN+grLC7Tc80fddh10rKlfDY1l9QSwLv5HLkJiKxd
         b/NfxU6ngdmisRMv6pE15mlJjlwKtNyoM0cWGdrzm+POeDgZyU4m8QQp5vaOVOgG/0mT
         zTqHpbFwpA2sOOLqEnCKqxDLNq5vBPeHkGYezpTZXXEwE3+P0/mJc93QZXJhci1ae11i
         ysCjim/Ucc5HHVdKQS7mN6Fb/IKREOGpLdiuomdJ0vvlIUYcilMsEMKFYh3NMrMYtvEk
         rcr31cX/Xo5LF9Y89cgXJMeyOKXdnpruv2ChCTC2tC0z8UuVBOLGzAVbXcTvnsItB0fP
         REpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EK48na2iWSwMdxaR7W8TAO018wzQAYjJB4Z3n+Tf1Mc=;
        b=q2Ni7sfb9DWeND45EQ7lmXHEEWWJYlaRj+LX3El0rskkFHth7Js0Ld6b6C8F1LjWq5
         VIm7edQBM3ic4VVrADvcQEcqhk82vIQAD8r4V642cEemDLiioNCXEuG4dkuQJCuD84fM
         ivakufZ+6fLZZNFPYF6eyUhZHjiyd5wuh1i62SLUEofl36ETr5nXmggO8KOkgKs4jaOw
         691n6WlPndwYbNAKV4B4y5wkEOmnZ2OQQXtypMwFFyViztJpRaBpRoZN+AW9iqpbLL3f
         etHZaOJhGHRTzqBgtuov/qWGgOkb0s86r8SlnepNJHMDQbOy2fsnSCpIaubdrjSQ8Rlf
         f5aA==
X-Gm-Message-State: AOAM530vA04yM85/0iaEkEoI6sNcAQ6nBWCCL8v8c0QUztH28E/7/5A6
	onX6S0wirbc+CHk7Ddw5qFYSCGC+0QLkkw==
X-Google-Smtp-Source: 
 ABdhPJyQatLuIihjVgGopIKifDj4L2vqINrFpWcVxeqVghWFEVHmSg9EjNAo9B0QAbfSLVJda6MOww==
X-Received: by 2002:a17:90a:5d13:: with SMTP id
 s19mr18448936pji.117.1642139719518;
        Thu, 13 Jan 2022 21:55:19 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:18 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH v2 07/18] requirements.txt: bump to Django 3.1
Date: Thu, 13 Jan 2022 21:54:30 -0800
Message-Id: 
 <49b41802e4a51fd66e6406e4a2e31e1f8eba165d.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55858

Another incremental upgrade towards 3.2 LTS

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 895994b..865960c 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -3,7 +3,7 @@ beautifulsoup4==4.9.3
 billiard==3.6.1.0
 celery==4.3.0
 confusable-homoglyphs==3.2.0
-Django>=3.0,<3.1
+Django>=3.1,<3.2
 django-appconf==1.0.4
 django-axes==5.13.1
 django-bootstrap-pagination==1.7.1
-- 
2.30.2


