Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B59C64ED8
	for <webhook@archiver.kernel.org>; Fri, 17 Feb 2023 15:41:24 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web10.9577.1676648481291452754
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 07:41:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20210112.gappssmtp.com header.s=20210112 header.b=yueJlEkx;
 spf=softfail (domain: sidebranch.com, ip: 209.85.208.50, mailfrom: leon@sidebranch.com)
Received: by mail-ed1-f50.google.com with SMTP id cz7so2384341edb.12
        for <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 07:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PSsvyOAJ/EXuvB0k9+vdE32GGa+uIWx2Tf48kxeVsTc=;
        b=yueJlEkxcuggEONycmtNyFGGH/rFiyQ2Rk0CYnIxEfwcL4fiPCeT0nlcc5t7DphWzL
         PyeSYSkxhT67uLWwHONGGDqB4bgpsMof9xlxQDJJpo41MUXwCMFNs1KZZtyKQPOhSUQR
         KXZ+DJGsWJF+YZMV1L3WG045Neg76j6vDaYjn25rGb5ueZ4EzwvqSecqOlkGYIa3rvUo
         vCayCx0mLTkTJ2cGe97jrxEqlwpSUA5oaDSZvfLQRy+YJyym8Y7XPDu0Zs0n73rAY0cg
         xZ3JtibzouZZMzLSSy/EtboN+DUmbSwWKs3gvaWpzWRm61+gT2E6S4Q3XB3Stfp3UkbK
         mIVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PSsvyOAJ/EXuvB0k9+vdE32GGa+uIWx2Tf48kxeVsTc=;
        b=f8D0neTND+BxqbJcFJQcrBl3abjaZ4edvW9Wou9x8+jmJy8xIwkOHXw+BKetNqHA81
         Y+Spfuqg/jSzQE3sLVkZx7CJn3iZ04DE5TgWYcOhC4VeYX64OpTMutEax7m264mttWQG
         JmW3WKmp6LTcVAl0GlDW3yipuP6UyVZpyQPsm2uWQ0jk8jKL1szvM9C3KaYmPnSfFto9
         qwDUjSyaYSj4+Tlrs3496nbqsD84fQoaSwI9Ur+bt9YxJ1cgwiHQlt07Owvg/JbzDlSM
         c7tYlUb8BkgKmS3GYuPNA0Do5zhhvNI3fhJ2joQAG4OQ7VZsWjtJe240Ql/dSXLx1h8/
         TJhg==
X-Gm-Message-State: AO0yUKXOcloV0B0j2c0HL8tOZZBoqr6XAm7Kq89Mqjvg2p/YXs8dnA1J
	oR9oUq7B4JXnxEmciZBTYHWK6Yly9aB/D17Im6n7wg==
X-Google-Smtp-Source: AK7set/56aS1BY9+QqJs/SbLtgl30IiJ9fZdt0M2TiPT6JADxRuGyU46wwu9wzx613oRvvw7QGs75nvEFvSjoD/fgMM=
X-Received: by 2002:a05:6402:1f12:b0:4ab:4bce:1a1f with SMTP id
 b18-20020a0564021f1200b004ab4bce1a1fmr4297204edb.3.1676648479471; Fri, 17 Feb
 2023 07:41:19 -0800 (PST)
MIME-Version: 1.0
References: <D36X.1676610504336239737.JLfk@lists.yoctoproject.org>
 <CAMSfU+6Vi+ff0sog4EvyTYZQEAaGnUXMDdoe5+ns=T30N-a1iQ@mail.gmail.com>
 <CANNYZj_gGvuJQhPD26C=v9ywja6UwYDa6O=b5CJkdHkJh_bKMQ@mail.gmail.com> <Y++L0sgJGNkyElAq@mail.local>
In-Reply-To: <Y++L0sgJGNkyElAq@mail.local>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Fri, 17 Feb 2023 16:41:08 +0100
Message-ID: <CAMjhiJin+QBUOFRdBLpKOAfFbR-CMUUhtEkD5jkKPmR5qVQOWQ@mail.gmail.com>
Subject: Re: [yocto] Importance of ECC RAM on the build computer
To: alexandre.belloni@bootlin.com
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, Yoann Congal <yoann.congal@smile.fr>, 
	davidskeck@fastmail.com, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 15:41:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59242

Hello,

Interesting question, and I especially would like to hear on the MTBF
*measured* through the ECC detection algorithm. It can usually detect
more errors than it can correct, and I wonder if the systems admin are
notified when bitflips where detected.


Regards,

Leon.

--=20
Leon Woestenberg
leon@sidebranch.com
T: +31 40 711 42 76
M: +31 6 472 30 372

Sidebranch Embedded Systems
Eindhoven, The Netherlands
http://www.sidebranch.com



On Fri, Feb 17, 2023 at 3:14 PM Alexandre Belloni via
lists.yoctoproject.org
<alexandre.belloni=3Dbootlin.com@lists.yoctoproject.org> wrote:
>
> On 17/02/2023 10:41:37+0100, Alexander Kanavin wrote:
> > On the other hand, I'm yet to hear an actual case of a broken build
> > due to non-ECC. It's not impossible, but it seems exceedingly rare.
> > You're far more likely to spend 100x as much time on logical errors or
> > out-of-resources problems.
>
> It actually happened in one of our build, were we had a bitflip in the
> final binary which was then not working as expected.
>
> We also had multiple cases of headers/source file corruption after the
> tarball is extracted but usually those are either caught by the compiler
> or don't matter at all.
>
> >
> > Alex
> >
> > On Fri, 17 Feb 2023 at 09:31, Yoann Congal <yoann.congal@smile.fr> wrot=
e:
> > >
> > > Hi!
> > >
> > > Le ven. 17 f=C3=A9vr. 2023 =C3=A0 06:08, <davidskeck@fastmail.com> a =
=C3=A9crit :
> > >>
> > >> Is there generally suggested advice regarding the importance of ECC =
on the build computer? I'm very new to Yocto so I'm not sure if there is a =
chance the final build image could experience some corruption due to flippe=
d bits in RAM or if I'm totally overthinking this.
> > >
> > >
> > > Last time I checked. The ECC vs non-ECC price difference was not wort=
h the time you may spend in case of a RAM bitflip.
> > > Here, we put ECC RAM in our build systems and I guess it's quite the =
industry standard.
> > >
> > >> It is also possible that Yocto does some kind of CRC checking of its=
 own that makes this a non-issue. Any guidance would be appreciated. Thank =
you!
> > >
> > >
> > > Yocto does source integrity checks (the stuff it downloads from the i=
nternet) but it can't do much more after that.
> > >
> > > I've yet to debug a RAM bitflip but I guess it may trigger any kind o=
f weird behavior which may be hard to debug and time consuming.
> > >
> > > My advice is : keep your time and sanity, use ECC RAM.
> > >
> > > Regards,
> > > --
> > > Yoann Congal
> > > Smile ECS - Expert technique
> > >
> > >
> > >
>
> >
> >
> >
>
>
> --
> Alexandre Belloni, co-owner and COO, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59241): https://lists.yoctoproject.org/g/yocto/messag=
e/59241
> Mute This Topic: https://lists.yoctoproject.org/mt/97022997/1051774
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [leon@sidebranc=
h.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

