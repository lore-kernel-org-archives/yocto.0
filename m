Return-Path: <davis.roman84@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DF6BC43219
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 23:01:28 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com
 [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web10.1052.1641337286702317966
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 15:01:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NrTr0OQZ;
 spf=pass (domain: gmail.com, ip: 209.85.219.171,
 mailfrom: davis.roman84@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id o185so85351997ybo.12
        for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 15:01:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=x+MDqimg+D3/BviXJpxcqJqUcF0JDZdmKeA6cX3a/CA=;
        b=NrTr0OQZXsRviOxFIBmy0/VqrDjyONqknhV2h3bcDHr9MblHYjZoclD0Sq2Q14xSnr
         xDO5QeVjn5HloE2nKQIJs6G2VYBDZ5dqeGOFx5UkPhlsASzN5lXIkFyLzprHYerH3G0w
         48FIccS1L/JuOEJbQvSeazzxtZVepBTNQho7DZdPIgMmLTt0K0PqmCW0yJ7PuLjms8Gy
         Ukmy8FTVsP5/6YAesVHCUmwknGRWonu+uf1ZddbAGuYmL8v3aGZMKyg76ARXTmiD0ITl
         A2AxO7Z5nLZBOsUvTdJoExlaNhDepezvcjPbUXhsdja/mLc7bRcXq/CWl7XhXNaw1z/J
         oW8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=x+MDqimg+D3/BviXJpxcqJqUcF0JDZdmKeA6cX3a/CA=;
        b=VV2lLco5t5Wv8Tme5LWUrSDGNChRKU5ERpe3cEzztimVUeAvqMyJr8zBIWSUoqEeiJ
         57CXiiLAEHofQAU3zUXAsOv2nSLh7on1fB1nM3TGI23JzynzBVtXtTadHEPhfSwdXuQz
         Itc6VsIzyQuwjyIsDAs3fujOvnVvMJi8wlfNjyUxTtfsXD+ihWiWsFNZKeg/LJh/HYEB
         gpocpoC3WjnCfOp4vhc88Cs0bHS6M7mP3gjIqRZJWjBJhYJbJTmbnmLl4BBo2xa9pyNk
         y19e4UEVmYuA///gtJHatE+PW26N1AL48KMV0zk7Kd069Zj3ko67Hsik6DVERmDa1es1
         rURQ==
X-Gm-Message-State: AOAM531HXaRBItZCS3G5dnHbK7tbGhQW/QOxwvn9lPmLtB6c2SPapcXe
	nC+7mLx3NwcD+dLCimkExulnKmmdpzn4XHHtI8s=
X-Google-Smtp-Source: 
 ABdhPJxqsL1K8bAE93Z+U0cVc/JXrJ9u3QXmsluSj0Wno9XdQ+foUZOZ43nL6zRozUkVGVE6N0KceoodZuL+xz55DD0=
X-Received: by 2002:a05:6902:1507:: with SMTP id
 q7mr40056459ybu.396.1641337285729;
 Tue, 04 Jan 2022 15:01:25 -0800 (PST)
MIME-Version: 1.0
References: 
 <CACfi_Z0ct76Dv9o+NU_Wf3Hz0Eb7Gcsbbds3AkMuy_1511jhYw@mail.gmail.com>
 <ba8ff6fe-f017-38e9-e211-b91654de8d4c@gmail.com>
 <CACfi_Z36+pYBU-jUKxa1qAQaVZDPi1NXwiubovv-+XM0onFVLg@mail.gmail.com>
 <A98BAD8D-4355-424F-9949-1094B0C64A7A@iki.fi>
 <CACfi_Z3aRtoxr+7GdGw4C2e9JouwXH-ckAbqY7HKJC+0GFrniQ@mail.gmail.com>
 <CAMKF1srJf66rX78pS0diXF7tGMZ=63OhuOSMqnerULu=3cEo+A@mail.gmail.com>
 <CACfi_Z0WVsnoJ+s_dHnTDxoykOZoPtorf_QUJzb6muj3ph=2vA@mail.gmail.com>
 <CACfi_Z2Nz2UTD-EztnVQQY2LKpDHNJ5oe9TK=Vzho+XGvX-g=Q@mail.gmail.com>
In-Reply-To: 
 <CACfi_Z2Nz2UTD-EztnVQQY2LKpDHNJ5oe9TK=Vzho+XGvX-g=Q@mail.gmail.com>
From: Davis Roman <davis.roman84@gmail.com>
Date: Tue, 4 Jan 2022 18:01:08 -0500
Message-ID: 
 <CACfi_Z1oytr550hy_mm-i4Ed0bYYx4xtKmTe=F1jk4t-sdbMBw@mail.gmail.com>
Subject: Re: [yocto] building image for Realtek RTS3916N mips SoC using vendor
 provided prebuilt external uClibc toolchain
To: Khem Raj <raj.khem@gmail.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>,
 song li <ghosty.lee.1984@gmail.com>,
	yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 23:01:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55732

On Wed, Dec 29, 2021 at 7:40 PM Davis Roman <davis.roman84@gmail.com> wrote=
:
>
> On Wed, Dec 29, 2021 at 6:15 PM Davis Roman <davis.roman84@gmail.com> wro=
te:
> >
> > On Wed, Dec 29, 2021 at 5:30 PM Khem Raj <raj.khem@gmail.com> wrote:
> > >
> > >
> > >
> > > On Wed, Dec 29, 2021 at 2:20 PM Davis Roman <davis.roman84@gmail.com>=
 wrote:
> > >>
> > >> On Wed, Dec 29, 2021 at 2:21 PM Anders Montonen <Anders.Montonen@iki=
.fi> wrote:
> > >> >
> > >> > Hi,
> > >> >
> > >> > > On 29 Dec 2021, at 9:53, davis roman <davis.roman84@gmail.com> w=
rote:
> > >> > >
> > >> > > I generated an internal mips toolchain built against musl and I =
tried
> > >> > > to compile u-boot but unfortunately, I'm getting "opcode not
> > >> > > supported" error messages. https://pastebin.com/QdcLxy69
> > >> > > If instead I use the realtek provided prebuilt toolchain then u-=
boot
> > >> > > compiles successfully. https://pastebin.com/zcQ5kc20
> > >> > >
> > >> > > I'm thinking that Realtek's toolchain has patches specific to th=
eir
> > >> > > SoC that have not been pushed upstream. Could this be the reason=
 I'm
> > >> > > unable to compile uboot?
> > >> >
> > >> > I=E2=80=99m guessing that your U-Boot config doesn=E2=80=99t set t=
he correct MIPS architecture revision. The compiler error shows that you=E2=
=80=99re trying to assemble a MIPS32r1 instruction, but the compiler is tar=
geting the original MIPS1 architecture. The Realtek toolchain may have set =
the default architecture to match the SoC, but the fix is to update the con=
fig to match the hardware.
> > >>
> > >> You're right. I didn't realize the RX5281 core on the RTS3916N only
> > >> supports mips1 or mips16 (https://pasteboard.co/IpsqN6GkBYAs.png).
> > >>
> > >> I happened to have a mips sourcery toolchain installed on my machine
> > >> (https://sourcery.sw.siemens.com/GNUToolchain/package12797/public/mi=
ps-linux-gnu/mips-2014.05-27-mips-linux-gnu-i686-pc-linux-gnu.tar.bz2)
> > >> so I pointed that to u-boot without modifying anything else and it w=
as
> > >> able to compile u-boot successfully. Woot!
> > >> https://pastebin.com/ySPFae5u
> > >>
> > >> I suppose the next step would be to generate a mips1 yocto toolchain
> > >> however according to the available tune values it appears only mips3=
2
> > >> or mips64 is available
> > >>
> > >> Any suggestions on how to generate a mips1 yocto toolchain or if
> > >> that's even supported?
> > >
> > >
> > > Yes it=E2=80=99s supported although it=E2=80=99s not default for qemu=
mips so the simple trick you can do is change the DEFAULTTUNE setting in th=
e qemumips.conf away from mips32r2
> >
> > Sorry Khem, I'm not quite following you. I tried the following patch
> > (https://pastebin.com/rkmQ3t6P) thinking perhaps this is what you
> > meant however my build configuration still shows the tune set to
> > mips32r2 https://pastebin.com/izP9thVW
> >
> > What am I missing?
> >
>
> Nevermind, I scraped the last patch, recreated my BUILD_DIR, set
> MACHINE =3D "qemumips" and added DEFAULTTUNE =3D "mips" in my local.conf.
> Now the build configuration correct https://pastebin.com/pkkRVL58 and
> I'm now waiting for the toolchain to finish so I can attempt to build
> realtek's u-boot.

Unfortunately, I still get the original u-boot error
(https://pastebin.com/8eKzFWQh) even after creating a toolchain using
DEFAULTTUNE=3Dmips.

Later I re-read what Anders Montonen had mentioned regarding the arch
needs to be set in the u-boot source itself (since the yocto toolchain
does not contain the same defaults as the realtek toolchain) so I
decided to tweak arch/mips/Makefile to set the arch to mips32 ( it
should be backwards compatible with mips1)

------------------------------------------
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index efe7e44..0c0f0c2 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -29,6 +29,7 @@ arch-$(CONFIG_CPU_MIPS32_R6) +=3D -march=3Dmips32r6 -Wa,-=
mips32r6
 arch-$(CONFIG_CPU_MIPS64_R1) +=3D -march=3Dmips64 -Wa,-mips64
 arch-$(CONFIG_CPU_MIPS64_R2) +=3D -march=3Dmips64r2 -Wa,-mips64r2
 arch-$(CONFIG_CPU_MIPS64_R6) +=3D -march=3Dmips64r6 -Wa,-mips64r6
+arch-$(CONFIG_CPU_TAROKO)    +=3D -march=3Dmips32 -Wa,-mips32

 # Allow extra optimization for specific CPUs/SoCs
 tune-$(CONFIG_MIPS_TUNE_4KC) +=3D -mtune=3D4kc
------------------------------------------

With this patch, my build was able to get a little farther
(https://pastebin.com/BkC2NY1Y) however I got the following linker
error:

mipsel-poky-linux-ld.bfd: u-boot: error: PHDR segment not covered by
LOAD segment
Makefile:1214: recipe for target 'u-boot' failed
make: *** [u-boot] Error 1

Any idea what this could be about? or thoughts in general?


I'm not sure if the gcc dumpspecs for each toolchain would be useful
but here they are just in case.
yocto toolchain - https://pastebin.com/BLRveGWD ( not able to compile
realtek u-boot)
realtek toolchain - https://pastebin.com/cPwRa9jf ( able to compile
realtek u-boot)
code sourcery mips 2016.05 - https://pastebin.com/RXbf9Q50 ( able to
compile realtek u-boot)

>
> > >>
> > >>
> > >>
> > >> >
> > >> > Regards,
> > >> > Anders Montonen

