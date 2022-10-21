Return-Path: <vdeshpande@ventanamicro.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19328C4332F
	for <webhook@archiver.kernel.org>; Fri, 21 Oct 2022 07:33:26 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web11.7520.1666337597457622377
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Oct 2022 00:33:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ventanamicro.com header.s=google header.b=hfFDNZnF;
 spf=pass (domain: ventanamicro.com, ip: 209.85.214.179, mailfrom: vdeshpande@ventanamicro.com)
Received: by mail-pl1-f179.google.com with SMTP id j12so1612044plj.5
        for <yocto@lists.yoctoproject.org>; Fri, 21 Oct 2022 00:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OjSaZztaQ4Mxrq0gT6xpysG5twIfGlo8wQ0kyA/D4jU=;
        b=hfFDNZnFww23EYo/JYO1c8V0lVNEFTCaNO16Zpj7XNVTKYgClielZV+pqv+5DMErKE
         mjf7uPoVXhbPEd6YfQ6Ez1LrXGBWBuosdpQTYrNbH95SsPcGUyr60GHMDlOVtQKfCfJC
         KQUFoQrjt/YvhJBK/r0SOUAShSqaAmC+ELi3JPTlkAIr2pEFJxeuTolgDeiigYO4wmUF
         47aAYjxjhVdwMgjxrlyGA3iaDOya/DJCgY9uqjZCvH+tpf5i0448YQy6rIohR2K7lZDk
         5pl2a/1x1ytwt/CI8LHi03Cva65c6DgCNOGgelLmrXCjRkr7eDV35euRkgPjcEBVyDTB
         AgUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OjSaZztaQ4Mxrq0gT6xpysG5twIfGlo8wQ0kyA/D4jU=;
        b=v21LQzHuxPBH6RjPhZ3vt4y3E/kOjBsP5GKpkE2JV5Woz/VIE3lEbG6yH1VLKt6PEP
         /gNBa5kgCJLZVdECVQez8Id71vmUv0jGHcoqksdTg7VD0bBUQmUKRU9pWXESNVKK5niY
         JTDrr6b9UHHUo+tiHnNAtd62wGqUHgCSNlJSpVvcGI6BMc0OeJ6kSikfcn5j/6VFGZFr
         1flxQRJ/uopFbD9BYAaab+C7kL00tMoeVO5pFQsNwMeOrZphxC7uzhERdEkxnm/+TlaE
         8jqICDGOamDNKCCGSo4XMd3GZsgHQZN9ZLx6XJ6MkGExekqvgPN8RDlp3NgkZa/xBwXY
         x2Vg==
X-Gm-Message-State: ACrzQf1THdzQPFUGMqkKfbNSIPTQgE9HynD4m1zCWGY8Im/v8RuJrJlM
	A/xJR6PDqEf+lU0EZjHnXq7/TTEgzNJa04f9SoI/Jg==
X-Google-Smtp-Source: AMsMyM4mRcHaG8WCRJDdtvWNBb4Uqy/cpq00ptDmkSpqUWSDP+WK7cuQ+KrPNycIFxbcCmnF1Fpq71mzfY5oIDYZR0I=
X-Received: by 2002:a17:90a:5996:b0:203:1640:2dbf with SMTP id
 l22-20020a17090a599600b0020316402dbfmr21256935pji.150.1666337596680; Fri, 21
 Oct 2022 00:33:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAF=G1t49Z0LXDGimbYsXmTXy1tjq-Hw-1wZHqZCQ1-K5a852MQ@mail.gmail.com>
 <CAGAf8Lwn6zJ7nfxaT+qd2Q8Kc19jPfTbuyQW1-wOQgV7Sun64w@mail.gmail.com>
 <CAF=G1t67+nivmkWqmVUqRaYNZqPmXcBxt59ESL=vP0j37J3k_A@mail.gmail.com> <CAGbd71Qbqi689wAGNmruUJ2OBuXk9Qg4ssNOKPtnhcfhtVGPVQ@mail.gmail.com>
In-Reply-To: <CAGbd71Qbqi689wAGNmruUJ2OBuXk9Qg4ssNOKPtnhcfhtVGPVQ@mail.gmail.com>
From: Vaibhav Deshpande <vdeshpande@ventanamicro.com>
Date: Fri, 21 Oct 2022 13:03:05 +0530
Message-ID: <CAF=G1t6zXFj5ew0MTVJdk=Fqu4_Zja-Gjbzw6HxSfRHtrVFeow@mail.gmail.com>
Subject: Re: [yocto] Error during linux booting
To: Laurent Gauthier <laurent.gauthier@soccasys.com>
Cc: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, yocto+help@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org, openembedded-core+help@lists.openembedded.org, 
	Anup Patel <apatel@ventanamicro.com>, Mayuresh Chitale <mchitale@ventanamicro.com>
Content-Type: multipart/alternative; boundary="00000000000086be0605eb8674e1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Oct 2022 07:33:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58389

--00000000000086be0605eb8674e1
Content-Type: text/plain; charset="UTF-8"

Hello Laurent

I am building for qemuriscv64

Command :-
MACHINE=qemuriscv64 bitbake core-image-full-cmdline


Thank you.

Regards
Vaibhav Vivek Deshpande


On Thu, Oct 20, 2022 at 11:00 PM Laurent Gauthier <
laurent.gauthier@soccasys.com> wrote:

> Hi Vaibhav,
>
> Out of curiosity which image did you build?
>
> Kind regards, Laurent.
>
> On Thu, Oct 20, 2022 at 7:07 PM Vaibhav Deshpande
> <vdeshpande@ventanamicro.com> wrote:
> >
> > Helo
> >
> > I have added systemd in rootfs by adding IMAGE_INSTALL = " systemd" in
> local.conf and the issue solved
> > is this required for the latest yocto version (kirkstone)?
> >
> >
> > Thank you.
> >
> > Regards
> > Vaibhav Vivek Deshpande
> >
> >
> > On Mon, Oct 17, 2022 at 1:28 AM Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
> >>
> >> Interesting... Looking into the log massage itself!
> >>
> >> > [    0.000000] Kernel command line: root=/dev/vda2 rootwait
> console=ttyS0 earlycon=uart8250,mmio,0x10000000
> >>
> >> Command line does not specify baud rate... Usually by default it is
> >> 115200. Just a kludge.
> >>
> >> Then:
> >>
> >> > [    0.000000] earlycon: uart8250 at MMIO 0x0000000010000000 (options
> '')
> >> > [    0.000000] printk: bootconsole [uart8250] enabled
> >>
> >> bootconsole enabled, seems correct.
> >>
> >> Then:
> >>
> >> > [    1.628806] Serial: 8250/16550 driver, 4 ports, IRQ sharing
> disabled
> >> > [    1.648238] printk: console [ttyS0] disabled
> >> > [    1.652252] 10000000.uart: ttyS0 at MMIO 0x10000000 (irq = 166,
> base_baud = 230400) is a 16550A
> >> > [    1.656816] printk: console [ttyS0] enabled
> >> > [    1.656816] printk: console [ttyS0] enabled
> >> > [    1.657728] printk: bootconsole [uart8250] disabled
> >> > [    1.657728] printk: bootconsole [uart8250] disabled
> >>
> >> From what we see that the base baud rate is 230400 (?), everything
> >> else is, seems, correct.
> >>
> >> So, three things, which came adhoc to my mind:
> >> [1] Please, check the baud rate;
> >> [2] Please, check to which group /dev/ttyS0 belongs (root dialout)?
> >> [3] The terminal should be interactive, but no way to check this (from
> >> the logs)???
> >>
> >> My two cent worth answer,
> >> Zee
> >> _______
> >>
> >> On Sun, Oct 16, 2022 at 8:32 PM Vaibhav Deshpande
> >> <vdeshpande@ventanamicro.com> wrote:
> >> >
> >> > Hello
> >> >
> >> > I am trying to build a yocto image from the kirkstone branch (
> https://github.com/openembedded/openembedded-core/tree/kirkstone) build
> gets successful but at the time of linux booting I am getting below error.
> >>
> >> ...[snap]...
> >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#58384):
> https://lists.yoctoproject.org/g/yocto/message/58384
> > Mute This Topic: https://lists.yoctoproject.org/mt/94368916/3618354
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> laurent.gauthier@soccasys.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>
>
> --
> Laurent Gauthier
> Embedded Linux Systems & Software
> Phone: +33 630 483 429
> https://soccasys.com
>

--00000000000086be0605eb8674e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello=C2=A0Laurent<div><br></div><div>I am building for=C2=
=A0qemuriscv64</div><div><br>Command :-</div><div>MACHINE=3Dqemuriscv64 bit=
bake core-image-full-cmdline</div><div><br></div><div><br></div><div>Thank =
you.</div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signa=
ture" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Regards<br><=
/div><div>Vaibhav Vivek Deshpande</div></div></div></div><br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, =
Oct 20, 2022 at 11:00 PM Laurent Gauthier &lt;<a href=3D"mailto:laurent.gau=
thier@soccasys.com">laurent.gauthier@soccasys.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">Hi Vaibhav,<br>
<br>
Out of curiosity which image did you build?<br>
<br>
Kind regards, Laurent.<br>
<br>
On Thu, Oct 20, 2022 at 7:07 PM Vaibhav Deshpande<br>
&lt;<a href=3D"mailto:vdeshpande@ventanamicro.com" target=3D"_blank">vdeshp=
ande@ventanamicro.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Helo<br>
&gt;<br>
&gt; I have added systemd in rootfs by adding IMAGE_INSTALL =3D &quot; syst=
emd&quot; in local.conf and the issue solved<br>
&gt; is this required for the latest yocto version (kirkstone)?<br>
&gt;<br>
&gt;<br>
&gt; Thank you.<br>
&gt;<br>
&gt; Regards<br>
&gt; Vaibhav Vivek Deshpande<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Oct 17, 2022 at 1:28 AM Zoran Stojsavljevic &lt;<a href=3D"mai=
lto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gm=
ail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Interesting... Looking into the log massage itself!<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 0.000000] Kernel command line: root=3D/dev/vda=
2 rootwait console=3DttyS0 earlycon=3Duart8250,mmio,0x10000000<br>
&gt;&gt;<br>
&gt;&gt; Command line does not specify baud rate... Usually by default it i=
s<br>
&gt;&gt; 115200. Just a kludge.<br>
&gt;&gt;<br>
&gt;&gt; Then:<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 0.000000] earlycon: uart8250 at MMIO 0x0000000=
010000000 (options &#39;&#39;)<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 0.000000] printk: bootconsole [uart8250] enabl=
ed<br>
&gt;&gt;<br>
&gt;&gt; bootconsole enabled, seems correct.<br>
&gt;&gt;<br>
&gt;&gt; Then:<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 1.628806] Serial: 8250/16550 driver, 4 ports, =
IRQ sharing disabled<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 1.648238] printk: console [ttyS0] disabled<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 1.652252] 10000000.uart: ttyS0 at MMIO 0x10000=
000 (irq =3D 166, base_baud =3D 230400) is a 16550A<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 1.656816] printk: console [ttyS0] enabled<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 1.656816] printk: console [ttyS0] enabled<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 1.657728] printk: bootconsole [uart8250] disab=
led<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 1.657728] printk: bootconsole [uart8250] disab=
led<br>
&gt;&gt;<br>
&gt;&gt; From what we see that the base baud rate is 230400 (?), everything=
<br>
&gt;&gt; else is, seems, correct.<br>
&gt;&gt;<br>
&gt;&gt; So, three things, which came adhoc to my mind:<br>
&gt;&gt; [1] Please, check the baud rate;<br>
&gt;&gt; [2] Please, check to which group /dev/ttyS0 belongs (root dialout)=
?<br>
&gt;&gt; [3] The terminal should be interactive, but no way to check this (=
from<br>
&gt;&gt; the logs)???<br>
&gt;&gt;<br>
&gt;&gt; My two cent worth answer,<br>
&gt;&gt; Zee<br>
&gt;&gt; _______<br>
&gt;&gt;<br>
&gt;&gt; On Sun, Oct 16, 2022 at 8:32 PM Vaibhav Deshpande<br>
&gt;&gt; &lt;<a href=3D"mailto:vdeshpande@ventanamicro.com" target=3D"_blan=
k">vdeshpande@ventanamicro.com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hello<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I am trying to build a yocto image from the kirkstone branch =
(<a href=3D"https://github.com/openembedded/openembedded-core/tree/kirkston=
e" rel=3D"noreferrer" target=3D"_blank">https://github.com/openembedded/ope=
nembedded-core/tree/kirkstone</a>) build gets successful but at the time of=
 linux booting I am getting below error.<br>
&gt;&gt;<br>
&gt;&gt; ...[snap]...<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#58384): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/58384" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/58384</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94368916=
/3618354" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/94368916/3618354</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:laurent.gauthier@soccasys.com" target=3D"_bla=
nk">laurent.gauthier@soccasys.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
<br>
<br>
-- <br>
Laurent Gauthier<br>
Embedded Linux Systems &amp; Software<br>
Phone: +33 630 483 429<br>
<a href=3D"https://soccasys.com" rel=3D"noreferrer" target=3D"_blank">https=
://soccasys.com</a><br>
</blockquote></div>

--00000000000086be0605eb8674e1--

