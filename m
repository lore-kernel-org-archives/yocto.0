Return-Path: <chris@2net.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54987C433EF
	for <webhook@archiver.kernel.org>; Thu,  5 May 2022 10:22:46 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
 by mx.groups.io with SMTP id smtpd.web09.9061.1651746161271423322
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 May 2022 03:22:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: 2net.co.uk, ip: 217.72.192.74, mailfrom: chris@2net.co.uk)
Received: from [127.0.0.1] ([92.40.172.147]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.179]) with ESMTPSA (Nemesis) id
 1Ma1wY-1nIuFt3wRQ-00W1I6; Thu, 05 May 2022 12:22:38 +0200
Date: Thu, 05 May 2022 11:22:25 +0100
From: Chris <chris@2net.co.uk>
To: jchludzinski@vivaldi.net,
 "jchludzinski via lists.yoctoproject.org"
 <jchludzinski=vivaldi.net@lists.yoctoproject.org>,
 Josef Holzmayr <jester@theyoctojester.info>
CC: michael.opdenacker@bootlin.com,
 Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
 Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] OE Linux & board-support-package
User-Agent: K-9 Mail for Android
In-Reply-To: <4af379afe365bfeb36bd65a481008390@vivaldi.net>
References: <9d3557790b185eab39f60301c57f7a9d@vivaldi.net>
 <CAGAf8LwAdtJAyoBTtX40s4iyCcuuA4xrYw9VRTU9VYNk0Yh+hQ@mail.gmail.com>
 <7b2fce371a4d490f7691a803823c7c6f@vivaldi.net>
 <0f7fd537-cb79-29ab-d3fe-99bcc0d5811f@bootlin.com>
 <0f4b601e521de98b00927cec77512354@vivaldi.net>
 <CAEt6Nwq8BbS2jTzm0vyghttXB9u0FKvVGto20u-ko8HE2Kx1iw@mail.gmail.com>
 <4af379afe365bfeb36bd65a481008390@vivaldi.net>
Message-ID: <2CBD3A38-60D4-4329-84EC-59E77889C109@2net.co.uk>
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary=----MYNHUMN83PI4II1MMC3OMNJYLW3ER9
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:GDk3RjYLmjrSDeOWORUYd3jNGA7fk1SYX/nUaB5o/GIpWgwz/b2
 8tYZ2eW6wVyx7RQwaOUdg6bCqJykUvRw4yDREuw0naNBFSPcUxeCN5YOzc6b8tL1JLAxEox
 3LrGs2BIDTvkkT2isD19xTQ0I8uJ66aP0kxwuMNqMEJ0NzAb7GFnTiH2sRa0pau3PZU4IOW
 cI1ZhGe4qYTRfZtd0742w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:xk2/4TVzNn8=:k5U0batQMGcr6VE9RX0WF3
 bC1aJxrkNAbGJILrrnLvS8c+T6zZEZmeehtNTvIQ5TIJHyvzjclcF89dIJ6nRl/8L/W5Ky+gD
 M0bq9A3YyjU9iNhpC3dCl1QBh95TPgFRiVj6jz5A3+uBCg1CODy/vBfkItHWA3pafnMvEJ5dS
 rwQGB3n2I4baoJ7mGsFGEo/IiZO0h6BsrVmLzf1QPqAcqEwE/NILdEbyB1UKUhpvJcLaVoI2j
 OGrZYeVIM9dS5p4t2Nex49ixW3jrV3YuSA5Wo+bkBEQP9gUgDIuSHC1+Usl4dJJ86+DCLEm4H
 rxHFlhqTazBBeDQCJtfxldgTMMy7nOUGsz9F/MnU4L5C6YXLnKGKoHdcMHEP3ggWbEXag5CPe
 CQgBu3XrgXJ4zeTZyeVLV+l5TENCd2l9E0MnayZjzCDVu2Cj5zL4zZ0nd/V37nC7VfLP+sHbk
 4M9o7XHT1uvV1yKAHD4M/FJK42PaMI6+NzDReSWP536JpoMSfj66w9I+uinW/Pmyp/Wl8+Roh
 tPAtSXVPERBHCLbaMEwatFpIIIkRcz10SI6d2wRx/wtpJj7IqJ6yYhqtQESaWtP4jVAiltz6+
 4Qdl4L1MZj6x+9+p6U6KHpTXlXCFs0rJuDrRszJnIK5bd/NXqsliaxmnSZg7Pgs6miCkZQXO4
 QfrIqN485GgVBhYconh06tBBuvSXivZv67RwViqj4ORltgqioOa9HacVhGYxE+08y694=
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 May 2022 10:22:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57004

------MYNHUMN83PI4II1MMC3OMNJYLW3ER9
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

BSP is not a well defined term in embedded Linux=2E Back in the day, Montav=
ista tried to popularise the term LSP, meaning Linux Support Package but it=
 never caught on=2E These days, BSP generally means all the things you need=
 to run a basic system=2E So that's bootloader, device tree, kernel config,=
 kernel patches (if any), and firmware blobs=2E It can also include user sp=
ace config such as video codecs, opengl libraries, and systemd units to sta=
rt the respective daemons=2E

SoC and SoM vendors often overload their OE BSPs with irrelevant demo apps=
 as well=2E Constant bugbear of system integrators=2E=20

HTH,
Chris

On 5 May 2022 10:51:39 BST, "jchludzinski via lists=2Eyoctoproject=2Eorg" =
<jchludzinski=3Dvivaldi=2Enet@lists=2Eyoctoproject=2Eorg> wrote:
>OK, let me try this:
>
>With other embedded OS's, the hardware specifics that are in the BSP are =
in the device trees in Linux=2E I assume the BSP's for OE Linux are rather =
simple?
>
>
>
>On 2022-05-05 04:47, Josef Holzmayr wrote:
>> Howdy!
>>=20
>> Am Do=2E, 5=2E Mai 2022 um 10:43 Uhr schrieb jchludzinski via
>> lists=2Eyoctoproject=2Eorg
>> <jchludzinski=3Dvivaldi=2Enet@lists=2Eyoctoproject=2Eorg>:
>>>=20
>>> OK, let's go with that=2E
>>>=20
>>> I've watched the "Live Coding with Yocto Project #1: download and firs=
t
>>> build" youtube video=2E Where is the BSP built in this procedure?
>>=20
>> The BSP that is implicitly used in that video is the generic QEMU one,
>> which comes included with poky=2E Technically speaking, it lives in
>> https://git=2Eyoctoproject=2Eorg/poky/tree/meta/conf/machine and
>> https://git=2Eyoctoproject=2Eorg/poky/tree/meta/recipes-kernel/linux/li=
nux-yocto_5=2E15=2Ebb
>>=20
>> A BSP can be many things, and this one is a rather small one, as
>> booting into and running linux on QEMU doesn't need patching and all
>> that, so in that case it comes pretty close to the perfect world that
>> Michael mentioned=2E
>>=20
>> Greetz,
>> Josef (who did that video, actually)
>>=20
>>>=20
>>>=20
>>>=20
>>> On 2022-05-05 03:16, Michael Opdenacker via lists=2Eyoctoproject=2Eorg
>>> wrote:
>>> > On 5/5/22 08:39, jchludzinski via lists=2Eyoctoproject=2Eorg wrote:
>>> >> A board-support-package (BSP) is software that provides a layer of
>>> >> abstraction from the physical board specifics for the host embedded=
 OS
>>> >> (e=2Eg=2E, VXworks)=2E
>>> >>
>>> >> I believe the device tree files (*=2Edts, *dtsi) in OE Linux provid=
e the
>>> >> same function=2E It allows to OE kernel code to be independent of d=
evice
>>> >> specifics=2E
>>> >
>>> >
>>> > The Device Tree files are just descriptions of the hardware=2E In a
>>> > perfect world, you could indeed use the same mainline kernel to supp=
ort
>>> > all possible devices=2E However, that kernel would be unnecessarily =
big
>>> > for your custom system=2E You most probably want to customize its
>>> > configuration, and may also need custom kernel drivers and patches=
=2E
>>> > There's also the need for a bootloader compiled for your platform=2E
>>> >
>>> > That's why we need BSPs :-)
>>> >
>>> > Cheers,
>>> > Michael=2E
>>> >
>>> >
>>> >
>>>=20
>>>=20
>>>=20
>>=20
>>=20
>>=20

------MYNHUMN83PI4II1MMC3OMNJYLW3ER9
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>BSP is not a well defined term in embedded Linux=
=2E Back in the day, Montavista tried to popularise the term LSP, meaning L=
inux Support Package but it never caught on=2E These days, BSP generally me=
ans all the things you need to run a basic system=2E So that's bootloader, =
device tree, kernel config, kernel patches (if any), and firmware blobs=2E =
It can also include user space config such as video codecs, opengl librarie=
s, and systemd units to start the respective daemons=2E<br><br>SoC and SoM =
vendors often overload their OE BSPs with irrelevant demo apps as well=2E C=
onstant bugbear of system integrators=2E <br><br>HTH,<br>Chris<br><br><div =
class=3D"gmail_quote">On 5 May 2022 10:51:39 BST, "jchludzinski via lists=
=2Eyoctoproject=2Eorg" &lt;jchludzinski=3Dvivaldi=2Enet@lists=2Eyoctoprojec=
t=2Eorg&gt; wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0p=
t 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex=
;">
<pre dir=3D"auto" class=3D"k9mail">OK, let me try this:<br><br>With other =
embedded OS's, the hardware specifics that are in the BSP are in the device=
 trees in Linux=2E I assume the BSP's for OE Linux are rather simple?<br><b=
r><br><br>On 2022-05-05 04:47, Josef Holzmayr wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px sol=
id #729fcf; padding-left: 1ex;">Howdy!<br><br>Am Do=2E, 5=2E Mai 2022 um 10=
:43 Uhr schrieb jchludzinski via<br>lists=2Eyoctoproject=2Eorg<br>&lt;jchlu=
dzinski=3Dvivaldi=2Enet@lists=2Eyoctoproject=2Eorg&gt;:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px so=
lid #ad7fa8; padding-left: 1ex;"><br>OK, let's go with that=2E<br><br>I've =
watched the "Live Coding with Yocto Project #1: download and first<br>build=
" youtube video=2E Where is the BSP built in this procedure?<br></blockquot=
e><br>The BSP that is implicitly used in that video is the generic QEMU one=
,<br>which comes included with poky=2E Technically speaking, it lives in<br=
><a href=3D"https://git=2Eyoctoproject=2Eorg/poky/tree/meta/conf/machine">h=
ttps://git=2Eyoctoproject=2Eorg/poky/tree/meta/conf/machine</a> and<br><a h=
ref=3D"https://git=2Eyoctoproject=2Eorg/poky/tree/meta/recipes-kernel/linux=
/linux-yocto_5=2E15=2Ebb">https://git=2Eyoctoproject=2Eorg/poky/tree/meta/r=
ecipes-kernel/linux/linux-yocto_5=2E15=2Ebb</a><br><br>A BSP can be many th=
ings, and this one is a rather small one, as<br>booting into and running li=
nux on QEMU doesn't need patching and all<br>that, so in that case it comes=
 pretty close to the perfect world that<br>Michael mentioned=2E<br><br>Gree=
tz,<br>Josef (who did that video, actually)<br><br><blockquote class=3D"gma=
il_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #ad7=
fa8; padding-left: 1ex;"><br><br><br>On 2022-05-05 03:16, Michael Opdenacke=
r via lists=2Eyoctoproject=2Eorg<br>wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #8ae234; =
padding-left: 1ex;">On 5/5/22 08:39, jchludzinski via lists=2Eyoctoproject=
=2Eorg wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt=
 1ex 0=2E8ex; border-left: 1px solid #fcaf3e; padding-left: 1ex;"> A board-=
support-package (BSP) is software that provides a layer of<br> abstraction =
from the physical board specifics for the host embedded OS<br> (e=2Eg=2E, V=
Xworks)=2E<br><br> I believe the device tree files (*=2Edts, *dtsi) in OE L=
inux provide the<br> same function=2E It allows to OE kernel code to be ind=
ependent of device<br> specifics=2E<br></blockquote><br><br> The Device Tre=
e files are just descriptions of the hardware=2E In a<br> perfect world, yo=
u could indeed use the same mainline kernel to support<br> all possible dev=
ices=2E However, that kernel would be unnecessarily big<br> for your custom=
 system=2E You most probably want to customize its<br> configuration, and m=
ay also need custom kernel drivers and patches=2E<br> There's also the need=
 for a bootloader compiled for your platform=2E<br><br> That's why we need =
BSPs :-)<br><br> Cheers,<br> Michael=2E<br><br><br><br></blockquote><br><br=
><br></blockquote><br><br><br></blockquote></pre></blockquote></div></body>=
</html>
------MYNHUMN83PI4II1MMC3OMNJYLW3ER9--

