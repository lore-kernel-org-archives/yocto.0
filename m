Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web12.23657.1621865648887698432
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 May 2021 07:14:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=N8unC1TJ;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id lx17-20020a17090b4b11b029015f3b32b8dbso9538058pjb.0
        for <yocto@lists.yoctoproject.org>; Mon, 24 May 2021 07:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=06AtjQV2916P1BUV9Ds4hCxYb+OWDbIcma/D9Nuqrp0=;
        b=N8unC1TJpPL6cuxyokSosCbGXm2MsgKFZ/ehesXqKAi1wBSpGkMavVt1YiBTMcdpKS
         PnDG0wi47sWiw2khdb9TvNTwg36jQJCBzNIKFgJzNSA11F71UY+nCOjH8HGA5TFwx84k
         fukdtwcETfLi1de1jjtFmpZLFKwT+Lr0GVBCz8JhPijbTeujZL+Cnz0Sdx0ykA2q4HQi
         mRmYTUUhbeVotdMRt56a53IEigqv7mVzXa6SofoNIBhKmzh0sO7ZPy6ljE+gXE9Vj+ku
         msobZM7876cWlYEWOei70V6WBB8su3KJkvYSVb1vf7HFA/P3Zjx0nbtNSB+hV8rELE5J
         C5Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=06AtjQV2916P1BUV9Ds4hCxYb+OWDbIcma/D9Nuqrp0=;
        b=eW/JXtJAwpeoDY6d6HWG9OkobNrxjg/MmQsw6xl9bGDtr4+glGPWbKvjn1uC0VF2jd
         UJUV0t3wYvRkEa/BLAl4BNXdcpzwdb8G6At9xjJrH+NNE7Q8x72Rte8+kWgEHpnN7r2Z
         IPRc+E6SjHdU6b92nb4KAdOxFtR6OGripqD55e8fqad7Vlka/dmh0dn3AXKUjiJ1M0C5
         HS+HXlB6fptiMDq7x+9ntVSbbzUZR2RyrDjHxtbS13QE+Pi7Y+rxlpKbwXAooGmvDcm9
         FR8IQQuJD6G3kUtXZbbJusEYTKaZYUQz8kA74jGKYT0THmkGBJxmCNH9oM2fC45lIj/C
         5FYw==
X-Gm-Message-State: AOAM531BfUSd4IoYUoJDOD+HgCqSk4CTAx7yUms2C+TwksPzOz6evu33
	4/3SEu8F7B6aZRtTtAo/O/SVUaQD1vou/M1Nc2g=
X-Google-Smtp-Source: ABdhPJy9mkbuIRBzvtZUg9M8jrGL2Rm/GihHp0m0FIYeEg9GpGqf6GmKR4cBqBqbAH5aiWQEWNGhCayaHY85cJpIOjw=
X-Received: by 2002:a17:902:b68c:b029:eb:6c82:60da with SMTP id
 c12-20020a170902b68cb02900eb6c8260damr25687425pls.25.1621865648181; Mon, 24
 May 2021 07:14:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LzBFh2PrDYN1wyZGZ9==uAEk+BfNxUOaRGFBJsy6TniUw@mail.gmail.com>
 <B870330F-3B69-4C5C-B077-ECCBA0460E13@0leil.net> <CAGAf8Lx_1NHRNrgF5ou49HSyLokJR85rRYpNdgv-hepqQzEehw@mail.gmail.com>
In-Reply-To: <CAGAf8Lx_1NHRNrgF5ou49HSyLokJR85rRYpNdgv-hepqQzEehw@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 24 May 2021 16:13:57 +0200
Message-ID: <CAGAf8LyCBxcYmc9B+LjFuR4XJ2gJb27f68_4yrBcbRW4gFtnAQ@mail.gmail.com>
Subject: Re: [yocto] ERROR: ParseError at .../bbb-yocto-gatesgarth/meta-bbb/images/console-image.bb:4: Could not include required file images/basic-dev-image.bb
To: Quentin Schulz <foss@0leil.net>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, Scott Ellis <scott@jumpnowtek.com>
Content-Type: text/plain; charset="UTF-8"

Or, maybe, now the DHCP is included in the releases by default?

Thank you,
Zoran
_______

On Mon, May 24, 2021 at 4:09 PM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> Hello Quentin,
>
> Thank you for finding the bug. It was in front of my eyes (I print all
> the layers at the end of setup, but I missed to compare bb-layers from
> dunfell with bb-layers from gatesgarth).
>
> I should do better. With regards to testing thinking. ;-)
> _______
>
> Now, there are other bugs (I should say, new features introduced).
>
> Loading cache: 100%
> |################################################################################################|
> Time: 0:00:00
> Loaded 3533 entries from dependency cache.
> Parsing recipes: 100%
> |##############################################################################################|
> Time: 0:00:00
> Parsing of 2311 .bb files complete (2309 cached, 2 parsed). 3535
> targets, 121 skipped, 1 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'dhcp-libs' (but
> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'dhcp-libs' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['dhcp-libs']
> ERROR: Nothing RPROVIDES 'dhcp-server' (but
> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'dhcp-server' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['dhcp-server']
> ERROR: Nothing RPROVIDES 'dhcp-server-config' (but
> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'dhcp-server-config' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['dhcp-server-config']
> ERROR: Nothing RPROVIDES 'dhcp-client' (but
> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'dhcp-client' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['dhcp-client']
> ERROR: Nothing RPROVIDES 'dhcp-relay' (but
> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'dhcp-relay' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['dhcp-relay']
> ERROR: Nothing RPROVIDES 'dhcp-omshell' (but
> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'dhcp-omshell' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['dhcp-omshell']
>
> Seems that this line in local.conf got severely changed, or most
> likely the DHCP package version/handling got changed:
>
> CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcp-libs dhcp-server
> dhcp-server-config dhcp-client dhcp-relay dhcp-omshell cmake
> libsocketcan nfs-utils rt-tests strace procps
> packagegroup-core-buildessential "
>
> The question is: what should I include in the
> CORE_IMAGE_EXTRA_INSTALL_append for the DHCP package for gatesgarth
> and later releases???
>
> Thank you,
> Zoran
> _______
>
> On Mon, May 24, 2021 at 2:24 PM Quentin Schulz <foss@0leil.net> wrote:
> >
> > Hi Zoran,
> >
> > On May 24, 2021 8:27:58 AM UTC, Zoran <zoran.stojsavljevic@gmail.com> wrote:
> > >Hello again to YOCTO Folks,
> > >
> > >Here is another blunder I ran into while fixing a yocto-setup.sh script:
> > >https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/yocto-setup.sh
> > >
> > >While executing $  . ./yocto-setup.sh dunfell, everything ran smoothly.
> > >
> > >I did the same routine with the $  . ./yocto-setup.sh gatesgarth, and
> > >approximately after:
> > >Parsing recipes: 9% |##########
> > >
> > >The following message pops up!
> > >Loading cache: 100% |
> > >                                                | ETA:  --:--:--
> > >Loaded 0 entries from dependency cache.
> > >ERROR: ParseError at
> > >/home/vuser/projects_yocto/bbb-yocto-gatesgarth/meta-bbb/images/console-image.bb:4:
> > >Could not include required file images/basic-dev-image.bb
> > >
> > >Summary: There was 1 WARNING message shown.
> > >Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> > >
> >
> > The layer is not included. Check in your bblayers.conf. see https://github.com/ZoranStojsavljevic/bbb-yocto/blob/a6e8e8ce491705816d02df58fa0ef9378b18ef83/yocto-setup.sh#L114 where you are missing the gatesgarth check.
> >
> > Cheers,
> > Quentin
> >
> >
> > >If you peek into the following github repos:
> > >https://github.com/jumpnow/meta-bbb
> > >https://github.com/jumpnow/meta-jumpnow
> > >
> > >You'll see that in later  images/basic-dev-image.bb does exist, as
> > >well as in the dunfell branch:
> > >https://github.com/jumpnow/meta-jumpnow/blob/zeus/images/basic-dev-image.bb
> > >
> > >As well as in gatesgarth branch:
> > >https://github.com/jumpnow/meta-jumpnow/blob/gatesgarth/images/basic-dev-image.bb
> > >
> > >What I see upon the logic, something changes in poky/ setup, while
> > >transitioning from dunfell to gatesgarth.
> > >
> > >I also have created an issue in bbb-yocto repo:
> > >https://github.com/ZoranStojsavljevic/bbb-yocto/issues/3
> > >
> > >I would appreciate any ideas or hints...  Maybe some changes required
> > >in local.conf ?
> > >
> > >You can all try it yourselves, and see the same!
> > >
> > >Thank you,
> > >Zoran
> > >_______
> >
> > --
> > Sent from my Android device with K-9 Mail. Please excuse my brevity.
