Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ABE7C433EF
	for <webhook@archiver.kernel.org>; Sat,  4 Jun 2022 19:04:42 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web09.13189.1654369475529004421
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 12:04:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GmP30e+I;
 spf=pass (domain: gmail.com, ip: 209.85.210.174,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id x4so1034911pfj.10
        for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 12:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6AeLROnsbTHBsQBnksNoZmASDLMo/kGBdX9w66bS8sg=;
        b=GmP30e+IMVpwALhWymhzbBdNkR1nKiOvj3FgXl+hUsUCEvLAfpHM5CQMq0mWbUPoha
         IXPTlAoQAOcTves1RRyNncMTqsuedjvVKRbCQBHS+gfw7bNPi0umRf8qLJgpDkyBx2DR
         achGZrr/hj+eYsRxSy+ieUtQEtnQONGcN6ktHMQioLsTNKB1oGEvDabs3+YkPD/b/h+j
         Y4+bJTs7C53Ymkmegte5lo/1OLcpVB6wuxYhtu25oaGbAiXmW7CG57cDpKu0WsU9+0E2
         F3cTjKm5yciuYqyPiWcSVSXBuSdkmW0vGKdIpNDCm4LTNrMaUnFbx2ei13/3Lpx2Mnrm
         VQ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6AeLROnsbTHBsQBnksNoZmASDLMo/kGBdX9w66bS8sg=;
        b=j7Uhk9gZDXlj1odeT76msz0UcuMU4nqLX7cRh6/iJGPbOOK5zyWVBafKK5pzLNOLgW
         OQ1I401wkqLpHE+H0LCG1hCIZPYH/cFEtKVY8R3LfRMSm+7QlFitQ9mYETA2UBZSgTGE
         z0Y+WA0oOArkrdkkIXa9o1mhXnVDTd03SoYs57BKIU9h39I217W70syUl+CW7jly1Dgu
         3+HKLrX/SkuFF72Y/Lg49Tmj4M7xECn1PiEvief3REmSsf/mmpPltouBvEUsna4hmf5p
         gszQl1XeQs0C4aR3vHb6eMYTs8CcZQGHf51US7PbYvhRV2OzCsgkN3KkrXrzH1K00HMJ
         gmxQ==
X-Gm-Message-State: AOAM532+xNmbO9zJ/XsayYsA5XHUyU0Q+6+vYZ07jLY68dS+FQeIHPvq
	QdKTb/HtpK9STHegwWGtQETQb7k7/XM=
X-Google-Smtp-Source: 
 ABdhPJz2uCGaffzcCugfyXIUhiHZLmzYnobk3U3BUydf3IheXhRqUsX4BFw//PakqDwoCqC0m3GBjA==
X-Received: by 2002:a05:6a00:23c4:b0:51c:5e8:e8a9 with SMTP id
 g4-20020a056a0023c400b0051c05e8e8a9mr602863pfc.62.1654369474530;
        Sat, 04 Jun 2022 12:04:34 -0700 (PDT)
Received: from keaua.caveonetworks.com (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 u1-20020a1709026e0100b0015e8d4eb231sm7633298plk.123.2022.06.04.12.04.31
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jun 2022 12:04:32 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/5] arpwatch: riscv not supported
Date: Sat,  4 Jun 2022 12:02:26 -0700
Message-Id: <20220604190230.3700475-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 Jun 2022 19:04:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57259

exclude this arch for compat list

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/arpwatch/arpwatch_3.1.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-scanners/arpwatch/arpwatch_3.1.bb b/recipes-scanners/arpwatch/arpwatch_3.1.bb
index c8d31cf..3d8c5ae 100644
--- a/recipes-scanners/arpwatch/arpwatch_3.1.bb
+++ b/recipes-scanners/arpwatch/arpwatch_3.1.bb
@@ -80,4 +80,7 @@ CONFFILE_FILES = "${sysconfdir}/${PN}.conf"
 FILES:${PN} = "${bindir} ${sbindir} ${prefix}/etc/rc.d \
                ${sysconfdir} /var/lib/arpwatch"
 
+COMPATIBLE_HOST:riscv32 = "null"
+COMPATIBLE_HOST:riscv64 = "null"
+
 RDEPENDS:${PN} = "libpcap"
-- 
2.25.1


