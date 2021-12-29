Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 248ABC433EF
	for <webhook@archiver.kernel.org>; Wed, 29 Dec 2021 22:30:20 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
 [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web11.57530.1640817019494993198
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Dec 2021 14:30:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=g8901bzP;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id r6so20384400qvr.13
        for <yocto@lists.yoctoproject.org>;
 Wed, 29 Dec 2021 14:30:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9x65MFfr/x4nALQO3Wx6MqthwQgYHCSWQ3CjMiZ25M8=;
        b=g8901bzPEhKpRVDRH3GPYgqFgVfNHjTBfhE1l2RZvdftuFZlBqo+01AKdEdazJAVzP
         bcLPwbZHWb8LMk998hLksS+27Ef2BDDHAYdcjBhgit7cCNmob6daeHire6Y1FzRyUs5Y
         VFudSnckTNv1m/02fQoCi1cQSNvW4y1Zz7ezTjbrRhjmJ9bs0t8qfz5vd8/xy4ItmJAl
         SmRQkZ5yvBGA/kFAThI/vT0hI6j+85rc31zEa/dS4c5D+pm5OuaWZ8uo07gMumTUIJ4i
         avSZ/Ssiz+V0c9EJqWlHYfUBYSOqb1RXaA70eXpP6+vpIGxMb4mSkhpqtEmPx8wgaNmT
         oXkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9x65MFfr/x4nALQO3Wx6MqthwQgYHCSWQ3CjMiZ25M8=;
        b=sDF3/9W7G1bZs2p238e5oaQF5cakMnacPFFL7bCQ3zZ+iQzgDcEOfwsLjU8y3bh3TH
         wVGJFbVxZ/SFxpq1DRDJdtmguWquNvcJlRT+3OqCHsvuqodhoeVW3GRGDcGqfHdtqCLS
         QjptSd60/wnhsE9mINCu3TtyXyheT8ugxomhanYfKUnNhLmjbKXkS5nE5WyYn3B9DIhz
         /QvnqNoquiaz5Mb2MjOYtbsQQ5OApdQRWP1vDbk25uSYM/CEZu0kL8U552HlwZv/FBWf
         iyXmwlpixLHEm7j98hNUGXgjsP44AFoL08jCRRHtjSYgHWtzPfW66DKvMpTvaL8ZUC40
         DXag==
X-Gm-Message-State: AOAM533c6VoFklWcW0x1ikZb668KaBG8x3HIrBqLH2idAGwGwbFxFdvk
	dcnfPJHAaVH+YX6Aq6/pOrDvn7frKEDNsX9Qg8U=
X-Google-Smtp-Source: 
 ABdhPJwjXgdi8PX9jG6XRyJEFwYBOf/uh56W7xuhy8IENMGEo6b25Jyi1A83GIpHSiaQLshMSGnwafdtn4zMB8lx8eI=
X-Received: by 2002:a05:6214:1cca:: with SMTP id
 g10mr2565772qvd.36.1640817018461;
 Wed, 29 Dec 2021 14:30:18 -0800 (PST)
MIME-Version: 1.0
References: 
 <CACfi_Z0ct76Dv9o+NU_Wf3Hz0Eb7Gcsbbds3AkMuy_1511jhYw@mail.gmail.com>
 <ba8ff6fe-f017-38e9-e211-b91654de8d4c@gmail.com>
 <CACfi_Z36+pYBU-jUKxa1qAQaVZDPi1NXwiubovv-+XM0onFVLg@mail.gmail.com>
 <A98BAD8D-4355-424F-9949-1094B0C64A7A@iki.fi>
 <CACfi_Z3aRtoxr+7GdGw4C2e9JouwXH-ckAbqY7HKJC+0GFrniQ@mail.gmail.com>
In-Reply-To: 
 <CACfi_Z3aRtoxr+7GdGw4C2e9JouwXH-ckAbqY7HKJC+0GFrniQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 29 Dec 2021 14:30:07 -0800
Message-ID: 
 <CAMKF1srJf66rX78pS0diXF7tGMZ=63OhuOSMqnerULu=3cEo+A@mail.gmail.com>
Subject: Re: [yocto] building image for Realtek RTS3916N mips SoC using vendor
 provided prebuilt external uClibc toolchain
To: Davis Roman <davis.roman84@gmail.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>,
 song li <ghosty.lee.1984@gmail.com>,
	yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000086e11f05d4507bbb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Dec 2021 22:30:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55690

--00000000000086e11f05d4507bbb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 29, 2021 at 2:20 PM Davis Roman <davis.roman84@gmail.com> wrote=
:

> On Wed, Dec 29, 2021 at 2:21 PM Anders Montonen <Anders.Montonen@iki.fi>
> wrote:
> >
> > Hi,
> >
> > > On 29 Dec 2021, at 9:53, davis roman <davis.roman84@gmail.com> wrote:
> > >
> > > I generated an internal mips toolchain built against musl and I tried
> > > to compile u-boot but unfortunately, I'm getting "opcode not
> > > supported" error messages. https://pastebin.com/QdcLxy69
> > > If instead I use the realtek provided prebuilt toolchain then u-boot
> > > compiles successfully. https://pastebin.com/zcQ5kc20
> > >
> > > I'm thinking that Realtek's toolchain has patches specific to their
> > > SoC that have not been pushed upstream. Could this be the reason I'm
> > > unable to compile uboot?
> >
> > I=E2=80=99m guessing that your U-Boot config doesn=E2=80=99t set the co=
rrect MIPS
> architecture revision. The compiler error shows that you=E2=80=99re tryin=
g to
> assemble a MIPS32r1 instruction, but the compiler is targeting the origin=
al
> MIPS1 architecture. The Realtek toolchain may have set the default
> architecture to match the SoC, but the fix is to update the config to mat=
ch
> the hardware.
>
> You're right. I didn't realize the RX5281 core on the RTS3916N only
> supports mips1 or mips16 (https://pasteboard.co/IpsqN6GkBYAs.png).
>
> I happened to have a mips sourcery toolchain installed on my machine
> (
> https://sourcery.sw.siemens.com/GNUToolchain/package12797/public/mips-lin=
ux-gnu/mips-2014.05-27-mips-linux-gnu-i686-pc-linux-gnu.tar.bz2
> )
> so I pointed that to u-boot without modifying anything else and it was
> able to compile u-boot successfully. Woot!
> https://pastebin.com/ySPFae5u
>
> I suppose the next step would be to generate a mips1 yocto toolchain
> however according to the available tune values it appears only mips32
> or mips64 is available
>
> Any suggestions on how to generate a mips1 yocto toolchain or if
> that's even supported?


Yes it=E2=80=99s supported although it=E2=80=99s not default for qemumips s=
o the simple
trick you can do is change the DEFAULTTUNE setting in the qemumips.conf
away from mips32r2

>
>
> >
> > Regards,
> > Anders Montonen
>

--00000000000086e11f05d4507bbb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Dec 29, 2021 at 2:20 PM Davis Roman &lt;<a href=3D"=
mailto:davis.roman84@gmail.com">davis.roman84@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">On Wed, Dec 29, 2021 at 2:21 PM Anders =
Montonen &lt;<a href=3D"mailto:Anders.Montonen@iki.fi" target=3D"_blank">An=
ders.Montonen@iki.fi</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; &gt; On 29 Dec 2021, at 9:53, davis roman &lt;<a href=3D"mailto:davis.=
roman84@gmail.com" target=3D"_blank">davis.roman84@gmail.com</a>&gt; wrote:=
<br>
&gt; &gt;<br>
&gt; &gt; I generated an internal mips toolchain built against musl and I t=
ried<br>
&gt; &gt; to compile u-boot but unfortunately, I&#39;m getting &quot;opcode=
 not<br>
&gt; &gt; supported&quot; error messages. <a href=3D"https://pastebin.com/Q=
dcLxy69" rel=3D"noreferrer" target=3D"_blank">https://pastebin.com/QdcLxy69=
</a><br>
&gt; &gt; If instead I use the realtek provided prebuilt toolchain then u-b=
oot<br>
&gt; &gt; compiles successfully. <a href=3D"https://pastebin.com/zcQ5kc20" =
rel=3D"noreferrer" target=3D"_blank">https://pastebin.com/zcQ5kc20</a><br>
&gt; &gt;<br>
&gt; &gt; I&#39;m thinking that Realtek&#39;s toolchain has patches specifi=
c to their<br>
&gt; &gt; SoC that have not been pushed upstream. Could this be the reason =
I&#39;m<br>
&gt; &gt; unable to compile uboot?<br>
&gt;<br>
&gt; I=E2=80=99m guessing that your U-Boot config doesn=E2=80=99t set the c=
orrect MIPS architecture revision. The compiler error shows that you=E2=80=
=99re trying to assemble a MIPS32r1 instruction, but the compiler is target=
ing the original MIPS1 architecture. The Realtek toolchain may have set the=
 default architecture to match the SoC, but the fix is to update the config=
 to match the hardware.<br>
<br>
You&#39;re right. I didn&#39;t realize the RX5281 core on the RTS3916N only=
<br>
supports mips1 or mips16 (<a href=3D"https://pasteboard.co/IpsqN6GkBYAs.png=
" rel=3D"noreferrer" target=3D"_blank">https://pasteboard.co/IpsqN6GkBYAs.p=
ng</a>).<br>
<br>
I happened to have a mips sourcery toolchain installed on my machine<br>
(<a href=3D"https://sourcery.sw.siemens.com/GNUToolchain/package12797/publi=
c/mips-linux-gnu/mips-2014.05-27-mips-linux-gnu-i686-pc-linux-gnu.tar.bz2" =
rel=3D"noreferrer" target=3D"_blank">https://sourcery.sw.siemens.com/GNUToo=
lchain/package12797/public/mips-linux-gnu/mips-2014.05-27-mips-linux-gnu-i6=
86-pc-linux-gnu.tar.bz2</a>)<br>
so I pointed that to u-boot without modifying anything else and it was<br>
able to compile u-boot successfully. Woot!<br>
<a href=3D"https://pastebin.com/ySPFae5u" rel=3D"noreferrer" target=3D"_bla=
nk">https://pastebin.com/ySPFae5u</a><br>
<br>
I suppose the next step would be to generate a mips1 yocto toolchain<br>
however according to the available tune values it appears only mips32<br>
or mips64 is available<br>
<br>
Any suggestions on how to generate a mips1 yocto toolchain or if<br>
that&#39;s even supported?</blockquote><div dir=3D"auto"><br></div><div dir=
=3D"auto">Yes it=E2=80=99s supported although it=E2=80=99s not default for =
qemumips so the simple trick you can do is change the DEFAULTTUNE setting i=
n the qemumips.conf away from mips32r2</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex" =
dir=3D"auto"><br>
<br>
&gt;<br>
&gt; Regards,<br>
&gt; Anders Montonen<br>
</blockquote></div></div>

--00000000000086e11f05d4507bbb--

