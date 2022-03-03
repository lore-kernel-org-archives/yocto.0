Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FDC0C433F5
	for <webhook@archiver.kernel.org>; Thu,  3 Mar 2022 08:27:51 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web11.8638.1646296069926510936
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 00:27:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cvVBee5H;
 spf=pass (domain: gmail.com, ip: 209.85.208.48,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id m21so80198edc.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 00:27:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uv4aCN920iy93P/zabOhxk46AoJYqoI1QvwWUoSObZk=;
        b=cvVBee5HCYL/EM2Q8H7yX7HvtIR76+mLi91D7wlbxX+ffHHrW8a2vO1sHBELwneHVh
         sm65i3s03X3Rsim2OoDA39KCC4K3KdWSkXAdA/ChSt0fBuEk6y4QKgyzMXEmAx14ihoo
         zbTWp6lr7iI+BUF53MH4ovVAAg3Jk0XFtEr33SIPB+RubfL7HYpSsAPBgywiUP4H7eEy
         GFMTMtJsjHt+GojQMtyj5qglxWCQMIjRJU7bTDciyONNmXAewDu/bO8WZkq8sudWOHjT
         IfjiPIZXVAbkTOm3y0u4k7RlQ4fWJ0Wlin8WLH2VgomE+4KQ8kR8nrqMu7H08QtyysRi
         EZXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uv4aCN920iy93P/zabOhxk46AoJYqoI1QvwWUoSObZk=;
        b=n1JgfSE1v7IAzo8c1BxjJNCS32svaH7Km0DdVDx4hLZBMFr2Bwc1QlbPajCLqHPYHo
         hIQKEA2+/JtOt6InWS4sjbPs3Y9Mo6jlJmB7SItC/e5JFgJlw7oAdWe7GP3NBiVTPdaF
         1wJSE6iWIr1ZwYutW9qBczeZP8r5eau9xEjpWRRHYEtocVqotn0nh/B0aht5Lu8yukzg
         tRJFq5o9Gr3KwvTV3DCcvsOEcpItXen3whCeabff3mt7N2kyplu6l1cb8XUFHRSx8Nlf
         5Gmz4l+1iMkI8VRV+MXv3W3OmdA2kFFvv0n0ErCNBy+F+xfxDcQzO5BETJtGfAmtE/Yk
         vsrw==
X-Gm-Message-State: AOAM5334UIB+fGYtACx7F2h5tqNi1O7qhsL9cW2sExro6MFeaDXQrSeX
	3QuRacA8U/13rm8d+PQuYA9L5VSHVcU=
X-Google-Smtp-Source: 
 ABdhPJyMacZY3D5cEFjkBrhsKyoSRZw1TpZ3q3u63Js9DdjRh/xxKfBcHkLOdgBW1Y81jlAR7E0YkA==
X-Received: by 2002:a05:6402:90a:b0:408:4f50:c566 with SMTP id
 g10-20020a056402090a00b004084f50c566mr33024910edz.41.1646296068411;
        Thu, 03 Mar 2022 00:27:48 -0800 (PST)
Received: from localhost.localdomain
 ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id
 z21-20020a1709063a1500b006da6436819dsm447540eje.173.2022.03.03.00.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 00:27:48 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [yocto-autobuilder2][PATCH] config.py: run AUH only on alma8
Date: Thu,  3 Mar 2022 09:27:36 +0100
Message-Id: <20220303082736.357836-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Mar 2022 08:27:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56353

According to halstead, only those workers are able to send mail
so that it reaches the mailing lists.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.py b/config.py
index a25dfa0..7e15105 100644
--- a/config.py
+++ b/config.py
@@ -143,8 +143,8 @@ workers_bringup = []
 workers_wine = ["ubuntu1804-ty-3"]
 workers_buildperf = ["perf-ubuntu1604", "perf-centos7"]
 workers_arm = ["ubuntu1804-arm-1", "ubuntu2004-arm-1"]
-# workers which don't need buildtools for AUH
-workers_auh = ["ubuntu1804-ty-3", "centos8-ty-1", "centos8-ty-2", "debian10-ty-1"]
+# workers which don't need buildtools for AUH and are able to send email to mailing lists
+workers_auh = ["alma8-ty-1", "alma8-ty-2"]
 
 all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 
-- 
2.35.1


