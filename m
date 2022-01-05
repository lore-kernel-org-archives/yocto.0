Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3B6BC433FE
	for <webhook@archiver.kernel.org>; Wed,  5 Jan 2022 14:09:43 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.740.1641391782435148599
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 06:09:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=W/I5dsI2;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id m20so1449180wmi.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 06:09:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=r1Y4Dyizfx6ufs03H4stfNHhySrJ4lIMBvISWQ5hVpc=;
        b=W/I5dsI2GbbdySPMKk18j8y9kK7ZT3Djn4sXhpNOcUQP46VhTCREO6h8alfnIoU86B
         bnopUB7UJugYJ3+3t3EHDCTwOHHeaJ2qKKxsbW1QQ3AaozX2/WDpE/LZwa3+yKID/sxM
         MmSVVLhr2JgQR/ktqh+W8fMi+5BDCzxced4es=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=r1Y4Dyizfx6ufs03H4stfNHhySrJ4lIMBvISWQ5hVpc=;
        b=dalwGgKz8ZkjmrLnILQyRY06cu0lnBKEb1gP+GMSidjs3LlCX89H4k255EMv43hZOG
         khQ/lPbaGlRIuuz5ow1SRv7iaPvWNr/RIho8fMbjcl4jSUnBT9DaMD/vC3mSIZuK7KX/
         A7CFJgGeIUJmgE8aUDABiW5FwQ/1evxqE0yAn3R2fA4Ctdzuztt7sY8tFtCIa+2INCNV
         vgtzTq1A8jkLUI9Dq9/QVvwBoSaMSjFPDW0YIeHrmY3FMW1qESf+8qB7moS9N/Wa6PzM
         1N9YFS/u18f+PbCHEXdumLEZGkzKSE0MMlN6F8rWEMFBga0pTvmIuMdJMyvSD3sZMzLb
         fDWw==
X-Gm-Message-State: AOAM530iCDnYqE5lE5D2Ns1chWDhF+yoGcPV6e2DQKiD9nJoQfKl4UzW
	81Niq2hsJGF+jFElwJ7QelI5Nw==
X-Google-Smtp-Source: 
 ABdhPJxaD5YVekDbdX6/2gZNF+iDkzzAOdNLM4CbTKZlsNwwXb7BLhcALKq70HGQjqjjasVRU+uxWQ==
X-Received: by 2002:a05:600c:231a:: with SMTP id
 26mr3094087wmo.12.1641391780683;
        Wed, 05 Jan 2022 06:09:40 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:4930:6fc6:9dcd:7b1c?
 ([2001:8b0:aba:5f3c:4930:6fc6:9dcd:7b1c])
        by smtp.gmail.com with ESMTPSA id
 u14sm40374252wrf.39.2022.01.05.06.09.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jan 2022 06:09:40 -0800 (PST)
Message-ID: 
 <442a03ab11c325378be7471840b03463998124e5.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder2] Run oe-selftest-arm jobs on
 the Arm workers only
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ross Burton <ross@burtonini.com>, yocto@lists.yoctoproject.org
Date: Wed, 05 Jan 2022 14:09:39 +0000
In-Reply-To: <20220105122306.1041198-1-ross.burton@arm.com>
References: <20220105122306.1041198-1-ross.burton@arm.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jan 2022 14:09:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55742

On Wed, 2022-01-05 at 12:23 +0000, Ross Burton wrote:
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>  config.py | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/config.py b/config.py
> index ea042c6..5e3e7a5 100644
> --- a/config.py
> +++ b/config.py
> @@ -172,6 +172,7 @@ builder_to_workers = {
>      "oe-selftest-fedora": workers_fedora,
>      "oe-selftest-opensuse": workers_opensuse,
>      "oe-selftest-centos": workers_centos,
> +    "oe-selftest-arm": workers_arm,
>      "reproducible-ubuntu": workers_ubuntu,
>      "reproducible-debian": workers_debian,
>      "reproducible-fedora": workers_fedora,

I think you also need to add oe-selftest-arm to builders_others at the same time
or that won't do anything.

Cheers,

Richard


