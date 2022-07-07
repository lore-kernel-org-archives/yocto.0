Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 580F9C43334
	for <webhook@archiver.kernel.org>; Thu,  7 Jul 2022 14:32:55 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web10.6281.1657204365273114231
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jul 2022 07:32:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kPwPrfxB;
 spf=pass (domain: gmail.com, ip: 209.85.160.171,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f171.google.com with SMTP id z13so22924221qts.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jul 2022 07:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0VJya4qzVOYQzeMdttx0MLZQQ2zlxcQ8rsuLJQ0dopM=;
        b=kPwPrfxBvnQPixNCHp/eXipOGmiXdDqSA2UZQzx4uwUSjxL5XGcliBQk4CyIsZevy5
         3ey0Whzn/50Cx96LlG3KepU6MglF34BDQOZVMdRbh7ChqpMOpw/x8HsKr6myW/58mHHi
         bQtPVcdOVdM9PKGzGmJq8EVylp9Z4HxOFHpkyuoqIcRAlaikHTRfX07izMxO0G7gStPR
         WldClUc8ReuTPfgVgXt+FUNZj7X7A/AHknY9LrWDgnR4Ts9cUtrJTgWEDMZdZ80XZqfV
         LtDbjy4wFulwFrZUUwExQPozxdG4JMrLt+pcYSkj+TS9hO0kjjKoYyBR0GYPvSe4kOZy
         4YXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0VJya4qzVOYQzeMdttx0MLZQQ2zlxcQ8rsuLJQ0dopM=;
        b=LEQVmwKCvwkif6d/ENIFBc6+3OMH5Md4867F1KhIVB/jfNCuPppp8aQYlclJfVfvY0
         7pNamA2KljC/bchfoWYoTt+bX95EbR3iBpMt/wylppe1HLOSANWSI3OWaUyXvsQwpoqJ
         KIe7FrBLobX+m3qQmB+jcOvNVviTLAUtrQzRfPhk0GA2oR3uez+8KzwIUbQ+7O6Nczcb
         d56wrPDgEbQzTX2q59USzUxVXPtOEJUU7FwhghQvnuJlVmTbhXyt4dQGOZGf8sDOKHXm
         aT8/6/6enKgOjFd1w2UaVoWB+b1bjWpPhu5NfaWWN2RFCV49S98ve6gKfpulSTGQUAQI
         9Zng==
X-Gm-Message-State: AJIora9ApjDahLuCX+PIDFjNL/z2RihsRenuOh7/ZzPnLNtNkjKDWypy
	xxSrpEOQOBWUf/FUHkk4JJhmycAWjMX2Qc1hL4Fs+bOJwUCY8A==
X-Google-Smtp-Source: 
 AGRyM1typL4XNwmmKpL8kY6IyW4A4HX6ooFd+HhO0Aoz7WWd+hFhcq/FBv1IwFXBqk+wQ4WcWLAqw6g0rdwTvQTgzaM=
X-Received: by 2002:a05:622a:1005:b0:31d:3a51:ead7 with SMTP id
 d5-20020a05622a100500b0031d3a51ead7mr27167915qte.634.1657204363652; Thu, 07
 Jul 2022 07:32:43 -0700 (PDT)
MIME-Version: 1.0
References: <16FF8418B666136C.16989@lists.yoctoproject.org>
 <e36cc49e-3c94-6030-a25c-3751b292559e@crashcourse.ca>
In-Reply-To: <e36cc49e-3c94-6030-a25c-3751b292559e@crashcourse.ca>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 7 Jul 2022 10:32:17 -0400
Message-ID: 
 <CAMKF1soKCkuBWU6Y=1Ck94zTwN7pSHagdgkVNLQDoftwesbinA@mail.gmail.com>
Subject: Re: [yocto] meta-riscv: building curl,
 "undefined reference to '__atomic_exchange_1'
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Jul 2022 14:32:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57472

On Thu, Jul 7, 2022 at 6:14 AM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
> On Thu, 7 Jul 2022, Robert P. J. Day wrote:
>
>
> >   on admittedly unsupported ubuntu 22.04 platform but it's clear this
> > is a known issue as it's pretty much identical to what one reads here:
> >
> >   https://github.com/advancedtelematic/aktualizr/issues/1427
> >
> > the explanation being that, "not every atomic operation is currently
> > supported by GCC on RISC-V."
> >
> >   oddly, building a riscv64 core-image-minimal once upon a time on
> > fedora worked just fine, so i'm assuming a difference in gcc versions
> > is what is causing this.
> >
> >   what is the recommended workaround for this?
>
>   another data point, matches exactly what i'm referring to:
>
>   https://github.com/curl/curl/issues/9055
>

does backporting

https://github.com/curl/curl/commit/50efb0822aa0e0ab165158dd0a26e65a2290e6d2

to curl help ?


> rday
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57470): https://lists.yoctoproject.org/g/yocto/message/57470
> Mute This Topic: https://lists.yoctoproject.org/mt/92225230/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

