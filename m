Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25D96C433FE
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:32 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web10.3821.1642139731741422382
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WJlp0Hpo;
 spf=pass (domain: gmail.com, ip: 209.85.215.182,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id x83so1913948pgx.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=aXuDyBvJIkcvhgjvSvf3dkOTb8VfKk6pGfwGSUPe+IE=;
        b=WJlp0HpoSuW0EdF3ZRnTOYjwTjoULL5QquJ5VLR2Xv/WDTSxv+trsE7Ph85TLhS51G
         2p/8iGC1XACso6Q/VxVhvl8lMFqNeEtgY/fSDggYf6ecF2Tmqq0aMuURT6JZJURKFg4T
         oslh1veDuMhIbKKyKqqaNrF3jc11H1Ted4ZAlQSkX4W5ORHNKZPxxpPIXfRLaLQe1hf5
         6zgXMb83z5CwSVwORLynS2fzARyYAb3fW7JDsB6yjUhKisA3fsUDsi/nbtDWHLF+GWf8
         5CNjdsthhwDMJ5kOKsvt5VGTgHbXJqOgkng2KbCb3oMGZkCClkibmZ0vru0yMLMvAgec
         iI2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aXuDyBvJIkcvhgjvSvf3dkOTb8VfKk6pGfwGSUPe+IE=;
        b=0ObvT0ZbiD5A7CYCzOuAPrbzmHO8T0U78ed/ADEZSnTQCFKoIKPlU/Xn8hbG118uyr
         exmS6gH12C2D6ff75JpJkmqcY2GPpyt0WyU63F/3c+2pTLKEL6HZpzeoaJ4/xtUQe90m
         6ZrhELs/mYbZe6kTeBVI3pr6RtvKyWsr7+rMgrVRttvetV+b+c3wkonjKVjuWd0j7pxO
         BWRpO9z8B2TOErHiFDAD/bPl/yeoPJ/Ro+CGr+XuTBDpVOKCJiy5Doj+moZrC6xu4Rpg
         q7/90YNrZ2SRDfz/vzeHfdynBO4eN1racRboA9bwqLXuBdKqE9+7JwHks2osAb3IgJr3
         wQxA==
X-Gm-Message-State: AOAM531HL3OlzHGAvcFvLLas6ZMigI7L8nQ1qAADoqwM54Bto48NAypG
	nqLcyp1NuDcJltYX+6jnA/MavmFevrjKKA==
X-Google-Smtp-Source: 
 ABdhPJzNB768JQd/Ehu2DWceQPYztPHLRm9msUk6S4jgGRxu6EHhoyJv+pQyq3BQa2aCg1TYF1pZtA==
X-Received: by 2002:a63:9f0a:: with SMTP id g10mr6668687pge.387.1642139731033;
        Thu, 13 Jan 2022 21:55:31 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:30 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH 15/18] Dockerfile: fix warnings
Date: Thu, 13 Jan 2022 21:54:38 -0800
Message-Id: 
 <c99a1ed4e7c087bdc5ef7075417e64ec561a038c.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55866

* Define LANGUAGE
* Set DEBIAN_FRONTEND=noninteractive before apt call

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 Dockerfile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Dockerfile b/Dockerfile
index f6623fa..25ab5ea 100644
--- a/Dockerfile
+++ b/Dockerfile
@@ -4,6 +4,7 @@ FROM debian:buster
 LABEL maintainer="Michael Halstead <mhalstead@linuxfoundation.org>"
 
 ENV PYTHONUNBUFFERED=1 \
+    LANGUAGE=en_US \
     LANG=en_US.UTF-8 \
     LC_ALL=en_US.UTF-8 \
     LC_CTYPE=en_US.UTF-8
@@ -15,7 +16,7 @@ ENV PYTHONUNBUFFERED=1 \
 # NOTE: we don't purge gcc below as we have some places in the OE metadata that look for it
 
 COPY requirements.txt /
-RUN apt-get update \
+RUN DEBIAN_FRONTEND=noninteractive apt-get update \
     && apt-get install -y --no-install-recommends \
 	autoconf \
 	g++ \
-- 
2.30.2


