Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE16EE49A3
	for <webhook@archiver.kernel.org>; Sat, 19 Aug 2023 17:48:42 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.14507.1692467314011095801
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Aug 2023 10:48:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=O9tmTCva;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-51bece5d935so2436193a12.1
        for <yocto@lists.yoctoproject.org>; Sat, 19 Aug 2023 10:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692467312; x=1693072112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=f4bKlT1Q3yCn4xythgvlqfSvg05cXrfT6x3Ci/031CE=;
        b=O9tmTCva4r3Nt94SRLZyMXwaoF2oVnO+Ix13zEdooTHpaYKx/01mIBwzZVonPlQ4Da
         jy7Gs4/6Rr3lFNCxuAlMguezdSUpZ5Qe3xUo4Oj0m2wvrv3lrmBztR2Nja2XQuJLqwPf
         da7UwZoJwGB8uVN6MZqG64nc1J7LF0r3oxVmHWsY0IlIHnQRb7OtsTkBHR9wzwEhnjHX
         lbcahqiYlWVJ1DheuspY0SgR6rbTTttwmUFgNn0Tlk/sZ8i/jcGBaXQOCvgwdoYPt6sg
         3Ep0PgJT/0YsbMHPFSUTeKdkm386tPEGhVjndfPIVd/QYjGtDa33Qe8ccPQyrMjIZk7U
         aztw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692467312; x=1693072112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f4bKlT1Q3yCn4xythgvlqfSvg05cXrfT6x3Ci/031CE=;
        b=Xm7gq2gkz5zftECnM/yzZI6DmEz2j++qqMb2yGkyXcaHnrenqXY4o8d/Lk9XSm3uWL
         aDponLzcjsHk1bVa1L3TG59VfAmHzuWQk60WuuoW+ETZXDS02EJA65W4b3tMbY1A6THA
         BGJbmeBfDts70rsgFe6AsRU2KVgMRVmjlewJSHNfITC+9TJpwZ+eZvEXkhPXRV2+R/SK
         dB3IUmp5rioRnJCxjpiyhabYhYIu0Fkeaf0ACviDcAhZeUkdah/R2LmGqiQW7qXgwIFp
         Rx82z/5Ob/lrn0HZxznekb8grus1Nq6owYtNUTAsvDyibYulp6RV1a/lAQk4uPSKRVkc
         v0bA==
X-Gm-Message-State: AOJu0YzghcxAu+quWQj1UYpMyQnugU1kANyo9+wf0fT81AMjdWv4VRBq
	FUdXmEJUwHv296Z43r+D/lU=
X-Google-Smtp-Source: AGHT+IEeXhS8b8KTEK/QRKlwDqSyAOUHPvgJ5Qn3Y67dYOYvCNyo5DwhnDxou6CH88mR+oZA+LKFWw==
X-Received: by 2002:a17:906:3096:b0:99d:e617:abeb with SMTP id 22-20020a170906309600b0099de617abebmr2000985ejv.23.1692467312012;
        Sat, 19 Aug 2023 10:48:32 -0700 (PDT)
Received: from ?IPv6:2a02:169:59a6:0:dcf2:2f65:9442:83f? ([2a02:169:59a6:0:dcf2:2f65:9442:83f])
        by smtp.gmail.com with ESMTPSA id p23-20020a1709060dd700b0099bd453357esm3058446eji.41.2023.08.19.10.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Aug 2023 10:48:31 -0700 (PDT)
Message-ID: <a86f9062fe608d32fbc5ad8e34992189a7cd345c.camel@gmail.com>
Subject: Re: [yocto] Qemu not working for raspberry pi
From: adrian.freihofer@gmail.com
To: Alexander Kanavin <alex.kanavin@gmail.com>, Khem Raj <raj.khem@gmail.com>
Cc: shrikantvaishnav@hotmail.com, yocto@lists.yoctoproject.org
Date: Sat, 19 Aug 2023 19:48:30 +0200
In-Reply-To: <CANNYZj8KhtafOYpJV_5O1=a91dfD3o5psZF13WHL5TRjZH6PAw@mail.gmail.com>
References: <8vPi.1692448940660132639.f92P@lists.yoctoproject.org>
	 <CAMKF1song8RTfJ-k0ht97zSDedp+eAk8tu=GYWoLM5C8Rhg25Q@mail.gmail.com>
	 <CANNYZj8KhtafOYpJV_5O1=a91dfD3o5psZF13WHL5TRjZH6PAw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Aug 2023 17:48:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60833

On Sat, 2023-08-19 at 19:21 +0200, Alexander Kanavin wrote:
> It=E2=80=99s well possible that emulating the arm hardware is not needed,=
 in
> this case x86_64 is vastly better, as it will run at native speeds
> with kvm. When qemu translates arm to x86, the performance drops 10x
> or more.
>=20
> The issue preventing qemu from running is something else in any case,
> I=E2=80=99d suggest making a plain poky build in a new build directory fr=
om
> scratch actually.

This approach has two advantage (as Alex already pointed out):
- The firmware runs with native speed of the host machine if started
with kvm.
- It's trivial to setup. It just works.

But it also also comes with a major disadvantage: It requires to build
everything twice: Once for the target architecture and once for the
host architecture.

The compromise which just works but does not require an extra build for
Qemu is what we have with the beaglebone-yocto machine in poky:
https://git.yoctoproject.org/poky/tree/meta-yocto-bsp/conf/machine/beaglebo=
ne-yocto.conf.

This allows to build for the target hardware but also running the same
firmware image with runqemu. The trick is to add the QB_ configuration
lines to the machine conf file and adding some drivers for the Qemu
emulated hardware to the target kernel.
I guess the Raspberry layer could be improved to support this as well.
But I do not use it.

Regards,
Adrian

>=20
> Alex
>=20
> On Sat 19. Aug 2023 at 19.09, Khem Raj <raj.khem@gmail.com> wrote:
> > On Sat, Aug 19, 2023 at 5:42=E2=80=AFAM <shrikantvaishnav@hotmail.com>
> > wrote:
> > >=20
> > > Hi all,
> > > i want to run my raspberry pi in qemu and for this, I have
> > > created the image using core-image-weston and also set machine
> > > to:MACHINE ??=3D "qemux86-64" .after this whenever I try to run
> > > using qemu it shows
> > > Error:"runqemu - ERROR - IMAGE_LINK_NAME wasn't set to find
> > > corresponding .qemuboot.conf file"
> >=20
> > Its not clear what you are trying to do but I guess you have built
> > an
> > image for RPI which
> > you want to run on an emulator instead of real hardware. In that
> > case,
> > you have to use
> > either qemuarm or qemuarm64 depending upon your image being 64bit
> > or
> > 32bit. you might
> > have to explore runqemu options where you can point it to a kernel
> > and
> > rootfs explicitly
> > and use that to point it to the rpi images. This may not work even
> > after that since there might be more tweaks needed for the pi image
> > to
> > run in qemu.
> >=20
> > >=20
> > > Please help
> > >=20
> > >=20
> >=20
> >=20
> >=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60832):
> https://lists.yoctoproject.org/g/yocto/message/60832
> Mute This Topic: https://lists.yoctoproject.org/mt/100837806/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[adrian.freihofer@gmail=
.com
> ]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


