Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16826C2FC0F
	for <webhook@archiver.kernel.org>; Thu, 17 Aug 2023 04:41:57 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.179936.1692247309934349233
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Aug 2023 21:41:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=OBtQaffG;
 spf=pass (domain: linaro.org, ip: 209.85.208.173, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2b9b5ee9c5aso113288301fa.1
        for <yocto@lists.yoctoproject.org>; Wed, 16 Aug 2023 21:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692247308; x=1692852108;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=X8mxCP1qMwHkaumvtv5v7EUdVyVOZ95AIOqAag1nit8=;
        b=OBtQaffG2GLXSTeXSt+DtWyqUkoay5EQhNnpdGLwMBxMHnvvmCZFiLQQtPTet5nt0O
         HjgF97F0hOmym03Dm8T8b/ZbftYMyZAiVJW3+bhGusQ2U/gXuYPfdz42kwwLJOYtJKtq
         X2CjAJn460Smpm9AxtLfIAUnX3xzD7AaLzwdRl4/Bh/r8nzTWSRsAj9JfHn0nbcBoD0P
         lKGW/c6Ilu82nyMfvyhHmUxoYYZ0lA7khtlPnFK6/msnpCBC9jkN71wWCcSR58aZ0F2e
         GOW/L4eiIRSHhqZT606ouIImvXgC0n8k8+tM5tJQlFleuG9wPNVueziKTlriveiWXezt
         1DBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692247308; x=1692852108;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X8mxCP1qMwHkaumvtv5v7EUdVyVOZ95AIOqAag1nit8=;
        b=iIfu22zpq1CmODccAao9oE/+Foa1unA0OtBBlB1UNQ5eyDpOx7TWoVH3Wh5aYc7mbP
         +n9DHN9wWwHJRTkw6EY5bZlhW/MSH0yLLwPM8IQv18bltBiqAFhpjTVPtvp2OarjE9NT
         idlY0Jfzxyn5lv+TOysGN4yrsJJlU4hU65cdd4W/Twn2FmVEWOhBmcfhAFmtUHFrZIv4
         UKmRk4aaaaGIWgpo237Xsnlz1z4gK046lx4CdkN/GKa4JfTZXPOcHZjp1iV/RQbhciwM
         5JibbQXnkkr+FVkEzH5WxXsh4fJXWNxyZ2vB3yJhPimmE6ATy61Ww4VBUJSM1PtAYA0c
         szlQ==
X-Gm-Message-State: AOJu0Yx1K5IcchQWXCXzMn06orO7DEVxmFPgmehXBcgP4HAwhxjHleIW
	ubGFx7U/1V1DBvSzx27CAjFT+A==
X-Google-Smtp-Source: AGHT+IF0MyisrvRdmiVgNiXM9jFf+7Pb19Hmd/i0VPJob/lktdR2mCRQy6q70lAT59e0qPjWgRbz8Q==
X-Received: by 2002:a2e:2e0e:0:b0:2bb:943b:a115 with SMTP id u14-20020a2e2e0e000000b002bb943ba115mr3214089lju.43.1692247307792;
        Wed, 16 Aug 2023 21:41:47 -0700 (PDT)
Received: from nuoska (dc7g6tyjby-d304c4945t-3.rev.dnainternet.fi. [2001:14ba:16cb:a800:e107:c77f:6058:ee33])
        by smtp.gmail.com with ESMTPSA id r10-20020a2e94ca000000b002b697f98b93sm3804094ljh.84.2023.08.16.21.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Aug 2023 21:41:46 -0700 (PDT)
Date: Thu, 17 Aug 2023 07:41:44 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: nicolas.wirth@speedgoat.ch, yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to switch between package version ?
Message-ID: <ZN2lCDX6GKDse76V@nuoska>
References: <ZNyvYwadnDXBDsQm@nuoska>
 <19617.1692186953072162853@lists.yoctoproject.org>
 <ZNy7lBOvfDQheQ5j@nuoska>
 <CANNYZj8=WHe-oCJRqGB0Ux9qnE=ZH93=PR=Cw=OfZ0w6kArEiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANNYZj8=WHe-oCJRqGB0Ux9qnE=ZH93=PR=Cw=OfZ0w6kArEiQ@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Aug 2023 04:41:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60814

Hi,

On Wed, Aug 16, 2023 at 05:32:23PM +0200, Alexander Kanavin wrote:
> On Wed, 16 Aug 2023 at 14:05, Mikko Rapeli <mikko.rapeli@linaro.org> wrote:
> > There isn't much documentation. It's more about just doing it and resolving any issues
> > you find. For example BSP deliveries from vendors frequently only support older yocto branches.
> > These should not dictate the poky release for the full SW stack when for example only kernel
> > and bootloader are needed from their delivery. Thus using older BSP layer with the kernel
> > and other recipes with a newer poky is a matter of configuring the build system and resolving
> > any build failures from e.g. newer poky and gcc. The layer compatibility setting meant to warn
> > and prohibit from doing this, but this can be overruled in other layers by setting
> > e.g. LAYERSERIES_COMPAT_security-layer += "mickledore kirkstone" in layer.conf of your own
> > layers. If large parts of a layer (BSP) are not needed in your configuration and cause
> > build issues, then those can be hidden by setting BBMASK for those paths.
> 
> Mikko, please. Yes, you can work around all these restrictions with
> some determination, but they exist for good reasons. So can you avoid
> giving newcomers bad advice, and instead dig into the actual problem
> they have? Pretty please.

One of the major problems with yocto major updates is that it becomes a big bang,
everything must be updated at once. This can be split down and individual layers updated
one at a time while keeping poky on the old version. This requires working around
layer compatibility, which in many cases is quite artificial and just indiciates that layer
is not tested with the other poky versions but it might still just work.

I've done this so many times now that I don't see any reason to hide it,
also because many non-core layers are simply not maintaining other than master branch
exposing users to obsole and insecure SW if they stick to the branch name.

Cheers,

-Mikko

