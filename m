Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B44C5478C
	for <webhook@archiver.kernel.org>; Mon, 26 Feb 2024 15:30:50 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web11.23002.1708961446080070203
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Feb 2024 07:30:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KPokklx0;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-68f9c01a148so16924396d6.3
        for <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 07:30:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708961444; x=1709566244; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bSFikGiI6IzqN4Cx9e1+A8qIRSE2C10XgvZI5pX3Rnw=;
        b=KPokklx0KsBbk/DfcNarokUaOa/19Cr+JT67VJFlswmlLQzOeRBddgj6GiQwR1EtFa
         fxmRGSTQptKg4AXxMJy2uiOM4EclG0IFaQNSSuIg/JZAfbP4qXlYR3sEx5SuUmHmqSl5
         aSdRjD79hy8wxoQhSsR0XVps2xlAM+9jakd43y7sTyH9rrN3/B+/dZ6ZkdegzT90xxrl
         IGOE9O9O3kybyHfxwIB+ABEToP8kLEUJh38DMKQjpEpL160KT2k+rOd5aF9GBL/NaahD
         A22XDFRwBzNvGow4mWf2aLoQS8V0PwU57Q5JzR+4oBt5bSMNuzpx6RAwkb6+cyTSID7i
         x0KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708961444; x=1709566244;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bSFikGiI6IzqN4Cx9e1+A8qIRSE2C10XgvZI5pX3Rnw=;
        b=l5kKyMIIrBTGcWCKqxBNlmm4kFUBctmAE3Xevv/7A+FyWKta5X0gplMgTOM6GKnxoj
         PeZtmvS4M+3lOyaISvPxFI30IotzP2wlpJ6apLNLzR8j0KZWY8XAp2PZm5f1pszAAR9/
         i7fKUqVK8sc9KxX35HGk1rpTmFl0AQoPeHLm9TQTsO5FTM0Im0IgTp2gDsYzKYbsRenw
         DGbNYSUqzQL35tZfUqlsmhSbGpd1TKLpB59hGuQF8GO9KwwB7Z6CxegB1EZvC0NoQL7l
         gemBX1myN/PDkyhmqL+zNP5gIsWVEeQta7pi9NV5V6AZl05jU3U59E/2QG7vLwurZi7G
         XDDw==
X-Gm-Message-State: AOJu0Yym7sstOBLm53uXePFKiPukhllX0RxZVCrneqBHaOCDazhURvmC
	oXEIjGUlKDH2lIR03UjdslmuEGJa4Fu2w+WTR3D5ag9WkyLHyvR8P8gyjVSz
X-Google-Smtp-Source: AGHT+IGln1Rh+DJ69Yl2BhKGHab3b6iLufCEBCaHC5QoL6zWKO59BikUWSMDAWX5tmBi60b+uvLZsQ==
X-Received: by 2002:a05:6214:124e:b0:690:47f:c53b with SMTP id r14-20020a056214124e00b00690047fc53bmr4847438qvv.64.1708961444027;
        Mon, 26 Feb 2024 07:30:44 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id pd3-20020a056214490300b00690027b96f3sm1623828qvb.37.2024.02.26.07.30.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 07:30:43 -0800 (PST)
Date: Mon, 26 Feb 2024 10:30:41 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [meta-rockchip][PATCH v4 2/5] rockchip.wks: specify
 fstype
Message-ID: <20240226153041.GB32880@localhost>
References: <20240222170415.7061-1-twoerner@gmail.com>
 <17B63E2C73497FDA.14827@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <17B63E2C73497FDA.14827@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 15:30:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62609

On Thu 2024-02-22 @ 12:04:12 PM, Trevor Woerner via lists.yoctoproject.org wrote:
> If the wks file doesn't specify, the assumption is that each partition
> contains a vfat-formatted filesystem. Most of the partitions in the
> Rockchip layout don't have filesystems. Implicitly setting the fstype to
> vfat causes wic to format the partitions. It doesn't make sense to format
> the rawcopy partitions as vfat just to immediately overwrite them with
> binaries, and it wastes time formatting partitions that won't ever be used
> as filesystems.
> 
> Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
> changes in v4:
> - none
> 
> changes in v3:
> - tweak to accommodate offsets specified in sectors
> 
> changes in v2:
> - reword the commit message to add clarity
> - add Quentin's tag
> ---
>  wic/rockchip.wks | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Applied to meta-rockchip, master branch.

