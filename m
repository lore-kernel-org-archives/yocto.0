Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24D0FC433F5
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:27 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web11.3760.1642139726104385069
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iFwTwtk3;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id hv15so12497147pjb.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=nioy7Hz9j3WqQIecvcOhJ2VXIV1y1gXUMiwiRfobdzY=;
        b=iFwTwtk3qYKx+3Kpuh7M4UdH1dVi9/9iIzvwUYo8aJmGuLCO3sGhQBBVufegt+OvD3
         8XwbXUoq59SQuD86fmWyn8W9D2Ws5UJK9+fEr9cgsM//b/1lFv3uHurij04AvETUJ17q
         +VtBZuuJjh93fYBMUk02Ii3i7HzhZNMVSLPwKQfXGyUUS18xUSFKvlLD96z3WSd9UCQG
         TZCPy9O60eFSo2WdDR8AroxeosXmXu8dcG7kbLnqXAAiblS5EvMWvoyHZgDDBvkWpEkw
         wpeREpyO88e2yVyEj0waX/a+ELaIF5r4D9+s4jEkp3DRu/rpBfXNs6eJmGbxaTOidKk2
         +nfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nioy7Hz9j3WqQIecvcOhJ2VXIV1y1gXUMiwiRfobdzY=;
        b=dHcJMw19QAoiUkkwxHot/k8vwWTW57qt7REhWkHps47va7x5xnofegbjCiHBMLH0EK
         ZHhJZA7M++NUtXrnJACI3ufQjdU6LhSrVKpTClJtCvE0MohubvvE8mTSCxGnOen9qTgj
         FFbNsRhPwK4dsIABFpLqeH7lyrs7jhiNYjgz8rZDZTO2Ln6Qxu22tZrL3TTvynCAfCnp
         9z3WnefEyzyouhXf2uMhjQZN7RC8h7e3RUyLdv189KfWbdi2CjqA/u3cXGsPkh5OQRkt
         QiPE/DXztIOM600Lcy8wwAfCVKPbYZ6pNYA17QwZsSqruBLjhfXoq445u+iPTA88pOIH
         fuxQ==
X-Gm-Message-State: AOAM5301edI0KRpdu+gAClbxgTzbCBzFedIyGcDwCx03MDJ2W7jDLWlg
	XGzr90eIKXz8ZLt+cxZ9bcvr0CyGj+cilQ==
X-Google-Smtp-Source: 
 ABdhPJzi7Z4gXpWEfaIhjCzFTBTRV1jnR8NRZcxe6Iyf8YAme3s9HKj/syDCF5bNknvty9Fdfvo4PA==
X-Received: by 2002:a17:90a:c582:: with SMTP id
 l2mr9078605pjt.78.1642139725420;
        Thu, 13 Jan 2022 21:55:25 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:24 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH v2 11/18] settings: set DEFAULT_AUTO_FIELD
Date: Thu, 13 Jan 2022 21:54:34 -0800
Message-Id: 
 <67679306b0605f219e3125584c4acb68d23cbeda.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55862

New in Django 3.2

To quiet warnings, set DEFAULT_AUTO_FIELD to the
default value 'django.db.models.AutoField'

NOTE: The default value for newly created Django 3.2
      projects is django.db.models.BigAutoField, but
      this causes the need for a migration in 'captcha'.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 docker/settings.py | 3 +++
 settings.py        | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/docker/settings.py b/docker/settings.py
index 894974f..a3f007d 100644
--- a/docker/settings.py
+++ b/docker/settings.py
@@ -140,6 +140,9 @@ TEMPLATES = [
     },
 ]
 
+# New in Django 3.2
+DEFAULT_AUTO_FIELD = 'django.db.models.AutoField'
+
 INSTALLED_APPS = (
     'django.contrib.auth',
     'django.contrib.contenttypes',
diff --git a/settings.py b/settings.py
index d03d15c..a69eb53 100644
--- a/settings.py
+++ b/settings.py
@@ -140,6 +140,9 @@ TEMPLATES = [
     },
 ]
 
+# New in Django 3.2
+DEFAULT_AUTO_FIELD = 'django.db.models.AutoField'
+
 INSTALLED_APPS = (
     'django.contrib.auth',
     'django.contrib.contenttypes',
-- 
2.30.2


