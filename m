Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C69C433F5
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 17:00:36 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web08.861.1635181236029425986
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 10:00:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OQZNFimH;
 spf=pass (domain: gmail.com, ip: 209.85.222.177,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id a13so12293101qkg.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 10:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AQVOIfTph+UjD3owaDpo6MWHYP7ebxtSqSejxUaZLqI=;
        b=OQZNFimHshIN3+zDof68MbPUYRN/7oSTpLwBSrzSpSPLntheWZ2TSUX7Stwu8IhgMX
         bH4+rfNjc4CcQSRLwsnFcEpLi6mu0OxUXPAqIElBIzT8V+Du7+wlo6BADCStRx1frCpC
         wnUiHneQ0Ws6xhw4LJAAkW2uP03k+UoJGNvafSnOn+VLeQkI0SyxhWqTc1s3/ATXc2C+
         6IWzm4A983msOMlyRW9ZIvQHc66faMhMfXylEVyYWF3BVsYPNNm3UQB7HT0j838iRrWd
         NLxvlEVOHLuZtDOKHPxhEV5p+2ayi4JSygGhIYkol7R8ykm8YHoZ6hW8X/eiqa7p6zvl
         Nphg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AQVOIfTph+UjD3owaDpo6MWHYP7ebxtSqSejxUaZLqI=;
        b=5M8Wpd6Yv1iW/3AyL6WCHHNltKoKS8gN9W10yNd/PS4JI9VwRc2wBdPmw4YBBiQksC
         +JFLxnUS3ZpQ6ZwRA8Z4xHZATIWXTe+AdFkF2/a5OtxW8OfTF0A7tBtBksxgKhKqgDjA
         5QqdOQ5dq9nnJgWvzE9b+jBYLPfgtsB2bsamcT/oaAPNEMqTgD1oVtiAW/AsU0jY3Kou
         Se7YGQHTihoyKAV8q8csQk/O9hf4KPITFsX9fS6uLzEQcHkBUJgmPMJddiE9iH3fwP0J
         6Lsy2Ddwk+KaHBaZiaFgRNMHA72foKeLZvPxvE0WwclpH+jD/c2U6CHdG8c9zPOfnDtm
         /Wdw==
X-Gm-Message-State: AOAM530v9jgoBLVLYE2g8KP4maJit2IjT4PHSxUuUzB4sz/QfHwzf18H
	mNBqTwJcx2e5ricqz8Kl/e1U1WFLo/nXo4PPDV0=
X-Google-Smtp-Source: 
 ABdhPJxCK5v47QXRuJiJ2BzQLzjyUB6zx1TaRjAjjsiTnZEAofCZtFBmBfMBr3/f00JwioMJJcXwaxnwlYIO5l0PeRE=
X-Received: by 2002:a37:9ec7:: with SMTP id
 h190mr14455552qke.105.1635181234935;
 Mon, 25 Oct 2021 10:00:34 -0700 (PDT)
MIME-Version: 1.0
References: <20211025140710.5419-1-anuj.mittal@intel.com>
 <c328e39e-921e-7ba7-8afb-7eca03a83f22@gmail.com>
 <CAOSpxdYkS9L48DEg=xYXPdGUriVzeLJhLSGMckis0Pono5soKQ@mail.gmail.com>
In-Reply-To: 
 <CAOSpxdYkS9L48DEg=xYXPdGUriVzeLJhLSGMckis0Pono5soKQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 25 Oct 2021 10:00:08 -0700
Message-ID: 
 <CAMKF1srzRTSzG8ZbY2ZZJjy6tNKiNic44WgCR_tGsfi2NOqWYg@mail.gmail.com>
Subject: Re: [yocto] [hardknott][yocto-autobuilder-helper][PATCH] config.json:
 set max load in PARALLEL_MAKE
To: Steve Sakoman <steve@sakoman.com>
Cc: Anuj Mittal <anuj.mittal@intel.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 17:00:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55149

On Mon, Oct 25, 2021 at 9:46 AM Steve Sakoman <steve@sakoman.com> wrote:
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

it was dunfell primarily

>
> And master has been running with this for q
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
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#55146): https://lists.yoctoproject.org/g/yocto/message/55146
> > Mute This Topic: https://lists.yoctoproject.org/mt/86577772/3620601
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >

