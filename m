Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.752.1616427075922585977
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 08:31:16 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=IVDVz4hP;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1681D38C05F8
	for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 15:31:15 +0000 (UTC)
Received: by mail-vs1-f43.google.com with SMTP id z68so7667820vsb.10
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 08:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=AfGq0c2NWyUPk7pTxXT00M8G19wOHKkHkk97aqiQXuQ=;
        b=IVDVz4hPWFT+2tPKVnHJM9HRYHxrYC3JlFVrAkKxudQGtNfXGTnJoAmvr6CxU4tQcG
         Qm4TZaJ8EDAWSl6IXeOJebBsiWOZHkFNEnawBuPugNkC8Urv/2+RhO94fkdSGWAl59k1
         whj5mVG4SJQ3hOa57ED8X9mOBAH62p6Q88gCL8MXbdgSpSXuV8KdxJgpZDflMe0qNXQi
         /K1foXbcWXEACzrahyUMKZfKtTGxRXNWM7rg4bsaSm92umFr8KgWJU1EBy8ySAzF22C6
         NYL/gvC4GSkYdaqLnj0LQky89/YttVDPNIrGAg1E5pHl49EWc96V5etd9ibY8NGKy+FI
         3ocQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=AfGq0c2NWyUPk7pTxXT00M8G19wOHKkHkk97aqiQXuQ=;
        b=FzG2Uzx+dZ5jauq/NiQXumw4mf0yq8Wtn+UPFrRoxmGYsSZiTDo6Z+2rbwdw2JI092
         T4najEwoVReiP3Fo4D537gY0F6MlmVcL/x8POEG6v1xSBRLhUOoq7TUtLHCAP/hFmnYI
         FYoqn/TrAd9aUEjDJoZemDZTACh7wDq3jCOKKvQ1O4FECTTcrgTtXDc1yVt/H1m+2s42
         LXCW3e2N7pl34W6GWTBIgWmVt5y+KQkI0R+nY/vm4ax7z+WflMqbqyKPoMxRSNtssX6P
         3dOxjkdugFfJEu9v86jDBSylBY8NnIQ996w+NHlmfvwfwIwvGNcVSIHfhnZeowsjNOyO
         C8gQ==
X-Gm-Message-State: AOAM532qUMm5tcTGkjZKEEXcpXBjNi7+sz92wn9t7ZhYqyUs1JCdJ+s4
	EK9UBoi6s7WSSWYc10inljU8dwGfm1o/Ea9447k7ig==
X-Google-Smtp-Source: ABdhPJzZKVsPaqmpG2CuI98YFDJKtNEk/+haX44BuJaZ2gNZdEZJ+SBKA7QKkYctDSq6FNCjXOWkCl3u4dECIVXoFto=
X-Received: by 2002:a05:6102:3a06:: with SMTP id b6mr302982vsu.21.1616427074102;
 Mon, 22 Mar 2021 08:31:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210322134212.576790-1-yann@blade-group.com> <20210322144753.GA33662@localhost>
 <166EB22A27C12C43.28220@lists.yoctoproject.org>
In-Reply-To: <166EB22A27C12C43.28220@lists.yoctoproject.org>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Mon, 22 Mar 2021 16:31:01 +0100
Message-ID: <CA+4=imZsRTr40jO+aOHDrXogiEqLRCdkB=5L-tWtOSREC+EDnQ@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] Add machine definitions for NanoPi-M4 boards
To: Yann Dirson <yann.dirson@blade-group.com>
Cc: Trevor Woerner <twoerner@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>, 
	Yann Dirson <yann@blade-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

BTW, I'm also unclear on what to do next to better support those
boards: with the default
kernel config only a subset of the hardware is supported, and for
state-of-the-art hw
support we'll also need patches not yet in upstream kernel (from eg.
armbian and libreelec).

I feel it would be good to provide defconfig files for those machines,
but then there are
several options to handle that.  Would a minimal hw-focused defconfig
suitable for
`KCONFIG_MODE =3D "--allnoconfig"` be a good option ?

Le lun. 22 mars 2021 =C3=A0 16:00, Yann Dirson via lists.yoctoproject.org
<yann.dirson=3Dblade-group.com@lists.yoctoproject.org> a =C3=A9crit :
>
> Hi Trevor,
>
> Le lun. 22 mars 2021 =C3=A0 15:47, Trevor Woerner <twoerner@gmail.com> a=
 =C3=A9crit :
> > On Mon 2021-03-22 @ 02:42:12 PM, yann.dirson@blade-group.com wrote:
> > > This supports both the 2GB and 4GB versions of the board.  This is n=
ot
> > > done with 2 different machine definitions since only u-boot has to
> > > change between those two configurations, but with a NANOPIM4_HW vari=
able
> > > to set in local.conf.
> >
> > Traditionally in meta-rockchip this is done using two separate machine=
 files
> > with all the common things factored into a common include file. See
> > tinker-board and tinker-board-s as well as all the rock-pi-4* definiti=
ons for
> > examples.
> >
> > I would prefer if the same thing was done here.
>
> Damned that was how I did my first patch, I just felt it was much
> better this way :(
>
> Digging up that original commit re rerolling.
>
>
> Wouldn't it be useful to have a standard way to specify such hardware
> variants, that
> would be recognized as such by the layer index ?
>
>
>
> --
> Yann Dirson <yann@blade-group.com>
> Blade / Shadow -- http://shadow.tech
>
>=20
>


--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech
