Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 379B1C433EF
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:12 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web12.3783.1642139711241304416
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FaPvPev+;
 spf=pass (domain: gmail.com, ip: 209.85.214.172,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id p14so12471448plf.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=kwZ6T3dd9CPTUgUZJYU+v556UDzVZPbOe08FkiABAU4=;
        b=FaPvPev+vtjDTFH+KjMZFP8c5tVpiiduvkgdHjzEYo6o+FC4N+PHo99xH0NmgGQlQ/
         ndo4wCsyNM8+ovAUP9/+zg4uhOTyOcDCe8Bxx72etgP03j9v2vBp5eHUFrcGsNr9IYlS
         3t2rChCGqD+UH7cPKQylCF+01JjKUObzfXTJK8AvPFb0K656EQQGgbGEVi8EjMOVeUcr
         nOsqU66hql2/9Q5GiTVGcorTG1NXV61Va5WfFV99i9L1j7duegISErR3BepbQadZPY/4
         pD51qODCwamiidElCS13Az7GKVaPF5ciCFS+qe8hIkNQRhendHpUinu+55GpRLtCwR0K
         w11A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kwZ6T3dd9CPTUgUZJYU+v556UDzVZPbOe08FkiABAU4=;
        b=zb1N1VFHKxZ5ARfh5lZlrpR3GJYz7Y0vXEcRMdkxih4rAQMHtKdNr+WW56LwOz6Enh
         TrvIuELRmfpk1TaT5oi4owakOpmUh2Z4TPkViUafNNN+u6Ao/ArYCIti09cmAje2KOJk
         Kin0VgVP2YHZvxGPVJnEFSCKcqx/V3DZA8/WFyAku70bXHme4IBT7l9CNe+3LMHiUohw
         oQlWhY5K8zijkNXyAle5a3B3Vow/i1IwQPj9TEB/9ZA6vZ5Hn0jTAmZE+Y6yXrgm156a
         vdpJc56Cd4mXLCnEcUO/5s7nb7u5nerrl+bhlPR1cycWRIcdtWtQEGqm2BkHLwVHjJyj
         9icQ==
X-Gm-Message-State: AOAM532dd8/ha7eR6dtda3okO6qGsM+qrtk4SCUKjVeHYmi9VQsSTIMB
	f7Sea5KlioyRcuQCo99GmfBleQQuCA4wSw==
X-Google-Smtp-Source: 
 ABdhPJzKz9uPAjcROHlsyqcM9Q7sLvazTG0Lf+f472z1jRXixqZzvwuLdS5ZAwyNi1mqVhrCVUNP9w==
X-Received: by 2002:a17:90a:5210:: with SMTP id
 v16mr8989599pjh.107.1642139710392;
        Thu, 13 Jan 2022 21:55:10 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:10 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH v2 02/18] Dockerfile: cleanup,
 install python3-wheel
Date: Thu, 13 Jan 2022 21:54:25 -0800
Message-Id: 
 <f9c640a7c0e5c54c191ca5d1e5fea429d8722915.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55853

Remove duplicate python3-pip, etc. lines
Need python3-wheel for bdist_wheel command

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 Dockerfile | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Dockerfile b/Dockerfile
index 8c4c847..f6623fa 100644
--- a/Dockerfile
+++ b/Dockerfile
@@ -24,10 +24,8 @@ RUN apt-get update \
 	python3-pip \
 	python3-mysqldb \
 	python3-dev \
-	python3-pip \
-	python3-mysqldb \
-	python3-dev \
 	python3-pil \
+        python3-wheel \
 	libjpeg-dev \
 	libmariadbclient-dev \
 	locales \
-- 
2.30.2


