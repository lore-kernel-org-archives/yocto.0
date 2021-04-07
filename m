Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.4673.1617787994694276719
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Apr 2021 02:33:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XybQJBi3;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: zoran.stojsavljevic@gmail.com)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C03B138C04F5
	for <yocto@yoctoproject.org>; Wed,  7 Apr 2021 09:33:13 +0000 (UTC)
Received: by mail-pj1-f43.google.com with SMTP id z22-20020a17090a0156b029014d4056663fso1006390pje.0
        for <yocto@yoctoproject.org>; Wed, 07 Apr 2021 02:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=LN0TkLEl9L0Be0ZI5CTj91RsGjAeaddavs40dbrcbAw=;
        b=XybQJBi3Zo+8WUvCcglA6np/d0DN1sH4YIzxlGoG8o2Fl4A7QwdePcwo1JJlHSNkPg
         oDEQArSD5+jsWAGdelhAdTZ+dJwLHViRnSf//S8wYZu5P9fDFJIk/ZMc7f7Ei5x9Rq7w
         DgL2/priU/jzZWUtJtD8yIIb0SsIbwtdQgftfpecDBo7b0Q0rZIwXA7tfaceNo1nz/Xs
         qiZLQ0VGrgQjH8JHtxqfqCeJ6Yoyj066vxr2Usas3OEi1eDzDMg2Yjhaq5MubfTMewYq
         9PPviW/6jz8hCQKSI7vBXXYWmfx5yr58UYEJYk8/fcR3lwfDHiWVvVaToONYcY1BVzzt
         lIKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=LN0TkLEl9L0Be0ZI5CTj91RsGjAeaddavs40dbrcbAw=;
        b=UXQwCGvqRgqNSGylGcrpMD/3n5k+hEmGMG3jpUJpw61m7GOqavDcvnb7Mn6Ts4b71+
         nvoLN7J2f+KJm5l2bR3TZhVHGmUQsjSPhi5dxUNdRNnZ6kuCf6Lun1Cylata8NCHsyn7
         fJkVeT27KFbpHVO5PoBpDc47iRw0jNk0kUKuRQq2kZJEwayv15cbbkrSZVd+gNxklZru
         ja/qkiHXBcOeU4x+HdwgyI+F7EVQh0dWP7XCLSj4o51zuixwG40xtoziMwsMFkqoe2/5
         E8m15G2bfobMska+uhTzvBBx3BVJYw2RprBSR92O9ezt5XiWXRf1ggnhr81u1AV0I+V3
         3cWQ==
X-Gm-Message-State: AOAM530K2/5G88cdJxfqbWhVlyci3IY1Tgxgy8gSn3j9WkUR8fuF6wOT
	vus6xnHhtDRT/GSgcO5k8VwSpp9KzVa4+Hmh5dg=
X-Google-Smtp-Source: ABdhPJyPjvFayDNAfLPgdB6EvaqfbWxmrrvAKf8zL+flq53CvcD9ydYwuw+Zq0+Ua11of/s6BRhKDF4lyFgbZSZuySA=
X-Received: by 2002:a17:90a:7144:: with SMTP id g4mr2422578pjs.117.1617787992909;
 Wed, 07 Apr 2021 02:33:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210406234700.2493404-1-yann@blade-group.com>
 <CAGAf8Lwh8vP8K+ppSY1nefdw_Rx0eGnjz=P4=tyztPKPhMniqg@mail.gmail.com> <CA+4=imZ1R=X+QCR46Xj4sSmLR9L3OUgk_KXVXO=3QoQGk-KnAA@mail.gmail.com>
In-Reply-To: <CA+4=imZ1R=X+QCR46Xj4sSmLR9L3OUgk_KXVXO=3QoQGk-KnAA@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 7 Apr 2021 11:33:01 +0200
Message-ID: <CAGAf8LyXrjpB6H_T7Sz5cjQ7qbhi3TGMqmBqoBkbnTFxLCEQbw@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] trusted-firmware-a: use 1500000 baud for serial console
To: Yann Dirson <yann.dirson@blade-group.com>
Cc: Yocto Project <yocto@yoctoproject.org>, Trevor Woerner <twoerner@gmail.com>, 
	Yann Dirson <yann@blade-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> Sure it is awkward when all tools have come to default
> to 115200, but then is the situation so different from
> when we transitioned from, say, 9600?

These are historical reasons. It started as 600, 1200, then quickly
jumped to 9600 (4x), stayed some time there, and then transitioned via
19600 to final 115200. But I also see baud rates of 57600.

115200/9600 =3D 12 The serial speed transmission was the issue here.

> Hopefully someone from Rockchip will answer :)

Could not agree more with you on the statement. Hopefully! ;)

> When working on this platform everyone now has his tools setup
> for 1500000, because that's the vendor BSP settings.  Would we
> have good technical reasons to switch back ?

Since most of them use 115200. And clock divisors are adjusted to that
baud rate, my best guess.

Maybe the reason for that is that the base clocking tree frequency for
Rockchip could not derive 115200, rather 150000?!

Zee
_______

On Wed, Apr 7, 2021 at 10:55 AM Yann Dirson <yann.dirson@blade-group.com> =
wrote:
>
> Le mer. 7 avr. 2021 =C3=A0 06:07, Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> a =C3=A9crit :
> >
> > > +-#define RK3399_BAUDRATE                       115200
> > > ++#define RK3399_BAUDRATE                       1500000
> > > + #define RK3399_UART_CLOCK             24000000
> >
> > Interesting... For years (a few decades) everybody has used 115200 as
> > the standard setup for UART, as global definition.
>
> Sure it is awkward when all tools have come to default to 115200, but th=
en
> is the situation so different form when we transitionned from, say, 9600=
 ?
>
> > Why suddenly somebody changed the UART baud rate to be non-standard?
> > From the speed point of view???
> >
> > Don't think so.
>
> Hopefully someone from Rockchip will answer :)
>
> > Should U-Boot be adjusted to the standard baud rate of 115200 for RK33=
99?
>
> When working on this platform everyone now has his tools setup for 15000=
00,
> because that's the vendor BSP settings.  Would we have good technical re=
asons
> to switch back ?
>
>
> >
> > My two cent addendum/thinking,
> > Zee
> > _______
> >
> >
> > On Wed, Apr 7, 2021 at 1:47 AM Yann Dirson <yann.dirson@blade-group.co=
m> wrote:
> > >
> > > From: Yann Dirson <yann@blade-group.com>
> > >
> > > TF-A runs between two u-boot stages which both uses 1500000 baud, it
> > > just makes no sense to use the same UART at a different rate.
> > >
> > > Here is a sample session with the successive stages, with TF-A artif=
icially
> > > separated for emphasis:
> > >
> > >  [20210406-175438.135934] U-Boot TPL 2021.01 (Jan 11 2021 - 18:11:43=
)
> > >  [20210406-175438.135956] Channel 0: DDR3, 933MHz
> > >  [20210406-175438.236974] BW=3D32 Col=3D10 Bk=3D8 CS0 Row=3D15 CS=3D=
1 Die BW=3D16 Size=3D1024MB
> > >  [20210406-175438.237000] Channel 1: DDR3, 933MHz
> > >  [20210406-175438.237004] BW=3D32 Col=3D10 Bk=3D8 CS0 Row=3D15 CS=3D=
1 Die BW=3D16 Size=3D1024MB
> > >  [20210406-175438.237008] 256B stride
> > >  [20210406-175438.237012] Trying to boot from BOOTROM
> > >  [20210406-175438.237015] Returning to boot ROM...
> > >  [20210406-175438.237018]
> > >  [20210406-175438.573394] U-Boot SPL 2021.01 (Jan 11 2021 - 18:11:43=
 +0000)
> > >  [20210406-175438.573431] Trying to boot from MMC1
> > >
> > >  [20210406-175438.589254] NOTICE:  BL31: v2.3():v2.3-dirty
> > >  [20210406-175440.534055] NOTICE:  BL31: Built : 15:56:43, Apr 20 20=
20
> > >
> > >  [20210406-175441.393423] U-Boot 2021.01 (Jan 11 2021 - 18:11:43 +00=
00)
> > >  [20210406-175441.393429]
> > >  [20210406-175441.393433] SoC: Rockchip rk3399
> > >
> > > Signed-off-by: Yann Dirson <yann@blade-group.com>
> > > ---
> > >  .../files/serial-console-baudrate.patch       | 35 ++++++++++++++++=
+++
> > >  .../trusted-firmware-a_%.bbappend             |  5 +++
> > >  2 files changed, 40 insertions(+)
> > >  create mode 100644 recipes-bsp/trusted-firmware-a/files/serial-cons=
ole-baudrate.patch
> > >
> > > diff --git a/recipes-bsp/trusted-firmware-a/files/serial-console-bau=
drate.patch b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.=
patch
> > > new file mode 100644
> > > index 0000000..10b5a2b
> > > --- /dev/null
> > > +++ b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.p=
atch
> > > @@ -0,0 +1,35 @@
> > > +From 840d6b6420e1fd8cdf6e4de7fa58a6f8de151622 Mon Sep 17 00:00:00 2=
001
> > > +From: Yann Dirson <yann@blade-group.com>
> > > +Date: Tue, 6 Apr 2021 17:28:45 +0200
> > > +Subject: [PATCH] Set serial console baudrate back to 1500000.
> > > +
> > > +TF-A runs between two u-boot stages which both uses 1500000 baud, i=
t
> > > +just makes no sense to use the same UART at a different rate.
> > > +
> > > +This effectively reverts part of 0c05748bdebfad9fa43a80962186438bb8=
fbce62.
> > > +Main reason for that change stated in https://developer.trustedfirm=
ware.org/T762
> > > +is ChromeOS compatibility.
> > > +
> > > +Looks like this patch may become unnecessary in the future, when
> > > +u-boot and TF-A get to communicate this value.
> > > +
> > > +---
> > > + plat/rockchip/rk3399/rk3399_def.h | 2 +-
> > > + 1 file changed, 1 insertion(+), 1 deletion(-)
> > > +
> > > +diff --git a/plat/rockchip/rk3399/rk3399_def.h b/plat/rockchip/rk33=
99/rk3399_def.h
> > > +index ba83242eb..8d6ecfbe6 100644
> > > +--- a/plat/rockchip/rk3399/rk3399_def.h
> > > ++++ b/plat/rockchip/rk3399/rk3399_def.h
> > > +@@ -17,7 +17,7 @@
> > > + /*****************************************************************=
*********
> > > +  * UART related constants
> > > +  *****************************************************************=
*********/
> > > +-#define RK3399_BAUDRATE                       115200
> > > ++#define RK3399_BAUDRATE                       1500000
> > > + #define RK3399_UART_CLOCK             24000000
> > > +
> > > + /*****************************************************************=
*************
> > > +--
> > > +2.30.2
> > > +
> > > diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bba=
ppend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> > > index 442dee8..1942c17 100644
> > > --- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> > > +++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> > > @@ -4,3 +4,8 @@ DEPENDS_append_rk3399 =3D " virtual/arm-none-eabi-gc=
c-native"
> > >
> > >  COMPATIBLE_MACHINE_append_rk3399 =3D "|rk3399"
> > >  COMPATIBLE_MACHINE_append_rk3328 =3D "|rk3328"
> > > +
> > > +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> > > +SRC_URI +=3D "\
> > > +    file://serial-console-baudrate.patch \
> > > +"
> > > --
> > > 2.30.2
> > >
> > >
> > >=20
> > >
>
>
>
> --
> Yann Dirson <yann@blade-group.com>
> Blade / Shadow -- http://shadow.tech
