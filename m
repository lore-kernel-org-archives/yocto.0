Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.7745.1616500779074229559
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 04:59:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=QBV7kdLX;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6915038C0570
	for <yocto@yoctoproject.org>; Tue, 23 Mar 2021 11:59:37 +0000 (UTC)
Received: by mail-vs1-f48.google.com with SMTP id v2so9217152vsq.11
        for <yocto@yoctoproject.org>; Tue, 23 Mar 2021 04:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=9Ad6cVIc7IqtaIMUs2dHn0pR0TuDGtTEATuRZMZ37/8=;
        b=QBV7kdLX3/M36NR3y6mlv0o56i00o0Fa2484oMSnqDz5TTijb/oZx6XEULcrUF29r+
         jC3zIw0wsvThcO13bQf9RzvdCuhlV+CPLf8bV6BTY+nbHGYMncL2elcYpVSJ0F9i0LKb
         rBQRiW8gFgxEVB0KG2zYePxpDP0XMghsGFU3+e7ifBUizGEF3fgzkaw+n2Hwdc5pZHpB
         68YMmHrrHn8AaPaSi4afoJPO1xYE7qLcj39q37WGumvszCbYjk1LdCgt4s8CImLL3Zzp
         nqaQbwEEKBqlPQb/2UMky3a4u74v49UVMFEvIzLd1M3QI8V2bAOmmIOofCzobksNRxyl
         c+Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=9Ad6cVIc7IqtaIMUs2dHn0pR0TuDGtTEATuRZMZ37/8=;
        b=OFI9nM7OpITf+842OdfO/FeeowA3FutFGWo2gvzcvxqKWdGuDsDGLrYOgTLZQDurzP
         nPAyhhtMquU12Mx67jsLAut35RGnzUrLeBybbvY0eB0pH3upi6wgFlWRoyKx3xKsO66q
         7tUe9g8HxaTbKieYeuoJRfECyYoxfaASLJElHkMCIwlH6RTfn3g68zkE0PhOLTxANF4j
         dCT1tlm77Gwc/TvCjcaJWAaBnnLsfdsI12Zx+PQKTKvF+eEc7gowXs+c7eWjlGJFubJA
         rEqmc0cpvpOKFEITEaHU5i9I3uyXcwRSWh7aKe29nzInoi9WXnNceAevjENo0ypQ4yCl
         lhuA==
X-Gm-Message-State: AOAM5302WJ/Aq8ZGO4MG9QjsIvJD7VSS5mINwnHbbuYfKqaBnT4IAt1i
	5BXim6C5CEtGOy3QB+1GYbqCwAFf1lYHMyw1qAz3Hw==
X-Google-Smtp-Source: ABdhPJzGkrCwli+iMaHYcVOI72Zrhp/cyHC5IRvV4xaUiVsH6cKzgNrkTGT8rkfUtXQnwvC9jaWZ9jCRyMZi4VhHgN4=
X-Received: by 2002:a67:f04f:: with SMTP id q15mr2919020vsm.22.1616500776236;
 Tue, 23 Mar 2021 04:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210322134212.576790-1-yann@blade-group.com> <20210322144753.GA33662@localhost>
 <166EB22A27C12C43.28220@lists.yoctoproject.org> <CA+4=imZsRTr40jO+aOHDrXogiEqLRCdkB=5L-tWtOSREC+EDnQ@mail.gmail.com>
 <20210322155021.GA23379@localhost>
In-Reply-To: <20210322155021.GA23379@localhost>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Tue, 23 Mar 2021 12:59:24 +0100
Message-ID: <CA+4=imbGcUVwsz3kF411s1OeSRL=vrWt=Cpsb-3ud+P-86nkTw@mail.gmail.com>
Subject: [yocto] [meta-rockchip] defconfig alternatives
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, Yann Dirson <yann@blade-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Trevor,

Le lun. 22 mars 2021 =C3=A0 16:50, Trevor Woerner <twoerner@gmail.com> a =
=C3=A9crit :
> > BTW, I'm also unclear on what to do next to better support those
> > boards: with the default
> > kernel config only a subset of the hardware is supported, and for
> > state-of-the-art hw
> > support we'll also need patches not yet in upstream kernel (from eg.
> > armbian and libreelec).
> >
> > I feel it would be good to provide defconfig files for those machines,
> > but then there are
> > several options to handle that.  Would a minimal hw-focused defconfig
> > suitable for
> > `KCONFIG_MODE =3D "--allnoconfig"` be a good option ?
>
> I feel exactly the same way.
>
> By default all arm64 kernels are configured with the one, in-kernel, gene=
ric
> arm64 defconfig. That gives me a kernel that is over 11MB in size, and
> includes all sorts of useless drivers.
>
> I've been working off-and-on on a mechanism for meta-rockchip that would =
allow
> users to decide between the default in-kernel arm64 defconfig (which woul=
d
> be selected by doing nothing) or using a leaner defconfig that I have bee=
n
> tweaking specifically for each board. Currently I only have a lean defcon=
fig
> for rock-pi-4b, but it was my hope to generate defconfigs for all support=
ed
> boards.
>
> Ideally I had wanted to leverage the linux-yocto kmeta mechanism to gener=
ate
> defconfigs dynamically based on the specific machine and specific user
> preferences, but that didn't go as smoothly as I was hoping, then I got
> distracted by other things.
>
> I had created a spreadsheet with a comparison between the various boards =
that
> would have been a basis for the individual kmeta pieces. Maybe I'll find =
some
> more time to poke at it later this week. I could also push my WIP stuff t=
o
> somewhere if you'd like to take a look.
>
> In any case, my point is, I'm very interested in something better than wh=
at
> currently exists :-)

On my side I have a minimal defconfig for our own board, which is very simi=
lar
to the nanopi-m4, which could be used as a starting point for the latter.


> One thing that I'd like to keep clear in meta-rockchip is to always allow=
 the
> user to choose between upstream and "extras". My feeling is: the simplest
> build, if the user does nothing explicit, will always pull from pure upst=
ream
> with no out-of-tree patches or vendor pieces. But I'm not opposed to havi=
ng
> a mechanism whereby if the user does something explicit, they can choose =
to
> use a vendor tree or make use of out-of-tree patches for various things.

One possibility would be using a KERNEL_CONFIG_VARIANT variable, whose
values would select consistent sets of KBUILD_DEFCONFIG + KCONFIG_MODE
+ SRC_URI_append.  Standard variants could include "mainline" as the
default, and
maybe "customhw" which would bring just the hw features for the board
in allnoconfig
mode.

Or maybe we could try to fit such a selection mechanism in the PACKAGECONFI=
G
system, but I'm not sure it would really fit.



--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech
