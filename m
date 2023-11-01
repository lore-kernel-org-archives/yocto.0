Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6AA4C4167B
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 00:06:25 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web11.11094.1698797176401930435
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 17:06:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=aALZQjpo;
 spf=pass (domain: smile.fr, ip: 209.85.167.49, mailfrom: yoann.congal@smile.fr)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-507c8316abcso8860912e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 17:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698797174; x=1699401974; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n8yHNWURFW2vLYa/LGiMIG3meKHALR9RZe3qqmmdx4U=;
        b=aALZQjpoO5mfwV+3z93LTHCSmwX+SaNFwn4egVrMLmew/lEPvc1IjKAHid8sVd1MSN
         gN2voseRiVjL0ELoQFrSQ/xLDKUWzdrzmWJPmJlhynzzv99KASd5PwUBLWvtz9Xvjmg+
         MqJD6YRArXgRS+5rUm2ZIOTa+WHg7EU3iXev/T6HpYh5eUkYkmg5qvGbpiof8YB1pPMM
         uzzBZQFYNkV0oih6Vd2NN3aYqMt/OeCBz815l/IvIon44U5FEVJ+bFxFF4x7qhCezfMd
         2NSRFDLFC6O5glCAWdz8iywX/ckO/bKzYqT7chPZPXvSOHrUq0U5srq0P2pNvEgDr5ZN
         2q/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698797174; x=1699401974;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n8yHNWURFW2vLYa/LGiMIG3meKHALR9RZe3qqmmdx4U=;
        b=NhUZ4caChhLjqm0hg/2KYZcWSxd8IG9/QhADWCjbggWiiNruyxKqLHwKNZWmrTKK1a
         rWqqhVA503hIejdjNe/berOkldGGy/ZDcVSILGfL+MiVVNrMmjnIYLrC6dWnmV4rwOz0
         GU75y49ucwBjDsv/mC+VCj7fejox5t38KL7NF6w2fuaArzTBvJ/DvKFMBtsHlUe3NybR
         nn09igSJVrcnWlULrJudcfT/9LmiluU8orDGAkV2GgiRoozl86EG0eo4QOcaKdZMho4u
         uaGHW4RKy993vnYUZ2w/d9d6w8wNggxPoTHSjj7fiXaAs3zgGc5PpK3rlBkiBWK+JIyC
         1V8g==
X-Gm-Message-State: AOJu0Yx8aqRRUTTisi6iyzK6Heu37wyKV/eaT2CYt8gqVmBOav5yRr8m
	v0vJNpxpSqhkVe/7EYXxvnUjOzGwc+psNqElLtM=
X-Google-Smtp-Source: AGHT+IFK2L10SgNVJ+NKY4T4CPSYodFjHTTvIgTSXKQTF7ry/94fyXqta+6Az1gowP2vBoZTdzBntQ==
X-Received: by 2002:a05:6512:969:b0:509:377a:26d9 with SMTP id v9-20020a056512096900b00509377a26d9mr1728113lft.8.1698797173742;
        Tue, 31 Oct 2023 17:06:13 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id m5-20020adfe945000000b0032f7cc56509sm2571620wrn.98.2023.10.31.17.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 17:06:13 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Alex Kanavin <alex.kanavin@gmail.com>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [auh][PATCH 4/6] upgrade-helper.py: Fix indentation
Date: Wed,  1 Nov 2023 01:05:32 +0100
Message-Id: <20231101000534.241551-5-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231101000534.241551-1-yoann.congal@smile.fr>
References: <20231101000534.241551-1-yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 00:06:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61542

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 upgrade-helper.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/upgrade-helper.py b/upgrade-helper.py
index bc485b8..4933a4a 100755
--- a/upgrade-helper.py
+++ b/upgrade-helper.py
@@ -677,7 +677,7 @@ class UniverseUpdater(Updater):
             pkg_to_upgrade = None
 
             if self.args.to_version:
-                 next_ver = self.args.to_version
+                next_ver = self.args.to_version
 
             if status == 'UPDATE' and not no_upgrade_reason:
                 # Always do the upgrade if recipes are specified
-- 
2.30.2


