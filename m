Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F655E9410A
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 19:59:28 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web10.3924.1696622367604681169
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 12:59:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ee6wT2fV;
 spf=pass (domain: gmail.com, ip: 209.85.215.170, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-578d791dd91so1981400a12.0
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 12:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696622367; x=1697227167; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cPlVxZHcNpMooVL56Cd7cP6lUg7NjNNhUeXNvBnius0=;
        b=ee6wT2fV4ci6eCKRBk7eKJ+4UzfCe0GqVvWAg1hWc7bEI7h0ZTKBh3XcG2t7n4fZBg
         aJDwB5QwEGy26nMdF4l/AFTZWinWzThxNMUml52QuqxUoGwU2oGtdHGbsk7HOMoAgWBS
         U2EDEl1+rr4SV9jMC9eMc16d9pVffMf4YFU3cdS12RnEvqgTiw7W6KMkyAgjxHVuTxmM
         /82pbkOIhaH/EQJvFMuyMlkD9rOnjWQ2x3tD8kuP9opALwncLJG5u8GAptzbr78ZM3Ls
         H1D/Sd8935RlGzW2cRctNzO/s52eg0mvtG8r+rf8wq5hrjAsPX09K3vccvEbKic0q84Q
         ZUsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696622367; x=1697227167;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cPlVxZHcNpMooVL56Cd7cP6lUg7NjNNhUeXNvBnius0=;
        b=JedOmRDUo238gUAnGGanjPCsyrr2pIrU5G9grCmqwMTjJKTFbdB5LGe+6d+cPeQW9x
         6QRfnA5nzrbmiI2jP+m6Tsv/G5/ts7HH+OWev1xSjyXoNJyx5ZRLK1matsuF61n3/GEb
         mBcQR5r0x/bE8HU9VAx7XCa16CSpzL2EkJQel4lxLUgtjquHXEQ+gbjadKp5lXTmtgJa
         JW+gAD4EuPpY0X8hJ+qwQEv6+2ZW4BGrlK4MEQkRxWqILlLaRJ72BVjstBwy3vvS+z5X
         R4lijHpgbM+407WDrKOdrj86Ex6Xq8mzpl4UORssDwUcHb/2O++n3ttTc4qiL6ylJDXa
         aESg==
X-Gm-Message-State: AOJu0YyOneUDFELl69OnU2qiaHUUR551LSmNrLSQ2GIBcStfxFw6K+0u
	sOcgjJjva5KLLvqqAggsL4FuQdcQE5I=
X-Google-Smtp-Source: AGHT+IEXu+0orat6SpGXr+WCdK7YcQb4Ht0pwfELp9dFicXKBLGu3AQG4K74yB9L3/sirtKpDAeldg==
X-Received: by 2002:a17:90a:4f02:b0:273:f10c:b6d2 with SMTP id p2-20020a17090a4f0200b00273f10cb6d2mr10068907pjh.18.1696622366608;
        Fri, 06 Oct 2023 12:59:26 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:4ca0:e9cf:d643:bafd])
        by smtp.gmail.com with ESMTPSA id 6-20020a17090a1a0600b00263dfe9b972sm6420971pjk.0.2023.10.06.12.59.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 12:59:26 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web 01/10] requirements.txt: upgrade Django 3.2 -> 4.2
Date: Fri,  6 Oct 2023 12:59:04 -0700
Message-Id: <082f5aab793930ca046b85fbe1fb932c47a03f33.1696621423.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1696621423.git.tim.orling@konsulko.com>
References: <cover.1696621423.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 19:59:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61265

Update to 4.2 LTS release

https://docs.djangoproject.com/en/4.2/releases/4.2/
https://docs.djangoproject.com/en/4.1/releases/4.1/
https://docs.djangoproject.com/en/4.0/releases/4.0/

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 18835b7..072c2f1 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -3,7 +3,7 @@ beautifulsoup4==4.10.0
 billiard==3.6.4.0
 celery==5.2.3
 confusable-homoglyphs==3.2.0
-Django>=3.2,<3.3
+Django>=4.2,<4.3
 django-appconf==1.0.5
 django-axes==5.31.0
 django-bootstrap-pagination==1.7.1
-- 
2.34.1


