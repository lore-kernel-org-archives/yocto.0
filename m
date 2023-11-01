Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E8AEC4167D
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 11:45:10 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.4881.1698839109417417433
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 04:45:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TAsFD/FP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-507a0907896so9535672e87.2
        for <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 04:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698839107; x=1699443907; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3elofdS4uhlmaTtr25zC+d9VixDUnJPVRYv4Mg6KOsw=;
        b=TAsFD/FPumqOTfjcBbpi7Olu1So7M2NuLEwVPO2mxMx4kIavd6K5jbqWJHPveM2B1U
         mYH/b1EOuhuA/+VpFKox/XGM4ApzxaayyDKp0gitXmQ13BXNUJE7jtektDsmtP3a7jD3
         9OtVdHo/NQuImurGn3ZCQeGhtQlLhlJQUewl4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698839107; x=1699443907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3elofdS4uhlmaTtr25zC+d9VixDUnJPVRYv4Mg6KOsw=;
        b=r4AC2mKtgDmg3zvfCtw23iyxYvEGS5aGoihixbKQ7z/UXqEkbVQmCQjCM33UfZ5WGe
         fz7g5VHOaReo5uJ1wE/TQulVxjdZH0GLs5OeOTGnn7cEMjm1sy16EZeYRddXCdXdZa0Y
         eHTkrptFzpuefh8HTzHz6IKhx2baO/ct0HcVGa4xR2H2V+eqBH1cSDsQ6jsjIFkwIetD
         cgRhBLa5uPyoY+dc10J/h0QpAXTSIos8rfZXDYr6CIVnF87sD+aLcdqkDXgXM02KEKLj
         RUSFEDaBzQXgRU3i6oZCH3IURBJQ7ucYNFWXhsmd8wKstlDTkFa5P7p5X6gjwfQxON9I
         yn2w==
X-Gm-Message-State: AOJu0YwU5QmitbGAV4N9SnvdoletuCleQtPmmhzXHlzT75XcFwEOEd0Z
	YN/H55XqjHvJEFV9se03YzBYGxhDYRfu4eM5Maw=
X-Google-Smtp-Source: AGHT+IFgdKKx2RJoraZD1FtyfqZvyR823nqLaEzGnslgCQ9dbwJJiBqrr3WhxS1H36E3i0TAUKr1uw==
X-Received: by 2002:a05:6512:489a:b0:502:9fce:b6d4 with SMTP id eq26-20020a056512489a00b005029fceb6d4mr10133940lfb.25.1698839107488;
        Wed, 01 Nov 2023 04:45:07 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:fc93:9493:ec09:7593])
        by smtp.gmail.com with ESMTPSA id h7-20020a05600c314700b004078d71be9csm1305206wmo.13.2023.11.01.04.45.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 04:45:06 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [auto-upgrade-helper] [PATCH 2/2] weeklyjob.sh: Drop
Date: Wed,  1 Nov 2023 11:45:05 +0000
Message-Id: <20231101114505.2306354-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231101114505.2306354-1-richard.purdie@linuxfoundation.org>
References: <20231101114505.2306354-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 11:45:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61554

We run AUH from the autobuilder and we don't need the cron script any more,
we'd point people at the scripts there instead.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 weeklyjob.sh | 30 ------------------------------
 1 file changed, 30 deletions(-)
 delete mode 100755 weeklyjob.sh

diff --git a/weeklyjob.sh b/weeklyjob.sh
deleted file mode 100755
index 94598a2..0000000
--- a/weeklyjob.sh
+++ /dev/null
@@ -1,30 +0,0 @@
-#!/bin/bash
-
-# Cronjob which can be run weekly to run the upgrade helper script.
-# Add the job in /etc/crontab like below.
-#
-# It will execute weekly at the same hour (8 AM).
-#
-# 00 8   * * 6   auh  /home/auh/bin/weeklyjob.sh
-
-# Re-assign these to match your setup!
-auh_dir=~/auto-upgrade-helper
-poky_dir=~/poky
-build_dir=~/build-tmp-auh-upgrades
-sstate_dir=~/sstate-cache
-
-pushd $poky_dir
-
-# Base the upgrades on poky master
-git fetch origin
-git checkout -B tmp-auh-upgrades origin/master
-
-source $poky_dir/oe-init-build-env $build_dir
-$auh_dir/upgrade-helper.py -e all
-
-# clean up to avoid the disk filling up
-rm -rf $build_dir/tmp/
-rm -rf $build_dir/workspace/sources/*
-find $sstate_dir -atime +10 -delete
-
-popd
-- 
2.39.2


