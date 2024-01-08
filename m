Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA88C3DA6E
	for <webhook@archiver.kernel.org>; Mon,  8 Jan 2024 13:34:45 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.6634.1704720880390031898
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Jan 2024 05:34:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=DM+k1sV9;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3373a30af67so1803498f8f.0
        for <yocto@lists.yoctoproject.org>; Mon, 08 Jan 2024 05:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1704720878; x=1705325678; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Vlq07fV6Ks+FjclFh+ip/+f2hdYN3GeocPKK7tMHrnA=;
        b=DM+k1sV9AjiVXCxaNEz4SEjERGbZosKRjCkqizhqUxelobuWevsHGgGr4wJVx+KTFV
         dbvOdN54c+G3bMfLrLEKsOANVm9UC0C+JZQnRjWa17CVaGX3LSrTTqC/EK8RD/IBiRWZ
         FhimQoLODNqEmbUKUDxTlAPhrVLPugGZLQi0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704720878; x=1705325678;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vlq07fV6Ks+FjclFh+ip/+f2hdYN3GeocPKK7tMHrnA=;
        b=RWYLvxmWItXn8W570ugByFTXTjWhRlAeZvVGnPzI85+zDaYQRWAAgAUpW7RUzlSCs1
         2PR4CKQunMQYbUgBO/w6agPckiInK+AWqML7BzLdKdwVRMDysWTZBDvxucy5mXlcxIYx
         p2EwrwdWKSXqgitnGKt6TiqXlTYxy2u/FZuA52vIVeNz5mn2S6fsSUm+dZyFQl8mD4v1
         A6Ja7zRGXw9Pxp7/Xz7c1ORYlQQlj3/7LDJNaSQWbR5ZQIq5OMCdwDIAIP33TS+X+FmX
         80G5bSrU8C8Mq+/Anko1GWJVwDLkrvmYbN90JGe5G2Pfaqq2Eh/CvT4dqOTDn/bO3j5+
         bUTw==
X-Gm-Message-State: AOJu0YwmTDuyY1qyiuGIwS3elYd28YsObPCTCnK6Q+fBjsUhVS8Jmq1G
	DyWIIJYjO3Xr4GQtsHx9O5KHtHW/ZX7d7gJMbqv8KK2w6ls=
X-Google-Smtp-Source: AGHT+IGiifc1zEQhoM2g+37VK5nk1PlpxMT5MXP/ngx84Qc1Ipjb+PPnh9H6fn7O9RVoKOo/TmkRNw==
X-Received: by 2002:a5d:5690:0:b0:337:1fc9:73b9 with SMTP id f16-20020a5d5690000000b003371fc973b9mr1407987wrv.111.1704720878432;
        Mon, 08 Jan 2024 05:34:38 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:b276:a503:5054:9b01])
        by smtp.gmail.com with ESMTPSA id d7-20020adfe2c7000000b00336d24b4847sm7822977wrj.114.2024.01.08.05.34.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 05:34:37 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH] schedulers: Drop mickledore for meta-oe/layer-checks
Date: Mon,  8 Jan 2024 13:34:37 +0000
Message-Id: <20240108133437.2753194-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Jan 2024 13:34:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62101

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 schedulers.py | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/schedulers.py b/schedulers.py
index 4d7522a9..b8ff44b5 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -487,12 +487,6 @@ schedulers.append(sched.Nightly(name='nightly-check-layer-nanbield', properties=
 schedulers.append(sched.Nightly(name='nightly-meta-oe-mirror-nanbield', properties=parent_default_props('meta-oe-mirror', 'nanbield'),
                   builderNames=['meta-oe-mirror'], dayOfWeek=[3, 7], hour=2, minute=0, codebases = {'' : {'branch' : 'nanbield'}}))
 
-# Run check-layer-nightly amd meta-oe-mirror twice a week for mickledore
-schedulers.append(sched.Nightly(name='nightly-check-layer-mickledore', properties=parent_default_props('check-layer-nightly', 'mickledore'),
-                  builderNames=['check-layer-nightly'], dayOfWeek=[2, 5], hour=2, minute=0, codebases = {'' : {'branch' : 'mickledore'}}))
-schedulers.append(sched.Nightly(name='nightly-meta-oe-mirror-mickledore', properties=parent_default_props('meta-oe-mirror', 'mickledore'),
-                  builderNames=['meta-oe-mirror'], dayOfWeek=[2, 5], hour=2, minute=0, codebases = {'' : {'branch' : 'mickledore'}}))
-
 # Run check-layer-nightly and meta-oe-mirror twice a week for kirkstone
 schedulers.append(sched.Nightly(name='nightly-check-layer-kirkstone', properties=parent_default_props('check-layer-nightly', 'kirkstone'),
                   builderNames=['check-layer-nightly'], dayOfWeek=[0, 3], hour=2, minute=0, codebases = {'' : {'branch' : 'kirkstone'}}))
-- 
2.39.2


