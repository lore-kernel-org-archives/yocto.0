Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83BF8C19F2A
	for <webhook@archiver.kernel.org>; Mon,  1 Aug 2022 17:31:05 +0000 (UTC)
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web09.235.1659375064895615094
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Aug 2022 10:31:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Oww0mFTa;
 spf=pass (domain: gmail.com, ip: 209.85.210.175,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id 130so3421685pfv.13
        for <yocto@lists.yoctoproject.org>;
 Mon, 01 Aug 2022 10:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=N8UCV/BhqqbWTeAgQeJtpRUtItbDpUEy/mVT+dhNrhA=;
        b=Oww0mFTa53/moKgrtvhR09p9Qv0AnEwBVwEkLgLVOVa2zYL1LmjscJ2KZAW2XMvQmC
         KF6AJ1IoYKSuVgEi+uSmbGRbz/NaWJ7+l9UI56XzKca/ahB/1rRpJeHn+IVrJz3SIbIF
         AW9DQpTAJzGZvgKwFw0LNkIvlTW608wNNU2+mRJuv8nqqsVsyQ3eH4SPRcJeo/tG/szA
         tKLtnozNX1ESn78Gs9EDtdowzOkKvOifjB4DGFJ4FlChGOHp0VOyLXxS5DUaIaRj317D
         UIklgyc2W3byKkfk4JJBuYDHODpvuXmKlxc6C1Zg3n8UdsNUYH4PtSj4MkF5o/yKXgKy
         OswQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N8UCV/BhqqbWTeAgQeJtpRUtItbDpUEy/mVT+dhNrhA=;
        b=KlKQf1NoZsPJByrs9CCiLUtiRO6Y/UATOdR5hRU9cf1bJ55n5XptUnUCLG27P/6IxE
         tycs2CAS5F7+BREFPHv58dZ51jYmtUigRq+EZUHnamfT5pg2FlOW10GFiDE7/sFygwAO
         klxmcLZE1PQXB6OhlZ4kUE/hApmn0i5GDQLsAfUn3IQxtU1LwRPP3/UVZ4zUkmvsNRuV
         m3+CCgDVknBpnjxLRcpA0BBxxiJh30DK5RurSZtyHzQDY76HfRzff/1+2aPbW3BiofXC
         +6SOhw7cAdsXgHQX1KKybNfWMagd6x4Aw29kY9wdOVyuKHc2oEJkPIvy4mAOaVm2VxAl
         Fg/Q==
X-Gm-Message-State: ACgBeo1gw0zcyWm0ycNj5OqMJop5kRs6XNSBDxjgFrTFok/tlWOsexY5
	jIQNE9WuCV/nkYaRNdSZEPmflAV2V+M=
X-Google-Smtp-Source: 
 AA6agR4jsoe95SWfMDCu7a9vQdHIj3JzrDHGNExgsT90dkAS+uPuHHiF6QjilpoeOsUnlajcj5fjeA==
X-Received: by 2002:a05:6a00:e1a:b0:52d:9c84:24c1 with SMTP id
 bq26-20020a056a000e1a00b0052d9c8424c1mr3503394pfb.13.1659375063632;
        Mon, 01 Aug 2022 10:31:03 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 h13-20020a170902680d00b0016f035dcd75sm49365plk.193.2022.08.01.10.31.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Aug 2022 10:31:02 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] packagegroup-core-security: remove krill
 for some archs
Date: Mon,  1 Aug 2022 10:28:59 -0700
Message-Id: <20220801172859.937841-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220801172859.937841-1-akuster808@gmail.com>
References: <20220801172859.937841-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Aug 2022 17:31:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57719

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 821ebf6..a12a4c2 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -44,7 +44,10 @@ RDEPENDS:packagegroup-security-utils = "\
 
 RDEPENDS:packagegroup-security-utils:append:x86 = "chipsec"
 RDEPENDS:packagegroup-security-utils:append:x86-64 = "chipsec"
-RDEPENDS:packagegroup-security-utils:remove:mipsarch = "firejail"
+RDEPENDS:packagegroup-security-utils:remove:mipsarch = "firejail krill"
+RDEPENDS:packagegroup-security-utils:remove:libc-musl = "krill"
+RDEPENDS:packagegroup-security-utils:remove:riscv64 = "krill"
+RDEPENDS:packagegroup-security-utils:remove:armv7ve = " krill"
 
 SUMMARY:packagegroup-security-scanners = "Security scanners"
 RDEPENDS:packagegroup-security-scanners = "\
-- 
2.25.1


