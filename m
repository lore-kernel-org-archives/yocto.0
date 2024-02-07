Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D724C4828F
	for <webhook@archiver.kernel.org>; Wed,  7 Feb 2024 23:16:12 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.5182.1707347765003117538
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Feb 2024 15:16:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=0hi4BklZ;
 spf=pass (domain: smile.fr, ip: 209.85.221.48, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-33b2960ff60so177429f8f.1
        for <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 15:16:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1707347763; x=1707952563; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dk10UuGbMpfHtnLIt/fPycYoHbqaqY6U0vZT0yFoL5k=;
        b=0hi4BklZpHqBEmiDM9mdIDQX5PsD2SCdyhiKS+rOMiZDbpqM1GxzDINp0s098Tn/3o
         vbqzNPrU6sHGUOfzfxznkUgANuAUSKLWYJCfyStJ0cga+GrO7giq6mT1FG7g0VnRtmA4
         KtMIzGoZCLFuUqtlNS7CHqC5ZSY2iaThn80AeMd/BFiqpOSWlAI4xF3LYijoe1AZFscg
         RbczKgDSdIAwPEayt26zIuaJx0gwEc23Uzvgjy8frXHYtGek6ws1WCLRHxNt0xebve6/
         A0fs2GecA4E5f+g6rtpgXnD1gfI91EMCdUWwXbJiq5NP2pyP2f/paJAlsZ9rNmA+rPSt
         cKhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707347763; x=1707952563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dk10UuGbMpfHtnLIt/fPycYoHbqaqY6U0vZT0yFoL5k=;
        b=rh+NkcmXFRWtHmFYQlpcEsirYepHAH6fg7S8rz6c4O1JqwJO8OEMmt79fnvJ/Ya4CI
         w5RsLiP3+Bui4N1qnmK1ucPme7PfujYfWTnza6PQBuGU1baJRnpLdrFKQIcVVfPWRcxO
         0K+xgePNsbmIlEOuZD3vmXOSBz4JWA31gA3tROrXD9/kv5K0bVv77mV4GdyVb3Vfw4ar
         b81xIhy831JGEuilEZ0c4EWCUo+JKGN+zgkU4Wk6UgC1D4sec65LW+R5C4867xvOlmZa
         vTP75VdjSGo38f+iQ5gLGKhAz23Ro7S9FtVaDDuHp1HMGlw7frhi/JYyvcrj8wpmpyBw
         3CRQ==
X-Gm-Message-State: AOJu0Yzcq2nOhZOBNDTiXrbNJqVpQXXEq6cyBYtBiPPriqYfGdQRylMD
	Gw/9EOif1sXo0PgxkM/lHD2/1WoI60gikSTSz7Z9x3ck5DYzXZ9D4H9vL38YJR2bfmKs3i5WRSS
	3JFi1Rw==
X-Google-Smtp-Source: AGHT+IHj5FLHoES+t/LDtN4S6pfjGYxWordfxawsdmqBoiZmtR9OqJ8105ET89Erl3v58oMxAXhArQ==
X-Received: by 2002:a5d:5603:0:b0:33b:5028:9fcc with SMTP id l3-20020a5d5603000000b0033b50289fccmr538455wrv.9.1707347757907;
        Wed, 07 Feb 2024 15:15:57 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.local ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id n30-20020a05600c501e00b004101bdae3a0sm2231834wmr.38.2024.02.07.15.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 15:15:56 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH 2/2] README: Add a "git send-email" example for contributing
Date: Thu,  8 Feb 2024 00:15:54 +0100
Message-Id: <20240207231554.149413-2-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240207231554.149413-1-yoann.congal@smile.fr>
References: <20240207231554.149413-1-yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 23:16:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62425

This "git send-email" example is present in most Yocto/OE repos and is
quite useful for a quick copy/paste.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 README | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/README b/README
index 35b928e..20e0b64 100644
--- a/README
+++ b/README
@@ -34,3 +34,6 @@ with the following commands:
 
   git config  --local --add format.subjectprefix 'yocto-autobuilder-helper][PATCH'
   git config  --local --add sendemail.to yocto@lists.yoctoproject.org
+
+When sending single patches, please use something like:
+git send-email -M -1 --to=yocto@lists.yoctoproject.org --subject-prefix='yocto-autobuilder-helper][PATCH'
-- 
2.39.2


