Return-Path: <jp@lebel.pro>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42302C433F5
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 15:39:47 +0000 (UTC)
Received: from ds.tools (ds.tools [158.69.194.164])
 by mx.groups.io with SMTP id smtpd.web10.8502.1642174785948510896
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jan 2022 07:39:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lebel.pro header.s=dkim header.b=mTriDk6q;
 spf=pass (domain: lebel.pro, ip: 158.69.194.164, mailfrom: jp@lebel.pro)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 7FEBABDC
	for <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 10:39:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lebel.pro; s=dkim;
	t=1642174784;
	h=from:subject:date:message-id:to:mime-version:content-type:in-reply-to:
	 references; bh=Ik27HtWn8VP+pJHagP9vgnac8qXylwQrz0gu9dAyO7Q=;
	b=mTriDk6qjzrWocmPMRtq2O9Y0SZRVBLJUG/8JqnlniKRY6p1yqv2PImgExjU17d8ptX1h5
	oYwhxpbiH8WCvH+fDHVZjr1VWUk1uPiWtQwj0pMObziAO4tH29A9nvJB6SurjZDJqbiC+r
	nPYIppTbZm9fMeta+XsLfmfTyjZX/sWPn9bze3Tun3hGmD0FvPrM0EnPrQMPvpRfQMAoPc
	UK7oRrs/Nnt+hSaLni+uWBskjRSGIMlW76gR2kFzLxAz31W8ayrfTnsokVr4V3vcNTF+Gf
	IUCDCz7zCflVJa6eV5EQeqdYYTLStPn0wNBclAvS3Ys2j1iT1YRKY1IPjJlWFg==
Received: by mail-qk1-f172.google.com with SMTP id u3so1149681qku.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jan 2022 07:39:44 -0800 (PST)
X-Gm-Message-State: AOAM531mMpP0FAJBptmcPMCicyl8qdMoQtzVMTnLehMaJeyRWrSdhOX7
	IoA8YV+U/M2TuOj+xjOsVUSzSnCHLoIAr0bCmX0=
X-Google-Smtp-Source: 
 ABdhPJyOMtNSc4x6wVq0N33mPE/0SUA1+ltU7dvVS1fGR0yKZNgTeDHx8/T5FqfjFusxljzb/NfV1pXwCUfh5uPvuhA=
X-Received: by 2002:a05:620a:cc7:: with SMTP id
 b7mr7040096qkj.176.1642174783322;
 Fri, 14 Jan 2022 07:39:43 -0800 (PST)
MIME-Version: 1.0
References: <olEy.1641952629873571983.WQkq@lists.yoctoproject.org>
 <AM0PR10MB3107C5D3A7A14031A52258E099529@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CAJiLS+Tgc7XNuqJi9eVGoSskP8UULuq_mV4GrdGr+aRidQSgAg@mail.gmail.com>
 <847433617.77075.1642023917723.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: 
 <847433617.77075.1642023917723.JavaMail.zimbra@savoirfairelinux.com>
From: Jean-Philippe Lebel <jp@lebel.pro>
Date: Fri, 14 Jan 2022 10:39:32 -0500
X-Gmail-Original-Message-ID: 
 <CAJiLS+TaSr=oL8ZryNngqvyjmDN=tBkOpqWOFmGhFAEh0s0oUQ@mail.gmail.com>
Message-ID: 
 <CAJiLS+TaSr=oL8ZryNngqvyjmDN=tBkOpqWOFmGhFAEh0s0oUQ@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] Problem with RPI_USE_U_BOOT with
 RaspberryPi4
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009e7d3705d58c9cfb"
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 15:39:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55879

--0000000000009e7d3705d58c9cfb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I finally received my UART cable, giving me more details about where the
boot sequence fails.

Just a quick summary of my tests
- Enabling UART does indeed "fix" the issue when working from the
meta-raspberrypi AND yocto master.
- Enabling UART has no impact when working from the meta-raspberrypi and
yocto hardknott branch (which I need to support) - image doesn't boot
- Backporting the meta-raspberrypi master branch to hardknott does NOT fix
the problem.

Here is the uboot log (failing).

U-Boot 2021.01 (Jan 11 2021 - 18:11:43 +0000)

DRAM:  1.9 GiB
RPI 4 Model B (0xb03114)
MMC:   mmcnr@7e300000: 1, emmc2@7e340000: 0
*Loading Environment from FAT... ** No partition table - mmc 0 ***
In:    serial
Out:   serial
Err:   serial
Net:   eth0: ethernet@7d580000
PCIe BRCM: link up, 5.0 Gbps x1 (SSC)
starting USB...
Bus xhci_pci: Register 5000420 NbrPorts 5
Starting the controller
USB XHCI 1.00
scanning bus xhci_pci for devices... 2 USB Device(s) found
       scanning usb for storage devices... 0 Storage Device(s) found
Hit any key to stop autoboot:  0
switch to partitions #0, OK
mmc0 is current device
** No partition table - mmc 0 **
Card did not respond to voltage select! : -110

Here is a normal uboot sequence

U-Boot 2021.10 (Oct 04 2021 - 15:09:26 +0000)

DRAM:  1.9 GiB
RPI 4 Model B (0xb03114)
MMC:   mmcnr@7e300000: 1, mmc@7e340000: 0
*Loading Environment from FAT... Unable to read "uboot.env" from mmc0:1...
In:    serial*
Out:   vidconsole
Err:   vidconsole
Net:   eth0: ethernet@7d580000
PCIe BRCM: link up, 5.0 Gbps x1 (SSC)
starting USB...
Bus xhci_pci: Register 5000420 NbrPorts 5
Starting the controller
USB XHCI 1.00
scanning bus xhci_pci for devices... 2 USB Device(s) found
       scanning usb for storage devices... 0 Storage Device(s) found
Hit any key to stop autoboot:  0
switch to partitions #0, OK
mmc0 is current device
Scanning mmc 0:1...
Found U-Boot script /boot.scr
262 bytes read in 6 ms (42 KiB/s)
## Executing script at 02400000
23202304 bytes read in 997 ms (22.2 MiB/s)
Saving Environment to FAT... OK
Moving Image from 0x80000 to 0x200000, end=3D1960000
## Flattened Device Tree blob at 2eff3600
   Booting using the fdt blob at 0x2eff3600
   Using Device Tree in place at 000000002eff3600, end 000000002f002f13

Starting kernel ...

Basically, the failing Uboot can't find the partition table.

Any idea why?

Thanks

-------------
Jean-Philippe Lebel, ing. MBA

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


On Wed, Jan 12, 2022 at 4:45 PM Jerome Oufella <
jerome.oufella@savoirfairelinux.com> wrote:

> On Jan 12, 2022, at 3:37 PM, Jean-Philippe Lebel wrote:
>
> > For a reason I can't quite understand, everything stated working when I
> added
> > ENABLE_UART =3D "1"
> >
> > Does anyone understand the relation between ENABLE_UART =3D "1" and
> RPI_USE_U_BOOT
> > =3D "1" ?
> >
> > Thanks
> >
> > -------------
> > Jean-Philippe
>
> The documentation mentions a relationship between enable_uart and
> (lower) core frequency on some hardware variants - could there be a
> side-effect (if yes, maybe gpu_freq/arm_freq could play a factor) ?
>
> Jerome
>

--0000000000009e7d3705d58c9cfb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I finally received my UART cable, giving me more details a=
bout where the boot sequence fails.<div><br></div><div>Just a quick summary=
=C2=A0of my tests</div><div>- Enabling UART does indeed &quot;fix&quot; the=
 issue when working from the meta-raspberrypi AND yocto master.</div><div>-=
 Enabling UART has no impact when working from the meta-raspberrypi and yoc=
to hardknott branch (which I need to support) - image doesn&#39;t boot</div=
><div>- Backporting the meta-raspberrypi master branch to hardknott does NO=
T fix the problem.</div><div><br></div><div>Here is the uboot log (failing)=
.</div><div><br></div><div>U-Boot 2021.01 (Jan 11 2021 - 18:11:43 +0000)<br=
><br>DRAM: =C2=A01.9 GiB<br>RPI 4 Model B (0xb03114)<br>MMC: =C2=A0 mmcnr@7=
e300000: 1, emmc2@7e340000: 0<br><b>Loading Environment from FAT... ** No p=
artition table - mmc 0 **</b><br>In: =C2=A0 =C2=A0serial<br>Out: =C2=A0 ser=
ial<br>Err: =C2=A0 serial<br>Net: =C2=A0 eth0: ethernet@7d580000<br>PCIe BR=
CM: link up, 5.0 Gbps x1 (SSC)<br>starting USB...<br>Bus xhci_pci: Register=
 5000420 NbrPorts 5<br>Starting the controller<br>USB XHCI 1.00<br>scanning=
 bus xhci_pci for devices... 2 USB Device(s) found<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0scanning usb for storage devices... 0 Storage Device(s) found<br>Hit =
any key to stop autoboot: =C2=A00<br>switch to partitions #0, OK<br>mmc0 is=
 current device<br>** No partition table - mmc 0 **<br>Card did not respond=
 to voltage select! : -110<br></div><div><br></div><div>Here is a normal ub=
oot sequence</div><div><br></div><div>U-Boot 2021.10 (Oct 04 2021 - 15:09:2=
6 +0000)<br><br>DRAM: =C2=A01.9 GiB<br>RPI 4 Model B (0xb03114)<br>MMC: =C2=
=A0 mmcnr@7e300000: 1, mmc@7e340000: 0<br><b>Loading Environment from FAT..=
. Unable to read &quot;uboot.env&quot; from mmc0:1... In: =C2=A0 =C2=A0seri=
al</b><br>Out: =C2=A0 vidconsole<br>Err: =C2=A0 vidconsole<br>Net: =C2=A0 e=
th0: ethernet@7d580000<br>PCIe BRCM: link up, 5.0 Gbps x1 (SSC)<br>starting=
 USB...<br>Bus xhci_pci: Register 5000420 NbrPorts 5<br>Starting the contro=
ller<br>USB XHCI 1.00<br>scanning bus xhci_pci for devices... 2 USB Device(=
s) found<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0scanning usb for storage devices... =
0 Storage Device(s) found<br>Hit any key to stop autoboot: =C2=A00<br>switc=
h to partitions #0, OK<br>mmc0 is current device<br>Scanning mmc 0:1...<br>=
Found U-Boot script /boot.scr<br>262 bytes read in 6 ms (42 KiB/s)<br>## Ex=
ecuting script at 02400000<br>23202304 bytes read in 997 ms (22.2 MiB/s)<br=
>Saving Environment to FAT... OK<br>Moving Image from 0x80000 to 0x200000, =
end=3D1960000<br>## Flattened Device Tree blob at 2eff3600<br>=C2=A0 =C2=A0=
Booting using the fdt blob at 0x2eff3600<br>=C2=A0 =C2=A0Using Device Tree =
in place at 000000002eff3600, end 000000002f002f13<br><br>Starting kernel .=
..<br></div><div><br></div><div>Basically, the failing Uboot can&#39;t find=
 the partition table.</div><div><br></div><div>Any idea why?</div><div><br>=
</div><div>Thanks</div><div><font color=3D"#232629" face=3D"-apple-system, =
system-ui, Segoe UI, Liberation Sans, sans-serif"><br clear=3D"all"></font>=
<div><div dir=3D"ltr" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><=
div>-------------<br></div>Jean-Philippe Lebel, ing. MBA<br><div style=3D"c=
olor:rgb(80,0,80)"><br></div><div style=3D"color:rgb(80,0,80)"><b style=3D"=
color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:16px"><span lang=
=3D"FR-CA" style=3D"font-size:7pt;font-family:Arial,sans-serif">AVIS IMPORT=
ANT:</span></b><span lang=3D"FR-CA" style=3D"color:rgb(0,0,0);font-size:7pt=
;font-family:Arial,sans-serif">=C2=A0Ce courriel est strictement r=C3=A9ser=
v=C3=A9 =C3=A0 l&#39;usage de la (des) personne(s) =C3=A0 qui il est adress=
=C3=A9 et peut contenir de l&#39;information privil=C3=A9gi=C3=A9e et confi=
dentielle. Toute divulgation, distribution, copie, ou autre utilisation de =
ce courriel par une autre personne est strictement prohib=C3=A9e. Si vous a=
vez re=C3=A7u ce courriel par erreur, veuillez s&#39;il vous pla=C3=AEt com=
muniquer imm=C3=A9diatement avec l&#39;exp=C3=A9diteur et d=C3=A9truire le =
courriel sans en faire de copie sous quelque forme.<br><br></span><b style=
=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:16px"><span l=
ang=3D"EN-US" style=3D"font-size:7pt;font-family:Arial,sans-serif">WARNING:=
</span></b><span lang=3D"EN-US" style=3D"color:rgb(0,0,0);font-size:7pt;fon=
t-family:Arial,sans-serif">=C2=A0This e-mail contains confidential informat=
ion intended only for the person(s) named above. If you are not the intende=
d recipient you are hereby notified that any disclosure, copying, distribut=
ion, or any other use of this e-mail is strictly prohibited. If you have re=
ceived this e-mail by mistake, please notify us immediately and destroy thi=
s e-mail without making any copy of any kind.</span></div></div></div></div=
><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Jan 12, 2022 at 4:45 PM Jerome Oufella &lt;<a href=3D"ma=
ilto:jerome.oufella@savoirfairelinux.com" target=3D"_blank">jerome.oufella@=
savoirfairelinux.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">On Jan 12, 2022, at 3:37 PM, Jean-Philippe Lebel wrote:=
 <br>
<br>
&gt; For a reason I can&#39;t quite understand, everything stated working w=
hen I added<br>
&gt; ENABLE_UART =3D &quot;1&quot;<br>
&gt; <br>
&gt; Does anyone understand the relation between ENABLE_UART =3D &quot;1&qu=
ot; and RPI_USE_U_BOOT<br>
&gt; =3D &quot;1&quot; ?<br>
&gt; <br>
&gt; Thanks<br>
&gt; <br>
&gt; -------------<br>
&gt; Jean-Philippe<br>
<br>
The documentation mentions a relationship between enable_uart and<br>
(lower) core frequency on some hardware variants - could there be a<br>
side-effect (if yes, maybe gpu_freq/arm_freq could play a factor) ?<br>
<br>
Jerome<br>
</blockquote></div>

--0000000000009e7d3705d58c9cfb--

