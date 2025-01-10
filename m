Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD2EE7719C
	for <webhook@archiver.kernel.org>; Fri, 10 Jan 2025 18:16:01 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web10.26356.1736532955970185107
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jan 2025 10:15:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Jyxf7LU8;
 spf=pass (domain: gmail.com, ip: 209.85.222.171, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7b6c3629816so133307785a.1
        for <yocto@lists.yoctoproject.org>; Fri, 10 Jan 2025 10:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736532955; x=1737137755; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g6QM0a0BZ/EE83c0TrLPpMoaUy4YyBtZbL+5xocaSVI=;
        b=Jyxf7LU8PKOc4nKUtChzcoJqMUwgLhPx2kLgsqexcL6Ichd6Q03tD+J8pG8fnHUkby
         WdedFpc9+qEC5jN/58MyghpTYD7wsH8Y/ahfigclx85XvIZBtm+YFtIfkig9NOSYzsUg
         V/eWqQU++VHj/0pvXpk0OquPL5gFtXEdwdjMrlK23w34FgcOdpdQgEOho/w8egV2pmXE
         V+FWbRiz9yCi8wA1HWIMOkQWtqBIGs1o0K173XIM60XH6xbFlKGOLhDplYs3NNKtU6/z
         vTPe6qF8TxQOxcf6nGRDW+Lt9LguWsfORn8Qzee/HWfxjkv1JuHLBElC4VlmyTpn1V58
         wMPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736532955; x=1737137755;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g6QM0a0BZ/EE83c0TrLPpMoaUy4YyBtZbL+5xocaSVI=;
        b=EwROWJt0vnzV/x2Dj3C6gt7HBGKv6oeDAYaP2fHaX73rxPUKBBktaKNzp+TvxqwlVu
         VF3kT7gIFRfe9uiSpSPPagkEUH1x0ZjFF7vsTSeunUPoTix9kzTypobYCqVLQrbgDl4o
         I8BOpIuUGiN3AMOg/Zu7vfOhzxjjLYqSRvQs4imqYz/YeFVNlx2GoyWfAExhV856iYEt
         kMuM7MFbnLK/sIOFconQpkY0ILJMJkEvr9AiJpnqLcgczDd+ktQ1jzKn222/NIXz0pgh
         w3cHbR5ZvVt+3UHy8+f6lF0fMk6vay4THb4qzpMA3nLAgG+86aQ9KVzeUnuqxppRSS/T
         QEng==
X-Gm-Message-State: AOJu0YxiOzgv1JBpsiRqzfzbkNn12dfXAqVvXK/siyMQQ8/bjXAngqTs
	RdcNeb0LcE8xJMHn3oXwaSEAmw9CEfZnFXcLvBy68GShJj4j9VRP
X-Gm-Gg: ASbGncussayiLndGTdwx504tFlKfFwwZFiSEq9MRPv/9Qv0BNPI3xVFE+H5OBkN7ez4
	E9aluJjV2kKVd1vVmcBtKj42TNgskrX+bwA7HKhjpR4FhZJAXiP6CdnlS00A3r9ZN6f942ZgYPo
	OCVTTfnJkPuFXIyuBgag77Fs3+wMTxSIk7Tmlv5/L7PoHgcIkKI7yjDMeW292DK1E3Rxg5nAvUa
	QCyx1ru0l2ejmVXsasjKVFE+ATsTuPRLlo/dZqx5UMjvL23LoiOco8B7q69IRdlqJ8MX7GkmAfK
	b8iE5PY2cvAek5lIXTiRqbC0bscz9rjNDv5JBvUxVMd2XoNrAniUnNx9uQ==
X-Google-Smtp-Source: AGHT+IFCzFE9IYTkfiRh0qhkmoVHSY7hXa/sa9PpZnSvRNSjCevKFMwyQ/4Qsd3mlL62ZbwitR4tFw==
X-Received: by 2002:a05:620a:2485:b0:7b8:61df:f5de with SMTP id af79cd13be357-7bcd9762c4bmr1808410185a.45.1736532954922;
        Fri, 10 Jan 2025 10:15:54 -0800 (PST)
Received: from bruce-XPS-8940.localdomain (pool-174-112-62-108.cpe.net.cable.rogers.com. [174.112.62.108])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6dfade887cbsm11747766d6.96.2025.01.10.10.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 10:15:54 -0800 (PST)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 2/2][poky] yocto-bsp: drop genericarm64 SRCREV
Date: Fri, 10 Jan 2025 13:15:53 -0500
Message-Id: <20250110181553.313996-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Jan 2025 18:16:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64532

From: Bruce Ashfield <bruce.ashfield@gmail.com>

The OEcore SRCREVs now contain the fixes this machine specific
SRCREV was added to incorporate.

Dropping it to ensure that all reference boards are at the same
source and configuration level.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend | 2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
index b47b3aa5a9..1ffd2194d9 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
@@ -7,5 +7,3 @@ KMACHINE:beaglebone-yocto ?= "beaglebone"
 KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 
-# Incorporate fixes post 6.12.3
-SRCREV_meta:genericarm64 = "9ee4baec963b10d213c060622fce6d2b34166f40"
-- 
2.39.2


