Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73792CD37BF
	for <webhook@archiver.kernel.org>; Sat, 16 Sep 2023 15:33:12 +0000 (UTC)
Subject: No able to ssh or ping to raspberry pi4 device
To: yocto@lists.yoctoproject.org
From: mvjohn100@gmail.com
X-Originating-Location: Mumbai, Maharashtra, IN (58.84.60.229)
X-Originating-Platform: Linux Chrome 117
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 16 Sep 2023 07:34:08 -0700
Message-ID: <f8wg.1694874848991616504.HOKt@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NGOf8ngLGEUG2zo4ite6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Sep 2023 15:33:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61021

--NGOf8ngLGEUG2zo4ite6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

added Raspberry layer from https://github.com/agherzan/meta-raspberrypi/tre=
e/mickledore

in local.conf changed

MACHINE ?=3D "raspberrypi4-64"
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks ssh-server-openssh"

bitbake-layers show-layers=C2=A0 =C2=A0shows

core=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /home/jo=
hn/yacto/poky/meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 5
yocto=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/jo=
hn/yacto/poky/meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A05
yoctobsp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /home/john/yacto/p=
oky/meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 5
openembedded-layer=C2=A0 =C2=A0 /home/john/yacto/meta-openembedded/meta-oe=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 5
meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/john/yacto/meta-o=
penembedded/meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 5
networking-layer=C2=A0 =C2=A0 =C2=A0 /home/john/yacto/meta-openembedded/met=
a-networking=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 5
multimedia-layer=C2=A0 =C2=A0 =C2=A0 /home/john/yacto/meta-openembedded/met=
a-multimedia=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 5
raspberrypi=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/john/yacto/meta-r=
aspberrypi=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A09

arp-scan shows

169.254.252.36 d8:3a:dd:3a:bd:ef Raspberry Pi Trading Ltd

ssh root@169.254.252.36=C2=A0 show

ssh: connect to host 169.254.252.36 port 22: No route to host

ping 169.254.252.36 shows

PING 169.254.252.36 (169.254.252.36) 56(84) bytes of data.
From 192.168.1.14 icmp_seq=3D1 Destination Host Unreachable

--NGOf8ngLGEUG2zo4ite6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>added Raspberry layer from&nbsp; <a href=3D"https://github.com/agherza=
n/meta-raspberrypi/tree/mickledore" target=3D"_blank" rel=3D"noopener">http=
s://github.com/agherzan/meta-raspberrypi/tree/mickledore</a><br /><br /></d=
iv>
<div>in local.conf changed&nbsp; &nbsp;<br /><br /></div>
<div>MACHINE ?=3D "raspberrypi4-64"&nbsp;</div>
<div>EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks ssh-server-openssh"&nbsp;</div=
>
<div>&nbsp;</div>
<div>bitbake-layers show-layers&nbsp; &nbsp;shows&nbsp;</div>
<div>&nbsp;</div>
<div>core&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /ho=
me/john/yacto/poky/meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5</div>
<div>yocto&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/ho=
me/john/yacto/poky/meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;5</div>
<div>yoctobsp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /home/john/ya=
cto/poky/meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5=
</div>
<div>openembedded-layer&nbsp; &nbsp; /home/john/yacto/meta-openembedded/met=
a-oe&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5</div>
<div>meta-python&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/home/john/yacto/m=
eta-openembedded/meta-python&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5</div>
<div>networking-layer&nbsp; &nbsp; &nbsp; /home/john/yacto/meta-openembedde=
d/meta-networking&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; 5</div>
<div>multimedia-layer&nbsp; &nbsp; &nbsp; /home/john/yacto/meta-openembedde=
d/meta-multimedia&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; 5</div>
<div>raspberrypi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/home/john/yacto/m=
eta-raspberrypi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;9</div>
<div>&nbsp;</div>
<div>arp-scan shows&nbsp;&nbsp;</div>
<div>&nbsp;</div>
<div>169.254.252.36<span style=3D"white-space: pre;"> </span>d8:3a:dd:3a:bd=
:ef<span style=3D"white-space: pre;"> </span>Raspberry Pi Trading Ltd</div>
<div>&nbsp;</div>
<div>ssh root@169.254.252.36&nbsp; show&nbsp;</div>
<div>&nbsp;</div>
<div>ssh: connect to host 169.254.252.36 port 22: No route to host</div>
<div>&nbsp;</div>
<div>ping 169.254.252.36 shows&nbsp;</div>
<div>&nbsp;</div>
<div>PING 169.254.252.36 (169.254.252.36) 56(84) bytes of data.</div>
<div>From 192.168.1.14 icmp_seq=3D1 Destination Host Unreachable<br /><br /=
><br /></div>
<div>&nbsp;</div>

--NGOf8ngLGEUG2zo4ite6--

