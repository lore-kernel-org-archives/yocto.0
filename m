Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web12.11199.1584621803322774274
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 05:43:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sdtFdQJX;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id a43so2408109edf.6
        for <yocto@lists.yoctoproject.org>; Thu, 19 Mar 2020 05:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g1QXIIcfLk+740L1BjtoB45KTLm0fC3ctwlcwnuzAxo=;
        b=sdtFdQJXQAEQFQRpk92IkHqfVLTIrFF0RS6pyvkFF3gznzWttNV/U7J1IMy0kiX51j
         IeVwtShZyyJvmab+J4OZ80eLv3lobeZ/QLC8GSH/rQovY4TTkzWj1QuCNbyW5xLsDbwi
         i9AFT0EIaSoAM444BhJXzi78+BjSII0XraI7Tv3enWBAlOAVbE8Fj1djQafkA0M0t216
         59Gkm7Z3p7ZZ3s1h10xet8M++q0n5ji157/UA55Fp+/CLJN+jkCwwXnJvBu53L4dbWT8
         I3EWFeoYa1X7BkAlFewTi1n46pHA9XMQf9QJhTCS5InrrFqEG+ZbWaRziRc2BCVkAOyo
         tuDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g1QXIIcfLk+740L1BjtoB45KTLm0fC3ctwlcwnuzAxo=;
        b=fnhviYTm4y3OneRGlbNvXD+m378b0aKKG97o5jzstnWGMxntC3XciLFT/fv4iwqtLk
         F6gABi95nbb4geKCokX86sXRN84VOSZvXsFEmOCKtmBRwsLnYfzBHJjXLPohreyshKWl
         DrlOAKQzKIFQ2jc7zLvoHOkpPXqtolQ96iueBI+QOFhcYaq3AXx4bqBBAAaYkkyDWtn4
         yxVly7pCvF0zBaLvx4hu/MjuombkvO3Y+f34c/S3CEPB2t2CBa1A5vmh88wMK5tlxPkZ
         EZG1qqbBqetc+G48cJPE8+IZfLGwlcFSwYy/U1WpXCpCxHLyGnORkUFT1Z5B9kBirMjy
         9w1w==
X-Gm-Message-State: ANhLgQ0UCdt+D317beYSjx64sBZCZWfxE1KYMeolxnMNlN9n2G3xmt/1
	PoxGpTwqFj6yWsrQLU0Yw2KggsxqEHCzNgevJAY=
X-Google-Smtp-Source: ADFU+vvtDHEpYoCLCByjtreSro3MY78HvN2aHtSj9AMpTeXaW1VAHgfRfA21AemOwh0GWNSZ1f/lJfaKFHxpNLFIgqU=
X-Received: by 2002:a17:906:9456:: with SMTP id z22mr3065689ejx.327.1584621801526;
 Thu, 19 Mar 2020 05:43:21 -0700 (PDT)
MIME-Version: 1.0
References: <CADkTA4OLBuB2ix32YaPkDOngJAoBkcgcA7x+mXSatKi1d3uaTg@mail.gmail.com>
 <13215.1584493649076752750@lists.yoctoproject.org> <CADkTA4O8v2HVqsMkCGkd72swXUZWCoJi4fvsyB0sGdRRTTcuQw@mail.gmail.com>
 <CADkTA4Mp5Z45cFhmG5-f+TAq36XgfBVDqfmw7LbgGjY-wNWxxA@mail.gmail.com> <ed84a470-075d-4359-b314-32ce9584730d@www.fastmail.com>
In-Reply-To: <ed84a470-075d-4359-b314-32ce9584730d@www.fastmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Thu, 19 Mar 2020 08:43:10 -0400
Message-ID: <CADkTA4OX+WKJtTxdsxp1Bfa0P5LZ6x63akZS=u4yZuTweULzbA@mail.gmail.com>
Subject: Re: Private: Re: [yocto] Excluding kernel configuration fragment
To: Fred Baksik <fdk17@ftml.net>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 19, 2020 at 7:49 AM Fred Baksik <fdk17@ftml.net> wrote:
>
> Hello,
>
> I doesn't look like these last few emails made it to the mailing list.
> I don't mind creating my own BSP but I thought it might be easier to tweak an existing one.

I've fixed the bug now, and am implementing something easier for
master, so in the future .. it will be easy to remove that sort of
warning.

Cheers,

Bruce

>
> Thanks for your help.
>
> On Wed, Mar 18, 2020, at 6:06 PM, Bruce Ashfield wrote:
>
> Hi Fred,
>
> So I dug into this today, and as I suspected, there's currently not a
> great way to inhibit the warning easily (it's broken).
>
> I'm going to re-work some things and fix this in master .. it's
> interesting that no one else has asked about this until now.
>
> If you don't want to define your own BSP, my suggestion is to just
> inhibit the warning with the KCONF_AUDIT_LEVEL and
> KCONF_BSP_AUDIT_LEVEL variables. You know what you are doing with
> those warnings, so they can be safely masked.
>
> Bruce
>
> On Tue, Mar 17, 2020 at 10:22 PM Bruce Ashfield
> <bruce.ashfield@gmail.com> wrote:
> >
> > Thanks Fred,
> >
> > Let me fire up a build with this tomorrow and I'll follow up with the
> > best thing to do.
> >
> > Bruce
> >
> > On Tue, Mar 17, 2020 at 9:07 PM Fred Baksik <fdk17@ftml.net> wrote:
> > >
> > > What you are doing, is the right way to do things, unless you modify
> > > the source fragment directly.
> > >
> > > I used 'bitbake linux-intel -c menuconfig' and 'bitbake linux-intel -c diffconfig'.  This generated a fragment that contained the single line:
> > >
> > > # CONFIG_SOUND is not set
> > >
> > > I added this fragment to my "recipes-kernel/linux/linux-intel_%.bbappend".
> > >
> > > Can you send me the exact layers/branches you are using, and I'll
> > > confirm the right thing to do with a local build.
> > >
> > > I'm using warrior 2.7.3 and MACHINE=intel-corei7-64
> > > poky
> > > meta-intel
> > > meta-openembedded
> > >
> > > It was easy enough to remove items, like alsa, from DISTRO_FEATURES to remove the features I wouldn't need.
> > > I had wanted to remove the items, like audio support, from an existing machine instead of creating one from scratch.
> > >
> > > Thanks,
> > > Fred
>
>
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
