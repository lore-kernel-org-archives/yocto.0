Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8798AC47258
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 04:16:35 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web11.4229.1705983394366040022
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 20:16:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QwJvSv3j;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1d74dce86f7so14008765ad.2
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 20:16:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705983393; x=1706588193; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vH1sRnJIyyZYUbxQ8QsGvEMD7Ie/HOdWys1LYmoZtyg=;
        b=QwJvSv3j161qf8kc2E3JRw+aZKqAyxj9w1BPGi9yh42Np7/TCrYSrBXLKjGOyVsfBI
         89LCeMsm8MaytyGYxeHaUYx04+dsq8LNAdUtYucbyAO8bD6r+OxKQ5WnVtIYtIyuB76t
         JtE34Oavz4iZ7KjzRvm8Y9M9ijUI3QfE4Iq9bDm0g/aWBODjg4cDihSTCzSmV9o9A0dO
         DdVu3yr9lMiEzD8U3glDBdGxvnQ1j6A1frOm4lUfKlEFqxj5d10KWndSXpXrAMFN/faC
         26EO3NDQ9L0BZrG9aCYicW5aBJN36Q7ClSykLm3jTv2xQcjfV5UoJCUVL1zAMzmmPMh+
         QNuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705983393; x=1706588193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vH1sRnJIyyZYUbxQ8QsGvEMD7Ie/HOdWys1LYmoZtyg=;
        b=OZwBRgC1ZV9Zztu5GoVnoBkaddS/21sig7qR7kz0QaE9OgFuhdj25d/fifbOsOs/DK
         t/RYXTmwXkXnBgBY7ne+4fWm/7c+ljsEd2EHYhf8wSI1ZWK+FR3gUKgxa6Ia/6yv4J58
         vswsVO3X9KceZoX8CyNbOSf+3bk6Oejdz77xfnzicgVM6iD/oSe60FMlaRsZNjWGWVpy
         jrmq1OxVoVVJAAoSRW5kTbeaQUBwy+SLxeeyrJ7YKIsbf5SkDR5+sG+iysQ6O7IjcmZk
         DiWg0sm6bCcLHinMag/rbFUUjX9q0RvtTqgmShLCBlmlTLzItQpDm+VtGkFNxVqvFurw
         5u3g==
X-Gm-Message-State: AOJu0Yx51OP6dC03fvRoNQKToeun899MdRfesC3bMwVau2YcwdVR7GQW
	DM+VZmaRTZVrcjTK4dnQwFi/npbG3S2Mq1tDS3zjLwldq6cWei4lf2BJviDQ
X-Google-Smtp-Source: AGHT+IGst9xz6lRKjNLRUaepPVP7XDRBQwLaave1Q14UBel9iUd7GYfKHxbWGnDFjq1biDlJUfSwNA==
X-Received: by 2002:a17:902:b614:b0:1d4:ebbd:e7dd with SMTP id b20-20020a170902b61400b001d4ebbde7ddmr5254264pls.125.1705983393118;
        Mon, 22 Jan 2024 20:16:33 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:66cf:30fc:9774:9e5a])
        by smtp.gmail.com with ESMTPSA id iz11-20020a170902ef8b00b001d73126cac1sm4380274plb.173.2024.01.22.20.16.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 20:16:32 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 2/5] layerindex/recipeparse.py: extend bbclass regex
Date: Mon, 22 Jan 2024 20:15:21 -0800
Message-Id: <b71fff21212356c32779b3a080653d76b377966e.1705982792.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705982792.git.tim.orling@konsulko.com>
References: <cover.1705982792.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 04:16:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62234

Extend the bbclass regex to match classes-global and classes-recipe

[YOCTO #15238]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/recipeparse.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index 6202745..9be6c10 100644
--- a/layerindex/recipeparse.py
+++ b/layerindex/recipeparse.py
@@ -130,7 +130,7 @@ def setup_layer(config_data, fetchdir, layerdir, layer, layerbranch, logger):
 
 machine_conf_re = re.compile(r'conf/machine/([^/.]*).conf$')
 distro_conf_re = re.compile(r'conf/distro/([^/.]*).conf$')
-bbclass_re = re.compile(r'classes/([^/.]*).bbclass$')
+bbclass_re = re.compile(r'classes(?P<subtype>-global|-recipe)?/(?P<name>[^/.]*).bbclass$')
 def detect_file_type(path, subdir_start):
     typename = None
     if fnmatch.fnmatch(path, "*.bb"):
@@ -149,7 +149,7 @@ def detect_file_type(path, subdir_start):
         res = bbclass_re.match(subpath)
         if res:
             typename = 'bbclass'
-            return (typename, None, res.group(1))
+            return (typename, None, res.group('name'))
         res = distro_conf_re.match(subpath)
         if res:
             typename = 'distro'
-- 
2.34.1


