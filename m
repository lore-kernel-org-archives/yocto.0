Return-Path: <davis.roman84@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0774FC433EF
	for <webhook@archiver.kernel.org>; Wed, 29 Dec 2021 23:15:54 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com
 [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web09.57821.1640819753245624018
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Dec 2021 15:15:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BapZAs8b;
 spf=pass (domain: gmail.com, ip: 209.85.219.171,
 mailfrom: davis.roman84@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id d1so46580842ybh.6
        for <yocto@lists.yoctoproject.org>;
 Wed, 29 Dec 2021 15:15:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=78nkn1z2xO23CjoOjbBCGQLWdlfXSGT4pVJeLyyPVsw=;
        b=BapZAs8b1eIIrtpF5tmNLlbG2kILo8PtzWE/reBv7yEKHFYxFxF9u2gfM/6d11dCEo
         rmX8QFVG+7irl2qL0yf9JpinOQWfKCsigk+NM5BzrY+M1tbctoq2bNbR1S+l2oLyjX9B
         kd/bNNqnBDrG3875kBehpVBk0+TaVNjnFTmQ8MW6XEwaJnG100M2sJFonJ27irkPjaUM
         8QSF+1Km/xPb/jNVNAE2J2dxJSG8TchLzCDvBY2lgwflqVMHTyBh8xvdh+GsNn5xpzIC
         WA39kJSuRKA/bV7VvLwOfnICaSeaId4i22tJnDsTVyFMYbvW3VGzAGOwsskhYYBh19AK
         mr/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=78nkn1z2xO23CjoOjbBCGQLWdlfXSGT4pVJeLyyPVsw=;
        b=mvUMfUpEzgl8ngQuKlKsYKmxYltAqxhVTFfguvdGyMqhfu127DXTX3bNAy0UwlzLef
         VZ1PuPBANkbWqUuP9Jd6VS3fYBBmhBnc/sg1NZHv820omKXmCcnko1dQO5AV09DHbxm6
         DztdFnoAcADRb+PYkUA+RFTMGAzHclCnYgV8zAMtSRft5900umkBpY6XB5PwhsudnivJ
         1wsWqSFj3baoah8lm8xN0c4BALQWp5h+k3Sm0iNaIP2Y325XGZTinztPA105mMVSOdXd
         QynjW5cb8qeYhhEvVL8G2XNKMDKU0DKChQqSj89UqvcDBtC1KvKkzYZUnVvq3LpgqVtg
         fYoA==
X-Gm-Message-State: AOAM5313Pi+ml0nOIoeopEjwdbaRHvljlbBZlcqHhAGMldlDQ+55f/yB
	USaunPLnUSDSaqG0PhMNPhF80tzMdUOjOpfnpQY=
X-Google-Smtp-Source: 
 ABdhPJyHbOKOBRn6CK5JoLkGJ+4qI8KXY+arqZ35uYR1BB0mMgNjYgeThXVV3RkuSGSbbFO6NG1xJO9MoPItegJjWCc=
X-Received: by 2002:a25:3890:: with SMTP id
 f138mr27445685yba.703.1640819752294;
 Wed, 29 Dec 2021 15:15:52 -0800 (PST)
MIME-Version: 1.0
References: 
 <CACfi_Z0ct76Dv9o+NU_Wf3Hz0Eb7Gcsbbds3AkMuy_1511jhYw@mail.gmail.com>
 <ba8ff6fe-f017-38e9-e211-b91654de8d4c@gmail.com>
 <CACfi_Z36+pYBU-jUKxa1qAQaVZDPi1NXwiubovv-+XM0onFVLg@mail.gmail.com>
 <A98BAD8D-4355-424F-9949-1094B0C64A7A@iki.fi>
 <CACfi_Z3aRtoxr+7GdGw4C2e9JouwXH-ckAbqY7HKJC+0GFrniQ@mail.gmail.com>
 <CAMKF1srJf66rX78pS0diXF7tGMZ=63OhuOSMqnerULu=3cEo+A@mail.gmail.com>
In-Reply-To: 
 <CAMKF1srJf66rX78pS0diXF7tGMZ=63OhuOSMqnerULu=3cEo+A@mail.gmail.com>
From: Davis Roman <davis.roman84@gmail.com>
Date: Wed, 29 Dec 2021 18:15:38 -0500
Message-ID: 
 <CACfi_Z0WVsnoJ+s_dHnTDxoykOZoPtorf_QUJzb6muj3ph=2vA@mail.gmail.com>
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
 <yocto@lists.yoctoproject.org>; Wed, 29 Dec 2021 23:15:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55691

On Wed, Dec 29, 2021 at 5:30 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>
>
> On Wed, Dec 29, 2021 at 2:20 PM Davis Roman <davis.roman84@gmail.com> wro=
te:
>>
>> On Wed, Dec 29, 2021 at 2:21 PM Anders Montonen <Anders.Montonen@iki.fi>=
 wrote:
>> >
>> > Hi,
>> >
>> > > On 29 Dec 2021, at 9:53, davis roman <davis.roman84@gmail.com> wrote=
:
>> > >
>> > > I generated an internal mips toolchain built against musl and I trie=
d
>> > > to compile u-boot but unfortunately, I'm getting "opcode not
>> > > supported" error messages. https://pastebin.com/QdcLxy69
>> > > If instead I use the realtek provided prebuilt toolchain then u-boot
>> > > compiles successfully. https://pastebin.com/zcQ5kc20
>> > >
>> > > I'm thinking that Realtek's toolchain has patches specific to their
>> > > SoC that have not been pushed upstream. Could this be the reason I'm
>> > > unable to compile uboot?
>> >
>> > I=E2=80=99m guessing that your U-Boot config doesn=E2=80=99t set the c=
orrect MIPS architecture revision. The compiler error shows that you=E2=80=
=99re trying to assemble a MIPS32r1 instruction, but the compiler is target=
ing the original MIPS1 architecture. The Realtek toolchain may have set the=
 default architecture to match the SoC, but the fix is to update the config=
 to match the hardware.
>>
>> You're right. I didn't realize the RX5281 core on the RTS3916N only
>> supports mips1 or mips16 (https://pasteboard.co/IpsqN6GkBYAs.png).
>>
>> I happened to have a mips sourcery toolchain installed on my machine
>> (https://sourcery.sw.siemens.com/GNUToolchain/package12797/public/mips-l=
inux-gnu/mips-2014.05-27-mips-linux-gnu-i686-pc-linux-gnu.tar.bz2)
>> so I pointed that to u-boot without modifying anything else and it was
>> able to compile u-boot successfully. Woot!
>> https://pastebin.com/ySPFae5u
>>
>> I suppose the next step would be to generate a mips1 yocto toolchain
>> however according to the available tune values it appears only mips32
>> or mips64 is available
>>
>> Any suggestions on how to generate a mips1 yocto toolchain or if
>> that's even supported?
>
>
> Yes it=E2=80=99s supported although it=E2=80=99s not default for qemumips=
 so the simple trick you can do is change the DEFAULTTUNE setting in the qe=
mumips.conf away from mips32r2

Sorry Khem, I'm not quite following you. I tried the following patch
(https://pastebin.com/rkmQ3t6P) thinking perhaps this is what you
meant however my build configuration still shows the tune set to
mips32r2 https://pastebin.com/izP9thVW

What am I missing?

>>
>>
>>
>> >
>> > Regards,
>> > Anders Montonen

