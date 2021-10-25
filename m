Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25BE4C433FE
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 16:46:48 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.667.1635180406732184288
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 09:46:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=ZOZQTXDY;
 spf=softfail (domain: sakoman.com, ip: 209.85.221.48,
 mailfrom: steve@sakoman.com)
Received: by mail-wr1-f48.google.com with SMTP id z14so12820156wrg.6
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 09:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SwlR63FdRU2uDF7GS4XLFIY5Wzj63yrOAQudFtARS/o=;
        b=ZOZQTXDYt6UGIRiAiwpIF7k0XOtMuIS1AqwtjYebGib54ajlsR6xedDQjpvHY53v31
         3R0rhxF1/fbma7rWJV+XN5h12ehboB/781pGVH38an6sPaxTzrGet70ZiwJB8uXCfBUo
         lqrZPgD7AYTo/yeAr/sPz3LhHzIcBB2DHlXXxrGNCkP7qThI2pLBdld7I1mGdomsFZuw
         tFErjQGc061iL8fFNd70NWkQBaTkopxEw4Zvad+NbFRtzDvJbTvErq/U9dU/HRlnQnTg
         NBaWR8YO/Y3RoVD1cIPqEDmGE/T6KB+T5y8/MubzqpJFsbB7PJG8BcLVzkbHJOibPhub
         OVYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SwlR63FdRU2uDF7GS4XLFIY5Wzj63yrOAQudFtARS/o=;
        b=3skzF1kFiucMoR5BmWobMvmNdj5bhB+6myC9poeEMn/QnC1D4WbaX5EHerCR2qFL3F
         vaarTavB9Ud3pa0zIdN4zAUL0tfCbIkg8xnNLHcwmAqnb2YZzKOI4Ehdo1EQ9JKif56S
         GMesHH83388mjpga2A9xSv7HKGisM8WvP+6tMKk95bn58cXyNf4eLgJbXSKxi7UBfRc4
         vb6ahmJXqC8Ukhd1/NbtL8KN+4/0z9Rspfgfu9bojNaEzBehfYUiKHxp4088ORfFVq5k
         xFuLdxNxc08kGbE3PQHCi25AswcanPA4zktg3ZRfHufhe2axJtATflqIHhQ+QSTetMa3
         +Z5w==
X-Gm-Message-State: AOAM530aZC7NigzK3+8oGYrd4JhguI7P5WEmqOOKCgjDzM9uFNUwibe6
	qwbZaPbKs8y7DmKWz8Aya0y6Zc2BZ6Nb0o2b5B9+lw==
X-Google-Smtp-Source: 
 ABdhPJyA3YzfjiorUu1laLqgUaPK+waMBg6eq9uQ+dPu4VDt3lq/ARDGkLfnMHZq5+e2lP40YXYrnxiHZASZCBRPEOY=
X-Received: by 2002:a05:6000:1d0:: with SMTP id
 t16mr14529069wrx.44.1635180404845;
 Mon, 25 Oct 2021 09:46:44 -0700 (PDT)
MIME-Version: 1.0
References: <20211025140710.5419-1-anuj.mittal@intel.com>
 <c328e39e-921e-7ba7-8afb-7eca03a83f22@gmail.com>
In-Reply-To: <c328e39e-921e-7ba7-8afb-7eca03a83f22@gmail.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Mon, 25 Oct 2021 06:46:33 -1000
Message-ID: 
 <CAOSpxdYkS9L48DEg=xYXPdGUriVzeLJhLSGMckis0Pono5soKQ@mail.gmail.com>
Subject: Re: [yocto] [hardknott][yocto-autobuilder-helper][PATCH] config.json:
 set max load in PARALLEL_MAKE
To: Khem Raj <raj.khem@gmail.com>
Cc: Anuj Mittal <anuj.mittal@intel.com>, yocto@lists.yoctoproject.org,
	richard.purdie@linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 16:46:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55147

On Mon, Oct 25, 2021 at 6:09 AM Khem Raj <raj.khem@gmail.com> wrote:
>
>
>
> On 10/25/21 7:07 AM, Anuj Mittal wrote:
> > From: Trevor Gamblin <trevor.gamblin@windriver.com>
> >
> > Add "-l 52" to PARALLEL_MAKE in config.json to limit Make and Ninja
> > builds based on the detected system load. With this option added, if
> > either tool has at least one job running and detects that the system
> > load exceeds the given value, it will wait until either the system load
> > average drops below that limit, or until all other jobs are finished
> > before starting additional jobs.
> >
> > Since most autobuilder machines have 56 cores, this should help keep the
> > system from being overloaded during builds.
> >
> > Reference: https://www.gnu.org/software/make/manual/html_node/Parallel.html
> >
> > Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
> > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > (cherry picked from commit 5c5fc7bcd221427d34bbac80c9bad315fb6de4df)
> > Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
> > ---
> >   config.json | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/config.json b/config.json
> > index 33d36ad..d397365 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -43,7 +43,7 @@
> >               "PREMIRRORS = ''",
> >               "BB_GENERATE_MIRROR_TARBALLS = '1'",
> >               "BB_NUMBER_THREADS = '16'",
> > -            "PARALLEL_MAKE = '-j 16'",
> > +            "PARALLEL_MAKE = '-j 16 -l 52'",
>
> We have seen a lot of hung builds when we used this option internally on
> builders, Additionally some packages like bison started to fail
> intermittently which seemed like a parallel build issue but never got to
> see why it would happen only with -l enabled.
>
> So this change would need some testing before we make it permanent into AB

Which branch did you test this with?  I had some issues when I
originally added it to dunfell but after the last patch series I am
getting green a-full and meta-oe builds on the autobuilder.

And master has been running with this for q
Steve

>
> >               "XZ_MEMLIMIT = '5%'",
> >               "XZ_THREADS = '8'",
> >               "BB_TASK_NICE_LEVEL = '5'",
> >
> >
> >
> >
> >
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55146): https://lists.yoctoproject.org/g/yocto/message/55146
> Mute This Topic: https://lists.yoctoproject.org/mt/86577772/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

