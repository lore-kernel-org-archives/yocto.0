Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web11.5346.1621917314372774259
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 May 2021 21:35:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=I2U7RIRZ;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id v12so15713820plo.10
        for <yocto@lists.yoctoproject.org>; Mon, 24 May 2021 21:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nlEIFJOq0XjsBIw4BgHVxpA/LttmaWzDEREEYuSDBIM=;
        b=I2U7RIRZdxUcBaEJaV3aTkauzxfQG4x7Cd4He5oxGUHNGKzvnmGnIRkoKjgIEq9UBG
         BGJHJx5q+WmPwe5/6TLlY1TN3cAEt7zGuQD5ANJGzn+tXi5ExuLrvTnlUEChHZDkKfSt
         mCVBReqsVOoPMzT52izucF6t/Ej4hSTGT3CH5d/rWPXy83rJBl3XS/cUB2eGbv3VtJzR
         CNwMWmns8YQUFNANgaPmXMsN8tW96gs73UFj0eeZO+Dq0BIUg6auqJnvNSlNuxIkA57S
         R8Qbq/deL/V3zyGIPuSDatiLyMzTFRVmL83SiZx6MGdutCR3lq1RIFxePyTpJcJJ1Z8W
         vhDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nlEIFJOq0XjsBIw4BgHVxpA/LttmaWzDEREEYuSDBIM=;
        b=n2EdQnn9qg7TXttvJJzZzONVzr8Zq3Tdem8Yd9uEKOVsbPGdYBWjXCmslDnv7jFSYR
         hla9L1efDwMJ9P7xBZ5KW1WsSZ9sSkIKqBlABVpBF/BzzDla7hY9cXjlDJThWnBhKhKw
         LzlBivZQDyzF73n7Y2KxwUS15bbl5Wm5ijZKNaHSncxL1SAVi40Mv4bdDiq+g3diFICP
         pdRnG+Ao7ABIB0AcoJp/tLzDVoF+d0vllR27e5nhYVjhjsP24FcIeufezIlBcwk2O6gC
         vOuQ3YD+CbAUq77sDuodMtlVmm1M2aoeHK8cBc1qM3HpY8g2PiBVsXZGDUGO5UnKnM4J
         CUNA==
X-Gm-Message-State: AOAM530WbU11F9FJUW8O681CNgD/CfpAUcOKoeyvp9IZE1DF9gyOYUSE
	YYGTHT0Bn1UHejcX9Ohj33vuZ86fr5CX068ng9A=
X-Google-Smtp-Source: ABdhPJwbG/RalXr4DIIUSb2KsbyuDknf6GBww2lY2NiLe3F7i8Pz+gnxNrt062/4v4jpnax6+0fFCTIQSxOFXKkMxVw=
X-Received: by 2002:a17:90a:d24f:: with SMTP id o15mr2812677pjw.83.1621917313481;
 Mon, 24 May 2021 21:35:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LzBFh2PrDYN1wyZGZ9==uAEk+BfNxUOaRGFBJsy6TniUw@mail.gmail.com>
 <B870330F-3B69-4C5C-B077-ECCBA0460E13@0leil.net> <CAGAf8Lx_1NHRNrgF5ou49HSyLokJR85rRYpNdgv-hepqQzEehw@mail.gmail.com>
 <CAGAf8LyCBxcYmc9B+LjFuR4XJ2gJb27f68_4yrBcbRW4gFtnAQ@mail.gmail.com> <637FB939-FDB2-4722-870C-3D77FB857AE3@0leil.net>
In-Reply-To: <637FB939-FDB2-4722-870C-3D77FB857AE3@0leil.net>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 25 May 2021 06:35:02 +0200
Message-ID: <CAGAf8Lzqy_OEzFRDa_rHSjQ1hS6fRmJ9_FqoHARq+xz4w+yKpg@mail.gmail.com>
Subject: Re: [yocto] ERROR: ParseError at .../bbb-yocto-gatesgarth/meta-bbb/images/console-image.bb:4: Could not include required file images/basic-dev-image.bb
To: Quentin Schulz <foss@0leil.net>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, Scott Ellis <scott@jumpnowtek.com>
Content-Type: text/plain; charset="UTF-8"

> IIRC, dhcp-server has been replaced by kea, check on that side maybe.
> Read the migration notes, pretty sure the kea thing is listed there.

Done. All fixed according to Quentin's recommendations.

https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/yocto-setup.sh#L114
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-gatesgarth/local.conf#L18
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-gatesgarth/local.conf_kernel#L26

Added to README.md .
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/README.md

Thank you,
Zoran
_______

On Mon, May 24, 2021 at 9:27 PM Quentin Schulz <foss@0leil.net> wrote:
>
>
>
> On May 24, 2021 2:13:57 PM UTC, Zoran <zoran.stojsavljevic@gmail.com> wrote:
> >Or, maybe, now the DHCP is included in the releases by default?
> >
> >Thank you,
> >Zoran
> >_______
> >
> >On Mon, May 24, 2021 at 4:09 PM Zoran Stojsavljevic
> ><zoran.stojsavljevic@gmail.com> wrote:
> >>
> >> Hello Quentin,
> >>
> >> Thank you for finding the bug. It was in front of my eyes (I print all
> >> the layers at the end of setup, but I missed to compare bb-layers from
> >> dunfell with bb-layers from gatesgarth).
> >>
> >> I should do better. With regards to testing thinking. ;-)
> >> _______
> >>
> >> Now, there are other bugs (I should say, new features introduced).
> >>
> >> Loading cache: 100%
> >> |################################################################################################|
> >> Time: 0:00:00
> >> Loaded 3533 entries from dependency cache.
> >> Parsing recipes: 100%
> >> |##############################################################################################|
> >> Time: 0:00:00
> >> Parsing of 2311 .bb files complete (2309 cached, 2 parsed). 3535
> >> targets, 121 skipped, 1 masked, 0 errors.
> >> NOTE: Resolving any missing task queue dependencies
> >> ERROR: Nothing RPROVIDES 'dhcp-libs' (but
> >> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
> >> RDEPENDS on or otherwise requires it)
> >> NOTE: Runtime target 'dhcp-libs' is unbuildable, removing...
> >> Missing or unbuildable dependency chain was: ['dhcp-libs']
> >> ERROR: Nothing RPROVIDES 'dhcp-server' (but
> >> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
> >> RDEPENDS on or otherwise requires it)
> >> NOTE: Runtime target 'dhcp-server' is unbuildable, removing...
> >> Missing or unbuildable dependency chain was: ['dhcp-server']
> >> ERROR: Nothing RPROVIDES 'dhcp-server-config' (but
> >> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
> >> RDEPENDS on or otherwise requires it)
> >> NOTE: Runtime target 'dhcp-server-config' is unbuildable, removing...
> >> Missing or unbuildable dependency chain was: ['dhcp-server-config']
> >> ERROR: Nothing RPROVIDES 'dhcp-client' (but
> >> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
> >> RDEPENDS on or otherwise requires it)
> >> NOTE: Runtime target 'dhcp-client' is unbuildable, removing...
> >> Missing or unbuildable dependency chain was: ['dhcp-client']
> >> ERROR: Nothing RPROVIDES 'dhcp-relay' (but
> >> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
> >> RDEPENDS on or otherwise requires it)
> >> NOTE: Runtime target 'dhcp-relay' is unbuildable, removing...
> >> Missing or unbuildable dependency chain was: ['dhcp-relay']
> >> ERROR: Nothing RPROVIDES 'dhcp-omshell' (but
> >> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
> >> RDEPENDS on or otherwise requires it)
> >> NOTE: Runtime target 'dhcp-omshell' is unbuildable, removing...
> >> Missing or unbuildable dependency chain was: ['dhcp-omshell']
> >>
> >> Seems that this line in local.conf got severely changed, or most
> >> likely the DHCP package version/handling got changed:
> >>
> >> CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcp-libs dhcp-server
> >> dhcp-server-config dhcp-client dhcp-relay dhcp-omshell cmake
> >> libsocketcan nfs-utils rt-tests strace procps
> >> packagegroup-core-buildessential "
> >>
> >> The question is: what should I include in the
> >> CORE_IMAGE_EXTRA_INSTALL_append for the DHCP package for gatesgarth
> >> and later releases???
> >>
>
> If I remember correctly, dhcp-server has been replaced by kea, check on that side maybe. Read the migration notes, pretty sure the kea thing is listed there.
>
> Cheers,
> Quentin
>
> >> Thank you,
> >> Zoran
> >> _______
> >>
> >> On Mon, May 24, 2021 at 2:24 PM Quentin Schulz <foss@0leil.net> wrote:
> >> >
> >> > Hi Zoran,
> >> >
> >> > On May 24, 2021 8:27:58 AM UTC, Zoran <zoran.stojsavljevic@gmail.com> wrote:
> >> > >Hello again to YOCTO Folks,
> >> > >
> >> > >Here is another blunder I ran into while fixing a yocto-setup.sh script:
> >> > >https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/yocto-setup.sh
> >> > >
> >> > >While executing $  . ./yocto-setup.sh dunfell, everything ran smoothly.
> >> > >
> >> > >I did the same routine with the $  . ./yocto-setup.sh gatesgarth, and
> >> > >approximately after:
> >> > >Parsing recipes: 9% |##########
> >> > >
> >> > >The following message pops up!
> >> > >Loading cache: 100% |
> >> > >                                                | ETA:  --:--:--
> >> > >Loaded 0 entries from dependency cache.
> >> > >ERROR: ParseError at
> >> > >/home/vuser/projects_yocto/bbb-yocto-gatesgarth/meta-bbb/images/console-image.bb:4:
> >> > >Could not include required file images/basic-dev-image.bb
> >> > >
> >> > >Summary: There was 1 WARNING message shown.
> >> > >Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> >> > >
> >> >
> >> > The layer is not included. Check in your bblayers.conf. see https://github.com/ZoranStojsavljevic/bbb-yocto/blob/a6e8e8ce491705816d02df58fa0ef9378b18ef83/yocto-setup.sh#L114 where you are missing the gatesgarth check.
> >> >
> >> > Cheers,
> >> > Quentin
> >> >
> >> >
> >> > >If you peek into the following github repos:
> >> > >https://github.com/jumpnow/meta-bbb
> >> > >https://github.com/jumpnow/meta-jumpnow
> >> > >
> >> > >You'll see that in later  images/basic-dev-image.bb does exist, as
> >> > >well as in the dunfell branch:
> >> > >https://github.com/jumpnow/meta-jumpnow/blob/zeus/images/basic-dev-image.bb
> >> > >
> >> > >As well as in gatesgarth branch:
> >> > >https://github.com/jumpnow/meta-jumpnow/blob/gatesgarth/images/basic-dev-image.bb
> >> > >
> >> > >What I see upon the logic, something changes in poky/ setup, while
> >> > >transitioning from dunfell to gatesgarth.
> >> > >
> >> > >I also have created an issue in bbb-yocto repo:
> >> > >https://github.com/ZoranStojsavljevic/bbb-yocto/issues/3
> >> > >
> >> > >I would appreciate any ideas or hints...  Maybe some changes required
> >> > >in local.conf ?
> >> > >
> >> > >You can all try it yourselves, and see the same!
> >> > >
> >> > >Thank you,
> >> > >Zoran
> >> > >_______
> >> >
> >> > --
> >> > Sent from my Android device with K-9 Mail. Please excuse my brevity.
>
> --
> Sent from my Android device with K-9 Mail. Please excuse my brevity.
