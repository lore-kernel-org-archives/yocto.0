Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E39C433F5
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 17:30:10 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web11.60.1635183009286112233
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 10:30:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=PHpprfYH;
 spf=softfail (domain: sakoman.com, ip: 209.85.221.43,
 mailfrom: steve@sakoman.com)
Received: by mail-wr1-f43.google.com with SMTP id p14so8203077wrd.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 10:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=d3v5ghn4JXF6KNJoTgQ/pVqHVs3whabQ/gCwlZiKiko=;
        b=PHpprfYHSPVmOmpAcT2j3k5lbqMSGzaZ3hP1koDNolip5wdjdn2nGRf34eZxDB54UT
         JE6XLsxSq8yxJJTsSflMLu3Piz14/1QgE/172Ie0UmbbyVqZDHm8lWh/CWU8oJvniLPV
         u9MAXI4NF5UJdxJPA67M96P5H+S6XevMrJzf52ZYZhvwxU57Gmy8DNrMoofOaVIHEFmb
         qBaNllEloC0DJYX6VCRHOcCX20qMRNHcbPdDdJBGIFTyDkuRp420sJYH0SAhkkmwQADC
         b1lWWkIzUbkrNDLaZoDv6PmLd6C8Zl/L44UoX/kHHghAkMyTXnSHeN4rG6/vu83o1ESz
         2iLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=d3v5ghn4JXF6KNJoTgQ/pVqHVs3whabQ/gCwlZiKiko=;
        b=Ny5qhN5IzYYPruIeHLYjyWJpVmWLi24Zcwivv0G2QVqnwEZkpcs+1laPab3ALKvY3B
         uff7ez3x+hDtdf3OMdnef6/OXLWf+Bx/sXHOkBKZCGPguiJVIn8sgWtB/r7tFPpDx75a
         S0b49d1efotvpQ/G+w1X+fETpw/Kand+4fmt5hAlRaKwrbGC89lg2pxQnNa5m6WbNEud
         tjai/8pOfS14VZx83YmZPkJTsYWAuNUpF6hoEjscdV0gpE7xbobDmze9lMDuuDIWHkj4
         dXyiG471nZ6TUg5ri9faKo3p0KbMBMbpJLS7sNYpLk5N0iIpVBllcAFcF7XEU/KjGtM/
         bIAA==
X-Gm-Message-State: AOAM530PgBRU22AGz107DQhYcH2YDs0HMW4Qhme6Dt/9PXvcTJMWb2J6
	XYr+jGpHYyJYYEon12M0eHG4iU/eU27ctKHzJDGpbQ==
X-Google-Smtp-Source: 
 ABdhPJxOxuraBoKwK+UNhn6TUDmdDmbld96ng1JCJaV3DxUMm0wpBjpLP+BKL2vMNYE+VR0Oegz9x8RmkKFJLvj5wOM=
X-Received: by 2002:adf:f210:: with SMTP id p16mr20285577wro.61.1635183007552;
 Mon, 25 Oct 2021 10:30:07 -0700 (PDT)
MIME-Version: 1.0
References: <20211025140710.5419-1-anuj.mittal@intel.com>
 <c328e39e-921e-7ba7-8afb-7eca03a83f22@gmail.com>
 <CAOSpxdYkS9L48DEg=xYXPdGUriVzeLJhLSGMckis0Pono5soKQ@mail.gmail.com>
 <CAMKF1srzRTSzG8ZbY2ZZJjy6tNKiNic44WgCR_tGsfi2NOqWYg@mail.gmail.com>
In-Reply-To: 
 <CAMKF1srzRTSzG8ZbY2ZZJjy6tNKiNic44WgCR_tGsfi2NOqWYg@mail.gmail.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Mon, 25 Oct 2021 07:29:56 -1000
Message-ID: 
 <CAOSpxdb0ejpKz=x6uDN=VjfupZj5WQ1Bo09FS=9m1uzNgF0kvQ@mail.gmail.com>
Subject: Re: [yocto] [hardknott][yocto-autobuilder-helper][PATCH] config.json:
 set max load in PARALLEL_MAKE
To: Khem Raj <raj.khem@gmail.com>
Cc: Anuj Mittal <anuj.mittal@intel.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 17:30:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55150

On Mon, Oct 25, 2021 at 7:00 AM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Mon, Oct 25, 2021 at 9:46 AM Steve Sakoman <steve@sakoman.com> wrote:
> >
> > On Mon, Oct 25, 2021 at 6:09 AM Khem Raj <raj.khem@gmail.com> wrote:
> > >
> > >
> > >
> > > On 10/25/21 7:07 AM, Anuj Mittal wrote:
> > > > From: Trevor Gamblin <trevor.gamblin@windriver.com>
> > > >
> > > > Add "-l 52" to PARALLEL_MAKE in config.json to limit Make and Ninja
> > > > builds based on the detected system load. With this option added, if
> > > > either tool has at least one job running and detects that the system
> > > > load exceeds the given value, it will wait until either the system load
> > > > average drops below that limit, or until all other jobs are finished
> > > > before starting additional jobs.
> > > >
> > > > Since most autobuilder machines have 56 cores, this should help keep the
> > > > system from being overloaded during builds.
> > > >
> > > > Reference: https://www.gnu.org/software/make/manual/html_node/Parallel.html
> > > >
> > > > Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
> > > > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > > > (cherry picked from commit 5c5fc7bcd221427d34bbac80c9bad315fb6de4df)
> > > > Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
> > > > ---
> > > >   config.json | 2 +-
> > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/config.json b/config.json
> > > > index 33d36ad..d397365 100644
> > > > --- a/config.json
> > > > +++ b/config.json
> > > > @@ -43,7 +43,7 @@
> > > >               "PREMIRRORS = ''",
> > > >               "BB_GENERATE_MIRROR_TARBALLS = '1'",
> > > >               "BB_NUMBER_THREADS = '16'",
> > > > -            "PARALLEL_MAKE = '-j 16'",
> > > > +            "PARALLEL_MAKE = '-j 16 -l 52'",
> > >
> > > We have seen a lot of hung builds when we used this option internally on
> > > builders, Additionally some packages like bison started to fail
> > > intermittently which seemed like a parallel build issue but never got to
> > > see why it would happen only with -l enabled.
> > >
> > > So this change would need some testing before we make it permanent into AB
> >
> > Which branch did you test this with?  I had some issues when I
> > originally added it to dunfell but after the last patch series I am
> > getting green a-full and meta-oe builds on the autobuilder.
>
> it was dunfell primarily

In that case you might want to try again with the current dunfell
head.  It was a couple of weeks of pain, but I think I've eliminated
all of the issues with using this patch.

Steve

>
> >
> > And master has been running with this for q
> > Steve
> >
> > >
> > > >               "XZ_MEMLIMIT = '5%'",
> > > >               "XZ_THREADS = '8'",
> > > >               "BB_TASK_NICE_LEVEL = '5'",
> > > >
> > > >
> > > >
> > > >
> > > >
> > >
> > > -=-=-=-=-=-=-=-=-=-=-=-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#55146): https://lists.yoctoproject.org/g/yocto/message/55146
> > > Mute This Topic: https://lists.yoctoproject.org/mt/86577772/3620601
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.com]
> > > -=-=-=-=-=-=-=-=-=-=-=-
> > >

