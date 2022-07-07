Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B3F9C43334
	for <webhook@archiver.kernel.org>; Thu,  7 Jul 2022 17:23:37 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web11.447.1657214607559570128
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jul 2022 10:23:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VKmGxesn;
 spf=pass (domain: gmail.com, ip: 209.85.222.177,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id p11so13856555qkg.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jul 2022 10:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BfZrQ28nQWe3HiCEfNsySo4ZhnurX5jpx8rW/dKL5aM=;
        b=VKmGxesnrT/6a7F0VQDJV51xXuH+oelQ6Q0/gWnhRGLqDXrlLLMcs7fTsDlWXkdazc
         lev8KhoX3EC6BQ095lheBKpk1RtGDF8YA7/q19EkVMIAJA7YpK7y2iUkeSVp4FmX4kxC
         iAQkwbNwFX1C4wE7xeFHo+LNudujEDVpln3Iw43kaoUjF3S6fVvxNm+5wc7S7vzIgNTL
         Jf25T6L6RKF1iz+bbXsQKOhWjx4SmhKNir5Wyx+TRCVKErCvGKF3EEnPvZMWs3YTEEg6
         AbpTxerK28lD902FwWA1k43DVX4Qdl5WGPtC9zunC/HmWCwuSNYYNosTbpuxEWv8Rfuk
         dbxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BfZrQ28nQWe3HiCEfNsySo4ZhnurX5jpx8rW/dKL5aM=;
        b=PHfP7UlztfVrm6T9EQ8pPAG8XuEhEtU6P6jAx6xclkKr5yRa6tlCNJHqLcB/CJdC9Z
         ccfSMHfLvJKTdeUzJkrYPVURi6d1SI9sxcCv+gjiHO7D0miIReUOu6pQUPaeh1owf9cw
         9TXutGSGrfNJtXEq+UKT4Ocye6EHwlC9ioCG/42c+wRZ0P8m9M1NfabSH+Tgah+tgVQO
         vk79UUWtzeknJkk+1h3S2tKHuzDdUDwQhNkAy7RCyt3SYrD5dQxQkN4QH3BF1yMnAU35
         Q+bMFd9WwcHAfzGKF2K4/xiPulm2bGOelqFzpAqj4YT5BFJmBZWr3eTZ321BBNiiYE1r
         yvvw==
X-Gm-Message-State: AJIora9S8+2tbCFhcOfMS4n2d+h2M8Cm7yiJwIwAjD77WtFlZv/jYJsH
	Ib06cGrXUhOrkbAQZgS2ANokONiNWvbtpB0xezM=
X-Google-Smtp-Source: 
 AGRyM1vSySMSMUhmCMaBb1gfVhlP5CAOxvl4r4j/EcbesCl0FJHI2DEy5re4L1AXMgtwZPNsQ+eri2tFbsaHHEXvKes=
X-Received: by 2002:a05:620a:448a:b0:6af:3a05:f73c with SMTP id
 x10-20020a05620a448a00b006af3a05f73cmr33371293qkp.72.1657214606428; Thu, 07
 Jul 2022 10:23:26 -0700 (PDT)
MIME-Version: 1.0
References: <16FF8418B666136C.16989@lists.yoctoproject.org>
 <e36cc49e-3c94-6030-a25c-3751b292559e@crashcourse.ca>
 <CAMKF1soKCkuBWU6Y=1Ck94zTwN7pSHagdgkVNLQDoftwesbinA@mail.gmail.com>
 <a71569-6929-f149-127-6cf33ed4b925@crashcourse.ca>
In-Reply-To: <a71569-6929-f149-127-6cf33ed4b925@crashcourse.ca>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 7 Jul 2022 13:23:00 -0400
Message-ID: 
 <CAMKF1sqgZxqguiRUvWForpedoPAdxaYLw_35fky+cy29qvyGGw@mail.gmail.com>
Subject: Re: [yocto] meta-riscv: building curl,
 "undefined reference to '__atomic_exchange_1'
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Jul 2022 17:23:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57477

On Thu, Jul 7, 2022 at 1:06 PM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
> On Thu, 7 Jul 2022, Khem Raj wrote:
>
> > On Thu, Jul 7, 2022 at 6:14 AM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> > >
> > > On Thu, 7 Jul 2022, Robert P. J. Day wrote:
> > >
> > >
> > > >   on admittedly unsupported ubuntu 22.04 platform but it's clear this
> > > > is a known issue as it's pretty much identical to what one reads here:
> > > >
> > > >   https://github.com/advancedtelematic/aktualizr/issues/1427
> > > >
> > > > the explanation being that, "not every atomic operation is currently
> > > > supported by GCC on RISC-V."
> > > >
> > > >   oddly, building a riscv64 core-image-minimal once upon a time on
> > > > fedora worked just fine, so i'm assuming a difference in gcc versions
> > > > is what is causing this.
> > > >
> > > >   what is the recommended workaround for this?
> > >
> > >   another data point, matches exactly what i'm referring to:
> > >
> > >   https://github.com/curl/curl/issues/9055
> > >
> >
> > does backporting
> >
> > https://github.com/curl/curl/commit/50efb0822aa0e0ab165158dd0a26e65a2290e6d2
> >
> > to curl help ?
>
>   as i read it, this issue is also related to -pthread versus
> -lpthread:
>

this would mean that you want to rely on side effects of -pthread
which may work with gcc but may not
work with clang or other compiler drivers. The issue you have is that
some variables are needing atomics
and solution is either you link with libatomic or avoid using the code
which needs them

> https://blog.jiejiss.com/A-RISC-V-gcc-pitfall-revealed-by-a-glibc-update/
>
> rday
>

