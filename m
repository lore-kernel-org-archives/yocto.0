Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88A52C433EF
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 07:45:31 +0000 (UTC)
Subject: How to disable Bluetooth of Raspberry Pi from Yocto?
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Sesslach, Bavaria, DE (217.24.55.250)
X-Originating-Platform: Windows Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Mar 2022 23:45:30 -0800
Message-ID: <yDqQ.1646811930344282733.Qumf@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sFRPf2HBBtJ5m4p1SPqq"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 07:45:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56398

--sFRPf2HBBtJ5m4p1SPqq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

I have a question regarding disabling bluetooth of my Raspberry Pi Compute =
Module 4. I know that we need to set "dtoverlay=3Ddisable-bt" in config.txt

But how to do it from Yocto? Should I include this in conf/local.conf?

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

Your help will be much appreciated.

Thanks in advance.

--sFRPf2HBBtJ5m4p1SPqq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,<br /><br />I have a question regarding disabling bluetooth of my=
 Raspberry Pi Compute Module 4. I know that we need to set "dtoverlay=3Ddis=
able-bt" in config.txt<br /><br />But how to do it from Yocto? Should I inc=
lude this in conf/local.conf?<br /><br />While booting my serial console is=
 stuck here:<br /><br />OpenEmbedded nodistro.0 raspberrypi4-64 ttyS0<br />=
<br />raspberrypi4-64 login: [&nbsp;&nbsp; 14.718847] Bluetooth: HCI UART d=
river ver 2.3<br />[&nbsp;&nbsp; 14.723478] Bluetooth: HCI UART protocol H4=
 registered<br />[&nbsp;&nbsp; 14.728877] Bluetooth: HCI UART protocol Thre=
e-wire (H5) registered<br />[&nbsp;&nbsp; 14.735632] Bluetooth: HCI UART pr=
otocol Broadcom registered<br />[&nbsp;&nbsp; 14.985386] Bluetooth: BNEP (E=
thernet Emulation) ver 1.3<br />[&nbsp;&nbsp; 14.990829] Bluetooth: BNEP fi=
lters: protocol multicast<br />[&nbsp;&nbsp; 14.996781] Bluetooth: BNEP soc=
ket layer initialized<br />[&nbsp;&nbsp; 15.016364] NET: Registered protoco=
l family 38<br />[&nbsp;&nbsp; 15.024632] audit: type=3D1334 audit(16466762=
38.549:6): prog-id=3D9 op=3DLOAD<br />[&nbsp;&nbsp; 15.031791] audit: type=
=3D1334 audit(1646676238.549:7): prog-id=3D10 op=3DLOAD<br />[&nbsp;&nbsp; =
15.103792] Bluetooth: RFCOMM TTY layer initialized<br />[&nbsp;&nbsp; 15.10=
8976] Bluetooth: RFCOMM socket layer initialized<br />[&nbsp;&nbsp; 15.1142=
55] Bluetooth: RFCOMM ver 1.11<br /><br />Can anyone please let me know whe=
ther disabling Bluetooth will solve this?<br /><br />Your help will be much=
 appreciated.<br /><br />Thanks in advance.

--sFRPf2HBBtJ5m4p1SPqq--

