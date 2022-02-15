Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FDF6C433F5
	for <webhook@archiver.kernel.org>; Tue, 15 Feb 2022 15:13:48 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web10.10677.1644938026911729257
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Feb 2022 07:13:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bwv+FX3z;
 spf=pass (domain: gmail.com, ip: 209.85.208.47,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id g7so16464852edb.5;
        Tue, 15 Feb 2022 07:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TDCD8z0T8+AwfbutZKVfMLloD6DtxaGx4aDeyFe2lzA=;
        b=bwv+FX3zVVGCno4I2MjU9OOZGMiOpWFkrhXZ3O9Z7FWLEDM9MFiwXNXIB3jlZVmx4u
         /Kj0gG6ZuMgSGyi0olEBiTY4ehNsVEp/hTngaZGYCfoLQ60WjOtUPaQpnAWDjeyxCyin
         OS7atZ5bgdokCQz1dUm4tyKYv+XbYFV/slwfPsr8NAdhAsEpwjdNIQmFj+12wfxxZDc5
         mGZV5wSF+9KZDj7al2CHZtkR0qGPqmFEx5P0zRzw4U2IoDtMB3HHPCglpLC62QYSRiD5
         Q4i9w4t/I4AT+h8GCoze5ZdDPToWBdrHeaaOEZPUyAkrK3sTsDdj9vZZZ0wClrfjqYJP
         Lykg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TDCD8z0T8+AwfbutZKVfMLloD6DtxaGx4aDeyFe2lzA=;
        b=z8CK68Zf+mF7IARUxsJXfbPssP+xGusuZ8jKb74jnA/OHJpSitOR+ih+O3bFL4zyGH
         iTE+DovVKTEdK4QUPwlGcnUoCyVnW9SoYzNwTNAOAxXHYxAfTXVTjLlO4jyIS+N9fkox
         +7NVMxXd07LV6R88qYLNhb2dI+B9XzQ5S7RDRu2mlw7+VXzlkl0cyLuot0Nq1P0RM2IR
         LDYDnt8D/z2e/DxOE3UOqf6yVElPE4EY5oegVQ4jl4ntSRtc4XPoJVMkdS3maee41A/F
         bZ3xbP0j6HlDROLwn+XzIBX21cCeQrHx+42+FaklE8Jykh+L3XRcVDpZgyyqoTSJzAho
         8YAA==
X-Gm-Message-State: AOAM530ehdVA5ykkoVQDSP8y0fU6Vf5OWrMo4BrXhEBCRyri9+Cef1mE
	dIAQj7oWBj7RQu2oD28TiVkSjCq8B0FpNloBaO8=
X-Google-Smtp-Source: 
 ABdhPJx/NhvICCYcpaTBDheWWfjhR5WS0euFFWZi4/ai8dZliRf1sCdVFTSTKR+CQ9PVlZJ7g5wV0a6i6mQIVsoC1Go=
X-Received: by 2002:a05:6402:42c1:: with SMTP id
 i1mr4469708edc.52.1644938025321;
 Tue, 15 Feb 2022 07:13:45 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAOuPNLiMmKbm_KM-sxmSJciAE=ECcDOoxNBSdW5X6Z-Dt0DpgQ@mail.gmail.com>
 <CAOuPNLgBEA4m5Y6=LJTguGgaGDN7VT0xTX_KTOP09FWTKn8AVQ@mail.gmail.com>
In-Reply-To: 
 <CAOuPNLgBEA4m5Y6=LJTguGgaGDN7VT0xTX_KTOP09FWTKn8AVQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 15 Feb 2022 16:13:33 +0100
Message-ID: 
 <CANNYZj8BA6Dhe_UKjdDqiv-qwbz2cHqdFGDbrJMZD8hMEGGNGw@mail.gmail.com>
Subject: Re: [linux-yocto] Controlling features enable/disable across recipe
 and meta layers ?
To: Pintu Agarwal <pintu.ping@gmail.com>
Cc: linux-yocto@lists.yoctoproject.org,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Feb 2022 15:13:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56201

You need to define several distributions (e.g. several
conf/distro/something.conf files), then you can set DISTRO_FEATURES
accordingly in each of them, and then on the recipe level
PACKAGECONFIGs can be enabled subject to DISTRO_FEATURES. Note that
each of those .conf files can include the same .inc, where the common
parts go, and only differ in things that need to be different.

Yocto does not provide a way to have different 'products' or 'builds'
inside the same distro: you choose a distro, then you choose a target
MACHINE (e.g. the hardware), then you choose the image to build.

Also, distro definitions do not belong in a BSP layer, they need to go
to a separate distro layer. You can ask your colleagues at QC how this
was cleaned up for a certain big german automotive customer and look
at the resulting layer code.

Alex

On Tue, 15 Feb 2022 at 16:05, Pintu Agarwal <pintu.ping@gmail.com> wrote:
>
> Hi,
>
> I have many questions about Yocto features.
> My main question is: In Yocto what is the best mechanism to define a
> feature flag such that it can be accessed across many layers and
> recipes ?
>
> We are using Yocto thud and/or dunfell at this moment for 2 different products.
>
> From the Yocto document also it is not very clear which one to use.
> Also, we are confused when one to use when, like we have:
> DISTRO Feature flag,
> PACKAGECONFIG variable,
> IMAGE Feature,
> Global Macro (setVar, getVar), etc.
>
> Example:
> Currently, we have many different releases and many different products use it.
> So, we have many distro features, many of them are common and many of
> them we defined newly for our product.
> But for our product we have only one component (say: auto-prod).
> So, when this component is enabled the same release should be built
> for our product including our feature set.
> And when this component is disabled, all our features should be
> disabled like mainline release.
>
> So, we wanted to define only one DISTRO feature (auto-prod) and list
> all our features under this distro.
> Also we wanted to control all these from a single place, so that
> enabling/disabling all the features in one shot would be easy and
> portable.
> We tried doing it using PACKAGECONFIG but it seems this option can be
> used only at a recipe level and not visible across all layers.
>
> We wanted to do something like this in: auto.conf
> DISTRO_FEATURES = "auto-prod"
> if defined (distro-features == auto-prod) ; then
>      PACKAGECONFIG_append-pn-<recipe1> = "f1 f2 ..."
>      PACKAGECONFIG_append-pn-<recipe2> = "f2 f3 ..."
>      PACKAGECONFIG_append-pn-<recipe3> = "f1 f3 f4..."
> fi
>
> So, if we comment DISTRO_FEATURES all the features listed above should
> be automatically disabled.
>
> Note, our feature flags are used across multiple recipes and layers.
> Bootloader layer, Kernel, meta layer, recipe layer, python source, C
> source, scripts, etc.
> Like: edk2, meta-qti-bsp, meta-security, meta-qti-auto, auto-prod-folder, etc.
>
> Is there a well defined way in Yocto to achieve such a modular design approach ?
>
> If there are any such references please share.
>
> Our reference distro is here:
> https://source.codeaurora.org/quic/le/meta-qti-bsp/tree/conf/distro/auto.conf?h=yocto.lnx.3.0.c28
>
> Thanks,
> Pintu
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#10945): https://lists.yoctoproject.org/g/linux-yocto/message/10945
> Mute This Topic: https://lists.yoctoproject.org/mt/89162429/1686489
> Group Owner: linux-yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/linux-yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

