Return-Path: <pintu.ping@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BDE1C433F5
	for <webhook@archiver.kernel.org>; Tue, 15 Feb 2022 15:05:54 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
 [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web09.10629.1644937552858427460
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Feb 2022 07:05:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=M0SqWnek;
 spf=pass (domain: gmail.com, ip: 209.85.219.181,
 mailfrom: pintu.ping@gmail.com)
Received: by mail-yb1-f181.google.com with SMTP id bt13so57011014ybb.2;
        Tue, 15 Feb 2022 07:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=H56PbXGgfr7CRaUIy0mj2tzu/QXlSJ7GUxMmc1y0XnY=;
        b=M0SqWnekPUhWyxFuj3ysMaxJeM504P9XT2JAz/swMtbAAi0nw8HtNwXR1dmU8/3y52
         rHZL4ZKRofgZrwFFEXNDv7CechGgNd8+l+VuRwc5E+mzFZhV+Byhmvu37izEuV/Dv1CK
         oZ+miNhB8TbmZ47QNJt57n7N2gPEvx2pjmGF0ZaLwmXQi/38uo/xsJs5hOL0Kd+Swv6B
         wIMYuTiLP7bKwyEfoHReIEZrK8umMKCTtbF3/0WJZV0L5DXal1sMn85Ku32oRu7CY5SP
         BrXoOhGLwVIo6Rk2JrkJBs+wluXFUXH7RfVmFs5XyHGqqzxLiKfm9PORfROutIFNj4fE
         1DnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=H56PbXGgfr7CRaUIy0mj2tzu/QXlSJ7GUxMmc1y0XnY=;
        b=5LDX6QvKh08izMJOkfWVMw7KEeuwuv/G9yryRRNbZ3p/4eDdkoNn5V3RRhUb9bNUsd
         XDwwU0fjVqV/PrrFRVY6A25pWISh56P6MdAypVoq1HoME3B7xNEVDdwVbUG50kZJETWm
         DmpunC5ZrlcoASwQlGXZTJgFpLBH/9mSkm2Rkf0luqbPIHcaXeeSEJYtKqSS4Mt1GSHH
         KI8h5bdVbFdUugfUqxrdtq656L08A/pYnnChMDGud0EVRkMZsKViOGpGr+v5CzI5UGN0
         DHuEsYufIL7gONN0Ldp3bOuBCGM/LqZBwFv0DBaK+vPcb8Cqq9qjgBenHjRNzEuNNmwN
         Cwyg==
X-Gm-Message-State: AOAM531Gb5KFGOmrUmE3JxqZtok5e4wDxI2C/cvM9HXLPVldycD7Crmg
	9GaQI+dgeFg/M1vMeMeiIGLvoX5o0GJ0VYcinarARcRu3UBxzQ==
X-Google-Smtp-Source: 
 ABdhPJwNzNG+HG1ujoHcwOElv0sLjRHAF4Fb5xiSyUhEIl46RfrWyzrQrpo+o/aZ+2uOupxIVpd2eNyBYuO1skhgpvg=
X-Received: by 2002:a25:5006:: with SMTP id e6mr4076052ybb.296.1644937551935;
 Tue, 15 Feb 2022 07:05:51 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAOuPNLiMmKbm_KM-sxmSJciAE=ECcDOoxNBSdW5X6Z-Dt0DpgQ@mail.gmail.com>
In-Reply-To: 
 <CAOuPNLiMmKbm_KM-sxmSJciAE=ECcDOoxNBSdW5X6Z-Dt0DpgQ@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Tue, 15 Feb 2022 20:35:40 +0530
Message-ID: 
 <CAOuPNLgBEA4m5Y6=LJTguGgaGDN7VT0xTX_KTOP09FWTKn8AVQ@mail.gmail.com>
Subject: Re: Controlling features enable/disable across recipe and meta layers
 ?
To: linux-yocto@lists.yoctoproject.org, yocto@lists.yoctoproject.org,
	Pintu Kumar <pintu.ping@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Feb 2022 15:05:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56200

Hi,

I have many questions about Yocto features.
My main question is: In Yocto what is the best mechanism to define a
feature flag such that it can be accessed across many layers and
recipes ?

We are using Yocto thud and/or dunfell at this moment for 2 different products.

From the Yocto document also it is not very clear which one to use.
Also, we are confused when one to use when, like we have:
DISTRO Feature flag,
PACKAGECONFIG variable,
IMAGE Feature,
Global Macro (setVar, getVar), etc.

Example:
Currently, we have many different releases and many different products use it.
So, we have many distro features, many of them are common and many of
them we defined newly for our product.
But for our product we have only one component (say: auto-prod).
So, when this component is enabled the same release should be built
for our product including our feature set.
And when this component is disabled, all our features should be
disabled like mainline release.

So, we wanted to define only one DISTRO feature (auto-prod) and list
all our features under this distro.
Also we wanted to control all these from a single place, so that
enabling/disabling all the features in one shot would be easy and
portable.
We tried doing it using PACKAGECONFIG but it seems this option can be
used only at a recipe level and not visible across all layers.

We wanted to do something like this in: auto.conf
DISTRO_FEATURES = "auto-prod"
if defined (distro-features == auto-prod) ; then
     PACKAGECONFIG_append-pn-<recipe1> = "f1 f2 ..."
     PACKAGECONFIG_append-pn-<recipe2> = "f2 f3 ..."
     PACKAGECONFIG_append-pn-<recipe3> = "f1 f3 f4..."
fi

So, if we comment DISTRO_FEATURES all the features listed above should
be automatically disabled.

Note, our feature flags are used across multiple recipes and layers.
Bootloader layer, Kernel, meta layer, recipe layer, python source, C
source, scripts, etc.
Like: edk2, meta-qti-bsp, meta-security, meta-qti-auto, auto-prod-folder, etc.

Is there a well defined way in Yocto to achieve such a modular design approach ?

If there are any such references please share.

Our reference distro is here:
https://source.codeaurora.org/quic/le/meta-qti-bsp/tree/conf/distro/auto.conf?h=yocto.lnx.3.0.c28

Thanks,
Pintu

