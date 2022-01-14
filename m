Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 387F4C433F5
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 07:39:16 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web10.4398.1642145948533839191
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 23:39:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OInSCQnO;
 spf=pass (domain: gmail.com, ip: 209.85.214.174,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id u15so12662042ple.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 23:39:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t2riMLt+59TDgE2LhXgTshlMnUDe4pX4C14uKvDsUlA=;
        b=OInSCQnOyUQuh8YVBj3KEO4NueUn6BtgJf0uNjTyE9iJ+4ItPTtgea1MtobZU/uw1b
         3i61HW3Bsv6NWPSpfRjX0LWVp3GcIj9bvhemiFUPU1m6waZAgufSgH4pSG7e353WQAHm
         BgvSgZaMyGsl5U+iKd4XBS7afD3pk1LTjIiwdQt1mj7AiVRqbbDNHWCVg//gQrcaPqcD
         Tu4cdsbfKkWeP7hMTpk/8QTj5zoa/NhEc5IGUVVpVC7DCyC5T+3HUiYQMKDT30+zqdo/
         VOeUCKxE5vn/MQG4HkWRMaXV3dmGXNyz9f+g6H6X6fKSRDGg2NQMytdsplV95JWEmTKz
         VpFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t2riMLt+59TDgE2LhXgTshlMnUDe4pX4C14uKvDsUlA=;
        b=QLA44KMX6uYB0W2qmbFDMezTKkJ8kU340yh821PwF6Yxf805zX1ouK74l5VC2MWVCp
         8AQgkdcmlSjW9ccx97PnDa9zx46L5Wq7z1OdYfj9bZEGWkLThQVAHAMKNgNZY+XspW+N
         5yLufr0oc36N8HktiYZg5ePAAxkrXJ/OKBxIj8lLK+ay0CjGoQcyEi1bwNO5u2N7tRha
         U0YUCQETjKxEENTnJ6mYt5fG/QbiVZkzuPw2NSS8zi1Hd9g/pWw+/9fySeEaF9DIC07s
         qysvizlzTNnIm5JBqL3fuTIOY23oeost6fuB1APhZHtn2TZ4dWW5VKKz/ry/hM0grzkz
         0Z3A==
X-Gm-Message-State: AOAM533pcklUA/n85UdokyLlC4pl2HeQZ415A4icXTadnLFRBUrbrjg0
	jwSAmwj2vBb7h2hT+aW8LGGbeoJOTdweMg==
X-Google-Smtp-Source: 
 ABdhPJzeXeoypr/5ynCIbiRSrAfJwfgcUTZhBEqujbkEET8zHHyYMleoOT9fDMcDTKBg8F0Vy57vBw==
X-Received: by 2002:a17:902:8ec5:b0:149:d41a:baa8 with SMTP id
 x5-20020a1709028ec500b00149d41abaa8mr8158039plo.115.1642145947568;
        Thu, 13 Jan 2022 23:39:07 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 k8sm5098081pfu.72.2022.01.13.23.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 23:39:06 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex][PATCH 19/18] templates/*: staticfiles -> static
Date: Thu, 13 Jan 2022 23:38:34 -0800
Message-Id: <20220114073833.719377-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 07:39:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55871

In Django 3.0 the staticfiles tag was changed to static

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 templates/layerindex/classicstats.html | 2 +-
 templates/rrs/base_toplevel.html       | 2 +-
 templates/rrs/maintainers.html         | 2 +-
 templates/rrs/recipedetail.html        | 2 +-
 templates/rrs/recipes.html             | 2 +-
 templates/rrs/rrs_stats.html           | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/templates/layerindex/classicstats.html b/templates/layerindex/classicstats.html
index 18fdf70..b677520 100644
--- a/templates/layerindex/classicstats.html
+++ b/templates/layerindex/classicstats.html
@@ -1,6 +1,6 @@
 {% extends "layerindex/classic_base.html" %}
 {% load i18n %}
-{% load staticfiles %}
+{% load static %}
 
 {% comment %}
 
diff --git a/templates/rrs/base_toplevel.html b/templates/rrs/base_toplevel.html
index c2f1c21..7ba97ab 100644
--- a/templates/rrs/base_toplevel.html
+++ b/templates/rrs/base_toplevel.html
@@ -1,6 +1,6 @@
 {% extends "base.html" %}
 {% load i18n %}
-{% load staticfiles %}
+{% load static %}
 
 {% comment %}
 
diff --git a/templates/rrs/maintainers.html b/templates/rrs/maintainers.html
index 217a060..c8f2418 100644
--- a/templates/rrs/maintainers.html
+++ b/templates/rrs/maintainers.html
@@ -1,6 +1,6 @@
 {% extends "rrs/base_toplevel.html" %}
 {% load i18n %}
-{% load staticfiles %}
+{% load static %}
 
 {% comment %}
 
diff --git a/templates/rrs/recipedetail.html b/templates/rrs/recipedetail.html
index e2bcfe2..8f90735 100644
--- a/templates/rrs/recipedetail.html
+++ b/templates/rrs/recipedetail.html
@@ -1,6 +1,6 @@
 {% extends "base.html" %}
 {% load i18n %}
-{% load staticfiles %}
+{% load static %}
 
 {% comment %}
 
diff --git a/templates/rrs/recipes.html b/templates/rrs/recipes.html
index b62df87..663f547 100644
--- a/templates/rrs/recipes.html
+++ b/templates/rrs/recipes.html
@@ -1,6 +1,6 @@
 {% extends "rrs/base_toplevel.html" %}
 {% load i18n %}
-{% load staticfiles %}
+{% load static %}
 
 {% comment %}
 
diff --git a/templates/rrs/rrs_stats.html b/templates/rrs/rrs_stats.html
index a13c8f2..52b723f 100644
--- a/templates/rrs/rrs_stats.html
+++ b/templates/rrs/rrs_stats.html
@@ -1,6 +1,6 @@
 {% extends "rrs/base_toplevel.html" %}
 {% load i18n %}
-{% load staticfiles %}
+{% load static %}
 
 {% comment %}
 
-- 
2.30.2


