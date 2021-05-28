Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web12.6465.1622198358431969791
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 May 2021 03:39:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ExCKkIaI;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id 69so1438208plc.5
        for <yocto@lists.yoctoproject.org>; Fri, 28 May 2021 03:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=J1S/akaXx/teaUzeigvQ8Nzd4XLOwksBrPUucc8DoA0=;
        b=ExCKkIaIOc9LhFlbNvcTi6OsXoIi2SEskGwXKwrk/e9jfLAn8ioVdK7JwQYABH90a2
         NvKxRNrQr2zy8NgMIvACDBjFle/TUHDhUe1BL0MQft//gjHylx7C8PeQgpWAKk/C0Un9
         BlRNWQ/kAWZIuN7jwhN5bJY6qH2htYFWb7Ub8jesKxla/NZjFPGGL59CdMOZb2cR47py
         jfLGl7mccAwI2i6vs5KCuycUht+/kLpaq9yP/awX+j6fwLjyjIhrlbQDvr8FJLeAnz2M
         AXRD7BQ5mqOcVxa4GSWZVjCNujkrro78gi1iXkiyBh9c4cXS3ErWxr3hSwqtLGRo9KTW
         Ur6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=J1S/akaXx/teaUzeigvQ8Nzd4XLOwksBrPUucc8DoA0=;
        b=lXjFyaoRGYoE2gOujQSyWDUrT4qWRYJlfo1CuS7V8LeMD1+TcopskKadMoB7aL/SsD
         LuFqfzBTrmz096Oroq/biYbwShBOFC9Sl4Ygq7pRY13TBjzNTAqF0VC45Cchd/nxit5w
         25nVzSn3b1JMT8ivzdfm93axA6u3r88X249jkx85T/69lOtevTavL2J2p3Vf9Mb0LZZ3
         A3GCL7cehsNhgRzoFoCRrlvPmLhVGs/LlbVStIXdn7Rqh427yil2xNZb2Kqo1xhUYu4N
         jSm5hSpaq8Yse023/QhlTd0n8X/AaxX3kyjmW1bIzpxRBs0R5uhOWCn/2FSqvOAhTczw
         GEIw==
X-Gm-Message-State: AOAM531/kQgkwfGv8mKD76sGIPlwZfw5qcfNeL9PueijKDyyiPGDTCGR
	uw6UiAhBsoY1HLzUSgnNbz/iVangV3iRzYcGjn0=
X-Google-Smtp-Source: ABdhPJxKoADJqR+gBbpWFwyjlB3e0upLH7dVZ5XCofTwBpOkOHk36rn6YR3/KEaX7+CNtVtLlkoXyo17jw2uROMAO3U=
X-Received: by 2002:a17:90a:e391:: with SMTP id b17mr3643384pjz.75.1622198357762;
 Fri, 28 May 2021 03:39:17 -0700 (PDT)
MIME-Version: 1.0
References: <dWBn.1622153050533898469.7UFj@lists.yoctoproject.org> <7642946a-9a4b-2799-9db2-1187822ffbcf@gmail.com>
In-Reply-To: <7642946a-9a4b-2799-9db2-1187822ffbcf@gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 28 May 2021 12:39:06 +0200
Message-ID: <CAGAf8LwVjEGU122cthPZeAv7LAfdXpvD1tJXWMBVr+oSSvb59Q@mail.gmail.com>
Subject: Re: [yocto] How to switch yocto INIT_MANAGER from systemd to sysvinit #dunfell
To: Khem Raj <raj.khem@gmail.com>, rpjday@crashcourse.ca
Cc: sayinswapna@gmail.com, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Why do I (always) point out the obvious?

And I do need... Geniuses are not meant to fix The World to understand them!?

Geniuses should understand The World (and act properly)!

Extras to geniality, do you, YOCTO primes, think?
_______

Robert... If I am correct, i'm I?

Should you include in docs some examples??? Yes, U should!
As for an example fix:
poky/meta/conf/distro/include/init-manager-*.con, NOT
conf/distro/include/init-manager-*.conf

(full path is more explicit, isn't it?)

And some local.conf examples/snippets (since all descriptions are here
and there very dry):

## Add systemd service
INIT_MANAGER = "systemd"
## DISTRO_FEATURES_append = " systemd"
## DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
## VIRTUAL-RUNTIME_init_manager = "systemd"
## VIRTUAL-RUNTIME_dev_manager = "systemd"
## VIRTUAL-RUNTIME_initscripts = ""

Where INIT_MANAGER = "systemd" replaces all commented commands below....

My two cent advice,
Zee
_______

On Fri, May 28, 2021 at 1:28 AM Khem Raj <raj.khem@gmail.com> wrote:
>
>
>
> On 5/27/21 3:04 PM, sayinswapna@gmail.com wrote:
> > Hello Yocto team:
> >
> > I just started with yocto and would like to know the process for
> > switching the init manager from systemd to sysvinit.
> >
> > I tried this options in config file
> > VIRTUAL-RUNTIME_init_manager = "busybox"
> > PREFERRED_PROVIDER_udev = "sysvinit"
> > PREFERRED_PROVIDER_udev-utils = "sysvinit"
> > DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
> > DEFAULT_DISTRO_FEATURES += " sysvinit"
> >
> > I see a warning when building my machine:
> >
> > No recipe for target:
> > /recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
>
> Please find out which layer is adding this bbappend you could use
>
> bitbake-layers show-appends sysvinit
>
> It seems recipe version is newer perhaps and the bbappend is still made
> for older recipe, these things happen when you mix release branches for
> different layers.
>
> >
> > When I run this build on my target it still shows me systemd init manager...
> >
> > Not sure if I am missing any options.
> > Could you please let me know if there are any pointers I can refer to?
> >
> > Thanks,
> > Priya
> >
> >
> >
> >
> >
> >
>
> 
>
