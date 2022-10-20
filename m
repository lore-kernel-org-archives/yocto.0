Return-Path: <vdeshpande@ventanamicro.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7979C4332F
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 17:07:47 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web11.12170.1666285658722147243
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 10:07:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ventanamicro.com header.s=google header.b=gIvN9J6U;
 spf=pass (domain: ventanamicro.com, ip: 209.85.216.48, mailfrom: vdeshpande@ventanamicro.com)
Received: by mail-pj1-f48.google.com with SMTP id t12-20020a17090a3b4c00b0020b04251529so118253pjf.5
        for <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 10:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QTj44C88wcgNczAtYzW/m+tpQ2J5y0CgDk4VPAwcYck=;
        b=gIvN9J6USsUegRCd/40gQL2G5EwPbi6mCMD82KwO6AVbmUpQZf4iXStYzieGYsfrPq
         wnr31FJEQnpzzcyAhfzVXFD+aKwh+NE1a0DdymqHCvIqMJwXyAGBwVRwun88ZNRD5QZV
         MGMb9ynaLxLZKmr5sIx4+IGpx2NqoD7VPlxin7s7eO9FrNrtYYoRAkppCPBHS7ccSmIF
         OD97fWRqtCCkREx9A3Yi6/KTeD+VnN4DcQ5DStDpgaFV6MVxyF4TqzoHz23LizXI5A9J
         Vi0xGkNThJoKx5GGmKuESh80bFFwtTF/0f2hLaOpJmnfHGrUq2ug5o8Hut1rrOrWWAKQ
         gaug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QTj44C88wcgNczAtYzW/m+tpQ2J5y0CgDk4VPAwcYck=;
        b=fWcdVwWHjAoRiqcTcOZaPh/3I6v0yBlLi8GIWBIJZPL7YQfvAff5sSNl5Sb3W6DUsO
         V46Kq4/DNWPCtrHPzJjhiQSSCH0PwlKVGL5tu0dL0aAZu0+fSDFZsjaZxlUuDub3XUfa
         I/oVNxE/kz9xj2E+9d8iuTMqIGSFAKMUhtlH/TyorobhpGzYdW2bb66IY28fLUuhMtp5
         mydTYTcKE/ogFE/ISu7vRv7Ww2TW+ZQomIMCf+7AVfj7kgSJWOucW03BygChyEaXgdFa
         /er66l6eJRtcOZUUBIV8dfTwOnD6IzLhbCnaiyIXVGueQAERRRZ40R5ndnDghdejYdd2
         y9AQ==
X-Gm-Message-State: ACrzQf0+RxWXBB+3dENdKkyTO4aGiYpTHk1qd7maDqZ11MPoXwgZMmIT
	jDR/NM1iMLWH4NInVxpFPdKbGrTAaxsIB/U8kUmXFw==
X-Google-Smtp-Source: AMsMyM5XBaJUMzFY2yX0pIm/aNv1PxUSsg3i2g+7+5Ipjkn++7KCDdE5DgpnCbWti/Bcwus98GSlAhOB1zqonnwO6Lw=
X-Received: by 2002:a17:90a:5996:b0:203:1640:2dbf with SMTP id
 l22-20020a17090a599600b0020316402dbfmr17586059pji.150.1666285657932; Thu, 20
 Oct 2022 10:07:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAF=G1t49Z0LXDGimbYsXmTXy1tjq-Hw-1wZHqZCQ1-K5a852MQ@mail.gmail.com>
 <CAGAf8Lwn6zJ7nfxaT+qd2Q8Kc19jPfTbuyQW1-wOQgV7Sun64w@mail.gmail.com>
In-Reply-To: <CAGAf8Lwn6zJ7nfxaT+qd2Q8Kc19jPfTbuyQW1-wOQgV7Sun64w@mail.gmail.com>
From: Vaibhav Deshpande <vdeshpande@ventanamicro.com>
Date: Thu, 20 Oct 2022 22:37:27 +0530
Message-ID: <CAF=G1t67+nivmkWqmVUqRaYNZqPmXcBxt59ESL=vP0j37J3k_A@mail.gmail.com>
Subject: Re: [yocto] Error during linux booting
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: yocto+help@lists.yoctoproject.org, yocto@lists.yoctoproject.org, 
	openembedded-core+help@lists.openembedded.org, 
	Anup Patel <apatel@ventanamicro.com>, Mayuresh Chitale <mchitale@ventanamicro.com>
Content-Type: multipart/alternative; boundary="000000000000bc655705eb7a5c59"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 17:07:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58384

--000000000000bc655705eb7a5c59
Content-Type: text/plain; charset="UTF-8"

Helo

I have added systemd in rootfs by adding IMAGE_INSTALL = " systemd" in
local.conf and the issue solved
is this required for the latest yocto version (kirkstone)?


Thank you.

Regards
Vaibhav Vivek Deshpande


On Mon, Oct 17, 2022 at 1:28 AM Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Interesting... Looking into the log massage itself!
>
> > [    0.000000] Kernel command line: root=/dev/vda2 rootwait
> console=ttyS0 earlycon=uart8250,mmio,0x10000000
>
> Command line does not specify baud rate... Usually by default it is
> 115200. Just a kludge.
>
> Then:
>
> > [    0.000000] earlycon: uart8250 at MMIO 0x0000000010000000 (options '')
> > [    0.000000] printk: bootconsole [uart8250] enabled
>
> bootconsole enabled, seems correct.
>
> Then:
>
> > [    1.628806] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
> > [    1.648238] printk: console [ttyS0] disabled
> > [    1.652252] 10000000.uart: ttyS0 at MMIO 0x10000000 (irq = 166,
> base_baud = 230400) is a 16550A
> > [    1.656816] printk: console [ttyS0] enabled
> > [    1.656816] printk: console [ttyS0] enabled
> > [    1.657728] printk: bootconsole [uart8250] disabled
> > [    1.657728] printk: bootconsole [uart8250] disabled
>
> From what we see that the base baud rate is 230400 (?), everything
> else is, seems, correct.
>
> So, three things, which came adhoc to my mind:
> [1] Please, check the baud rate;
> [2] Please, check to which group /dev/ttyS0 belongs (root dialout)?
> [3] The terminal should be interactive, but no way to check this (from
> the logs)???
>
> My two cent worth answer,
> Zee
> _______
>
> On Sun, Oct 16, 2022 at 8:32 PM Vaibhav Deshpande
> <vdeshpande@ventanamicro.com> wrote:
> >
> > Hello
> >
> > I am trying to build a yocto image from the kirkstone branch (
> https://github.com/openembedded/openembedded-core/tree/kirkstone) build
> gets successful but at the time of linux booting I am getting below error.
>
> ...[snap]...
>

--000000000000bc655705eb7a5c59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Helo=C2=A0<div><br></div><div>I have added systemd in root=
fs by adding IMAGE_INSTALL =3D &quot; systemd&quot; in local.conf and the i=
ssue solved=C2=A0</div><div>is this required for the latest yocto=C2=A0vers=
ion (kirkstone)?</div><div><br></div><div><br></div><div>Thank you.</div><d=
iv><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div>Regards<br></div><div>Vaibh=
av Vivek Deshpande</div></div></div></div><br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 17, 2022 at=
 1:28 AM Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmai=
l.com">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">Interesting... Looking into the log mas=
sage itself!<br>
<br>
&gt; [=C2=A0 =C2=A0 0.000000] Kernel command line: root=3D/dev/vda2 rootwai=
t console=3DttyS0 earlycon=3Duart8250,mmio,0x10000000<br>
<br>
Command line does not specify baud rate... Usually by default it is<br>
115200. Just a kludge.<br>
<br>
Then:<br>
<br>
&gt; [=C2=A0 =C2=A0 0.000000] earlycon: uart8250 at MMIO 0x0000000010000000=
 (options &#39;&#39;)<br>
&gt; [=C2=A0 =C2=A0 0.000000] printk: bootconsole [uart8250] enabled<br>
<br>
bootconsole enabled, seems correct.<br>
<br>
Then:<br>
<br>
&gt; [=C2=A0 =C2=A0 1.628806] Serial: 8250/16550 driver, 4 ports, IRQ shari=
ng disabled<br>
&gt; [=C2=A0 =C2=A0 1.648238] printk: console [ttyS0] disabled<br>
&gt; [=C2=A0 =C2=A0 1.652252] 10000000.uart: ttyS0 at MMIO 0x10000000 (irq =
=3D 166, base_baud =3D 230400) is a 16550A<br>
&gt; [=C2=A0 =C2=A0 1.656816] printk: console [ttyS0] enabled<br>
&gt; [=C2=A0 =C2=A0 1.656816] printk: console [ttyS0] enabled<br>
&gt; [=C2=A0 =C2=A0 1.657728] printk: bootconsole [uart8250] disabled<br>
&gt; [=C2=A0 =C2=A0 1.657728] printk: bootconsole [uart8250] disabled<br>
<br>
From what we see that the base baud rate is 230400 (?), everything<br>
else is, seems, correct.<br>
<br>
So, three things, which came adhoc to my mind:<br>
[1] Please, check the baud rate;<br>
[2] Please, check to which group /dev/ttyS0 belongs (root dialout)?<br>
[3] The terminal should be interactive, but no way to check this (from<br>
the logs)???<br>
<br>
My two cent worth answer,<br>
Zee<br>
_______<br>
<br>
On Sun, Oct 16, 2022 at 8:32 PM Vaibhav Deshpande<br>
&lt;<a href=3D"mailto:vdeshpande@ventanamicro.com" target=3D"_blank">vdeshp=
ande@ventanamicro.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello<br>
&gt;<br>
&gt; I am trying to build a yocto image from the kirkstone branch (<a href=
=3D"https://github.com/openembedded/openembedded-core/tree/kirkstone" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/openembedded/openembed=
ded-core/tree/kirkstone</a>) build gets successful but at the time of linux=
 booting I am getting below error.<br>
<br>
...[snap]...<br>
</blockquote></div>

--000000000000bc655705eb7a5c59--

