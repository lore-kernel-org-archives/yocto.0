Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D04BC6FA82
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 22:33:57 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web10.3502.1663713227575613660
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 15:33:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=CYJ8BjH1;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.170,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f170.google.com with SMTP id q11so2793504qkc.12
        for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 15:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=x7h3fUgzN3wDckAlFc37Fq91yPtJzPGPVSkovW51rUo=;
        b=CYJ8BjH1nZwUtECVd1kj6xQo2W/ej9Kq+4dXBquUFrV7xAb4UqXBF5xWy94JsMLlC+
         r5xfddvmgoJolULm85jJeaxi6Hm2xRpkL0OnXxzEvw1svxw0OISql9ft+KQV3i1imfBl
         mRj2mn8fIehdU4Qt0Fgfkl2VE2dDI76iep2tMwOcfqKeWlvxppKvbqyg3sQjY3OYCRrs
         UJLKLZOH11UUeyuVrfqF2MMLPDCgK7qIy/5kS7aLg4mqedlur/g9VU42LG9KkPKFNRAg
         s3xf0YwkH8cCgSIuw6J6IlH4cMFPTyYz4E1YxodEyXn7WxyIb2k5ma1S1wRLzc4M+6c8
         SiyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=x7h3fUgzN3wDckAlFc37Fq91yPtJzPGPVSkovW51rUo=;
        b=mmrT9Og4Qz8g6ydIC5QpDg6PkACWkAdYV0stDBHLmD8++Tdz2MBP29igjjk9KRGfMG
         Z0l/jDuBsTx4bbCNih/m5I75oT2I8QZms7UfaBuIr4iUzDMaeNO5RsRit6zWNY4vXbAe
         vh7QP522EhjOo9DHXfQTQwsXKQx2wY4YxRtS8QtvHVPbmyeT5q2h6DDjIfX5GFfJjwwc
         xYOCol4P3MenRxzF1n1R3GSPDWwpswdWQT0b4++hEx0GFF3grtiB09Psj90NJQhjSkM+
         2LyU11ECVNXl8YC9nwyb8sLb3YpAFgoZ1Cpx7G/mNsEssZwJp2cJ2yhYexYXf5DUUWvy
         Z9Nw==
X-Gm-Message-State: ACrzQf02GUze3Bbm3J6b3WgToW7gMxHV6wlZosTyGeo6zP65K06cHFz6
	pkjPCyEfaXfgkkzrZyfjYKooFlH1NNWQuw==
X-Google-Smtp-Source: 
 AMsMyM6Tnyh/xuiwnGLFdkNCN1BPH252ZHvUNYbz1nzMqzEtMq1J/QiMpBmtxfb/tMhf535PBqzDeA==
X-Received: by 2002:a05:620a:1929:b0:6ce:f8b0:6de0 with SMTP id
 bj41-20020a05620a192900b006cef8b06de0mr10375496qkb.489.1663713226568;
        Tue, 20 Sep 2022 15:33:46 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a608:5600::59])
        by smtp.gmail.com with ESMTPSA id
 f26-20020a05620a069a00b006cebda00630sm649620qkh.60.2022.09.20.15.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 15:33:46 -0700 (PDT)
Date: Tue, 20 Sep 2022 18:33:44 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Peter Hoyes <peter.hoyes@arm.com>
Cc: yocto@lists.yoctoproject.org, diego.sueiro@arm.com
Subject: Re: [meta-zephyr][PATCH 0/4] Add script for version upgrades
Message-ID: <Yyo/yOgwvrsoxGPf@kudzu.us>
References: <20220916090318.1293922-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220916090318.1293922-1-peter.hoyes@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 22:33:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58107

On Fri, Sep 16, 2022 at 10:03:14AM +0100, Peter Hoyes wrote:
> From: Peter Hoyes <Peter.Hoyes@arm.com>
> 
> This patch chain has been developed on top of the 2.7.3 upgrade patch.
> 
> Add a script, generate-version.py, which can be used to automatically 
> generate configuration for new Zephyr versions. Regenerate
> configuration for 2.7.3 and 3.1.0 using this script.
> 
> This script includes a constant version-specific declaration of
> ZEPHYR_MODULES, so the build-time logic to extract ZEPHYR_MODULES is no
> longer required. Remove the do_get_zmods task and the West recipe.
> 
> Peter Hoyes (4):
>   zephyr-core/scripts: Introduce script to generate new versions
>   zephyr-core/zephyr-kernel: Migrate to script-driven version files
>   zephyr-core/classes: Remove West-based logic from zephyr.bbclass
>   zephyr-core/zephyr-kernel: Update dtc.patch Upstream-Status

Series passes CI (on top of the v2.7.3 patch).  See
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/645914527

Tested-by: Jon Mason <jon.mason@arm.com>

> 
>  README.txt                                    |  17 ++
>  meta-zephyr-core/classes/zephyr.bbclass       |  32 +--
>  .../recipes-devtools/west/west_0.12.99.bb     |  22 --
>  ...y-generation-issue-in-cross-compila.patch} |   0
>  .../zephyr-kernel/files/dtc.patch             |   2 +-
>  .../zephyr-kernel/zephyr-kernel-src-2.7.3.inc | 202 +++++++++++++---
>  .../zephyr-kernel/zephyr-kernel-src-3.1.0.inc | 220 +++++++++++++++---
>  .../zephyr-kernel/zephyr-kernel-src.inc       |  43 ----
>  meta-zephyr-core/scripts/generate-version.py  |  73 ++++++
>  .../scripts/zephyr-kernel-src.inc.jinja       |  35 +++
>  10 files changed, 474 insertions(+), 172 deletions(-)
>  delete mode 100644 meta-zephyr-core/recipes-devtools/west/west_0.12.99.bb
>  rename meta-zephyr-core/recipes-kernel/zephyr-kernel/files/{0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch => 0001-2.7-x86-fix-efi-binary-generation-issue-in-cross-compila.patch} (100%)
>  create mode 100755 meta-zephyr-core/scripts/generate-version.py
>  create mode 100644 meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja
> 
> -- 
> 2.25.1
> 
> 

