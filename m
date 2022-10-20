Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F3F5C433FE
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 22:06:33 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web11.3498.1666303583987114042
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 15:06:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lwMOTMsT;
 spf=pass (domain: gmail.com, ip: 209.85.160.180, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id f22so557836qto.3
        for <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 15:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ymAkGQzP2Ea+mFyAJA64xnd0GvNfeV8os9asC5tB88w=;
        b=lwMOTMsTw/JH3S1Driky+U5P6DMABl6H0fFk3xt3j2rFPn1oxG7VeUp6luF73Z4n9N
         /bBXIxv0s+WHiXpY/nfufG7ZrrLmG/feUDRS87I09fmo510Fh947xc9NdVw+CM34Ucqa
         wuA9KUUxlApEBN5unrIPBFXGU0efrA2fevMxmur09Q78Nsy37l07saMGhyt3x39qFIDs
         Ezg/X48B9vgA2hwZKYBywu66ghQIUPCZoMoSF/t3YQIEEahdOvldcY5EN4+V5XZTRMFQ
         0X6g7ZJT9ZGyF3g10NzwNPbWpTGCjYLxNXXcfSGnBwUG1NK6/Sy0CiUlyEQ1cSWSClKA
         La+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ymAkGQzP2Ea+mFyAJA64xnd0GvNfeV8os9asC5tB88w=;
        b=NFng17VymmP2SopTYf77r+CS+y1zxzIosCqisKN6m7SY3T9I7b5AZrd4WXHvXRkx9D
         QvNUXg4Irn69t/A9kZfh6T9jZJMjDY/EYFLWykqvu7htgjI8kvST4Wl+X7g0xPkARfZM
         mtZ/lX13ZMDtwzpAjD1Y5drDyszNGCXBGUpq/G5SRMklAcdzi7Kvv5hDvF0ZzVf3vWHD
         QL41aX3M0kEMqxKBQq3gQvcccsjEIEzHXRPKMoOpjcW6PFK5bhTmZoGJ01auTWFEGzeU
         hdPinAqZcXUDz+dmFwKbZ+hO4X2V3oAW4wNLWwcMk50P0faukk/HX4O5ZUg865S6hmdG
         wK2w==
X-Gm-Message-State: ACrzQf2PyuoK+wt+dQM6gyHfFTC2LZzkUNoYAzSYEKI8tOlIVqM88III
	wWw6z6DjphsHccH0QdP1whw=
X-Google-Smtp-Source: AMsMyM5+sPdXlPk18iMz7MwIvSn6cF25nsuucGEzztR6J+e+OJ+l5mG8z2bIO4uKDf2tkJJ/ZIlvzw==
X-Received: by 2002:a05:622a:608:b0:398:959b:b758 with SMTP id z8-20020a05622a060800b00398959bb758mr13295104qta.553.1666303583023;
        Thu, 20 Oct 2022 15:06:23 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id bq12-20020a05620a468c00b006ee957439f2sm8004824qkb.133.2022.10.20.15.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 15:06:22 -0700 (PDT)
Date: Thu, 20 Oct 2022 18:06:20 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <foss+yocto@0leil.net>
Cc: yocto@lists.yoctoproject.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [meta-rockchip][PATCH] add support for PX30 SoC
Message-ID: <20221020220620.GA29543@localhost>
References: <20221019084500.640620-1-foss+yocto@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20221019084500.640620-1-foss+yocto@0leil.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 22:06:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58386

On Wed 2022-10-19 @ 10:45:00 AM, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> Rockchip PX30 SoC is a quad-core ARM Cortex-A35 CPU fully implementing
> the ARMv8-A instruction set with ARM Neon Advanced SIMD and Cryptography
> Extensions.
> 
> This adds a base configuration file which can be included by PX30-based
> boards and the required changes in U-Boot and TF-A for proper support.
> 
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
> 
> Note: this was developed and tested on kirkstone branch only
> 
>  conf/machine/include/px30.inc                 | 21 +++++++++++++++++++
>  .../trusted-firmware-a_%.bbappend             |  5 +++++
>  recipes-bsp/u-boot/u-boot%.bbappend           |  2 ++
>  3 files changed, 28 insertions(+)
>  create mode 100644 conf/machine/include/px30.inc

Applied to meta-rockchip, both master and kirkstone branches.
Thanks!

