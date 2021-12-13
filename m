Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 656E5C433FE
	for <webhook@archiver.kernel.org>; Mon, 13 Dec 2021 22:31:51 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web10.18302.1639434710205357468
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 14:31:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=itKvWAOh;
 spf=pass (domain: gmail.com, ip: 209.85.222.170,
 mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id p4so15305824qkm.7
        for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 14:31:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=x18cM6HAiot6AL0wJ24oy3nHr4Mmixh/tU25wc64+RI=;
        b=itKvWAOh4zdXkBnqM4ZRbqGG3mRRb62lE1hSsJ4rD3khBedDfly5ERtP2+vd59ZnhN
         dpitaWHhBEQiOLs4+wLm9Dd4XB0kxyVklzLYiRbbP0DHyKSNJGMRrisgRH7zIYWjKWcP
         67FZ1oo+KpMMVetPH4pC1H5ZBkKTw9iOsm/UtsbIuraalIqi1bMCCw7J9gi0Wvc36+tj
         CQHBT8WndqM+aluX0jBTQjdqjVosjQ/StqDnXpDPYtxNvZWdbJMBY3TBUSphkMULFMmf
         Z8bd76GIFdYIqjajo1SFL1vGVqr3p3bGrG0DeIC08mj7UpXP0Nq2O8oseKRWgDeOLYYc
         w7yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=x18cM6HAiot6AL0wJ24oy3nHr4Mmixh/tU25wc64+RI=;
        b=kYy9DaVU16CG9wTV5ZRlBhoiJLgDFVX61IJOLuud0I2N5ItPqMrtdWmSMLzTuFS43d
         PrW2qV7sIbiTsHyrONT0F5EDrF3GpxIIL4SK3TVf3BF0e5uQPEbkB9+mvf5IJPTGji/p
         TJ8l4KaOz7ol7MtauwQMbMabeuUmjSJl4MIMECo0qfjbRp9nHQQ24IqcVX4yX7Zoan3Z
         TVtpeBGJPRezqX39GSR7Rd8GXGNkjPp/IVbqG53USVj+bEwU9jDqAkp5mlisMRLAHKtN
         5qTWh8lgmZkTmDEeBoHcXJwlQ8/V4Pc2Q2YSCioXLGZglkx34TS0yTb1aF0TK852ew4g
         Ck7Q==
X-Gm-Message-State: AOAM531s7enbwglp8FK1zRiUkBYAtGPueK1DHlO9pLlJVcBQO3xOKR2x
	Pl5wpsa3pNZIxGvWuQusGsIQ8c0IeaQ=
X-Google-Smtp-Source: 
 ABdhPJw2mXJ4N8WpiRihwvRMzvBbrgaV/dxHCYzIPkLib6PWH9AZDq873CE7N9jnfimLCmYdTqAS2Q==
X-Received: by 2002:a05:620a:2148:: with SMTP id
 m8mr969069qkm.435.1639434708991;
        Mon, 13 Dec 2021 14:31:48 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 u10sm10640897qtx.3.2021.12.13.14.31.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 14:31:48 -0800 (PST)
Date: Mon, 13 Dec 2021 17:31:46 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v2] override syntax fixup
Message-ID: <20211213223146.GB36849@localhost>
References: <20211211135543.15070-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211211135543.15070-1-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Dec 2021 22:31:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55569

On Sat 2021-12-11 @ 08:55:43 AM, Trevor Woerner wrote:
> The _virtual notation is not an override. These syntax "fixes" need to be
> reverted.
> 
> In the case of the kernel override, when it was added, the rock-pi-e needed
> the latest kernel (linux-yocto-dev) but now the default linux-yocto kernel
> will suffice. So this mistake actually switched the rock-pi-e from
> linux-yocto-dev back to linux-yocto inadvertently but at a time when
> linux-yocto-dev was no longer required.
> 
> In the case of the bootloader overrides, u-boot was always the default, so
> these overrides were always redundant.
> 
> Therefore, in the end, simply removing these overrides is the best way
> forward (considering these aren't doing anything, and the builds are working
> fine regardless).
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/rk3288.inc            | 1 -
>  conf/machine/include/rk3328.inc            | 2 --
>  conf/machine/include/rk3399.inc            | 2 --
>  conf/machine/include/rockchip-defaults.inc | 1 -
>  conf/machine/rock-pi-e.conf                | 2 --
>  5 files changed, 8 deletions(-)

Applied to meta-rockchip, master.

