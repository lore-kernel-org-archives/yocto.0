Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6BCC5AC75
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 00:26:06 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web11.6053.1643156765761662981
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Jan 2022 16:26:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VWdXuvph;
 spf=pass (domain: gmail.com, ip: 209.85.208.42,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id u24so20269878eds.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 25 Jan 2022 16:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JRC5y5X72zEcpaPPi3qZcGeqyZgy0cFYWrUZALwstnU=;
        b=VWdXuvphVZJS4fATmAV8qdeCZHUzSXsA6tfZ1i0K41/DFzO32SElvb20BJefyPARCa
         6zgA68O9IkaAtxOyO6ud1o3j2Bn9uyFLXNPZJaKQyRm6IZh2ys/wRPM8nOe4h28qSNnB
         aY7aXN7kRzHflYy0FmGmJWgWB8pivSR5wVtShGISSuBzoRNyCOqNi84k1JZizP/w0oit
         rM4UOQ6a75KUReQVwjtE2GFEEdzHR1dPB+QeSc/wEkDlrTRjUDuak3wgulMwvMVysB8x
         FLUZ9YBAU9760kUhc1QSXe8v05Gg5NJcl6dNRK7egAhyMZYRoZhTcn9luk6QtbRzeQPA
         fldQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JRC5y5X72zEcpaPPi3qZcGeqyZgy0cFYWrUZALwstnU=;
        b=mb+IcNi+IHEp27rtaKNtaVqs0kij3lsdiPxJxlrVfezaq5kJ8ScPsKCaJtQhztNRyR
         Q/MtaV6inYMswn4Qyuj62W2Y+9bEsXpBfWSLxwNi2lqROoxCnL+vNGykDNaG6eMM05Sn
         47vpV5RGoIKCOkvO9/zoAq9BKuDdsUzokO03+zShwGk/5CrFWkJricINuLPz/AQsyipR
         gfocIzhUkqzfaPLV1I5xgeOjbxUzXgpkqnN5nhym6OpGa0Fnd4n3m6rnmFX+OJVSN61i
         xNjrcj9poyGXLVzedEIvv2LOm78YWlwzVnCWF+imoz29lmCo7Nii7vHLL4ZtaPyOB4sY
         J/GA==
X-Gm-Message-State: AOAM5307ERq0RRAWYz56GhyjtSEHWEK6U9eFLQL2UpVUAiOhImY1YUCG
	HlhmXp2lOR8ZN9MGNU0XVqU//38gueA=
X-Google-Smtp-Source: 
 ABdhPJwnbVe1EjV86XVAPvidFMCZQ6GT1RL7o4NYZl2vjBienICA5uXhnZ7h170WxXEht9FX53nnkg==
X-Received: by 2002:aa7:cad7:: with SMTP id
 l23mr22799102edt.142.1643156764158;
        Tue, 25 Jan 2022 16:26:04 -0800 (PST)
Received: from localhost.localdomain
 ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id
 ch27sm4827330edb.74.2022.01.25.16.26.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 16:26:03 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [yocto-autobuilder2][PATCH] schedulers.py: run AUH twice a month
Date: Wed, 26 Jan 2022 01:25:53 +0100
Message-Id: <20220126002553.270225-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 00:26:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55971

Once a week has proven a bit too hectic: it's better to have
more time to test, submit, review and integrate the updates
before AUH runs again.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 schedulers.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/schedulers.py b/schedulers.py
index a5d740e..32e3efe 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -417,9 +417,9 @@ schedulers.append(sched.Nightly(name='nightly-buildperf-ubuntu1604', branch='mas
 schedulers.append(sched.Nightly(name='nightly-buildperf-centos7', branch='master', properties=parent_default_props('buildperf-centos7'),
                   builderNames=['buildperf-centos7'], hour=[3,9,15,21], minute=0))
 
-# Run the AUH every Sunday
+# Run the AUH twice a month on 1st and 15th
 schedulers.append(sched.Nightly(name='nightly-auh', branch='master', properties=parent_default_props('auh'),
-                  builderNames=['auh'], dayOfWeek=6, hour=5, minute=0))
+                  builderNames=['auh'], dayOfMonth=[1, 15], hour=5, minute=0))
 
 # If any of our sphinx docs branches change, trigger a build
 schedulers.append(sched.AnyBranchScheduler(name="yocto-docs-changed",
-- 
2.34.1


