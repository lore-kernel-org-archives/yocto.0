Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D18EEC531DC
	for <webhook@archiver.kernel.org>; Fri, 23 Aug 2024 09:26:41 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.12415.1724405194288785224
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Aug 2024 02:26:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bN2lnBhj;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3717ff2358eso891548f8f.1
        for <yocto@lists.yoctoproject.org>; Fri, 23 Aug 2024 02:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1724405192; x=1725009992; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=GkTWhPOypxJTol7QOzyfrr1+9Xd/yBCe08BBh98lwnM=;
        b=bN2lnBhjr5kiRDal8OkrqtHmQx2rGaGrPsAY1g8wshzux+Y5sJrSrKNOU3JEIPn/H5
         6BWXWn0fIAS/56bOzwcDGdmj1q7K2JoFAZwLUU2czHzpyZs4gXiLetQcSe7DpsQVxbpw
         9Xco5Uaan48WzbzpjmMDs6YI0EtYKTE+dY+SE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724405192; x=1725009992;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GkTWhPOypxJTol7QOzyfrr1+9Xd/yBCe08BBh98lwnM=;
        b=v5fKlk5Qv8y9E+cUEFGmK0ohWGhH604q+zwObfRLDBNHGmMPGCn/8XlFXpI7N64LAv
         AJqvnUADhO6KOgOVGV7qaTqj6LSr5ga/Tj49pF+9gU4og7rRilDGuX/1c/XNniVYBfAX
         r75FKHPlucm8KFbcGEfSlnmKiQ4t+75NGzQiyPjtn5vr6Qb0BFLWU5JuJz0BskbhmaVt
         sJ+ByUHmMb6+2bf098hTLtB6/K0qSaiP6pMuSqGsW7a7S7UrbvLvzqY26JOr/NmPDehU
         34mGY5Yx5VNxNed/3yPwxUXqYB1LQzsHvqbZCY7dTU0EQHHj4UNKGreIMV2PCtuk6vSe
         zCew==
X-Gm-Message-State: AOJu0Yz8o0wS85ASc54G7i4Kq0mNYlwISv6NK1pIEqDQwtswIJrwSQ02
	JXTg/9yKAmaIRAYfkviUC2fCoE+uD8+B0KSBWRWrduVLhElccq5nGPQhvTFFh7vh5iB++54hEWG
	X
X-Google-Smtp-Source: AGHT+IHtvVQCjrfSTniPbdGHGX5IfG9F4D6Dh/OEyM/Ihpj0ZpDhEcEESU3ZRi/pFhm+HU8iTG33aA==
X-Received: by 2002:a05:6000:1374:b0:366:eade:bfbb with SMTP id ffacd0b85a97d-373118c7bf7mr952643f8f.46.1724405191998;
        Fri, 23 Aug 2024 02:26:31 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:f4f5:df28:3cf9:5842])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ac518038asm53801715e9.45.2024.08.23.02.26.31
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 02:26:31 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH] schedulers: Drop nanbield
Date: Fri, 23 Aug 2024 10:26:30 +0100
Message-ID: <20240823092630.797925-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Aug 2024 09:26:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63735

The nanbield release is out of maintenance now, stop running metrics for it.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 schedulers.py | 1 -
 1 file changed, 1 deletion(-)

diff --git a/schedulers.py b/schedulers.py
index fba37a3c..7bbfe0a1 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -510,7 +510,6 @@ schedulers.append(sched.Nightly(name='nightly-reproducible-meta-oe', branch='mas
 # Run metrics at 3-7am each day
 schedulers.append(sched.Nightly(name='nightly-metrics-dunfell', branch='dunfell', properties=parent_default_props('metrics', 'dunfell'), builderNames=['metrics'], hour=6, minute=0, codebases = {'' : {'branch' : 'dunfell'}}))
 schedulers.append(sched.Nightly(name='nightly-metrics-kirkstone', branch='kirkstone', properties=parent_default_props('metrics', 'kirkstone'), builderNames=['metrics'], hour=6, minute=15, codebases = {'' : {'branch' : 'kirkstone'}}))
-schedulers.append(sched.Nightly(name='nightly-metrics-nanbield', branch='nanbield', properties=parent_default_props('metrics', 'nanbield'), builderNames=['metrics'], hour=6, minute=45, codebases = {'' : {'branch' : 'nanbield'}}))
 schedulers.append(sched.Nightly(name='nightly-metrics-scarthgap', branch='scarthgap', properties=parent_default_props('metrics', 'scarthgap'), builderNames=['metrics'], hour=6, minute=30, codebases = {'' : {'branch' : 'scarthgap'}}))
 schedulers.append(sched.Nightly(name='nightly-metrics', branch='master', properties=parent_default_props('metrics'), builderNames=['metrics'], hour=7, minute=0))
 

