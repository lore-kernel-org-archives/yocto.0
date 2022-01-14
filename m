Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26BDDC433EF
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:26 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web09.3763.1642139724649005610
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=T31ht1II;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id
 y16-20020a17090a6c9000b001b13ffaa625so21053804pjj.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=+pdPS2WFDKUnyFxSHul2il03Gws7CyET+vw463N2jv8=;
        b=T31ht1IIYBKkIltwi45Y76C3Ua6qJ0x5dYMe+STm6HkEOvDufrlM2FEQMihhQqQKZ/
         fC2HDT+seCHXJN/HCnv7gxas3jTNCE/RM/+Rahe38X3UJ0bBEsVAOcgU/oyNv3qColWN
         aW+Y+y6s9SKzm3tfqmDEAi3SYlzOMeHC0RW9qAq7CN0yMeQ4IoNhhpOgrcZoIt9i4OfY
         7T3W8Dp49wP4cKDsqxM5KADTnwjboMeLp22LN5uTO0UTycqHw/tjhDsj/CChr2BqP8/R
         +aEsRaa9RlW/cD9jjEZRFZk3ZZfLqAvxu45+sy+OGBx+kKobtOJ31vv/LHJFMbUQ66jr
         8+RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+pdPS2WFDKUnyFxSHul2il03Gws7CyET+vw463N2jv8=;
        b=y9LaUmMPYlHfXJ3sVamaPHIKvFNgUOH4dKWFeCPzIWoCEOisl5glS3EiKHzPB0f8ro
         YeDw5gkN6rvMKMQgxa9gOC5v3qVlOgjQ+1DE4qiaP/OR7bucl9e4kYJkRm8AC9YEhpnq
         UxtvDcITyHdiuIPyfNa3oaaI/KJNRrWe4S/+ZysSAGOE97lawW3SDbQDuAl0nLYuoElJ
         IpJX+ATmT+rGAHMGzH9JVJk1bkR/l/+NsclIYqxb+rEi9NDHsu3Wv11dbgrgRf/kdZJ2
         6qI7yUswygddTqNUHy4OOU3RNMU8Fao+tKOsYehZLGWV05enw7PfDgWyjuKq1vTTSJ7j
         g7/Q==
X-Gm-Message-State: AOAM530A0tcPrZT7xdxE1MKWztrOZXgOb/luJLz+P9naj6FxPvk8Fcdf
	R9XD/PkpbmYMGTLM/rMTF533AUINCoOKJg==
X-Google-Smtp-Source: 
 ABdhPJzJDJpTqDpbA7Qy0aWKJBjoO4tNPLCqII9yjYClW7RtjsWhJxzHvk2wnfCQ+QcQutilWZHHtw==
X-Received: by 2002:a17:90b:1c88:: with SMTP id
 oo8mr18272635pjb.212.1642139723937;
        Thu, 13 Jan 2022 21:55:23 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:23 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH v2 10/18] requirements.txt: bump to Django 3.2 LTS
Date: Thu, 13 Jan 2022 21:54:33 -0800
Message-Id: 
 <314d29deda659d8bb5825a52e7bbcf389af74c76.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55861

Upgrade to the latest Django 3.2.x LTS for
extended support up until April 2024.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 7704ac0..41a0b1e 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -3,7 +3,7 @@ beautifulsoup4==4.9.3
 billiard==3.6.4.0
 celery==5.1.2
 confusable-homoglyphs==3.2.0
-Django>=3.1,<3.2
+Django>=3.2,<3.3
 django-appconf==1.0.4
 django-axes==5.20.0
 django-bootstrap-pagination==1.7.1
-- 
2.30.2


