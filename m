Return-Path: <davis.roman84@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A54C433F5
	for <webhook@archiver.kernel.org>; Wed, 29 Dec 2021 22:20:03 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com
 [209.85.219.177])
 by mx.groups.io with SMTP id smtpd.web10.57278.1640816402095762413
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Dec 2021 14:20:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=X5ol5eLR;
 spf=pass (domain: gmail.com, ip: 209.85.219.177,
 mailfrom: davis.roman84@gmail.com)
Received: by mail-yb1-f177.google.com with SMTP id d1so46303235ybh.6
        for <yocto@lists.yoctoproject.org>;
 Wed, 29 Dec 2021 14:20:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=7rZJceWeJzlmxO8cBCMGlyOnhG8zOfBODGYfXQ2/Jlg=;
        b=X5ol5eLRqH1Q2PTs1Y5H2EaQoQvOjBEcMZFeyT0X3tQWjkP5JHdI+9wXKAujOzc/UN
         jwJskmaOTxEdCUSUNqkwwFy0hR/6wdoK/3qlqLpsMAj8r7ewrUolxq8yh500mygZl/kg
         FcWxpAPaTnilZ+Y3Lv2TQzHoQRL2/6MejCCQJnI7Q4J4jMDrOvsBWAJXSM63x2l1zo5p
         vMcKcdrAnB517OruxxBgXbrTCN17tPXFp79ad4+3uhVHe4T6jmfYaO8iDClRssAfP3WW
         tjsGrKxJYqUe7jDgE3SVRt1djMoVf2L9tlv9aXsyh95FMe1vWy37VDRP7U2lz895XZ/4
         k74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=7rZJceWeJzlmxO8cBCMGlyOnhG8zOfBODGYfXQ2/Jlg=;
        b=lnf5x0B8RL2R1PF/f7FCfJ/2iuozOvopJxeg1pCyDo1lSmqTWK21/3YrrQTno/CZHd
         /HNoDrfrC28yUYddxsY3s89Ume27A/S2oH/9s8gyIoa89CADKzI7uBDoEzob1RrxGcO4
         y9jI72On7J6BKoGB9vaktqpStzpiswfV1J4UyOFSVhtQGOSgqpjUU73SBjnjfSKKty80
         0lhb2r00nmTJQh6Xh3r3E0CxijtZZVG2MTPIbCH7gjd7ErW4nirgbtNjegRW8aKGQmE2
         V/jJyJfZdAmJQfmn9Gqoaq14hu3xFzprKXayFxLstiC+Tcy++tapFiW17GjLTPCHPmaq
         usmQ==
X-Gm-Message-State: AOAM531FFLGcrxerOz8v0BxhCOW4SKT6Xr4pP/hH/CArICx+88V1isM5
	Pc8Wf1GRbzCF8DuOwBIQ5z0OwBt40ehglq+NpDw=
X-Google-Smtp-Source: 
 ABdhPJwahmBaRsAW2AlpLhckvBDdgPaW7d0pLsAtaLIcRgVcre++kS/F+/wm5we5n38XBAOg/AvT7eoWD1wv5HtcmUk=
X-Received: by 2002:a25:3890:: with SMTP id
 f138mr27233791yba.703.1640816400784;
 Wed, 29 Dec 2021 14:20:00 -0800 (PST)
MIME-Version: 1.0
References: 
 <CACfi_Z0ct76Dv9o+NU_Wf3Hz0Eb7Gcsbbds3AkMuy_1511jhYw@mail.gmail.com>
 <ba8ff6fe-f017-38e9-e211-b91654de8d4c@gmail.com>
 <CACfi_Z36+pYBU-jUKxa1qAQaVZDPi1NXwiubovv-+XM0onFVLg@mail.gmail.com>
 <A98BAD8D-4355-424F-9949-1094B0C64A7A@iki.fi>
In-Reply-To: <A98BAD8D-4355-424F-9949-1094B0C64A7A@iki.fi>
From: Davis Roman <davis.roman84@gmail.com>
Date: Wed, 29 Dec 2021 17:19:48 -0500
Message-ID: 
 <CACfi_Z3aRtoxr+7GdGw4C2e9JouwXH-ckAbqY7HKJC+0GFrniQ@mail.gmail.com>
Subject: Re: [yocto] building image for Realtek RTS3916N mips SoC using vendor
 provided prebuilt external uClibc toolchain
To: Anders Montonen <Anders.Montonen@iki.fi>, Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org, song li <ghosty.lee.1984@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Dec 2021 22:20:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55689

On Wed, Dec 29, 2021 at 2:21 PM Anders Montonen <Anders.Montonen@iki.fi> wr=
ote:
>
> Hi,
>
> > On 29 Dec 2021, at 9:53, davis roman <davis.roman84@gmail.com> wrote:
> >
> > I generated an internal mips toolchain built against musl and I tried
> > to compile u-boot but unfortunately, I'm getting "opcode not
> > supported" error messages. https://pastebin.com/QdcLxy69
> > If instead I use the realtek provided prebuilt toolchain then u-boot
> > compiles successfully. https://pastebin.com/zcQ5kc20
> >
> > I'm thinking that Realtek's toolchain has patches specific to their
> > SoC that have not been pushed upstream. Could this be the reason I'm
> > unable to compile uboot?
>
> I=E2=80=99m guessing that your U-Boot config doesn=E2=80=99t set the corr=
ect MIPS architecture revision. The compiler error shows that you=E2=80=99r=
e trying to assemble a MIPS32r1 instruction, but the compiler is targeting =
the original MIPS1 architecture. The Realtek toolchain may have set the def=
ault architecture to match the SoC, but the fix is to update the config to =
match the hardware.

You're right. I didn't realize the RX5281 core on the RTS3916N only
supports mips1 or mips16 (https://pasteboard.co/IpsqN6GkBYAs.png).

I happened to have a mips sourcery toolchain installed on my machine
(https://sourcery.sw.siemens.com/GNUToolchain/package12797/public/mips-linu=
x-gnu/mips-2014.05-27-mips-linux-gnu-i686-pc-linux-gnu.tar.bz2)
so I pointed that to u-boot without modifying anything else and it was
able to compile u-boot successfully. Woot!
https://pastebin.com/ySPFae5u

I suppose the next step would be to generate a mips1 yocto toolchain
however according to the available tune values it appears only mips32
or mips64 is available

Any suggestions on how to generate a mips1 yocto toolchain or if
that's even supported?

>
> Regards,
> Anders Montonen

