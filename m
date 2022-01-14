Return-Path: <jp@lebel.pro>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5711EC433EF
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 21:02:42 +0000 (UTC)
Received: from ds.tools (ds.tools [158.69.194.164])
 by mx.groups.io with SMTP id smtpd.web09.13331.1642194160440686071
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jan 2022 13:02:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lebel.pro header.s=dkim header.b=bAehhV55;
 spf=pass (domain: lebel.pro, ip: 158.69.194.164, mailfrom: jp@lebel.pro)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 3CA8C3AFA
	for <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 16:02:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lebel.pro; s=dkim;
	t=1642194159; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=0GxgG229gMK1GRKCxUOrhvKXdY6nEq9WtZbraCzchmI=;
	b=bAehhV55ytKH6ybh6Y4Ozp7KDZy4YqB6drNn55hHrNibZAxXd06oOOOVHo8V5xov3BTO/n
	Sq0osE0k57wJLRSaej431f50JaVFZdlYbgun3Q75HxAybb6NCSEqaPc2GwKEbl2TiefPS4
	+1bE06ifWLxXqOAtqasvJeC240coMGtVVVHcrEMr//Wly7MrW5x98e4n59AIVld6iSYiSL
	QM/7vpgPIrfHVfj/6SR+VmvluG6sJczRoyFrVb0KkIDRvuELdZ+f4tbvznt/GTEChADdzZ
	A8hn4f9oCzYQ2dtye0k34wXjiEG7oeKduUCoSwmY/kBGmlMbS6zPH6cvtIyWOw==
Received: by mail-qk1-f169.google.com with SMTP id b127so12221148qkd.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jan 2022 13:02:38 -0800 (PST)
X-Gm-Message-State: AOAM530vPNmDlVJpElPBiNCQhwRnuPo40a7O5YzQXfB4k9LK3wxtMeP/
	jIrpnN3KO9X+RiuZgy96AN1JYErXlIbbO7/P/bQ=
X-Google-Smtp-Source: 
 ABdhPJzGUyMSLHNS87Eut+AKHqrjmNFrMyhdC3MwQD842X/V+nHpEYiW9vjmNeb0abpFwUaufUMAVwPOVDp9L43uNzY=
X-Received: by 2002:a05:620a:1724:: with SMTP id
 az36mr7691872qkb.259.1642194158310;
 Fri, 14 Jan 2022 13:02:38 -0800 (PST)
MIME-Version: 1.0
References: <olEy.1641952629873571983.WQkq@lists.yoctoproject.org>
 <AM0PR10MB3107C5D3A7A14031A52258E099529@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CAJiLS+Tgc7XNuqJi9eVGoSskP8UULuq_mV4GrdGr+aRidQSgAg@mail.gmail.com>
 <847433617.77075.1642023917723.JavaMail.zimbra@savoirfairelinux.com>
 <CAJiLS+TaSr=oL8ZryNngqvyjmDN=tBkOpqWOFmGhFAEh0s0oUQ@mail.gmail.com>
 <CAMRMzCBR3fsaLR84qPxh=7rQ0kgMaEqbm43=9x-ATnH=Ns0NEQ@mail.gmail.com>
In-Reply-To: 
 <CAMRMzCBR3fsaLR84qPxh=7rQ0kgMaEqbm43=9x-ATnH=Ns0NEQ@mail.gmail.com>
From: Jean-Philippe Lebel <jp@lebel.pro>
Date: Fri, 14 Jan 2022 16:02:27 -0500
X-Gmail-Original-Message-ID: 
 <CAJiLS+SD2NLbpUZ+fbGWMdCsNtYCk7fRBYk6mj6ZPEdRr0UKVg@mail.gmail.com>
Message-ID: 
 <CAJiLS+SD2NLbpUZ+fbGWMdCsNtYCk7fRBYk6mj6ZPEdRr0UKVg@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] Problem with RPI_USE_U_BOOT with
 RaspberryPi4
To: Marc Ferland <marc.ferland@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000755ae405d5911fac"
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 21:02:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55884

--000000000000755ae405d5911fac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Marc,

I doubt this is a manipulation issue (at least in regards to burning the
image).

meta-raspberrypi master, yocto master -> works (core-image-base, stock, no
modification beside RPI_USE_U_BOOT=3D"1")

meta-raspberrypi hardknott, yocto hardknott -> doesn't work
(core-image-base, stock, no modification beside RPI_USE_U_BOOT=3D"1")

That being said, I've inspected both the working image and the non-working
one and they look very similar (files and structure). I will take a closer
look at the format.

Thanks
-------------
Jean-Philippe Lebel, ing. MBA
jp@lebel.pro
http://www.lebel.pro
cell: 418-931-3800

*AVIS IMPORTANT:* Ce courriel est strictement r=C3=A9serv=C3=A9 =C3=A0 l'us=
age de la (des)
personne(s) =C3=A0 qui il est adress=C3=A9 et peut contenir de l'informatio=
n
privil=C3=A9gi=C3=A9e et confidentielle. Toute divulgation, distribution, c=
opie, ou
autre utilisation de ce courriel par une autre personne est strictement
prohib=C3=A9e. Si vous avez re=C3=A7u ce courriel par erreur, veuillez s'il=
 vous
pla=C3=AEt communiquer imm=C3=A9diatement avec l'exp=C3=A9diteur et d=C3=A9=
truire le courriel
sans en faire de copie sous quelque forme.

*WARNING:* This e-mail contains confidential information intended only for
the person(s) named above. If you are not the intended recipient you are
hereby notified that any disclosure, copying, distribution, or any other
use of this e-mail is strictly prohibited. If you have received this e-mail
by mistake, please notify us immediately and destroy this e-mail without
making any copy of any kind.


On Fri, Jan 14, 2022 at 3:40 PM Marc Ferland <marc.ferland@gmail.com> wrote=
:

> On Fri, Jan 14, 2022 at 10:39 AM Jean-Philippe Lebel <jp@lebel.pro> wrote=
:
> >
> > I finally received my UART cable, giving me more details about where th=
e
> boot sequence fails.
> >
> > Just a quick summary of my tests
> > - Enabling UART does indeed "fix" the issue when working from the
> meta-raspberrypi AND yocto master.
> > - Enabling UART has no impact when working from the meta-raspberrypi an=
d
> yocto hardknott branch (which I need to support) - image doesn't boot
> > - Backporting the meta-raspberrypi master branch to hardknott does NOT
> fix the problem.
> >
> > Here is the uboot log (failing).
> >
> > U-Boot 2021.01 (Jan 11 2021 - 18:11:43 +0000)
> >
> > DRAM:  1.9 GiB
> > RPI 4 Model B (0xb03114)
> > MMC:   mmcnr@7e300000: 1, emmc2@7e340000: 0
> > Loading Environment from FAT... ** No partition table - mmc 0 **
> > In:    serial
> > Out:   serial
> > Err:   serial
> > Net:   eth0: ethernet@7d580000
> > PCIe BRCM: link up, 5.0 Gbps x1 (SSC)
> > starting USB...
> > Bus xhci_pci: Register 5000420 NbrPorts 5
> > Starting the controller
> > USB XHCI 1.00
> > scanning bus xhci_pci for devices... 2 USB Device(s) found
> >        scanning usb for storage devices... 0 Storage Device(s) found
> > Hit any key to stop autoboot:  0
> > switch to partitions #0, OK
> > mmc0 is current device
> > ** No partition table - mmc 0 **
> > Card did not respond to voltage select! : -110
> >
> > Here is a normal uboot sequence
> >
> > U-Boot 2021.10 (Oct 04 2021 - 15:09:26 +0000)
> >
> > DRAM:  1.9 GiB
> > RPI 4 Model B (0xb03114)
> > MMC:   mmcnr@7e300000: 1, mmc@7e340000: 0
> > Loading Environment from FAT... Unable to read "uboot.env" from
> mmc0:1... In:    serial
> > Out:   vidconsole
> > Err:   vidconsole
> > Net:   eth0: ethernet@7d580000
> > PCIe BRCM: link up, 5.0 Gbps x1 (SSC)
> > starting USB...
> > Bus xhci_pci: Register 5000420 NbrPorts 5
> > Starting the controller
> > USB XHCI 1.00
> > scanning bus xhci_pci for devices... 2 USB Device(s) found
> >        scanning usb for storage devices... 0 Storage Device(s) found
> > Hit any key to stop autoboot:  0
> > switch to partitions #0, OK
> > mmc0 is current device
> > Scanning mmc 0:1...
> > Found U-Boot script /boot.scr
> > 262 bytes read in 6 ms (42 KiB/s)
> > ## Executing script at 02400000
> > 23202304 bytes read in 997 ms (22.2 MiB/s)
> > Saving Environment to FAT... OK
> > Moving Image from 0x80000 to 0x200000, end=3D1960000
> > ## Flattened Device Tree blob at 2eff3600
> >    Booting using the fdt blob at 0x2eff3600
> >    Using Device Tree in place at 000000002eff3600, end 000000002f002f13
> >
> > Starting kernel ...
> >
> > Basically, the failing Uboot can't find the partition table.
> >
>
> Well is there a partition table? Can you share what you are doing to
> flash your uSD? Maybe it's just some manipulation error.
>
> Marc
>

--000000000000755ae405d5911fac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Marc,<div><br></div><div>I doubt this is a manipulat=
ion issue (at least in regards to burning the image).=C2=A0</div><div><br><=
/div><div>meta-raspberrypi master, yocto master -&gt; works (core-image-bas=
e, stock, no modification beside RPI_USE_U_BOOT=3D&quot;1&quot;)</div><div>=
<br></div><div><div>meta-raspberrypi hardknott, yocto hardknott=C2=A0-&gt; =
doesn&#39;t work (core-image-base, stock, no modification beside RPI_USE_U_=
BOOT=3D&quot;1&quot;)</div><div><br></div><div>That being said, I&#39;ve in=
spected both the working image and the non-working one and they look very s=
imilar (files and structure). I will take a closer look at the format.</div=
><div><br></div><div>Thanks</div></div><div><div><div dir=3D"ltr" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div>-------------<br></div>Jean=
-Philippe Lebel, ing. MBA<br><a href=3D"mailto:jp@lebel.pro" target=3D"_bla=
nk">jp@lebel.pro</a><br><a href=3D"http://www.lebel.pro" target=3D"_blank">=
http://www.lebel.pro</a><br>cell: 418-931-3800<div style=3D"color:rgb(80,0,=
80)"><br></div><div style=3D"color:rgb(80,0,80)"><b style=3D"color:rgb(0,0,=
0);font-family:Calibri,sans-serif;font-size:16px"><span lang=3D"FR-CA" styl=
e=3D"font-size:7pt;font-family:Arial,sans-serif">AVIS IMPORTANT:</span></b>=
<span lang=3D"FR-CA" style=3D"color:rgb(0,0,0);font-size:7pt;font-family:Ar=
ial,sans-serif">=C2=A0Ce courriel est strictement r=C3=A9serv=C3=A9 =C3=A0 =
l&#39;usage de la (des) personne(s) =C3=A0 qui il est adress=C3=A9 et peut =
contenir de l&#39;information privil=C3=A9gi=C3=A9e et confidentielle. Tout=
e divulgation, distribution, copie, ou autre utilisation de ce courriel par=
 une autre personne est strictement prohib=C3=A9e. Si vous avez re=C3=A7u c=
e courriel par erreur, veuillez s&#39;il vous pla=C3=AEt communiquer imm=C3=
=A9diatement avec l&#39;exp=C3=A9diteur et d=C3=A9truire le courriel sans e=
n faire de copie sous quelque forme.<br><br></span><b style=3D"color:rgb(0,=
0,0);font-family:Calibri,sans-serif;font-size:16px"><span lang=3D"EN-US" st=
yle=3D"font-size:7pt;font-family:Arial,sans-serif">WARNING:</span></b><span=
 lang=3D"EN-US" style=3D"color:rgb(0,0,0);font-size:7pt;font-family:Arial,s=
ans-serif">=C2=A0This e-mail contains confidential information intended onl=
y for the person(s) named above. If you are not the intended recipient you =
are hereby notified that any disclosure, copying, distribution, or any othe=
r use of this e-mail is strictly prohibited. If you have received this e-ma=
il by mistake, please notify us immediately and destroy this e-mail without=
 making any copy of any kind.</span></div></div></div></div><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, Jan 14, 2022 at 3:40 PM Marc Ferland &lt;<a href=3D"mailto:marc.ferland@=
gmail.com" target=3D"_blank">marc.ferland@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri, Jan 14, 2022 at =
10:39 AM Jean-Philippe Lebel &lt;<a href=3D"mailto:jp@lebel.pro" target=3D"=
_blank">jp@lebel.pro</a>&gt; wrote:<br>
&gt;<br>
&gt; I finally received my UART cable, giving me more details about where t=
he boot sequence fails.<br>
&gt;<br>
&gt; Just a quick summary of my tests<br>
&gt; - Enabling UART does indeed &quot;fix&quot; the issue when working fro=
m the meta-raspberrypi AND yocto master.<br>
&gt; - Enabling UART has no impact when working from the meta-raspberrypi a=
nd yocto hardknott branch (which I need to support) - image doesn&#39;t boo=
t<br>
&gt; - Backporting the meta-raspberrypi master branch to hardknott does NOT=
 fix the problem.<br>
&gt;<br>
&gt; Here is the uboot log (failing).<br>
&gt;<br>
&gt; U-Boot 2021.01 (Jan 11 2021 - 18:11:43 +0000)<br>
&gt;<br>
&gt; DRAM:=C2=A0 1.9 GiB<br>
&gt; RPI 4 Model B (0xb03114)<br>
&gt; MMC:=C2=A0 =C2=A0mmcnr@7e300000: 1, emmc2@7e340000: 0<br>
&gt; Loading Environment from FAT... ** No partition table - mmc 0 **<br>
&gt; In:=C2=A0 =C2=A0 serial<br>
&gt; Out:=C2=A0 =C2=A0serial<br>
&gt; Err:=C2=A0 =C2=A0serial<br>
&gt; Net:=C2=A0 =C2=A0eth0: ethernet@7d580000<br>
&gt; PCIe BRCM: link up, 5.0 Gbps x1 (SSC)<br>
&gt; starting USB...<br>
&gt; Bus xhci_pci: Register 5000420 NbrPorts 5<br>
&gt; Starting the controller<br>
&gt; USB XHCI 1.00<br>
&gt; scanning bus xhci_pci for devices... 2 USB Device(s) found<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 scanning usb for storage devices... 0 Stora=
ge Device(s) found<br>
&gt; Hit any key to stop autoboot:=C2=A0 0<br>
&gt; switch to partitions #0, OK<br>
&gt; mmc0 is current device<br>
&gt; ** No partition table - mmc 0 **<br>
&gt; Card did not respond to voltage select! : -110<br>
&gt;<br>
&gt; Here is a normal uboot sequence<br>
&gt;<br>
&gt; U-Boot 2021.10 (Oct 04 2021 - 15:09:26 +0000)<br>
&gt;<br>
&gt; DRAM:=C2=A0 1.9 GiB<br>
&gt; RPI 4 Model B (0xb03114)<br>
&gt; MMC:=C2=A0 =C2=A0mmcnr@7e300000: 1, mmc@7e340000: 0<br>
&gt; Loading Environment from FAT... Unable to read &quot;uboot.env&quot; f=
rom mmc0:1... In:=C2=A0 =C2=A0 serial<br>
&gt; Out:=C2=A0 =C2=A0vidconsole<br>
&gt; Err:=C2=A0 =C2=A0vidconsole<br>
&gt; Net:=C2=A0 =C2=A0eth0: ethernet@7d580000<br>
&gt; PCIe BRCM: link up, 5.0 Gbps x1 (SSC)<br>
&gt; starting USB...<br>
&gt; Bus xhci_pci: Register 5000420 NbrPorts 5<br>
&gt; Starting the controller<br>
&gt; USB XHCI 1.00<br>
&gt; scanning bus xhci_pci for devices... 2 USB Device(s) found<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 scanning usb for storage devices... 0 Stora=
ge Device(s) found<br>
&gt; Hit any key to stop autoboot:=C2=A0 0<br>
&gt; switch to partitions #0, OK<br>
&gt; mmc0 is current device<br>
&gt; Scanning mmc 0:1...<br>
&gt; Found U-Boot script /boot.scr<br>
&gt; 262 bytes read in 6 ms (42 KiB/s)<br>
&gt; ## Executing script at 02400000<br>
&gt; 23202304 bytes read in 997 ms (22.2 MiB/s)<br>
&gt; Saving Environment to FAT... OK<br>
&gt; Moving Image from 0x80000 to 0x200000, end=3D1960000<br>
&gt; ## Flattened Device Tree blob at 2eff3600<br>
&gt;=C2=A0 =C2=A0 Booting using the fdt blob at 0x2eff3600<br>
&gt;=C2=A0 =C2=A0 Using Device Tree in place at 000000002eff3600, end 00000=
0002f002f13<br>
&gt;<br>
&gt; Starting kernel ...<br>
&gt;<br>
&gt; Basically, the failing Uboot can&#39;t find the partition table.<br>
&gt;<br>
<br>
Well is there a partition table? Can you share what you are doing to<br>
flash your uSD? Maybe it&#39;s just some manipulation error.<br>
<br>
Marc<br>
</blockquote></div>

--000000000000755ae405d5911fac--

