Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61738E776D1
	for <webhook@archiver.kernel.org>; Mon,  2 Oct 2023 23:00:00 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web10.96804.1696287594817956833
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 15:59:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Nb9bWU3g;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-65af7e20f39so1950376d6.2
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 15:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696287593; x=1696892393; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cI4Vm+UfA/+TIyMDMCGp5qdMTm8/bBpD6we6NnSYXfo=;
        b=Nb9bWU3g5shLmyWCHGAz5XQ/Hf0sEuBI4xjFMMJIysTAmdcW1ve9NZRmGgVutQeIdr
         19fUd+W20z550bBpFstjCuZI0xrBVOAS+x6rF/I3sa3eJ/BEVrYcFR1415kvyIYcSWG0
         HTDb1aBuMbCpoPiDoHeLUn71eB5eCzyvRJI0Y4MaHBqRszU9FveWYtcKe1utpn5Z9DH/
         kyt+Yh1KY7b8SUoqgSA5ygobDcjKAevFB5LeevC5PjytwI3CoAFDM5npPiWAD5Ye1fWo
         EtEEhrRLQEJq3upOghwiIWkGSd1weTfbLudgZRGZM1dVzxIJdV38hvaesBx6KrnVsl+C
         2PeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696287593; x=1696892393;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cI4Vm+UfA/+TIyMDMCGp5qdMTm8/bBpD6we6NnSYXfo=;
        b=pDcUO7af5fQ18IS+lBFPX+Pvv/d3BIOOnskeCzKyUNCnGsqiF8vQ16UI7UcygiI0EK
         vnBCvHggc//k8TKmYJfwAAT/+yAIf0xsvuXCjOkTp1T5dC6nWNBpAWT4i/NUBJpWwPgp
         4chf+7GFO7SyCUvPKK7tvpz2/+nZf1L24dVocuPV6h89HYKL+SAsU7iVXT2Vqk59p6Ql
         eDO9dY1eumRLgrrObFhrU/RproifAVnGTXuusvvLsLXMUCrN92Ocp7pEVxdXRMCguZgb
         uHiOb9EBDmItcbubT5F2mn5WeVZ7qlBTXHTgXw66M94OUlTpLxV+Y0lrm4/e58uJ6J6W
         ckXw==
X-Gm-Message-State: AOJu0Ywf3JaUq6X3Y+ttg3Ao3QxSzgUK8AePvT833vHU+tKAQGW67L3L
	aRlolo8ZM7QB6i9WitAyHYZgJZ7DTCvzzg==
X-Google-Smtp-Source: AGHT+IHIFED7IN8or9JrREI4acCnLsv+NKBLsPCI1YkFmhogU48Q74ptgKbdaEHi4EHsN/DeaPEAkw==
X-Received: by 2002:a0c:9c07:0:b0:655:dadf:3eae with SMTP id v7-20020a0c9c07000000b00655dadf3eaemr13026262qve.47.1696287593140;
        Mon, 02 Oct 2023 15:59:53 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id p6-20020a0ce186000000b00656373f9c30sm3994237qvl.75.2023.10.02.15.59.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 15:59:52 -0700 (PDT)
Date: Mon, 2 Oct 2023 18:59:50 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] nanopi-r2s: add
Message-ID: <20231002225950.GA11984@localhost>
References: <20231002141146.9037-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231002141146.9037-1-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 23:00:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61199

On Mon 2023-10-02 @ 10:11:46 AM, Trevor Woerner wrote:
> The NanoPi R2S is a mini router with edge computing and dual GbE ports by
> FriendlyElec. It is based on the Rockchip RK3328 - a quad A53 core, 64-bit SoC
> running at 1.2GHz with at least 1GB of DDR4 RAM. It has one USB 2.0 host and
> is powered via a USB type-C connector (5V/2A).
> 
> https://www.friendlyelec.com/index.php?route=product/product&product_id=282
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  README                                      |  1 +
>  conf/machine/nanopi-r2s.conf                | 11 +++++++++++
>  recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
>  3 files changed, 13 insertions(+)
>  create mode 100644 conf/machine/nanopi-r2s.conf

Applied to meta-rockchip, master branch.

