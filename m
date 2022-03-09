Return-Path: <tomasz.zyjewski@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27A88C433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 08:02:21 +0000 (UTC)
Subject: Re: How to disable Bluetooth of Raspberry Pi from Yocto?
To: yocto@lists.yoctoproject.org
From: "tomzy" <tomasz.zyjewski@3mdeb.com>
X-Originating-Location: Warsaw, Mazovia, PL (84.10.27.202)
X-Originating-Platform: Linux Firefox 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Mar 2022 00:02:20 -0800
References: <yDqQ.1646811930344282733.Qumf@lists.yoctoproject.org>
In-Reply-To: <yDqQ.1646811930344282733.Qumf@lists.yoctoproject.org>
Message-ID: <22943.1646812940439022103@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="mBVB5Rk18ivk4BOctuvT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 08:02:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56399

--mBVB5Rk18ivk4BOctuvT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

Hi

I have a question regarding disabling bluetooth of my Raspberry Pi Compute =
Module 4. I know that we need to set "dtoverlay=3Ddisable-bt" in config.txt

But how to do it from Yocto? Should I include this in conf/local.conf?

meta-raspberrypi provide recipe just for the `config.txt` file. I don't kno=
w which Yocto version you are using
but on master it looks like this https://github.com/agherzan/meta-raspberry=
pi/blob/master/recipes-bsp/bootfiles/rpi-config_git.bb#L1
You will need some bbappend in your custom recipe to extend config.txt wtih=
 `dtoverlay=3Ddisable-bt`.
E.g. the bbappend should have the following

```
do_deploy:append() {
echo "dtoverlay=3Ddisable-bt" >> $CONFIG
}
```

While booting my serial console is stuck here:

OpenEmbedded nodistro.0 raspberrypi4-64 ttyS0

raspberrypi4-64 login: [=C2=A0=C2=A0 14.718847] Bluetooth: HCI UART driver =
ver 2.3
[=C2=A0=C2=A0 14.723478] Bluetooth: HCI UART protocol H4 registered
[=C2=A0=C2=A0 14.728877] Bluetooth: HCI UART protocol Three-wire (H5) regis=
tered
[=C2=A0=C2=A0 14.735632] Bluetooth: HCI UART protocol Broadcom registered
[=C2=A0=C2=A0 14.985386] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[=C2=A0=C2=A0 14.990829] Bluetooth: BNEP filters: protocol multicast
[=C2=A0=C2=A0 14.996781] Bluetooth: BNEP socket layer initialized
[=C2=A0=C2=A0 15.016364] NET: Registered protocol family 38
[=C2=A0=C2=A0 15.024632] audit: type=3D1334 audit(1646676238.549:6): prog-i=
d=3D9 op=3DLOAD
[=C2=A0=C2=A0 15.031791] audit: type=3D1334 audit(1646676238.549:7): prog-i=
d=3D10 op=3DLOAD
[=C2=A0=C2=A0 15.103792] Bluetooth: RFCOMM TTY layer initialized
[=C2=A0=C2=A0 15.108976] Bluetooth: RFCOMM socket layer initialized
[=C2=A0=C2=A0 15.114255] Bluetooth: RFCOMM ver 1.11

Can anyone please let me know whether disabling Bluetooth will solve this?

To be honest, it doesn't look like it hangs. There is a login prompt

```
raspberrypi4-64 login:
```
Did you try to hit an enter couple of times and then maybe log in?

Your help will be much appreciated.

Thanks in advance.

Greetings,

Tomasz =C5=BByjewski
Embedded Systems Engineer
GPG: 5C495EA3EBEECA59
https://3mdeb.com | @3mdeb_com

--mBVB5Rk18ivk4BOctuvT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello All,</p>
<p>Hi<br /><br />I have a question regarding disabling bluetooth of my Rasp=
berry Pi Compute Module 4. I know that we need to set "dtoverlay=3Ddisable-=
bt" in config.txt<br /><br />But how to do it from Yocto? Should I include =
this in conf/local.conf?</p>
<p>meta-raspberrypi provide recipe just for the `config.txt` file. I don't =
know which Yocto version you are using<br />but on master it looks like thi=
s <a href=3D"https://github.com/agherzan/meta-raspberrypi/blob/master/recip=
es-bsp/bootfiles/rpi-config_git.bb#L1" target=3D"_blank" rel=3D"noopener">h=
ttps://github.com/agherzan/meta-raspberrypi/blob/master/recipes-bsp/bootfil=
es/rpi-config_git.bb#L1</a><br />You will need some bbappend in your custom=
 recipe to extend config.txt wtih `dtoverlay=3Ddisable-bt`.<br />E.g. the b=
bappend should have the following<br /><br />```<br />do_deploy:append() {<=
br />&nbsp; echo "dtoverlay=3Ddisable-bt" &gt;&gt; $CONFIG<br />}<br />```<=
br /><br />While booting my serial console is stuck here:<br /><br />OpenEm=
bedded nodistro.0 raspberrypi4-64 ttyS0<br /><br />raspberrypi4-64 login: [=
&nbsp;&nbsp; 14.718847] Bluetooth: HCI UART driver ver 2.3<br />[&nbsp;&nbs=
p; 14.723478] Bluetooth: HCI UART protocol H4 registered<br />[&nbsp;&nbsp;=
 14.728877] Bluetooth: HCI UART protocol Three-wire (H5) registered<br />[&=
nbsp;&nbsp; 14.735632] Bluetooth: HCI UART protocol Broadcom registered<br =
/>[&nbsp;&nbsp; 14.985386] Bluetooth: BNEP (Ethernet Emulation) ver 1.3<br =
/>[&nbsp;&nbsp; 14.990829] Bluetooth: BNEP filters: protocol multicast<br /=
>[&nbsp;&nbsp; 14.996781] Bluetooth: BNEP socket layer initialized<br />[&n=
bsp;&nbsp; 15.016364] NET: Registered protocol family 38<br />[&nbsp;&nbsp;=
 15.024632] audit: type=3D1334 audit(1646676238.549:6): prog-id=3D9 op=3DLO=
AD<br />[&nbsp;&nbsp; 15.031791] audit: type=3D1334 audit(1646676238.549:7)=
: prog-id=3D10 op=3DLOAD<br />[&nbsp;&nbsp; 15.103792] Bluetooth: RFCOMM TT=
Y layer initialized<br />[&nbsp;&nbsp; 15.108976] Bluetooth: RFCOMM socket =
layer initialized<br />[&nbsp;&nbsp; 15.114255] Bluetooth: RFCOMM ver 1.11<=
br /><br />Can anyone please let me know whether disabling Bluetooth will s=
olve this?<br /><br />To be honest, it doesn't look like it hangs. There is=
 a login prompt</p>
<p>```<br />raspberrypi4-64 login: <br />```<br />Did you try to hit an ent=
er couple of times and then maybe log in?<br /><br />Your help will be much=
 appreciated.<br /><br />Thanks in advance.<br /><br />Greetings,</p>
<p>Tomasz =C5=BByjewski<br />Embedded Systems Engineer<br />GPG: 5C495EA3EB=
EECA59<br />https://3mdeb.com | @3mdeb_com</p>

--mBVB5Rk18ivk4BOctuvT--

