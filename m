Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32A29C433EF
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 16:48:12 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.767.1635180491271188712
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 09:48:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=mykP4/zg;
 spf=softfail (domain: sakoman.com, ip: 209.85.221.50,
 mailfrom: steve@sakoman.com)
Received: by mail-wr1-f50.google.com with SMTP id d10so9883947wrb.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 09:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JbnyKrdWNGZsuf0gR4lqgesQYtCJ8cMcMq4UXBoeGpU=;
        b=mykP4/zgG1u5AVVXfZLMcsQLUKP87qtKpFYl1qD+MHdCKOJokGIzGICabdRcMCe6zk
         NOINFxa4X3oebQ+CKUk5OlzmEy4vrgv7fTFwJDJc5SE8TIfvdwayl+g8uhLpoBlHxash
         M7Y36i3XSkcfiktW0fsBGuyu/sYYEqLFKKnn47ksKFUnnRpYAo5+5VprRijc2djfu9zD
         umPXwNQqwRRH+HxQkp+L2w5VSb6xoQRgjxlyQJxEKkvL6QXk1QOzuH2smgLa7hU19BoB
         E72nFYLlG4OJUt7ldlLKg4lPzvIkXXln9+3/7BxuW0HcZZX3JVYEuBAXbVSG8lLD4M0S
         p37Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JbnyKrdWNGZsuf0gR4lqgesQYtCJ8cMcMq4UXBoeGpU=;
        b=WxGDKGmo7WaouqGPOUFnHK3h+lRM9slVYTxD/XMgw751xWOblY2o0elsSDlDB/m8nF
         8nfokvPXbK64KRxNPH+2Mvo0ls0R+vk26HOZSnJUYMbvQtKsFV8VtbvGX+4IVV7qYx4x
         Lm1MntmOg+erlqsMo+u+uTkQhENC1LqlLbIFYt110DD1MEuPJ3gUvIJey8zFV7U7f5MD
         9/weNGuT/9qAQDw8h5O3qg8i46hAIDBdea7+p/Bm56BL2FRB1J6BijrH5RIC2D3NuAMU
         967iDl6XaZKmAes/vZ/1KcJvtNqPJH2pO8zw4f/WDY0bmyaHpl9+PZGX7/seY2dX7RXM
         pJDg==
X-Gm-Message-State: AOAM532tqGgcz0HAWYHhkV/BpT8k4Bdgso22IcvAR+CyuuFhEXJXFJrK
	UakV2Av7QbGjb9rOfQlyPfC6qW+nu2sVygv9oadqCA==
X-Google-Smtp-Source: 
 ABdhPJy2s92VsN+O9tALHmkSMoGkIYsXwOnwwtwhu+WnHFgwn0kWyk4aBEcxrXxzb8DhcWjvcvQWXsDlsCAISojmaMw=
X-Received: by 2002:adf:ebd0:: with SMTP id
 v16mr20291513wrn.291.1635180489591;
 Mon, 25 Oct 2021 09:48:09 -0700 (PDT)
MIME-Version: 1.0
References: <20211025140710.5419-1-anuj.mittal@intel.com>
 <c328e39e-921e-7ba7-8afb-7eca03a83f22@gmail.com>
 <16B153EAC6F6E773.9409@lists.yoctoproject.org>
In-Reply-To: <16B153EAC6F6E773.9409@lists.yoctoproject.org>
From: Steve Sakoman <steve@sakoman.com>
Date: Mon, 25 Oct 2021 06:47:58 -1000
Message-ID: 
 <CAOSpxdZdtx6uPE6m1AKgZuHcWJ-Yiv3A_OU1Bp728sakj7rxCA@mail.gmail.com>
Subject: Re: [yocto] [hardknott][yocto-autobuilder-helper][PATCH] config.json:
 set max load in PARALLEL_MAKE
To: steve@sakoman.com
Cc: Khem Raj <raj.khem@gmail.com>, Anuj Mittal <anuj.mittal@intel.com>,
	yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 16:48:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55148

On Mon, Oct 25, 2021 at 6:46 AM Steve Sakoman via
lists.yoctoproject.org <steve=sakoman.com@lists.yoctoproject.org>
wrote:
>
> On Mon, Oct 25, 2021 at 6:09 AM Khem Raj <raj.khem@gmail.com> wrote:
> >
> >
> >
> > On 10/25/21 7:07 AM, Anuj Mittal wrote:
> > > From: Trevor Gamblin <trevor.gamblin@windriver.com>
> > >
> > > Add "-l 52" to PARALLEL_MAKE in config.json to limit Make and Ninja
> > > builds based on the detected system load. With this option added, if
> > > either tool has at least one job running and detects that the system
> > > load exceeds the given value, it will wait until either the system load
> > > average drops below that limit, or until all other jobs are finished
> > > before starting additional jobs.
> > >
> > > Since most autobuilder machines have 56 cores, this should help keep the
> > > system from being overloaded during builds.
> > >
> > > Reference: https://www.gnu.org/software/make/manual/html_node/Parallel.html
> > >
> > > Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
> > > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > > (cherry picked from commit 5c5fc7bcd221427d34bbac80c9bad315fb6de4df)
> > > Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
> > > ---
> > >   config.json | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/config.json b/config.json
> > > index 33d36ad..d397365 100644
> > > --- a/config.json
> > > +++ b/config.json
> > > @@ -43,7 +43,7 @@
> > >               "PREMIRRORS = ''",
> > >               "BB_GENERATE_MIRROR_TARBALLS = '1'",
> > >               "BB_NUMBER_THREADS = '16'",
> > > -            "PARALLEL_MAKE = '-j 16'",
> > > +            "PARALLEL_MAKE = '-j 16 -l 52'",
> >
> > We have seen a lot of hung builds when we used this option internally on
> > builders, Additionally some packages like bison started to fail
> > intermittently which seemed like a parallel build issue but never got to
> > see why it would happen only with -l enabled.
> >
> > So this change would need some testing before we make it permanent into AB
>
> Which branch did you test this with?  I had some issues when I
> originally added it to dunfell but after the last patch series I am
> getting green a-full and meta-oe builds on the autobuilder.
>
> And master has been running with this for q

Accidentally hit send :-)

I intended to say that master has been running with this for quite
some time now.

> Steve
>
> >
> > >               "XZ_MEMLIMIT = '5%'",
> > >               "XZ_THREADS = '8'",
> > >               "BB_TASK_NICE_LEVEL = '5'",
> > >
> > >
> > >
> > >
> > >
> >
> >
> >
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55147): https://lists.yoctoproject.org/g/yocto/message/55147
> Mute This Topic: https://lists.yoctoproject.org/mt/86577772/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

