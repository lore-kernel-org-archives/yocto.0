Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75C6DC433EF
	for <webhook@archiver.kernel.org>; Thu,  9 Dec 2021 02:02:55 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web11.6062.1639015374825021030
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 18:02:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HkQJhW3L;
 spf=pass (domain: gmail.com, ip: 209.85.222.170,
 mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id w14so3791447qkf.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 18:02:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FI7+cA76OqsO5t88pr7Rng75ONUf8s7zBwp7Wyplk1Q=;
        b=HkQJhW3LBf/SloAIIUndDsFwz6kGKDGFp/RGNqH3R3VA94Tpavcyv9MU6lncXLsU05
         VPgsCxPKc0Ud7AEBef24F6C1C7ERXeeEjDH85gYLGH1dYFGQS1Y+S/birx5tXDOSQWbH
         uGRnKpuGFL2RRxHb5J3+UipvEBdad1Ev0YwVMwWeFnakYF7a5IQomwsrEEqTtlIDAKtk
         VhPQhvZzYEQKm6DUMY8UbfF5awIMLliNQ+o1Kn1W89MOKtMK8yPq56XFi3VBGxYKLAmi
         ua5brt1J08/jlWo1U35ectqfFRXcSTOP5bloHDMvxc8TlQenYOihNL0pbQjpAMPQ2ksJ
         fiMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FI7+cA76OqsO5t88pr7Rng75ONUf8s7zBwp7Wyplk1Q=;
        b=0bKvJyc9/uvIY+SskHnVuvgj8gjbWtrNRVYpSE96gj6sPtxYtM+9FCsoeo4en6q6pR
         +bZwrgOeKLqIWOwRIDGPUOFH6EwIEqROI5aGCuiMAP29GXLmGTCzpg5/sBAUsehC+dqg
         v6GnGr95vBQ7PBqppMXZ12AYwP7NjTX9MS4xmlkK21V/IbRwjVRGbm6qs3KWwEdSS1jj
         /xxQ8tzi14nk4/UNlhDAbPWfNsuSL6IzVxcVFlkyZlX9dPSzTwZgHuq9lL/thVuOmVx7
         XjNZSc7UPD7R1iQgn8D81nlXRSn+QdHHP4Lva2HFPt0yWHk9uKEGkncxeDCU35doCDPm
         nmzw==
X-Gm-Message-State: AOAM533buXq8E4s7aCADQegoYTRynjWPyrQshIKQMe1DG1g1j9ApiEWS
	gGeOG/mlyfVTX6L6KZIflnE=
X-Google-Smtp-Source: 
 ABdhPJx9L/EnTsHStKbFjCF94tDal1crWqraV++UfbKluRDC1SYE4Ys6uCH0wTRv1eDVUSej+qrDkw==
X-Received: by 2002:a05:620a:298a:: with SMTP id
 r10mr10817538qkp.447.1639015373965;
        Wed, 08 Dec 2021 18:02:53 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 j126sm2240096qke.103.2021.12.08.18.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Dec 2021 18:02:53 -0800 (PST)
Date: Wed, 8 Dec 2021 21:02:50 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] trusted-firmware-a: Drop
 0001-Fix-build-with-gcc-11.patch
Message-ID: <20211209020250.GA4676@localhost>
References: <20211208195404.2950186-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211208195404.2950186-1-raj.khem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Dec 2021 02:02:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55527

On Wed 2021-12-08 @ 11:54:04 AM, Khem Raj wrote:
> This has been included upstream see [1]
> 
> [1] https://review.trustedfirmware.org/plugins/gitiles/TF-A/trusted-firmware-a/+/f943b7c8e292e3aad2fcbdd0a37505f62b3b4c87%5E%21/#F0
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  .../files/0001-Fix-build-with-gcc-11.patch    | 34 -------------------
>  .../trusted-firmware-a_%.bbappend             |  1 -
>  2 files changed, 35 deletions(-)
>  delete mode 100644 recipes-bsp/trusted-firmware-a/files/0001-Fix-build-with-gcc-11.patch

Applied to meta-rockchip master. Thanks!

