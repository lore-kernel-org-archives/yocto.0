Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web08.23584.1621865408180774555
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 May 2021 07:10:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GqzFISo8;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id l70so20196350pga.1
        for <yocto@lists.yoctoproject.org>; Mon, 24 May 2021 07:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iOlDcqwPSVcHTsNxxvopxk8yvo9WQnkoye5D0xjJ6jI=;
        b=GqzFISo8GWJ7PMZZ6VwIeEfH1zs2QeqLA8vYNObucWDen9wMkomh49l281q2HfU9Hg
         9gsgrpnuKW7WFoARepk7wIqT5UFvnv664bxsz8g96Ju2QwPXRm2CfIj/rCB+iZCs+ZRZ
         FI53w4+RDeZRyVfdf0RhHM9Tj6iEs+rVTMUGh5KxxcKsAm2AXRBcsfNJQypTLb/QzUQq
         xL4S46xtvm+Pn5xdE1VSmmpPlAe+9fxH9TLnHWLZnckBw+r4ZAsyEkr54YRdAn9968/W
         RF9qeF9dG6D465ojJzzt1M1+CXAgQHN6oxMe67GYdPLBOcmSavrSMk/zfQmjFYNilMAE
         rG/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iOlDcqwPSVcHTsNxxvopxk8yvo9WQnkoye5D0xjJ6jI=;
        b=ttnDNr3jfctZCHm1qq5J4g8fY3s9CaQjdHYXjKrA4k8U1tpQALIu0wKt7fjR8FyN1p
         I3EQuJwOTdek1n4/6NDA3NpK5QfV7c3256IhDCDdTl+xrDvco2N4n2i0RgjLYiaKK/7G
         qOGP76NiwpqdLrebOVFjQKH0cn1Bgp9uT0iLrFJegkHq88/73usEDSN9J/Dvz+4YVLtE
         qohwErWNMWswtDXbcOWxzxt9dlc8YzNs9f3OtYj53MjxNINzjNO+9CzmPEJWJdZjl3kW
         xzLTOm7PGdhOi4A3ZlY4vFTP+rRACqDYIMtfGNH/2PTecP7uuuvL2CHcbFmMXivN0RSL
         Bt9g==
X-Gm-Message-State: AOAM533vx1yhoQ06Ctvvg7KxdWBhbWo8fiivXUk1UaEnipuljC3Ler2n
	n5uWbO9rJC/C1y23kfkdZ5WpXAKy+KFvrUZoxyM=
X-Google-Smtp-Source: ABdhPJzLjp/MU69YGC32vfb+n9R1QIJ9Xd0YP9kW0mdtItN+4C/hFDxcnEmW8IBDSSPf/F41jZ518WFeledQg1/+7Mk=
X-Received: by 2002:a05:6a00:1630:b029:2c0:a1eb:d77 with SMTP id
 e16-20020a056a001630b02902c0a1eb0d77mr24799071pfc.81.1621865407228; Mon, 24
 May 2021 07:10:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LzBFh2PrDYN1wyZGZ9==uAEk+BfNxUOaRGFBJsy6TniUw@mail.gmail.com>
 <B870330F-3B69-4C5C-B077-ECCBA0460E13@0leil.net>
In-Reply-To: <B870330F-3B69-4C5C-B077-ECCBA0460E13@0leil.net>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 24 May 2021 16:09:55 +0200
Message-ID: <CAGAf8Lx_1NHRNrgF5ou49HSyLokJR85rRYpNdgv-hepqQzEehw@mail.gmail.com>
Subject: Re: [yocto] ERROR: ParseError at .../bbb-yocto-gatesgarth/meta-bbb/images/console-image.bb:4: Could not include required file images/basic-dev-image.bb
To: Quentin Schulz <foss@0leil.net>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, Scott Ellis <scott@jumpnowtek.com>
Content-Type: text/plain; charset="UTF-8"

Hello Quentin,

Thank you for finding the bug. It was in front of my eyes (I print all
the layers at the end of setup, but I missed to compare bb-layers from
dunfell with bb-layers from gatesgarth).

I should do better. With regards to testing thinking. ;-)
_______

Now, there are other bugs (I should say, new features introduced).

Loading cache: 100%
|################################################################################################|
Time: 0:00:00
Loaded 3533 entries from dependency cache.
Parsing recipes: 100%
|##############################################################################################|
Time: 0:00:00
Parsing of 2311 .bb files complete (2309 cached, 2 parsed). 3535
targets, 121 skipped, 1 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'dhcp-libs' (but
/home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'dhcp-libs' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dhcp-libs']
ERROR: Nothing RPROVIDES 'dhcp-server' (but
/home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'dhcp-server' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dhcp-server']
ERROR: Nothing RPROVIDES 'dhcp-server-config' (but
/home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'dhcp-server-config' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dhcp-server-config']
ERROR: Nothing RPROVIDES 'dhcp-client' (but
/home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'dhcp-client' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dhcp-client']
ERROR: Nothing RPROVIDES 'dhcp-relay' (but
/home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'dhcp-relay' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dhcp-relay']
ERROR: Nothing RPROVIDES 'dhcp-omshell' (but
/home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/images/core-image-minimal.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'dhcp-omshell' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dhcp-omshell']

Seems that this line in local.conf got severely changed, or most
likely the DHCP package version/handling got changed:

CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcp-libs dhcp-server
dhcp-server-config dhcp-client dhcp-relay dhcp-omshell cmake
libsocketcan nfs-utils rt-tests strace procps
packagegroup-core-buildessential "

The question is: what should I include in the
CORE_IMAGE_EXTRA_INSTALL_append for the DHCP package for gatesgarth
and later releases???

Thank you,
Zoran
_______

On Mon, May 24, 2021 at 2:24 PM Quentin Schulz <foss@0leil.net> wrote:
>
> Hi Zoran,
>
> On May 24, 2021 8:27:58 AM UTC, Zoran <zoran.stojsavljevic@gmail.com> wrote:
> >Hello again to YOCTO Folks,
> >
> >Here is another blunder I ran into while fixing a yocto-setup.sh script:
> >https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/yocto-setup.sh
> >
> >While executing $  . ./yocto-setup.sh dunfell, everything ran smoothly.
> >
> >I did the same routine with the $  . ./yocto-setup.sh gatesgarth, and
> >approximately after:
> >Parsing recipes: 9% |##########
> >
> >The following message pops up!
> >Loading cache: 100% |
> >                                                | ETA:  --:--:--
> >Loaded 0 entries from dependency cache.
> >ERROR: ParseError at
> >/home/vuser/projects_yocto/bbb-yocto-gatesgarth/meta-bbb/images/console-image.bb:4:
> >Could not include required file images/basic-dev-image.bb
> >
> >Summary: There was 1 WARNING message shown.
> >Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> >
>
> The layer is not included. Check in your bblayers.conf. see https://github.com/ZoranStojsavljevic/bbb-yocto/blob/a6e8e8ce491705816d02df58fa0ef9378b18ef83/yocto-setup.sh#L114 where you are missing the gatesgarth check.
>
> Cheers,
> Quentin
>
>
> >If you peek into the following github repos:
> >https://github.com/jumpnow/meta-bbb
> >https://github.com/jumpnow/meta-jumpnow
> >
> >You'll see that in later  images/basic-dev-image.bb does exist, as
> >well as in the dunfell branch:
> >https://github.com/jumpnow/meta-jumpnow/blob/zeus/images/basic-dev-image.bb
> >
> >As well as in gatesgarth branch:
> >https://github.com/jumpnow/meta-jumpnow/blob/gatesgarth/images/basic-dev-image.bb
> >
> >What I see upon the logic, something changes in poky/ setup, while
> >transitioning from dunfell to gatesgarth.
> >
> >I also have created an issue in bbb-yocto repo:
> >https://github.com/ZoranStojsavljevic/bbb-yocto/issues/3
> >
> >I would appreciate any ideas or hints...  Maybe some changes required
> >in local.conf ?
> >
> >You can all try it yourselves, and see the same!
> >
> >Thank you,
> >Zoran
> >_______
>
> --
> Sent from my Android device with K-9 Mail. Please excuse my brevity.
